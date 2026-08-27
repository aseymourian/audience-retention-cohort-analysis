# Early User Retention & Lifecycle Analysis — GA4 Ecommerce Data

A cohort-based retention analysis using Google Analytics 4 ecommerce event data to identify early lifecycle drop-off, compare acquisition channel performance, and translate user engagement patterns into actionable retention strategies.

**Author:** Ariana Seymourian — MS in Business Analytics, UMass Amherst Isenberg School of Management

**Dashboard:** https://lookerstudio.google.com/reporting/4cfba77b-4e28-411c-bb97-a86ffffb00e9

---

## Project Summary

This project examines how quickly users disengage after their first interaction with an ecommerce platform and whether retention patterns differ across acquisition cohorts and channels.

Using event-level Google Analytics 4 data extracted through BigQuery, I built a cohort-based retention framework covering users acquired between **November 2020 and January 2021**. The analysis tracks user engagement across the first **three weeks after acquisition**, with a focus on identifying early lifecycle drop-off and differences in channel performance.

The project demonstrates an end-to-end analytics workflow: **SQL data extraction → cohort construction → retention calculation → validation → dashboard development → business recommendations.**

---

## Business Questions

1. **Early retention:** How quickly do users disengage after their first interaction?
2. **Cohort performance:** How does early retention differ across acquisition months?
3. **Channel performance:** Which acquisition channels retain users most effectively?
4. **Lifecycle drop-off:** Where does the largest decline in engagement occur?
5. **Business action:** What retention and acquisition strategies are supported by the observed patterns?

---

## Data Source

**Google Analytics 4 Public E-commerce Dataset**

The analysis uses publicly available GA4 ecommerce event data accessed through **Google BigQuery**.

Relevant event-level data includes:

* `session_start`
* `user_engagement`

**Analysis period:** November 2020 – January 2021
**Population:** 800,000+ users
**Observation window:** First three weeks following initial engagement

Users were assigned to cohorts based on the month of their first recorded engagement event.

---

## Methodology

### 1. Cohort Definition

Users were grouped according to the month of their first recorded engagement:

* November 2020
* December 2020
* January 2021

Each cohort represents users entering the platform during the same acquisition month.

### 2. Week Assignment

User activity was converted into weeks relative to each user's first recorded engagement:

* **Week 0:** Initial interaction
* **Week 1:** First subsequent week
* **Week 2:** Second subsequent week
* **Week 3:** Third subsequent week

This creates a consistent lifecycle framework for comparing users who entered during different calendar periods.

### 3. Retention Calculation

Retention was calculated as:

**Retention Rate = Active Users in Week N ÷ Cohort Size in Week 0**

Retention values were stored as proportions and converted to percentages for reporting.

### 4. Channel Analysis

Retention was segmented by acquisition channel to identify differences in early lifecycle performance across traffic sources.

### 5. Data Processing & Validation

**SQL in BigQuery** was used for data extraction, transformation, cohort construction, and retention calculations.

**Power Query** was used for cleaning and validation.

**Looker Studio** was used to build the final interactive dashboard and communicate the results.

---

## Key Findings

### Early Drop-Off Is Concentrated in the First Two Weeks

All analyzed cohorts experienced substantial user drop-off between the first and second weeks of activity, making the earliest post-acquisition period the clearest point of lifecycle attrition in the dataset.

### Retention Varies Meaningfully by Cohort

The strongest-performing cohort retained **3.84% of users in Week 1 and 2.03% by Week 3**, while the January 2021 cohort fell below **0.2% by Week 3**.

This variation suggests that acquisition timing and cohort composition can materially affect observed early-retention performance.

### Organic and Referral Users Show Stronger Early Retention

Referral and organic acquisition channels consistently demonstrated stronger early retention than paid channels in the analyzed dataset.

This suggests that acquisition volume alone may not provide a complete picture of channel quality; downstream engagement should also be evaluated.

### No Cohort Stabilized Within the Observation Window

Retention continued to decline through Week 3 across the analyzed cohorts. The available three-week window does not provide evidence of a stable long-term retention floor.

---

## Business Implications

The analysis suggests several areas where an ecommerce organization could focus its retention strategy:

* **Prioritize the first 7–14 days** as a critical lifecycle window for activation and engagement.
* **Evaluate acquisition channels based on downstream retention**, not acquisition volume alone.
* **Investigate paid-channel quality** to determine whether lower retention reflects targeting, traffic quality, or differences in user intent.
* **Monitor cohort-level retention continuously** to identify changes in user behavior following acquisition or marketing changes.

---

## Recommendations

### 1. Strengthen Early Onboarding

Introduce onboarding experiences, educational content, and personalized messaging during the first 7–14 days to encourage repeat engagement.

### 2. Measure Channel Quality Beyond Acquisition

Pair acquisition metrics with retention and engagement KPIs to identify channels that generate users who remain active after their initial interaction.

### 3. Investigate Paid Acquisition

Analyze paid users by campaign, landing page, audience, and conversion behavior to determine whether lower retention is driven by traffic quality or differences in user intent.

### 4. Develop Early-Disengagement Triggers

Use behavioral signals to identify users showing early signs of disengagement and test targeted interventions such as reminders, personalized content, or re-engagement messaging.

### 5. Extend the Retention Window

A longer observation period would allow future analysis to determine whether the observed early decline continues, stabilizes, or differs materially across acquisition cohorts and channels.

---

## Dashboard

The Looker Studio dashboard includes:

* Retention curve by cohort
* Cohort retention heatmap
* Acquisition channel comparison
* Cohort-level KPI cards
* Interactive cohort and channel filters

**Dashboard:** https://lookerstudio.google.com/reporting/4cfbba77-4e28-411c-bb97-a86ffffb00e9

---

## Tools

**Analytics:** SQL, BigQuery, Google Analytics 4
**Data Preparation:** Power Query, Excel
**Visualization:** Looker Studio
**Version Control:** GitHub

---

## Repository Structure

```text
├── sql/
│   ├── 01_master_cohort.sql
│   ├── 02_retention_curve.sql
│   ├── 03_heatmap.sql
│   └── 04_validation.sql
│
├── images/
│   ├── retention_curve.jpg
│   ├── heatmap.jpg
│   └── channel_comparison.jpg
│
└── README.md
```

Each SQL file represents a stage of the analytical workflow, from cohort construction and retention calculations through visualization preparation and validation.

---

## Limitations

* The analysis covers only the first **three weeks** following initial engagement; longer-term retention cannot be inferred from this observation window.
* The dataset represents a public ecommerce sample and should not be assumed to represent all ecommerce users or businesses.
* Observed channel differences describe patterns in this dataset and do not establish that acquisition channel itself causes higher or lower retention.
* Cohort differences may reflect changes in traffic mix, seasonality, campaigns, or other factors not isolated in this analysis.
* Retention is defined using recorded engagement events and therefore represents **observed platform engagement**, not necessarily purchasing or revenue retention.

---

## Author

**Ariana Seymourian**
MS in Business Analytics — UMass Amherst Isenberg School of Management




