# Economic Evaluation and Budget Impact Analysis of Increased Peritoneal Dialysis Uptake in Singapore

This repository contains a reproducible health economics portfolio project comparing increased peritoneal dialysis (PD) uptake with a current haemodialysis (HD)-dominant pathway among medically suitable patients with kidney failure in Singapore.

The analysis uses a cohort Markov cost-utility model and a five-year budget impact analysis. It includes model-ready datasets, base-case economic results, budget impact scenarios, one-way sensitivity analysis, technical scenario analysis and threshold analysis.

This is an educational portfolio model using public cost proxies, published evidence and transparent assumptions. It is not an official funding evaluation, clinical recommendation or substitute for local provider-cost, claims or registry analysis.

## Key findings

In the base case, increased PD uptake was associated with:

- Five-year cost saving of approximately **S$5,986 per eligible patient**
- Incremental QALY gain of **0.0105 per eligible patient**
- Cumulative five-year budget savings of approximately **S$15.89 million** under the base adoption scenario

The findings should be interpreted cautiously because several inputs are based on public cost proxies, literature-derived estimates and analyst assumptions. The base-case model assumes equal mortality between HD and PD, so the results should not be interpreted as showing a survival advantage for PD.

## Repository structure

```text
hd-pd-singapore-hta/
├── data_raw/                  # Raw input CSVs with source keys and assumptions
├── data_processed/            # Cleaned and model-ready inputs
├── notebooks/                 # Reproducible workflow notebooks
│   ├── 00_generate_hd_pd_data_raw.ipynb
│   ├── 01_process_hd_pd_clinical_cost_data.ipynb
│   └── 02_hd_pd_hta_model.ipynb
├── outputs/final_for_report/  # Report-ready tables and figures
├── docs/                      # Report and documentation
├── scripts/                   # Helper script(s)
├── requirements.txt
└── README.md
```

## Workflow

Run the notebooks in order:

1. `notebooks/00_generate_hd_pd_data_raw.ipynb`  
   Generates the raw input CSVs in `data_raw/`.

2. `notebooks/01_process_hd_pd_clinical_cost_data.ipynb`  
   Cleans, validates and converts raw inputs into model-ready datasets in `data_processed/`.

3. `notebooks/02_hd_pd_hta_model.ipynb`  
   Runs the economic evaluation, budget impact analysis, sensitivity analysis, technical scenario analysis and threshold analysis.

You can also run the notebooks manually in JupyterLab or VS Code.

## Main outputs

Key report outputs are saved in `outputs/final_for_report/`:

- `economic_evaluation_summary_base_case.csv`
- `economic_evaluation_incremental_results_base_case.csv`
- `report_table_base_case_economic_results.csv`
- `report_table_incremental_results.csv`
- `report_table_budget_impact_summary.csv`
- `budget_impact_annual_results.csv`
- `budget_impact_cumulative_summary.csv`
- `report_table_model_input_summary.csv`
- `report_table_uncertainty_summary.csv`
- `technical_scenario_results.csv`
- `one_way_sensitivity_results.csv`
- `tornado_incremental_cost_data.csv`
- `tornado_incremental_qaly_data.csv`
- `threshold_analysis_pd_cost_summary.csv`
- `figure_annual_budget_impact.png`
- `figure_cumulative_budget_impact.png`
- `figure_five_year_budget_impact_by_scenario.png`
- `figure_tornado_incremental_cost.png`
- `figure_threshold_analysis_pd_cost.png`

## Documentation

The main report is available in `docs/`:

- `HD_PD_Singapore_HTA_report.docx`
- `HD_PD_Singapore_HTA_report.pdf`, if generated locally

Additional documentation:

- `docs/DATA_SOURCES.md`
- `docs/ASSUMPTIONS.md`
- `docs/MODEL_RESULTS_SUMMARY.md`

## Methods summary

The model uses four health states:

1. HD
2. PD
3. Switched PD to HD
4. Death

The base-case analysis uses a five-year time horizon and annual cycle length. The model estimates costs, life-years, QALYs, incremental costs and incremental QALYs per eligible patient. The budget impact analysis estimates annual and cumulative financial impact from 2026 to 2030 under low, base and high PD adoption scenarios.

## Data and source limitations

This project uses public Singapore-facing cost information, published evidence and transparent assumptions. It does not use patient-level data, confidential provider-cost data or claims data. Some inputs are therefore marked as high uncertainty in `data_processed/input_quality_flags.csv`.

Important limitations include:

- Public cost proxies are not the same as full provider-cost data.
- Mortality and modality-switching inputs are simplified.
- Utilities are literature-derived rather than Singapore patient-level estimates.
- The model does not explicitly include transplant, peritonitis, hospitalisation, or separate CAPD/APD pathways.
- Uptake scenarios are policy scenarios rather than forecasts.

## Reproducibility

The project separates raw data, processed model inputs and final outputs. Source and quality tracking files are included to make assumptions auditable:

- `data_processed/source_inventory.csv`
- `data_processed/input_quality_flags.csv`
- `data_processed/data_validation_summary.csv`
- `data_processed/processed_data_dictionary.csv`
- `outputs/final_for_report/output_inventory.csv`

## Citation and source note

Please cite the report and underlying public/published sources when reusing this work. Do not upload copyrighted textbook PDFs or paywalled journal PDFs into this repository.
