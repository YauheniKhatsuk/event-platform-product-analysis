# event-platform-product-analysis

**Author:** Yauheni Khatsuk  
**Period analyzed:** 1 June — 31 October 2024  
**Stack:** SQL • Yandex DataLens • Python (Pandas, NumPy, Matplotlib, SciPy)  

---

# 📌 Project Overview

This project represents a full end-to-end product analytics workflow for an online ticket booking service (Yandex Afisha).

The analysis includes:

- SQL-based product metrics calculation  
- Interactive dashboard creation in Yandex DataLens  
- Exploratory Data Analysis (EDA) in Python  
- Hypothesis testing  
- Business recommendations  

The goal of the project is to analyze ticket sales dynamics, user behavior, seasonal trends, and device usage patterns.

---

# 🧮 Part 1 — SQL Analysis

## 🎯 Objectives
- Calculate key product metrics
- Analyze revenue structure
- Segment users and orders
- Prepare aggregated datasets for dashboard

## 📊 Key Metrics
- Total Revenue
- Total Orders
- Unique Users
- Average Order Revenue (AOV)
- Orders by Device Type
- Revenue by Event Type
- Revenue by Region
- Seasonal trends

## 🛠 Key Techniques
- JOINs between purchases and events tables
- Aggregations (SUM, COUNT, AVG)
- Window functions
- Grouping by time periods
- Data segmentation


---

# 📊 Part 2 — Dashboard (Yandex DataLens)

An interactive dashboard was built to visualize product performance.

## Dashboard Includes

### 1️⃣ Key Metrics Block
- Revenue
- Orders
- Unique Users
- Average Order Value

### 2️⃣ Revenue Dynamics
- Weekly revenue trend
- Orders trend
- Average revenue trend

### 3️⃣ Revenue Structure
- By device type (mobile vs desktop)
- By event type

### 4️⃣ Top Segments
- Regions
- Events
- Venues
- Partners

### 5️⃣ Filters
- Date range
- Currency
- Region
- Event type

Dashboard description:


---

# 🐍 Part 3 — Python Analysis (EDA & Hypothesis Testing)

Notebook: final_analysis.ipynb

---

## 🔎 Data Description

Three datasets were used:

1. `final_tickets_orders_df.csv`
2. `final_tickets_events_df.csv`
3. `final_tickets_tenge_df.csv` (currency conversion)

Revenue values were converted to RUB for consistency.

---

## 🧹 Data Preprocessing

- Datetime conversion
- Categorical feature optimization
- Outlier detection (99th percentile trimming)
- Currency conversion (KZT → RUB)
- Duplicate analysis
- Feature engineering:
  - `season`
  - `month`
  - `revenue_rub`
  - `one_ticket_revenue_rub`

---

## 📈 Exploratory Data Analysis

Key findings:

- Revenue distribution is heavily right-skewed.
- Summer → concerts dominate.
- Autumn → theater and sports events dominate.
- Average ticket price slightly higher in summer.
- Weekdays generate more orders than weekends.
- Mobile users generate more orders than desktop users.

---

# 🧪 Hypothesis Testing

## Hypothesis 1  
**H0:** Average orders per user are equal for mobile and desktop.  
**H1:** Mobile users have higher average orders.

Result: H0 rejected ✅  
Mobile users are more active.

---

## Hypothesis 2  
**H0:** Time between orders is equal across devices.  
**H1:** Mobile users have longer intervals.

Result: H0 rejected ✅  
Mobile users place orders more actively but with longer intervals.

---

# 💡 Business Recommendations

## 📌 Seasonal Strategy
- Promote concerts in summer.
- Increase marketing for theater & sports in autumn.

## 📌 Device Strategy
- Focus on mobile-first campaigns.
- Improve desktop conversion funnel.

## 📌 Regional Focus
- Strengthen marketing in top-performing regions.
- Activate less engaged regions.

## 📌 Partner Optimization
- Strengthen cooperation with top ticket operators.
- Evaluate underperforming partners.

---

# 🚀 How to Run the Project

## Clone repository

```bash
git clone https://github.com/YauheniKhatsuk/event-platform-product-analysis

