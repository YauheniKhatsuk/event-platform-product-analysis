# event-platform-product-analysis

## 📌 Project Overview

This project was completed as a final assignment for the Data Analyst program.  
The goal was to solve real product analytics tasks for the Yandex Afisha service.

The project consists of two main parts:

1. SQL-based product analytics and dashboard development in Yandex DataLens
2. Exploratory Data Analysis and hypothesis testing using Python

---

## 📊 Business Context

Yandex Afisha is an event ticketing platform.  
The product team requested an analysis of user behavior, revenue metrics, and event performance across regions.

The objectives were:

- Calculate key product metrics
- Analyze revenue structure
- Explore user purchasing behavior
- Test product hypotheses using statistical methods
- Build an analytical dashboard

---

## 🗄 Database Structure

The analysis is based on the `afisha` database schema containing five tables:

- `purchases` — ticket orders
- `events` — event information
- `venues` — event venues
- `city` — cities
- `regions` — regions

Main metrics were calculated using SQL.

---

# Part 1 — SQL Analytics & Dashboard

## Key Metrics Calculated

- Gross Revenue
- Average Order Value (AOV)
- Average Tickets per Order
- Revenue by Event Type
- Revenue by Region
- Device Distribution
- Age Limit Distribution
- Cinema vs Non-Cinema Orders

## Dashboard

An analytical dashboard was built in Yandex DataLens including:

- Revenue trends
- Regional performance
- Event type analysis
- Device analysis
- User behavior insights

---

# Part 2 — Exploratory Data Analysis (Python)

## Tools Used

- pandas
- numpy
- matplotlib
- seaborn
- scipy

## Analysis Performed

- Data cleaning
- Distribution analysis
- Outlier detection
- Revenue segmentation
- Device behavior comparison
- Regional comparison

---

## Hypothesis Testing

Examples of tested hypotheses:

1. Mobile users generate lower average order value than desktop users.
2. Cinema events have higher ticket volume per order.
3. Certain event types generate significantly higher revenue.

Statistical methods used:

- t-test
- Mann–Whitney U test
- Confidence intervals

---

## 📈 Key Insights

- Revenue is concentrated in several major regions.
- Mobile dominates in number of orders but not always in AOV.
- Concerts and theatre events generate the largest share of revenue.
- Cinema orders have higher ticket count but lower average check.

---

## 🛠 Tech Stack

- SQL
- Yandex DataLens
- Python
- pandas
- matplotlib
- scipy

---

## 🚀 Conclusion

The project demonstrates full-cycle product analytics:

- SQL metric calculation
- Dashboard creation
- Exploratory data analysis
- Statistical hypothesis testing
- Business insight generation
