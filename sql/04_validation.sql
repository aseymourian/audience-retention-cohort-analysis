1️⃣ Retention Formula Check
  
SELECT
  COUNTIF(ABS(retention_rate - SAFE_DIVIDE(active_users, cohort_size)) > 1e-9) AS mismatch_rows,
  COUNT(*) AS total_rows
FROM `cohort-analysis-practice.analytics.cohort_master_4wk_master`;

2️⃣ Week 0 = 100% Check
  
SELECT cohort_month, acquisition_medium, retention_rate
FROM `cohort-analysis-practice.analytics.cohort_master_4wk_master`
WHERE week_number = 0 AND retention_rate != 1;

3️⃣ Missing Values Check

SELECT
  COUNTIF(acquisition_medium IS NULL) AS null_channels,
  COUNTIF(retention_rate IS NULL) AS null_retention
FROM `cohort-analysis-practice.analytics.cohort_master_4wk_master`;

4️⃣ Range Check (0–1)

SELECT *
FROM `cohort-analysis-practice.analytics.cohort_master_4wk_master`
WHERE retention_rate < 0 OR retention_rate > 1;

5️⃣ Channel Distribution 

SELECT
  acquisition_medium,
  COUNT(*) AS row_count
FROM `cohort-analysis-practice.analytics.cohort_master_4wk_master`
GROUP BY acquisition_medium
ORDER BY row_count DESC;
