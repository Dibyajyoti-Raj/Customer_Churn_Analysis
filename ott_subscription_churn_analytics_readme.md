# OTT Subscription Churn Analytics & Retention Strategy

An end-to-end subscriber churn analytics and risk-segmentation pipeline built for an OTT platform. This project synthesizes multi-table subscriber data (incorporating over 20+ KPIs) to uncover core churn drivers, quantify revenue leakage, and recommend data-backed retention strategies.

---

## 📌 Executive Summary

By analyzing subscriber acquisition types, contract structures, plan tiers, and support ticket escalations, this project highlights key patterns driving customer attrition. 

* **Overall Churn:** The platform experiences a **28.6% overall churn rate** with a **71.4% retention rate**.
* **Contract Disparity:** Monthly subscribers churn at a rate of **55.6%**, which is **6.7x higher** than annual subscribers (**8.3%**).
* **Financial Erosion:** Churn has resulted in a direct revenue loss of **18%** of total potential revenue ($74/mo in MRR leakage) and a Customer Lifetime Value (CLTV) loss of **$2,047**.
* **Tier Insight:** The majority of churn stems from the **Basic subscription plan**, leaving higher-tier revenue mostly intact, but indicating potential friction in low-tier onboarding or perceived value.

---

## 📊 Key Performance Indicators (KPIs) & Insights

### Core Metrics

| Metric | Value |
| :--- | :--- |
| **Churn Rate** | 28.6% |
| **Retention Rate** | 71.4% |
| **Monthly Churn Rate** | 55.6% |
| **Annual Churn Rate** | 8.3% |
| **Average Tenure** | 1,451 days |
| **Average Revenue Per User (ARPU)** | Rs 18.8 / $18.8 |
| **Total Revenue** | 395 |
| **Revenue Loss (Churn)** | 74 (18% loss) |
| **CLTV Lost** | 2,047 |

### Critical Findings

1. **Geographic & Temporal Spike:** A significant churn event was concentrated in **September 2024**, with the state of **Karnataka** being the most severely affected region.
2. **Plan Tier Distribution:** Churn is heavily concentrated in monthly **Basic Plan** subscribers.
3. **Support Escalations:** Cross-functional correlation analysis revealed that escalated support interactions were disproportionately concentrated among churned or high-risk customers before cancellation.
4. **Cancellation Drivers:** Deconstructed primary drivers into three main buckets:
   * Competitor switching
   * Price sensitivity
   * Support/Technical issues

---

## 🛠️ Project Structure & Methodology

### 1. Risk Scoring & Segmentation Model
* **Data Synthesis:** Joined and processed records across 3 relational tables: Customer Subscriptions, Support Escalations, and Usage Metrics.
* **Risk Tiering:** Developed a multi-dimensional risk-scoring model synthesizing subscription tenure, plan type, and complaint signals to segment users into High, Medium, and Low risk cohorts.
* **LTV Focus:** Exposed a significant Lifetime Value (LTV) gap between churned and retained cohorts, proving that retaining **Premium annual plans** yields higher ROI than acquiring new **Basic monthly** users.

### 2. Support Intelligence & Cancellation Analysis
* Correlated support complaint logs and escalations with final cancellation timestamps.
* Translated support pain points directly into product and pricing roadmaps.

---

## 🚀 Recommended Action Items & Strategy

To mitigate involuntary loss and optimize subscriber retention, the following targeted interventions are recommended:

- [ ] **Investigate Regional Anomalies (Karnataka Case Study):**
  - Audit September 2024 changes: Check for localized price hikes, app outages, or technical issues specifically affecting Karnataka.
- [ ] **Contract Migration Strategy:**
  - Create incentives (discounts or bundled features) to transition high-risk **Basic Monthly** subscribers into long-term **Annual** contracts.
- [ ] **Proactive Outreach for High/Med Risk Tiers:**
  - Prioritize at-risk subscribers based on LTV.
  - Automate targeted engagement via email, SMS, and direct calls for users with open complaint tickets.
- [ ] **Competitive Intelligence:**
  - Conduct competitor analysis on pricing and content offerings to address subscriber churn attributed to competitor switching.

---

## 📁 Repository Structure

```
├── data/
│   ├── raw/                 # Unprocessed subscriber, escalation, and plan tables
│   └── processed/           # Processed datasets with computed risk scores
├── notebooks/
│   ├── 01_data_cleaning.ipynb
│   ├── 02_churn_analysis.ipynb
│   └── 03_risk_scoring_model.ipynb
├── dashboards/              # Dashboard files / Power BI / Tableau assets
├── README.md                # Project documentation
└── requirements.txt         # Dependencies
```

---

## 📄 How to Run / Replicate

1. **Clone the Repository:**
   ```bash
   git clone https://github.com/your-username/ott-churn-analytics.git
   cd ott-churn-analytics
   ```

2. **Install Dependencies:**
   ```bash
   pip install -r requirements.txt
   ```

3. **Execute Analysis:**
   Run the analysis notebooks located in the `notebooks/` directory or view the dashboard summary in the `dashboards/` folder.