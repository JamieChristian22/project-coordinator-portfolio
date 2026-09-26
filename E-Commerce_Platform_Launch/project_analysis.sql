-- E-Commerce Platform Launch portfolio analysis
SELECT week, tasks_completed, ROUND(100.0 * tasks_completed / tasks_planned, 1) AS completion_pct FROM project_metrics ORDER BY week;
SELECT AVG(team_velocity) AS avg_velocity, MAX(team_velocity) AS peak_velocity FROM project_metrics;
SELECT week, open_issues FROM project_metrics WHERE open_issues > 0 ORDER BY open_issues DESC;
SELECT week, milestones_completed, milestones_due, ROUND(100.0 * milestones_completed / milestones_due,1) AS milestone_completion_pct FROM project_metrics;
