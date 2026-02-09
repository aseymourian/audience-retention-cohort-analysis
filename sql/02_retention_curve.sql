SELECT
  acquisition_medium,
  week_number,
  AVG(retention_rate) AS avg_retention_rate
FROM `cohort-analysis-practice.analytics.cohort_master_4wk_master`
GROUP BY acquisition_medium, week_number
ORDER BY acquisition_medium, week_number;
