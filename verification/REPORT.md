# Portfolio verification report

Generated from repository inputs by `python scripts/validate_portfolio.py`. This is a structural and arithmetic check, not native Excel recalculation or proof of real project execution.

## Linked exercise results

| Project | Finish day | Forecast | Favorable variance | Required tests passed | Gate |
|---|---:|---:|---:|---:|---|
| E-Commerce_Platform_Launch | 11 | $7,100 | $-100 | 2/6 | HOLD |
| Global_Leadership_Training_Rollout | 11 | $7,100 | $-100 | 2/6 | HOLD |
| Hospital_Intake_Workflow_Optimization | 11 | $7,100 | $-100 | 2/6 | HOLD |
| Salesforce_CRM_Implementation | 11 | $7,100 | $-100 | 2/6 | HOLD |

HOLD is the expected result for the deliberately incomplete exercises. Passing validation means the records are consistent, not that a release is authorized.

## Workbook structural scan

| Workbook | Sheets | Formula cells | Missing caches | Stored errors / broken refs |
|---|---:|---:|---:|---:|
| E-Commerce_Platform_Launch/E-Commerce_Platform_Launch_Project_Dashboard.xlsx | 9 | 111 | 0 | 0 |
| Global_Leadership_Training_Rollout/Global_Leadership_Training_Rollout_Project_Dashboard.xlsx | 11 | 135 | 0 | 0 |
| Hospital_Intake_Workflow_Optimization/Hospital_Intake_Workflow_Optimization_Project_Dashboard.xlsx | 11 | 115 | 0 | 0 |
| Salesforce_CRM_Implementation/Project_Dashboard.xlsx | 6 | 0 | 0 | 0 |
| Salesforce_CRM_Implementation/Salesforce_CRM_Implementation_Project_Dashboard.xlsx | 13 | 130 | 0 | 0 |

Zero formula cells means a static snapshot. A populated cache is a saved value, not independent recalculation proof. Native Excel rendering and input-change testing were not performed. Read [metric qualifications](../docs/METRICS_AND_EVIDENCE.md) before interpreting reserve, EVM or adoption figures.

## Original SQL execution

SQLite execution against supplied CSVs. This verifies executable queries; it does not validate a production dataset.

| SQL file | Statements | Rows returned per statement |
|---|---:|---|
| Hospital_Intake_Workflow_Optimization/intake_analysis.sql | 5 | 6, 1, 1, 4, 6 |
| E-Commerce_Platform_Launch/project_analysis.sql | 4 | 6, 1, 4, 6 |
| Salesforce_CRM_Implementation/project_analysis.sql | 3 | 3, 1, 1 |
| Salesforce_CRM_Implementation/crm_analysis.sql | 5 | 6, 5, 5, 6, 1 |
| Global_Leadership_Training_Rollout/program_analysis.sql | 5 | 6, 1, 1, 3, 1 |

## Local link validation

Local Markdown file destinations: PASS. Historical Previous_Overview.md is excluded and clearly labeled as superseded.

## Result

Validation errors: **0**.
