# AquaCast — Transformer-based Time-Series Forecasting (Research Code)

Deep learning models for **multi-variate, multi-horizon time-series forecasting**, with a focus on urban water and hydrological dynamics.

This repository contains:
- Research code for **AquaCast**, and **PatchTST**
- Synthesized datasets for public reproducibility
- Scripts and Docker support for controlled experimentation

---

## 📄 Paper / Preprint

**AquaCast: Precipitation-Informed Transformer for Urban Water Dynamics Forecasting**  
arXiv: https://arxiv.org/abs/2509.09458  

**Status:**  
This work is **submitted and currently under revision**.  
(The arXiv version should be cited when referring to this repository.)

---

## 🧪 Repository Status

- **Research code**
- Fully reproducible on **synthetic datasets**
- **Real-world and partner datasets are not included** due to non-disclosure agreements (NDAs)

---

## 📁 Data Overview

This repository includes **synthetic and real data *schemas*** (names and versions only).

- Synthesized datasets:  
  `AquaCast/Data/`  
  (see `AquaCast/Data/README.md` for full documentation)

---

## 🐳 Docker

To build the Docker image:

```bash
docker build -t synth:latest .
```

## Install (local)
```bash
python -m venv .venv && source .venv/bin/activate   # or conda
pip install -r requirements.txt
```

## ▶️ Running Experiments

All experiments are executed via bash scripts located under the scripts/ directory,
organized by model.

To run any experiment, use the following command pattern:
```bash
bash scripts/[model]/[script].sh
```
Examples:
```bash
bash scripts/AquaCast/synthesized.sh
bash scripts/PatchTST/traiLausanneCity.sh
```
## Citation
If you use this repository, code, or synthesized datasets in academic work, please cite:
```bibtex
@article{ABDOLLAHINEJAD2026135177,
title = {AquaCast: Urban water dynamics forecasting with precipitation-informed multi-input transformer},
journal = {Journal of Hydrology},
volume = {670},
pages = {135177},
year = {2026},
issn = {0022-1694},
doi = {https://doi.org/10.1016/j.jhydrol.2026.135177},
url = {https://www.sciencedirect.com/science/article/pii/S002216942600274X},
author = {Golnoosh Abdollahinejad and Saleh Baghersalimi and Denisa-Andreea Constantinescu and Sergey Shevchik and David Atienza},
keywords = {Time-series forecasting, Transformer, Urban drainage system, Water dynamics, Attention mechanism},
abstract = {This work addresses the challenge of forecasting urban water dynamics by developing a multi-input, multi-output deep learning model that incorporates both endogenous variables (e.g., water height or discharge) and exogenous factors (e.g., precipitation history and forecast reports). Unlike conventional forecasting, the proposed model, AquaCast, captures both inter-variable and temporal dependencies across all inputs, while focusing forecast solely on endogenous variables. Exogenous inputs are fused via an embedding layer, eliminating the need to forecast them and enabling the model to attend to their short-term influences more effectively. We evaluate our approach on the LausanneCity dataset, which includes measurements from four urban drainage sensors, and achieve up to 60.6% reduction in MSE and 30.4% improvement in MAE compared to state-of-the-art baseline for one-day-ahead forecasting when exogenous variables are included. To assess generalization and scalability, we additionally test the model on three large-scale synthesized datasets, generated from MeteoSwiss records, the Lorenz Attractors model, and the Random Fields model, each representing a different level of temporal complexity across 100 nodes. The results confirm that our model consistently outperforms existing baselines and maintains a robust and accurate forecast across both real and synthetic datasets.}
}
```

## Acknowledgement

We appreciate the following github repo very much for the valuable code base and datasets:

https://github.com/yuqinie98/PatchTST
