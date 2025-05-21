import os
import torch
import torch.nn as nn
import numpy as np
import matplotlib.pyplot as plt
from sklearn.metrics import mean_squared_error, mean_absolute_error
from torch_geometric.data import Data, DataLoader, Batch
from torch_geometric.loader import DataLoader
import torch.nn.functional as F

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

# 加载保存的数据
data = torch.load('/home/cjk/X-Blue/model/saved_test_data.pt', weights_only=False)

# 构造测试集
test_dataset = MultiModalDataset(
    data['code_embedding'],
    data['dynamic_features'],
    data['ir_embedding'],
    data['labels']
)
test_loader = DataLoader(test_dataset, batch_size=8, shuffle=False)

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

# =======================
# 配置与设备
# =======================
device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
save_dir = "/home/cjk/X-Blue/figure/"
os.makedirs(save_dir, exist_ok=True)

configs = [
    {'use_code': True,  'use_dynamic': True,  'use_ir': True, 'use_cfg': True},   # baseline
    {'use_code': False, 'use_dynamic': True,  'use_ir': True, 'use_cfg': True},   # 去掉 code
    {'use_code': True,  'use_dynamic': False, 'use_ir': True, 'use_cfg': True},   # 去掉 dynamic
    {'use_code': True,  'use_dynamic': True,  'use_ir': False, 'use_cfg': True},   # 去掉 IR
    {'use_code': True,  'use_dynamic': False, 'use_ir': False, 'use_cfg': False}, # 去掉CFG
    {'use_code': True,  'use_dynamic': False, 'use_ir': False, 'use_cfg': False}  # 只保留 code
]

metric_names = ['time', 'L2CacheHit', 'L1CacheHit']
all_results = []

# =======================
# 模型测试
# =======================
for config_idx, config in enumerate(configs):
    print(f"\n=== Testing config {config_idx+1}: {config} ===")

    model = AblationModelWithWeights(
        code_input_dim=768,
        dynamic_input_dim=5,
        ir_input_dim=300,
        embed_dim=32,
        use_code=config['use_code'],
        use_dynamic=config['use_dynamic'],
        use_ir=config['use_ir']
    ).to(device)

    checkpoint_path = f"/home/cjk/X-Blue/model/fusion_model_code{int(config['use_code'])}_dynamic{int(config['use_dynamic'])}_ir{int(config['use_ir'])}_cfg{int(config['use_cfg'])}.pth"
    model.load_state_dict(torch.load(checkpoint_path, map_location=device))
    model.eval()

    all_preds = []
    all_labels = []

    with torch.no_grad():
        for code_batch, dynamic_batch, ir_batch, label_batch in test_loader:
            code_batch = code_batch.to(device) if config['use_code'] else None
            dynamic_batch = dynamic_batch.to(device) if config['use_dynamic'] else None
            ir_batch = ir_batch.to(device) if config['use_ir'] else None
            label_batch = label_batch.float().to(device)

            output = model(code_batch, dynamic_batch, ir_batch)
            all_preds.append(output.cpu())
            all_labels.append(label_batch.cpu())

    all_preds = torch.cat(all_preds, dim=0).numpy()
    all_labels = torch.cat(all_labels, dim=0).numpy()

    all_preds = np.exp(all_preds)
    all_labels = np.exp(all_labels)

    config_result = {'mae': [], 'mse': [], 'mape': []}
    epsilon = 1e-8

    for i in range(all_preds.shape[1]):
        pred_i = all_preds[:, i]
        label_i = all_labels[:, i]

        mae = mean_absolute_error(label_i, pred_i)
        mse = mean_squared_error(label_i, pred_i)
        mape = np.mean(np.abs((label_i - pred_i) / (label_i + epsilon))) * 100

        config_result['mae'].append(mae)
        config_result['mse'].append(mse)
        config_result['mape'].append(mape)

        print(f"\n▶ {metric_names[i]}:")
        print(f"    MAE  : {mae:.4f}")
        print(f"    MSE  : {mse:.4f}")
        print(f"    MAPE : {mape:.2f}%")

    all_results.append(config_result)

# =======================
# 柱状图可视化保存图像
# =======================
x_labels = ["All", "w/o Code", "w/o Dynamic", "w/o IR", "w/o CFG","Only Code"]
x = np.arange(len(x_labels))
bar_width = 0.25

metrics_to_plot = ['mae', 'mse', 'mape']

for metric in metrics_to_plot:
    plt.figure(figsize=(10, 6))

    for i in range(len(metric_names)):
        values = [all_results[j][metric][i] for j in range(len(all_results))]
        plt.bar(x + i * bar_width, values, width=bar_width, label=metric_names[i])

    plt.title(f"{metric.upper()} Comparison Across Ablations")
    plt.xlabel("Ablation Config")
    plt.ylabel(metric.upper())
    plt.xticks(x + bar_width, x_labels, rotation=30)
    plt.legend()
    plt.grid(axis='y')
    plt.tight_layout()
    plt.savefig(os.path.join(save_dir, f"{metric}_test.png"))
    plt.close()

print(f"\n✅ 所有图已保存至目录：{save_dir}")

# =======================
# 日志保存
# =======================
log_path = "/home/cjk/X-Blue/log/test_log.txt"
with open(log_path, 'w') as f:
    for config_idx, config in enumerate(configs):
        f.write(f"=== Config {config_idx+1}: {config} ===\n")
        for i, metric in enumerate(metric_names):
            f.write(f"▶ {metric}:\n")
            f.write(f"    MAE  : {all_results[config_idx]['mae'][i]:.4f}\n")
            f.write(f"    MSE  : {all_results[config_idx]['mse'][i]:.4f}\n")
            f.write(f"    MAPE : {all_results[config_idx]['mape'][i]:.2f}%\n")
        f.write("\n")

print(f"📝 测试日志已保存到: {log_path}")