# AquaCast – Synthesized Datasets

This directory contains synthetically generated datasets used in the AquaCast project for
benchmarking, ablation studies, and public reproducibility, without releasing confidential
real-world data.

The synthesized datasets emulate key temporal and statistical characteristics of urban
water dynamics under different rainfall-information settings and signal-complexity regimes.

---

## File Naming Convention

All dataset files follow the pattern:

    synthesized_v2_X_Y.csv

where:

### X — Signal Complexity Level (Generator)

- **X = 1 — SynthLow**
  - Generator: MeteoSwiss-based signal
  - Characteristics: smooth, low-variability dynamics

- **X = 2 — SynthMid**
  - Generator: Lorenz Attractor
  - Characteristics: nonlinear, chaotic dynamics with medium complexity

- **X = 3 — SynthHigh**
  - Generator: Random Fields
  - Characteristics: high-variability, stochastic spatial–temporal dynamics

---

### Y — Rainfall Information Configuration

- **Y = 0 — NoRain**
  - No rainfall information included

- **Y = 1 — RainHist**
  - Historical rainfall only

- **Y = 2 — RainFull**
  - Historical + future (forecasted) rainfall

---

### Example

    synthesized_v2_2_1.csv

This corresponds to a **SynthMid (Lorenz Attractor)** signal with **historical rainfall**.

---

## Dataset Combinations (v2)

- `synthesized_v2_1_0.csv`
  - SynthLow (MeteoSwiss-based)
  - No rainfall input

- `synthesized_v2_1_1.csv`
  - SynthLow (MeteoSwiss-based)
  - Historical rainfall

- `synthesized_v2_1_2.csv`
  - SynthLow (MeteoSwiss-based)
  - Historical + future rainfall

- `synthesized_v2_2_0.csv`
  - SynthMid (Lorenz Attractor)
  - No rainfall input

- `synthesized_v2_2_1.csv`
  - SynthMid (Lorenz Attractor)
  - Historical rainfall

- `synthesized_v2_2_2.csv`
  - SynthMid (Lorenz Attractor)
  - Historical + future rainfall

- `synthesized_v2_3_0.csv`
  - SynthHigh (Random Fields)
  - No rainfall input

- `synthesized_v2_3_1.csv`
  - SynthHigh (Random Fields)
  - Historical rainfall

- `synthesized_v2_3_2.csv`
  - SynthHigh (Random Fields)
  - Historical + future rainfall

---

## Dataset Structure
Dataset structure for time-series forecasting in CSV columns' format

1. only endogenous time-series

    date, node1, node2, ...

2. Including endogenous time-series history

    date, node1, node2, ..., rain

3. using perfect exogenous forecast

    a. AquaCast

        date, node1, node2, ..., rain

    b. PatchTST (rain_forecast_steps should be equal to history steps)
    
        date, node1, node2, ..., rain, rain_forecast_steps

---

## Reproducibility

A ready-to-use script to train and test models on these synthesized datasets is provided at:

    AquaCast/scripts/AquaCast/synthesized.sh

Please refer to the main repository README for environment setup and general experiment
instructions.

---

## Data Privacy

All datasets in this directory are fully synthetic and do not contain any real measurements,
locations, or sensitive infrastructure information. Real-world datasets used in AquaCast
experiments are governed by non-disclosure agreements (NDAs) and are not publicly released.

---

## Contact

For questions or issues related to the synthesized datasets, please open a GitHub issue in
the main AquaCast repository.
