-- MASTER COHORT TABLE (4-week retention, Option C: session_start + user_engagement)

WITH base AS (
  SELECT
    user_pseudo_id,
    DATE(TIMESTAMP_MICROS(event_timestamp)) AS event_date,
    event_name
  FROM `bigquery-public-data.ga4_obfuscated_sample_ecommerce.events_*`
  WHERE event_name IN ('session_start', 'user_engagement')
),

first_touch AS (
  SELECT
    user_pseudo_id,
    MIN(event_date) AS first_date
  FROM base
  GROUP BY user_pseudo_id
),

events_with_weeks AS (
  SELECT
    b.user_pseudo_id,
    b.event_date,
    b.event_name,
    f.first_date,
    FORMAT_DATE('%Y-%m', f.first_date) AS cohort_month,
    CAST(FLOOR(DATE_DIFF(b.event_date, f.first_date, DAY) / 7) AS INT64) AS week_number
  FROM base b
  JOIN first_touch f
    ON b.user_pseudo_id = f.user_pseudo_id
  WHERE DATE_DIFF(b.event_date, f.first_date, DAY) BETWEEN 0 AND 27  -- 4 weeks cap
),

cohort_size AS (
  SELECT
    cohort_month,
    COUNT(DISTINCT user_pseudo_id) AS cohort_users
  FROM events_with_weeks
  WHERE week_number = 0
  GROUP BY cohort_month
),

weekly_metrics AS (
  SELECT
    cohort_month,
    week_number,
    COUNT(DISTINCT user_pseudo_id) AS active_users,
    COUNT(*) AS engagement_events
  FROM events_with_weeks
  GROUP BY cohort_month, week_number
)

SELECT
  w.cohort_month,
  w.week_number,
  c.cohort_users AS cohort_size,
  w.active_users,
  SAFE_DIVIDE(w.active_users, c.cohort_users) AS retention_rate,
  SAFE_DIVIDE(w.engagement_events, w.active_users) AS avg_events_per_active_user
FROM weekly_metrics w
JOIN cohort_size c
  ON w.cohort_month = c.cohort_month
ORDER BY w.cohort_month, w.week_number;
