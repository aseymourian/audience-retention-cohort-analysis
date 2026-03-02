# Analyzing Early User Retention in GA4 Ecommerce Data to Identify Lifecycle Drop-Off and Channel Performance

Cohort-based retention analysis using Google Analytics 4 data to evaluate post-acquisition user engagement, lifecycle behavior, and acquisition channel performance.

📊 Dashboard: https://lookerstudio.google.com/reporting/4cfbba77-4e28-411c-bb97-a86ffffb00e9

---

# 📌 Project Overview

This project uses Google Analytics 4 public ecommerce event data available through BigQuery.
The dataset models real-world web and app behavior, including session_start and user_engagement events from an ecommerce site similar to the Google Merchandise Store.
Event-level data was used to construct user cohorts, track weekly engagement, and evaluate early retention patterns.

The analysis focuses on users acquired between **November 2020 and January 2021**, covering over **800,000 users** and tracking engagement behavior across the first **three weeks** of activity.

A cohort-based framework was used to evaluate early churn, identify high-performing segments, and assess the effectiveness of acquisition channels.

## Executive Summary

This analysis answers the question:
**How quickly do users disengage after their first interaction, and which acquisition channels and cohort months retain users most effectively?**

Using GA4 event-level ecommerce data (Nov 2020–Jan 2021), I built cohort retention models to identify early churn patterns and evaluate channel performance.

The findings show that most user drop-off occurs within the first two weeks, with significant retention variance across cohorts and acquisition channels. These insights can inform onboarding optimization, lifecycle marketing, and acquisition strategy decisions.

# 🎯 Objective

- Measure post-acquisition retention by cohort month
- Compare engagement trends across acquisition channels
- Identify early drop-off patterns
- Evaluate short-term user lifecycle performance
- Generate actionable recommendations for retention improvement

---

## 📊 Data Source

- Google Analytics 4 Public E-commerce Dataset
- Extracted via BigQuery
- Event-level data including:
  - `session_start`
  - `user_engagement`
- Time period: **2020–2021**

Users were assigned to cohorts based on their first recorded engagement event.

---

## 🧮 Methodology

### Cohort Definition
- Cohorts defined by users’ first activity month
- Example: 2020-11, 2020-12, 2021-01
  
---

### Week Assignment
- Week number calculated using date difference from first engagement
- Week 0 = First interaction
- Weeks 1–3 = Subsequent engagement periods

---

### Retention Calculation

Retention was calculated as: Retention Rate = Active Users in Week N / Cohort Size (Week 0)


Values were stored as proportions (0–1) and displayed as percentages.

### Aggregation
- Retention metrics aggregated using averages
- Ensured consistency across cohorts and channels

---

### Data Processing
- SQL (BigQuery) used for data extraction and transformation
- Power Query used for cleaning and validation
- Looker Studio used for visualization

---

## 📈 Visualization Design

Dashboards were built in Looker Studio with the following structure:

- X-axis: Week since acquisition
- Y-axis: Average retention (%)
- Series: Cohort month
- Filters:
  - Cohort Month
  - Acquisition Channel

Key visuals include:
- Retention curve line charts
- Channel comparison charts
- Cohort heatmaps
- Summary KPI cards

---

## 🔍 Key Findings

- All cohorts experienced major drop-off between Week 1 and Week 2
- Average retention declined from **3.84% (Week 1)** to **2.03% (Week 3)** in the best-performing cohort
- The January 2021 cohort showed the lowest retention, falling below **0.2% by Week 3**
- Referral and organic channels consistently outperformed paid channels
- High-performing cohorts retained more than **2× the average user base**
- No cohort demonstrated long-term stabilization within the first three weeks

---

## 💼 Business Implications

- The first two weeks represent the most critical engagement window
- Users who disengage early are unlikely to return
- Channel quality has a significant impact on lifecycle value
- Short-term retention is a strong predictor of long-term performance

---

## ✅ Recommendations

Based on the analysis, the following actions are recommended:

### 1. Optimize Early Onboarding
Focus on improving user activation within the first 7–14 days through:
- Guided onboarding flows
- Personalized welcome campaigns
- Early feature education

### 2. Prioritize High-Performing Channels
Increase investment in referral and organic acquisition channels, which demonstrated stronger retention performance.

### 3. Improve Paid Channel Quality
Re-evaluate paid acquisition strategies to:
- Reduce low-quality traffic
- Improve targeting
- Align messaging with user intent

### 4. Implement Early Engagement Triggers
Deploy automated interventions when users show signs of early disengagement, such as:
- Reminder emails
- In-app prompts
- Targeted content recommendations

### 5. Monitor Cohort Performance Continuously
Establish regular cohort reporting to detect early changes in engagement patterns and adjust strategies proactively.

---

## 🛠 Tools Used

- SQL (BigQuery)
- Google Analytics 4
- Looker Studio
- Excel / Power Query
- GitHub

---

## 📂 Repository Structure

/sql
├── 01_master_cohort.sql
├── 02_retention_curve.sql
├── 03_heatmap.sql
└── 04_validation.sql

/images
├── retention_curve.jpg
├── heatmap.jpg
└── channel_comparison.jpg

Each SQL file represents a stage in the analytical pipeline from data extraction to validation.

## 👩‍💻 Author

Ariana Seymourian  
MS Business Analytics — UMass Amherst Isenberg School of Management



