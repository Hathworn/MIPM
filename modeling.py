import torch
import torch.nn as nn
import torch.nn.functional as F
from torch_geometric.nn import GCNConv, global_mean_pool
from torch_geometric.data import Data, DataLoader, Batch
from torch_geometric.loader import DataLoader
from sklearn.preprocessing import StandardScaler, MinMaxScaler
import pandas as pd
import numpy as np
from sklearn.model_selection import train_test_split
import matplotlib.pyplot as plt
from torch.optim.lr_scheduler import StepLR
import os
import time

# 加载和处理数据
data_output = "/home/cjk/X-Blue/output_embedding/final_merged.jsonl"

data = pd.read_json(data_output, orient="records", lines=True)

# 提取 code_embedding,ir_embedding
code_embedding = np.array(data['code_embedding'].tolist())
ir_embedding = np.array(data['ir_embedding'].tolist())

dynamic_features = data[['L1MemoryBusy', 'L2WriteUnitStalled', 'L1MemoryStalled','mne','nv']].values

# 对跨度较大的特征进行对数变换
dynamic_features[:] = np.log1p(dynamic_features[:])

# 转为 PyTorch 张量
dynamic_features = torch.tensor(dynamic_features, dtype=torch.float)
print(dynamic_features.shape)

labels = data[['time','L2CacheHit']].values

# 计算 L1Cache
L1Cache = data['L1MemoryStalled'] / (data['L1MemoryBusy'] + data['L1MemoryStalled'])
L1Cache = L1Cache.values.reshape(-1, 1)  # 转换为列向量

# 将 L1Cache 添加到 labels 中
labels = np.concatenate([labels, L1Cache], axis=1)
labels = np.nan_to_num(labels, nan=0.0)

labels[:] = np.log1p(labels[:])

# 转为 PyTorch 张量
labels = torch.tensor(labels, dtype=torch.float)

class MultiModalDataset:
    def __init__(self, code_embedding, dynamic_features, ir_embedding, labels):
        self.code_embedding = code_embedding
        self.dynamic_features = dynamic_features
        self.ir_embedding = ir_embedding
        self.labels = labels

    def __len__(self):
        return len(self.code_embedding)

    def __getitem__(self, idx):
        code_data = torch.tensor(self.code_embedding[idx], dtype=torch.float)
        dynamic_data = torch.tensor(self.dynamic_features[idx], dtype=torch.float)
        ir_data = torch.tensor(self.ir_embedding[idx], dtype=torch.float)
        label = self.labels[idx]
        
        return code_data, dynamic_data, ir_data, label

# 划分数据集，按照 7:3 的比例进行划分
train_indices, test_indices = train_test_split(np.arange(len(dynamic_features)), test_size=0.2)

# 根据划分的索引创建训练集和测试集
train_code_embeddings = code_embedding[train_indices]
test_code_embeddings = code_embedding[test_indices]
train_dynamic_features = dynamic_features[train_indices]
test_dynamic_features = dynamic_features[test_indices]
train_ir_embeddings = ir_embedding[train_indices]
test_ir_embeddings = ir_embedding[test_indices]
train_labels = labels[train_indices]
test_labels = labels[test_indices]

# 创建数据集
train_dataset = MultiModalDataset(train_code_embeddings, train_dynamic_features, train_ir_embeddings, train_labels)
test_dataset = MultiModalDataset(test_code_embeddings, test_dynamic_features, test_ir_embeddings, test_labels)

# 创建数据加载器
batch_size = 8
train_loader = DataLoader(train_dataset, batch_size=batch_size, shuffle=True)
test_loader = DataLoader(test_dataset, batch_size=batch_size, shuffle=False)

torch.save({
    'code_embedding': test_code_embeddings,
    'dynamic_features': test_dynamic_features,
    'ir_embedding': test_ir_embeddings,
    'labels': test_labels,
}, '/home/cjk/X-Blue/model/saved_test_data.pt')

class AblationModelWithWeights(nn.Module):
    def __init__(self, 
                 code_input_dim, 
                 dynamic_input_dim, 
                 ir_input_dim,
                 embed_dim=32,
                 use_code=True, 
                 use_dynamic=True, 
                 use_ir=True):
        super(AblationModelWithWeights, self).__init__()

        # 是否使用各分支
        self.use_code = use_code
        self.use_dynamic = use_dynamic
        self.use_ir = use_ir

        # Code Embedding 分支
        if self.use_code:
            self.code_branch = nn.Sequential(
                nn.Linear(code_input_dim, 128),
                nn.ReLU(),
                nn.Dropout(0.2),
                nn.Linear(128, 64),
                nn.ReLU(),
                nn.Linear(64, embed_dim)
            )

        # dynamic 数据分支
        if self.use_dynamic:
            self.dynamic_branch = nn.Sequential(
                nn.Linear(dynamic_input_dim, 64),
                nn.ReLU(),
                nn.Dropout(0.2),
                nn.Linear(64, embed_dim),
                nn.ReLU()
            )

        # IR 分支
        if self.use_ir:
            self.ir_branch = nn.Sequential(
                nn.Linear(ir_input_dim, 128),
                nn.ReLU(),
                nn.Dropout(0.2),
                nn.Linear(128, 64),
                nn.ReLU(),
                nn.Linear(64, embed_dim)
            )

        # 交叉注意力模块（可选使用）
        # self.cross_attention_1 = CrossAttention(embed_dim)
        # self.cross_attention_2 = CrossAttention(embed_dim)

        # 模态权重参数（根据启用模态数自动创建）
        num_modalities = sum([self.use_code, self.use_dynamic, self.use_ir])
        self.modal_weights = nn.Parameter(torch.ones(num_modalities))

        # 融合层
        self.fusion_layer = nn.Sequential(
            nn.Linear(
                (embed_dim if self.use_code else 0) +
                (embed_dim if self.use_dynamic else 0) +
                (embed_dim if self.use_ir else 0), 
                128),
            nn.ReLU(),
            nn.Dropout(0.2),
            nn.Linear(128, 64),
            nn.ReLU(),
            nn.Linear(64, 3)  # 输出2个标签
        )

    def forward(self, code_data, dynamic_data, ir_data):
        fusion_input = []
        modal_contributions = []
        idx = 0  # 用于访问 modal_weights 的下标

        # Code Embedding 分支
        if self.use_code:
            code_out = self.code_branch(code_data)  # [batch_size, embed_dim]
            fusion_input.append(code_out)
            modal_contributions.append(self.modal_weights[idx])
            idx += 1

        # dynamic 分支
        if self.use_dynamic:
            dynamic_out = self.dynamic_branch(dynamic_data)
            fusion_input.append(dynamic_out)
            modal_contributions.append(self.modal_weights[idx])
            idx += 1

        # IR 分支
        if self.use_ir:
            ir_out = self.ir_branch(ir_data)
            fusion_input.append(ir_out)
            modal_contributions.append(self.modal_weights[idx])
            idx += 1

        if len(fusion_input) == 0:
            raise ValueError("At least one of 'use_code', 'use_dynamic', or 'use_ir' must be True.")

        # 模态权重归一化
        modal_contributions = F.softmax(torch.stack(modal_contributions), dim=0)

        # 加权融合
        weighted_fusion_input = [
            modal_contributions[i] * fusion_input[i] for i in range(len(fusion_input))
        ]
        fusion_input = torch.cat(weighted_fusion_input, dim=1)
        out = self.fusion_layer(fusion_input)

        return out

# 假设你已经定义好 AblationModelWithWeights 和 train_loader

device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')

# 模态配置
configs = [
    {'use_code': True,  'use_dynamic': True,  'use_ir': True, 'use_cfg': True},   # baseline
    {'use_code': False, 'use_dynamic': True,  'use_ir': True, 'use_cfg': True},   # 去掉 code
    {'use_code': True,  'use_dynamic': False, 'use_ir': True, 'use_cfg': True},   # 去掉 dynamic
    {'use_code': True,  'use_dynamic': True,  'use_ir': False, 'use_cfg': True},   # 去掉 IR
    {'use_code': True,  'use_dynamic': False, 'use_ir': False, 'use_cfg': False}, # 去掉CFG
    {'use_code': True,  'use_dynamic': False, 'use_ir': False, 'use_cfg': False}  # 只保留 code
]

# 超参数
code_input_dim = 768
dynamic_input_dim = 5
ir_input_dim = 300
embed_dim = 32
epochs = 150

# 初始化日志文件
log_path = "/home/cjk/X-Blue/log/training_log.txt"
os.makedirs("log", exist_ok=True)
with open(log_path, 'w') as f:
    f.write("Training Log for All Configurations\n")
    f.write("=" * 50 + "\n\n")

# 保存所有 loss 曲线数据
all_loss_histories = []

# 训练每个配置
for config_idx, config in enumerate(configs):
    config_label = f"code{int(config['use_code'])}_dynamic{int(config['use_dynamic'])}_ir{int(config['use_ir'])}_cfg{int(config['use_cfg'])}"
    print(f"\nTraining model for config {config_idx + 1}: {config_label}")

    model = AblationModelWithWeights(
        code_input_dim=code_input_dim,
        dynamic_input_dim=dynamic_input_dim,
        ir_input_dim=ir_input_dim,
        embed_dim=embed_dim,
        use_code=config['use_code'],
        use_dynamic=config['use_dynamic'],
        use_ir=config['use_ir']
    ).to(device)

    criterion = nn.SmoothL1Loss()
    optimizer = torch.optim.Adam(model.parameters(), lr=0.001, weight_decay=1e-4)
    scheduler = torch.optim.lr_scheduler.StepLR(optimizer, step_size=10, gamma=0.5)

    loss_history = []
    start_time = time.time()

    for epoch in range(epochs):
        model.train()
        total_loss = 0.0

        for code_batch, dynamic_batch, ir_batch, label_batch in train_loader:
            code_batch = code_batch.to(device) if config['use_code'] else None
            dynamic_batch = dynamic_batch.to(device) if config['use_dynamic'] else None
            ir_batch = ir_batch.to(device) if config['use_ir'] else None
            label_batch = label_batch.float().to(device)

            optimizer.zero_grad()
            output = model(code_batch, dynamic_batch, ir_batch)
            loss = criterion(output, label_batch)
            loss.backward()
            torch.nn.utils.clip_grad_norm_(model.parameters(), max_norm=5.0)
            optimizer.step()
            total_loss += loss.item()

        scheduler.step()
        avg_loss = total_loss / len(train_loader)
        loss_history.append(avg_loss)
        print(f"Epoch {epoch + 1}/{epochs}, Loss: {avg_loss:.4f}")

    end_time = time.time()
    elapsed = end_time - start_time

    # 保存 loss 曲线数据
    all_loss_histories.append((config_label, loss_history))

    # 保存模型
    save_path = f"/home/cjk/X-Blue/model/fusion_model_{config_label}.pth"
    torch.save(model.state_dict(), save_path)
    print(f"Model saved to {save_path}")

    # 写入日志文件
    with open(log_path, 'a') as f:
        f.write(f"Configuration: {config_label}\n")
        for epoch_idx, loss_val in enumerate(loss_history):
            f.write(f"Epoch {epoch_idx + 1}: Loss = {loss_val:.4f}\n")
        f.write(f"Final Loss: {loss_history[-1]:.4f}\n")
        f.write(f"Training Time: {elapsed:.2f} seconds\n")
        f.write("-" * 40 + "\n")

# 绘制所有 loss 曲线
plt.figure(figsize=(12, 7))
for label, loss_history in all_loss_histories:
    plt.plot(range(1, epochs + 1), loss_history, label=label)

plt.title("Training Loss Curves for All Configurations")
plt.xlabel("Epoch")
plt.ylabel("Loss (SmoothL1)")
plt.legend()
plt.grid(True)
plt.tight_layout()
plt.savefig("/home/cjk/X-Blue/figure/training_loss_curves.png")

print("All training done. Logs saved to training_log.txt.")