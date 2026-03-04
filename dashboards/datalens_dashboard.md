# Yandex DataLens Dashboard — Yandex Afisha

## 📌 Overview

This dashboard was developed as part of the Yandex Afisha product analytics project.  
It visualizes key product metrics and helps the product team make data-driven decisions.

The dashboard includes:

- **KPI indicators (cards)**:  
  - Total revenue  
  - Total orders  
  - Average order revenue  
  - Unique customers
- **Line charts (weekly trends)**:  
  - Revenue per order  
  - Number of orders  
  - Average revenue per order
- **Revenue structure breakdown**:  
  - By device type  
  - By event type
- **Top segments tables**:  
  - Popular regions  
  - Popular events  
  - Popular venues  

Each table shows:

- Total revenue  
- Number of orders  
- Average tickets per order  
- Average revenue per ticket

---

## ⚙ Filters

- **Currency**: default = RUB  
- **Date range**: default = 2024-06-01 to 2024-10-31  
- **Event type**: no default filter  
- **Region**: no default filter  

All visualizations respond to these filters.

---

## 🔗 Dashboard Link

You can view the live dashboard here:  
[Open in Yandex DataLens](https://datalens.yandex/dsg4a672wztky)

---

## 📌 Notes

- The dashboard metrics match the SQL calculations in `sql/product_metrics.sql`.  
- Designed for product team use: dynamic tracking and segmentation analysis.
