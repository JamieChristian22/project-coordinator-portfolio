SELECT week, tasks_completed FROM project_metrics ORDER BY tasks_completed DESC;
SELECT AVG(team_velocity) AS avg_velocity FROM project_metrics;
SELECT week, open_issues FROM project_metrics WHERE open_issues > 2;