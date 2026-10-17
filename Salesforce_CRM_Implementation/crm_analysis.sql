-- Salesforce CRM Implementation - Simulated Portfolio Analysis

-- 1. Weekly implementation readiness
SELECT
    week,
    requirements_approved,
    config_items_complete,
    migration_records_loaded,
    ROUND(migration_success_rate * 100, 1) AS migration_success_pct,
    uat_cases_executed,
    ROUND(uat_pass_rate * 100, 1) AS uat_pass_pct,
    open_defects,
    ROUND(training_completion_rate * 100, 1) AS training_completion_pct,
    ROUND(login_adoption_rate * 100, 1) AS login_adoption_pct
FROM crm_metrics
ORDER BY week;

-- 2. Migration quality trend
SELECT week, migration_records_loaded,
       ROUND(migration_success_rate * 100, 1) AS migration_success_pct
FROM crm_metrics
WHERE migration_records_loaded > 0
ORDER BY week;

-- 3. UAT readiness and defect trend
SELECT week, uat_cases_executed,
       ROUND(uat_pass_rate * 100, 1) AS uat_pass_pct,
       critical_defects,
       open_defects
FROM crm_metrics
WHERE uat_cases_executed > 0
ORDER BY week;

-- 4. Adoption progression
SELECT week, active_users,
       ROUND(training_completion_rate * 100, 1) AS training_pct,
       ROUND(login_adoption_rate * 100, 1) AS login_adoption_pct
FROM crm_metrics
ORDER BY week;

-- 5. First-to-final week adoption improvement
WITH ranked AS (
    SELECT *,
           ROW_NUMBER() OVER (ORDER BY week) AS rn_asc,
           ROW_NUMBER() OVER (ORDER BY week DESC) AS rn_desc
    FROM crm_metrics
)
SELECT
    MAX(CASE WHEN rn_asc = 1 THEN login_adoption_rate END) AS initial_adoption,
    MAX(CASE WHEN rn_desc = 1 THEN login_adoption_rate END) AS final_adoption,
    MAX(CASE WHEN rn_desc = 1 THEN login_adoption_rate END)
      - MAX(CASE WHEN rn_asc = 1 THEN login_adoption_rate END) AS adoption_gain
FROM ranked;
