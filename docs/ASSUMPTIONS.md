# Assumptions and input quality

This project separates direct Singapore public sources, derived inputs, peer-reviewed/sector evidence, and high-uncertainty assumptions. This distinction is important because the model is intended as a transparent portfolio analysis, not a definitive funding recommendation.

## Derived input

- `estimated_new_kidney_failure_patients_per_year` = 2190.0 patients_per_year (`NKF_KEY_STATS`): Derived as 6 new patients per day multiplied by 365 days. Replace with registry annual incident count if available.

- `current_hd_uptake_new_dialysis_patients` = 0.81 proportion (`MOH_PD_POLICY`): Derived as 1 minus current PD uptake.

- `target_hd_uptake_new_dialysis_patients` = 0.7 proportion (`MOH_PD_POLICY`): Derived as 1 minus target PD uptake.

- `hd_annual_cost` = 37800.0 SGD_per_year (`DUKE_MYKIDNEY_COSTS`): Derived from monthly HD cost.

- `capd_annual_cost` = 14400.0 SGD_per_year (`HEALTHHUB_PD_COSTS`): Derived from monthly CAPD cost.

- `apd_annual_cost` = 20400.0 SGD_per_year (`HEALTHHUB_PD_COSTS`): Derived from monthly APD cost.

- `pd_blended_monthly_cost` = 1570.0 SGD_per_month (`KHAN_2022_ECONOMICS`): Weighted average using APD/CAPD mix from Singapore health economics article and PD cost ranges from HealthHub.

- `pd_blended_annual_cost` = 18840.0 SGD_per_year (`KHAN_2022_ECONOMICS`): Base annual PD cost used in the simplified two-modality model.

## High uncertainty / assumption

- `health_state_utility_hd` = 0.58 utility_weight (`COOPER_2020_UTILITIES`): Placeholder utility for first-pass model. Cooper et al. systematic review supports using CKD utility evidence, but this exact base value should be sensitivity-tested.

- `health_state_utility_pd` = 0.62 utility_weight (`YANG_2018_PD_HRQoL`): Placeholder utility for first-pass model. Keep utility difference small because Singapore PD modality HRQoL evidence suggests differences can be modest.

- `health_state_utility_switched_pd_to_hd` = 0.56 utility_weight (`COOPER_2020_UTILITIES`): Assumed slightly lower than stable HD due to prior technique failure/switch burden. High-priority sensitivity parameter.

- `annual_death_probability_hd` = 0.12 annual_probability (`KHOO_2022_OUTCOMES`): Base case assumes equal annual mortality for HD and PD to avoid over-interpreting observational modality differences. Replace with registry-calibrated survival if available.

- `annual_death_probability_pd` = 0.12 annual_probability (`KHOO_2022_OUTCOMES`): Base case assumes equal mortality. Scenario analysis can apply the Singapore observational HR for PD versus HD.

- `annual_pd_to_hd_switch_probability` = 0.15 annual_probability (`KHAN_2022_ECONOMICS`): Represents PD technique failure or modality switch. Needs validation from registry or local clinical input.

- `annual_hd_to_pd_switch_probability` = 0.01 annual_probability (`MOH_PD_POLICY`): Small switch probability because the policy question focuses on initial modality uptake among new patients.

## Other

- `health_state_utility_death` = 0.0 utility_weight (`DRUMMOND_2015`): Death has zero utility in QALY modelling.

## Singapore peer-reviewed or sector evidence

- `apd_share_of_pd_patients` = 0.74 proportion (`KHAN_2022_ECONOMICS`): Used to estimate blended PD cost where PD is not separated into APD and CAPD in the main model.

- `capd_share_of_pd_patients` = 0.26 proportion (`KHAN_2022_ECONOMICS`): Complements APD share. Values should sum to 1 in the base case.

- `yang_2016_total_cost_capd` = 169872.0 SGD_total_model_horizon (`YANG_2016_CEA`): Used as external plausibility check, not as the direct annual cost input.

- `yang_2016_total_cost_apd` = 201509.0 SGD_total_model_horizon (`YANG_2016_CEA`): Used as external plausibility check, not as the direct annual cost input.

- `yang_2016_total_cost_hd` = 306827.0 SGD_total_model_horizon (`YANG_2016_CEA`): Used as external plausibility check, not as the direct annual cost input.

- `yang_2016_qaly_capd` = 3.27 QALYs_total_model_horizon (`YANG_2016_CEA`): Used for plausibility checking against this project's model outputs.

- `yang_2016_qaly_apd` = 3.48 QALYs_total_model_horizon (`YANG_2016_CEA`): Used for plausibility checking against this project's model outputs.

- `yang_2016_qaly_hd` = 4.69 QALYs_total_model_horizon (`YANG_2016_CEA`): Used for plausibility checking against this project's model outputs.

- `pd_mortality_hazard_ratio_vs_hd` = 1.51 hazard_ratio (`KHOO_2022_OUTCOMES`): Use as scenario only because modality selection and case-mix may confound observational mortality differences.

- `annual_transplant_probability` = 0.0 annual_probability (`KHAN_2022_ECONOMICS`): Transplant is excluded from the base model to keep the first version transparent. Add as a scenario later if needed.

## Singapore public source

- `prevalent_dialysis_patients_singapore` = 9000.0 patients (`NKF_KEY_STATS`): NKF reports more than 9,000 dialysis patients in Singapore.

- `new_kidney_failure_patients_per_day` = 6.0 patients_per_day (`NKF_KEY_STATS`): NKF reports around six new kidney failure patients daily.

- `diabetes_share_of_new_kidney_failure_cases` = 0.6666666666666666 proportion (`NKF_KEY_STATS`): NKF reports that about two in three new kidney failure cases are due to diabetes.

- `annual_dialysis_spending_singapore` = 300000000.0 SGD_per_year (`NKF_KEY_STATS`): NKF reports around S$300 million is spent annually on dialysis treatment.

- `current_pd_uptake_new_dialysis_patients` = 0.19 proportion (`MOH_PD_POLICY`): MOH reported PD uptake among new dialysis patients at 19% before the planned increase.

- `target_pd_uptake_new_dialysis_patients` = 0.3 proportion (`MOH_PD_POLICY`): MOH stated a target to raise PD uptake among new dialysis patients to 30% by 2025.

- `hd_monthly_cost` = 3150.0 SGD_per_month (`DUKE_MYKIDNEY_COSTS`): Patient-facing monthly HD cost range, excluding transport costs. This is a cost proxy, not a full provider cost.

- `capd_monthly_cost` = 1200.0 SGD_per_month (`HEALTHHUB_PD_COSTS`): Patient-facing CAPD cost range from HealthHub.

- `apd_monthly_cost` = 1700.0 SGD_per_month (`HEALTHHUB_PD_COSTS`): Patient-facing APD cost range, excluding electricity bill.
