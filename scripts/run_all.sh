#!/usr/bin/env bash
set -euo pipefail

PROJECT_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$PROJECT_ROOT"

python -m jupyter nbconvert --to notebook --execute --inplace notebooks/00_generate_hd_pd_data_raw.ipynb --ExecutePreprocessor.timeout=600
python -m jupyter nbconvert --to notebook --execute --inplace notebooks/01_process_hd_pd_clinical_cost_data.ipynb --ExecutePreprocessor.timeout=600
python -m jupyter nbconvert --to notebook --execute --inplace notebooks/02_hd_pd_hta_model.ipynb --ExecutePreprocessor.timeout=600
