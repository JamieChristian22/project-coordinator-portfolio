-- Global Leadership Training Rollout - Portfolio Analysis
-- Assumes a table named program_metrics with columns matching program_metrics.csv.

-- 1. Weekly participation and completion performance
SELECT
    week,
    registered,
    attended,
    completed,
    ROUND(attended * 100.0 / NULLIF(registered, 0), 1) AS attendance_pct,
    ROUND(completed * 100.0 / NULLIF(attended, 0), 1) AS completion_pct
FROM program_metrics
ORDER BY week;

-- 2. Highest-volume training week
SELECT week, completed
FROM program_metrics
ORDER BY completed DESC
LIMIT 1;

-- 3. Average participant satisfaction
SELECT ROUND(AVG(avg_satisfaction), 2) AS avg_program_satisfaction
FROM program_metrics;

-- 4. Weeks that required issue-management attention
SELECT week, open_issues, sessions_delivered
FROM program_metrics
WHERE open_issues >= 3
ORDER BY open_issues DESC, week;

-- 5. Improvement from first week to final week
WITH ranked AS (
    SELECT *,
           ROW_NUMBER() OVER (ORDER BY week) AS rn_asc,
           ROW_NUMBER() OVER (ORDER BY week DESC) AS rn_desc
    FROM program_metrics
)
SELECT
    MAX(CASE WHEN rn_asc = 1 THEN completed END) AS first_week_completions,
    MAX(CASE WHEN rn_desc = 1 THEN completed END) AS final_week_completions,
    MAX(CASE WHEN rn_desc = 1 THEN completed END)
      - MAX(CASE WHEN rn_asc = 1 THEN completed END) AS completion_growth
FROM ranked;
