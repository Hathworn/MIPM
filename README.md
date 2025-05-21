# Performance Modeling Toolkit Usage Guide

This toolkit includes scripts for processing input data, training a performance model, and making predictions. It also organizes outputs in structured folders.

## 1. `dataprocess.py`: Data Processing to Embeddings

This script processes input code and performance data into vector embeddings for model training.

**Usage:**
```bash
python dataprocess.py --cpp *.cpp --ll *.ll --csv *.csv --out_dir ** --dot *.dot

Replace * with the actual filenames.

Replace ** with your desired output directory. It is recommended to set this to output_embedding to ensure compatibility with subsequent training steps.

## 2. `modeling.py`: Train the Performance Model
This script trains the neural network model using the preprocessed embeddings.

**Usage:**
```bash
python modeling.py

## 3. `test_predict.py`: Predict with Trained Model
This script loads the trained model and performs predictions on new data.

**Usage:**
```bash
python test_predict.py

## 4. Directory Structure
The following directories are automatically created and used during execution:
| Folder Name         | Description                                                |
| ------------------- | ---------------------------------------------------------- |
| `figure/`           | Stores plots of training curves and prediction results     |
| `log/`              | Contains logs from training and prediction processes       |
| `model/`            | Saves the parameters and checkpoints of the trained models |
| `meta_data/`        | Stores metadata uploaded by users                          |
| `output_embedding/` | Stores intermediate vector data output by `dataprocess.py` |