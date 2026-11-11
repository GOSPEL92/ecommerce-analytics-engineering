-- Customer Dimension Investigation

SELECT
    customer_id,
    COUNT(*) AS cnt
FROM dbo.dim_customer
GROUP BY customer_id
HAVING COUNT(*) > 1;

SELECT *
FROM dbo.dim_customer
WHERE customer_id = '12370';

SELECT *
FROM dbo.dim_customer
WHERE customer_id IS NULL
   OR customer_id = '';

-- Product Dimension Investigation

SELECT
    stock_code,
    COUNT(*) AS cnt
FROM dbo.dim_product
GROUP BY stock_code
HAVING COUNT(*) > 1;

SELECT
    stock_code,
    description,
    COUNT(*) AS cnt
FROM dbo.stg_ecommerce
WHERE stock_code = '22837'
GROUP BY
    stock_code,
    description;