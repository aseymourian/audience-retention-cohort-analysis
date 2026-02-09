# Audience Retention Cohort Analysis

Cohort-based retention analysis using GA4 data to evaluate user engagement, lifecycle behavior, and acquisition channel performance.

---

## 📊 Project Overview

This project analyzes how user engagement declines over time after acquisition and compares retention patterns across cohort months and acquisition channels.

The goal is to identify early churn trends and provide actionable insights for improving onboarding and lifecycle marketing.

---

## 🎯 Objective

- Measure post-acquisition retention by cohort
- Compare retention across months and channels
- Identify early drop-off patterns
- Support lifecycle optimization decisions

---

## 📁 Data Source

- Google Analytics 4 Public Ecommerce Dataset
- Extracted using Google BigQuery
- User-level event data:
  - `session_start`
  - `user_engagement`

---

## ⚙️ Methodology

- Cohorts defined by first activity date
- Week number calculated using date difference from first touch
- Cohort size = distinct users in Week 0
- Retention formula: Retention Rate (Week N) = Active Users in Week N / Users in Week 0


- Retention stored as proportions (0–1)
- Aggregated using averages for consistency

---

## 📈 Visualization Design

Built in Looker Studio:

- X-axis: Week since acquisition
- Y-axis: Average retention (%)
- Series: Cohort month
- Filters: Cohort month, acquisition channel

---

## 🔍 Key Findings

- Significant drop-off between Week 1 and Week 2
- No cohort stabilized within first 3 weeks
- Large performance variance across cohorts
- Top cohort retained 2× average users

---

## 💼 Business Implications

- Early lifecycle engagement is critical
- Onboarding should focus on first 14 days
- High-performing cohorts should be analyzed
- Lifecycle campaigns can improve retention

---

## 🛠 Tools Used

- SQL (BigQuery)
- Google Analytics 4
- Looker Studio
- Excel / Power Query
- GitHub

---

## 📎 Dashboard

🔗 (https://lookerstudio.google.com/reporting/4cfbba77-4e28-411c-bb97-a86ffffb00e9)

---

## 📂 Repository Structure

sql/ → BigQuery cohort queries
data/ → Sample datasets
visuals/ → Dashboard screenshots
docs/ → Detailed methodology

---

## 👩‍💻 Author

Ariana Seymourian  
MS Business Analytics — UMass Amherst Isenberg School of Management



