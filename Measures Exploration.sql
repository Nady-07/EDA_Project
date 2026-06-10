/*
===============================================================================
Measures Exploration (Key Metrics)
===============================================================================
Purpose:
    - To calculate aggregated metrics (e.g., totals, averages) for quick insights.
    - To identify overall trends or spot anomalies.

SQL Functions Used:
    - COUNT(), SUM(), AVG()
===============================================================================
*/

-- Find the Total Sales

SELECT
    SUM(sales_amount) AS total_sales
FROM
    gold.fact_sales;

-- Find how many items are sold

SELECT
    SUM(quantity) AS total_items_sold
FROM
    gold.fact_sales;

-- Find the average selling price

SELECT
    AVG(price) AS average_selling_price
FROM
    gold.fact_sales


-- Find the Total number of Orders

SELECT
    COUNT(*) AS total_orders
FROM
    gold.fact_sales;

-- Find the total number of products

SELECT
    COUNT(DISTINCT product_key) AS total_products
FROM
    gold.dim_products;

-- Find the total number of customers

SELECT
    COUNT(DISTINCT customer_key) AS total_customers
FROM
    gold.dim_customers;

-- Find the total number of customers that has placed an order

SELECT
    COUNT(DISTINCT customer_key) AS total_customers
FROM
    gold.fact_sales;


-- Generate a Report that shows all key metrics of the business using UNION ALL


SELECT 'Total Sales' AS metric_name, SUM(sales_amount) AS metric_value FROM gold.fact_sales
UNION ALL
SELECT 'Total Items Sold', SUM(quantity) FROM gold.fact_sales
UNION ALL
SELECT 'Average Selling Price', AVG(price) FROM gold.fact_sales
UNION ALL
SELECT 'Total Orders', COUNT(*) FROM gold.fact_sales
UNION ALL
SELECT 'Total Products', COUNT(DISTINCT product_key) FROM gold.dim_products
UNION ALL
SELECT 'Total Customers', COUNT(DISTINCT customer_key) FROM gold.dim_customers
UNION ALL
SELECT 'Total Customers with Orders', COUNT(DISTINCT customer_key) FROM gold.fact_sales;
