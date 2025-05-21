import os
import argparse
import pandas as pd
import json
from sentence_transformers import SentenceTransformer
import ir2vec
import networkx as nx
from gensim.models import Word2Vec

def process_code(cpp_path, output_dir, kernel_id, model_path="/home/pm/codebert-base"):
    with open(cpp_path, "r") as f:
        code = f.read()
    one_line_code = "\\n".join(line.strip() for line in code.strip().split("\n"))
    json_data = {"source_code": one_line_code, "kernel-name": kernel_id}
    df = pd.DataFrame([json_data])
    model = SentenceTransformer(model_path)
    df["embedding"] = df["source_code"].apply(lambda x: model.encode(x, show_progress_bar=True).tolist())
    out_path = os.path.join(output_dir, "code_embedding.jsonl")
    df.to_json(out_path, orient="records", lines=True, force_ascii=False)
    print(f"✅ Code embedding saved to {out_path}")

def convert_ll_to_embedding(ll_file_path):
    try:
        initObj = ir2vec.initEmbedding(ll_file_path, "fa", "p")
        return ir2vec.getFunctionVectors(initObj)
    except Exception as e:
        print(f"Error processing {ll_file_path}: {e}")
        return None

def process_ir(ll_path, kernel_id, output_dir):
    embedding_dict = convert_ll_to_embedding(ll_path)
    if not embedding_dict:
        print("❌ IR embedding failed.")
        return
    out_path = os.path.join(output_dir, "ir_embedding.jsonl")
    reformatted_data = []
    for func_sig, content in embedding_dict.items():
        reformatted_data.append({
            "function": content.get("actualName", func_sig),
            "embedding": content.get("vector", []),
            "kernel-name": kernel_id
        })
    df = pd.DataFrame(reformatted_data)
    df.to_json(out_path, orient="records", lines=True)
    print(f"✅ IR embedding saved to {out_path}")

def process_dynamic(csv_path, output_dir):
    df = pd.read_csv(csv_path)
    out_path = os.path.join(output_dir, "dynamic_data.jsonl")
    df.to_json(out_path, orient="records", lines=True, force_ascii=False)
    print(f"✅ Dynamic data saved to {out_path}")

# ✅ 新增：解析 .dot 文件为 CFG embedding
def parse_dot_file(dot_path):
    G = nx.DiGraph()
    with open(dot_path, 'r') as f:
        lines = f.readlines()

    nodes = {}
    for line in lines:
        if "label=" in line:
            parts = line.strip().split(" ", 1)
            if len(parts) >= 2:
                node_id = parts[0]
                label_start = line.find("label=")
                label = line[label_start + 6:].split('"')[1]  # 提取引号中的label
                nodes[node_id] = label
                G.add_node(node_id, label=label)
        elif "->" in line:
            parts = line.strip().split("->")
            if len(parts) >= 2:
                src = parts[0].strip()
                tgt = parts[1].split()[0].strip()
                G.add_edge(src, tgt)

    return G, nodes

def process_dot(dot_path, kernel_id, output_dir):
    G, nodes = parse_dot_file(dot_path)
    node_labels = [label for label in nodes.values()]
    if not node_labels:
        print(f"❌ No valid nodes found in {dot_path}")
        return
    model = Word2Vec(sentences=[[label.split() for label in node_labels][0]], vector_size=128, window=5, min_count=1, workers=1)
    node_embeddings = {node_id: model.wv[nodes[node_id]].tolist() for node_id in nodes if nodes[node_id] in model.wv}
    edge_index = [[list(nodes).index(src), list(nodes).index(dst)] for src, dst in G.edges if src in nodes and dst in nodes]
    
    out_data = {
        "kernel-name": kernel_id,
        "nodes": nodes,
        "node_embeddings": node_embeddings,
        "edge_index": edge_index
    }

    out_path = os.path.join(output_dir, "cfg_graph.json")
    with open(out_path, "w") as f:
        json.dump(out_data, f, indent=2)
    print(f"✅ CFG graph data saved to {out_path}")

# ✅ 主入口
def main():
    parser = argparse.ArgumentParser(description="Unified processor for code, IR, dynamic, and CFG data.")
    parser.add_argument('--cpp', help="Path to HIP .cpp file")
    parser.add_argument('--ll', help="Path to LLVM IR .ll file")
    parser.add_argument('--csv', help="Path to dynamic CSV file")
    parser.add_argument('--dot', help="Path to CFG .dot file")
    parser.add_argument('--out_dir', required=True, help="Directory to save output JSONL files")
    parser.add_argument('--model', default="/home/pm/codebert-base", help="Code embedding model path")
    args = parser.parse_args()
    os.makedirs(args.out_dir, exist_ok=True)

    kernel_id = None
    if args.csv:
        df = pd.read_csv(args.csv)
        if "kernel-name" in df.columns:
            kernel_id = df.iloc[0]["kernel-name"]
        else:
            raise ValueError("❌ 'kernel-name' column not found in dynamic CSV.")
    process_dynamic(args.csv, args.out_dir)

    if args.cpp:
        process_code(args.cpp, args.out_dir, kernel_id, args.model)
    if args.ll:
        process_ir(args.ll, kernel_id, args.out_dir)
    if args.dot:
        process_dot(args.dot, kernel_id, args.out_dir)

if __name__ == "__main__":
    main()
    # 读取 dynamic 数据（很多行）
    with open("/home/cjk/X-Blue/output_embedding/dynamic_data.jsonl", "r") as f:
        dynamic_lines = [json.loads(line) for line in f]
    dynamic_df = pd.DataFrame(dynamic_lines)

    # 读取 code 和 ir（各只有一行）
    with open("/home/cjk/X-Blue/output_embedding/code_embedding.jsonl", "r") as f:
        code_entry = json.loads(f.readline())

    with open("/home/cjk/X-Blue/output_embedding/ir_embedding.jsonl", "r") as f:
        ir_entry = json.loads(f.readline())

    # 从中提取要添加的字段
    code_fields = {
        "code_embedding": code_entry.get("embedding"),
    }
    ir_fields = {
        "ir_embedding": ir_entry.get("embedding"),
    }

    # 为每一行 dynamic 数据加上 code + ir 信息
    for row in dynamic_lines:
        row.update(code_fields)
        row.update(ir_fields)

    # 保存最终结果
    with open("/home/cjk/X-Blue/output_embedding/final_merged.jsonl", "w") as f:
        for row in dynamic_lines:
            f.write(json.dumps(row) + "\n")
    
