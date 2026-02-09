SELECT
  cohort_month,
  acquisition_medium,
  week_number,
  retention_rate
FROM `cohort-analysis-practice.analytics.cohort_master_4wk_master`
ORDER BY cohort_month, acquisition_medium, week_number;
