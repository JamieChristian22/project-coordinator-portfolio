-- Hospital Intake Workflow Optimization - Simulated Portfolio Analysis
-- No real patient data is used.

-- 1. Weekly operational performance
SELECT
    week,
    patients_processed,
    avg_registration_min,
    avg_wait_min,
    ROUND(digital_form_rate * 100, 1) AS digital_form_pct,
    ROUND(data_error_rate * 100, 1) AS data_error_pct,
    patient_satisfaction
FROM intake_metrics
ORDER BY week;

-- 2. Registration-time improvement from first to final week
WITH ranked AS (
    SELECT *,
           ROW_NUMBER() OVER (ORDER BY week) AS rn_asc,
           ROW_NUMBER() OVER (ORDER BY week DESC) AS rn_desc
    FROM intake_metrics
)
SELECT
    MAX(CASE WHEN rn_asc = 1 THEN avg_registration_min END) AS baseline_registration_min,
    MAX(CASE WHEN rn_desc = 1 THEN avg_registration_min END) AS final_registration_min,
    ROUND(
      (MAX(CASE WHEN rn_asc = 1 THEN avg_registration_min END)
       - MAX(CASE WHEN rn_desc = 1 THEN avg_registration_min END))
      * 100.0
      / NULLIF(MAX(CASE WHEN rn_asc = 1 THEN avg_registration_min END), 0),
      1
    ) AS registration_reduction_pct
FROM ranked;

-- 3. Patient-wait improvement
SELECT
    MIN(avg_wait_min) AS best_avg_wait_min,
    MAX(avg_wait_min) AS baseline_avg_wait_min
FROM intake_metrics;

-- 4. Weeks requiring issue-management attention
SELECT week, open_issues, staff_rework_cases
FROM intake_metrics
WHERE open_issues >= 3
ORDER BY open_issues DESC, week;

-- 5. Adoption and quality relationship
SELECT
    week,
    ROUND(digital_form_rate * 100, 1) AS digital_form_pct,
    ROUND(data_error_rate * 100, 1) AS data_error_pct
FROM intake_metrics
ORDER BY week;
