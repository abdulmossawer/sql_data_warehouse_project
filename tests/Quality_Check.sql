-- Check For Nulls or Duplicates in Primary Key
-- Expectation: No Result

SELECT
	sls_cust_id,
	COUNT(*)
FROM bronze.crm_sales_details 
GROUP BY sls_cust_id
HAVING COUNT(*) > 1 OR sls_cust_id IS NULL


-- Check for unwanted Spaces 
-- Expectation: No Result

SELECT
	cid
FROM bronze.erp_cust_az12
WHERE cid ! = TRIM(cid) 

-- Check for Negative Values OR NULL 
-- Expectation: No Result

SELECT
	prd_cost
FROM silver.crm_prd_info
WHERE prd_cost < 0 OR prd_cost IS NULL

-- Data Standardization & Consistency

SELECT DISTINCT cntry
FROM silver.erp_loc_a101



-- Check for Invalid Date Orders
-- Expectation: No Result

SELECT 
	NULLIF(sls_due_dt, 0) AS sls_due_dt
FROM bronze.crm_sales_details 
WHERE sls_due_dt <= 0
OR LEN(sls_due_dt) != 8
OR sls_due_dt > 20500101
OR sls_due_dt < 1900101


SELECT * 
FROM silver.crm_sales_details
WHERE sls_order_dt > sls_ship_dt OR sls_order_dt > sls_due_dt



-- Check Data Consistency: Between Sales, Quantity, and Price
-- >> Sales = Quantity * Price
-- >> Values must not be NULL, zero, or negative.

SELECT DISTINCT 
sls_sales,
sls_quantity,
sls_price
FROM silver.crm_sales_details
WHERE sls_sales != sls_quantity * sls_price
OR sls_sales IS NULL OR sls_quantity IS NULL OR sls_price IS NULL
OR sls_sales <= 0 OR sls_quantity <= 0 OR sls_price <= 0
ORDER BY sls_sales, sls_quantity, sls_price


 -- Identify Out-of-Range Dates

 SELECT * 
 FROM silver.erp_cust_az12
 WHERE bdate < '1924-01-01' OR bdate > GETDATE()

 SELECT * FROM silver.erp_loc_a101