/*
===============================================================================
Quality Checks (PostgreSQL Version)
===============================================================================
Script Purpose:
    Validate data integrity, consistency, and accuracy in the Gold Layer.
    Checks include:
    - Uniqueness of surrogate keys in dimension tables.
    - Referential integrity between fact and dimension tables.
    - Validation of relationships for analytical correctness.
===============================================================================
*/

-- ====================================================================
-- Check 1: Uniqueness of Customer Key in gold.dim_customers
-- Expectation: No results (each key should be unique)
-- ====================================================================
SELECT 
    customer_key,
    COUNT(*) AS duplicate_count
FROM gold.dim_customers
GROUP BY customer_key
HAVING COUNT(*) > 1;


-- ====================================================================
-- Check 2: Uniqueness of Product Key in gold.dim_products
-- Expectation: No results (each key should be unique)
-- ====================================================================
SELECT 
    product_key,
    COUNT(*) AS duplicate_count
FROM gold.dim_products
GROUP BY product_key
HAVING COUNT(*) > 1;


-- ====================================================================
-- Check 3: Referential Integrity between gold.fact_sales and Dimensions
-- Expectation: No results (every fact row should have valid dimension keys)
-- ====================================================================
SELECT 
    f.order_number,
    f.customer_key,
    f.product_key
FROM gold.fact_sales f
LEFT JOIN gold.dim_customers c
    ON c.customer_key = f.customer_key
LEFT JOIN gold.dim_products p
    ON p.product_key = f.product_key
WHERE p.product_key IS NULL 
   OR c.customer_key IS NULL;
