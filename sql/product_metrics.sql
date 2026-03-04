/*
============================================================
Yandex Afisha — Product Metrics Analysis (SQL)
============================================================

This file contains SQL queries used to calculate key product
metrics for the Yandex Afisha ticketing platform.

All calculations are performed using the afisha schema.

Author: [Your Name]
============================================================
*/


/* ============================================================
1. Overall Service Metrics (by Currency)
============================================================ */

SELECT
    currency_code,
    SUM(revenue) AS total_revenue,
    COUNT(order_id) AS total_orders,
    AVG(revenue) AS avg_revenue_per_order,
    COUNT(DISTINCT user_id) AS total_users
FROM afisha.purchases
GROUP BY currency_code
ORDER BY total_revenue DESC;



/* ============================================================
2. Revenue Distribution by Device (RUB only)
============================================================ */

WITH total_rub_revenue AS (
    SELECT SUM(revenue) AS total_revenue
    FROM afisha.purchases
    WHERE currency_code = 'rub'
)

SELECT 
    p.device_type_canonical,
    SUM(p.revenue) AS total_revenue,
    COUNT(p.order_id) AS total_orders,
    AVG(p.revenue) AS avg_revenue_per_order,
    ROUND(
        (SUM(p.revenue) / t.total_revenue)::numeric,
        3
    ) AS revenue_share
FROM afisha.purchases p
CROSS JOIN total_rub_revenue t
WHERE p.currency_code = 'rub'
GROUP BY p.device_type_canonical, t.total_revenue
ORDER BY revenue_share DESC;



/* ============================================================
3. Revenue Distribution by Event Type (RUB only)
============================================================ */

WITH total_rub_revenue AS (
    SELECT SUM(revenue) AS total_revenue
    FROM afisha.purchases
    WHERE currency_code = 'rub'
)

SELECT 
    e.event_type_main,
    SUM(p.revenue) AS total_revenue,
    COUNT(p.order_id) AS total_orders,
    AVG(p.revenue) AS avg_revenue_per_order,
    COUNT(DISTINCT e.event_name_code) AS total_event_name,
    AVG(p.tickets_count) AS avg_tickets,
    SUM(p.revenue) / SUM(p.tickets_count) AS avg_ticket_revenue,
    ROUND(
        (SUM(p.revenue) / t.total_revenue)::numeric,
        3
    ) AS revenue_share
FROM afisha.purchases p
JOIN afisha.events e 
    ON p.event_id = e.event_id
CROSS JOIN total_rub_revenue t
WHERE p.currency_code = 'rub'
GROUP BY e.event_type_main, t.total_revenue
ORDER BY total_orders DESC;



/* ============================================================
4. Weekly Dynamics of Key Metrics (RUB only)
============================================================ */

SELECT
    DATE_TRUNC('week', created_dt_msk)::date AS week,
    SUM(revenue) AS total_revenue,
    COUNT(order_id) AS total_orders,
    COUNT(DISTINCT user_id) AS total_users,
    SUM(revenue) / COUNT(order_id) AS revenue_per_order
FROM afisha.purchases
WHERE currency_code = 'rub'
GROUP BY week
ORDER BY week ASC;



/* ============================================================
5. Top-7 Regions by Revenue (RUB only)
============================================================ */

SELECT
    r.region_name,
    SUM(p.revenue) AS total_revenue,
    COUNT(p.order_id) AS total_orders,
    COUNT(DISTINCT p.user_id) AS total_users,
    SUM(p.tickets_count) AS total_tickets,
    SUM(p.revenue) / SUM(p.tickets_count) AS one_ticket_cost
FROM afisha.purchases p
JOIN afisha.events e 
    ON p.event_id = e.event_id
JOIN afisha.city c 
    ON e.city_id = c.city_id
JOIN afisha.regions r 
    ON c.region_id = r.region_id
WHERE p.currency_code = 'rub'
GROUP BY r.region_name
ORDER BY total_revenue DESC
LIMIT 7;
