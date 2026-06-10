/*
===============================================================================
Ranking Analysis
===============================================================================
Purpose:
    - To rank items (e.g., products, customers) based on performance or other metrics.
    - To identify top performers or laggards.

SQL Functions Used:
    - Window Ranking Functions: RANK(), DENSE_RANK(), ROW_NUMBER(), TOP
    - Clauses: GROUP BY, ORDER BY
===============================================================================
*/

-- Which 5 products Generating the Highest Revenue?
-- Simple Ranking using TOP

SELECT TOP 5
    dp.product_name,
    SUM(fs.sales_amount) AS total_revenue
FROM
    gold.fact_sales as fs
LEFT JOIN
    gold.dim_products AS dp
ON fs.product_key = dp.product_key
GROUP BY
    dp.product_name
ORDER BY
    total_revenue DESC;

-- Complex but Flexible Ranking Using Window Functions

SELECT
    dp.product_name,
    SUM(fs.sales_amount) AS total_revenue,
    Rank() OVER (ORDER BY SUM(fs.sales_amount) DESC) AS Rank_perfomance
FROM
    gold.fact_sales as fs
LEFT JOIN
    gold.dim_products AS dp
ON fs.product_key = dp.product_key
GROUP BY
    dp.product_name
    


-- What are the 5 worst-performing products in terms of sales?

SELECT TOP 5
    *
FROM

    (SELECT
        dp.product_name,
        SUM(fs.sales_amount) AS total_revenue,
        Rank() OVER (ORDER BY SUM(fs.sales_amount) ASC) AS Lowest_perfomance
    FROM
        gold.fact_sales as fs
    LEFT JOIN
        gold.dim_products AS dp
    ON fs.product_key = dp.product_key
    GROUP BY
        dp.product_name) AS t

-- Find the top 10 customers who have generated the highest revenue

SELECT TOP 10
    *
FROM
(SELECT
    dc.first_name,
    dc.last_name,
    RANK() OVER(ORDER BY SUM(fs.sales_amount) DESC) AS customer_rank
FROM
    gold.fact_sales AS fs
LEFT JOIN
    gold.dim_customers AS dc
ON fs.customer_key = dc.customer_key
GROUP BY
    dc.first_name,
    dc.last_name) AS t


-- The 3 customers with the fewest orders placed

SELECT TOP 3
    *   
FROM
    (SELECT
        dc.first_name,
        dc.last_name,
        COUNT(fs.order_number) AS total_orders,
        RANK() OVER(ORDER BY COUNT(fs.order_number) ASC) AS customer_rank
    FROM
        gold.fact_sales AS fs
    LEFT JOIN
        gold.dim_customers AS dc
    On fs.customer_key = dc.customer_key
    GROUP BY
        dc.first_name,
        dc.last_name) AS t
        





