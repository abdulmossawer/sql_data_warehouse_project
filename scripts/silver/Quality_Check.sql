-- Check For Nulls or Duplicates in Primary Key
-- Expectation: No Result

SELECT
	cst_id,
	COUNT(*)
FROM silver.crm_cust_info
GROUP BY cst_id
HAVING COUNT(*) > 1 OR cst_id IS NULL


-- Check for unwanted Spaces for cst_firstname
-- Expectation: No Result

SELECT
	cst_firstname
FROM silver.crm_cust_info
WHERE cst_firstname ! = TRIM(cst_firstname) 


-- Check for unwanted Spaces for cst_lastname
-- Expectation: No Result

SELECT 
	cst_lastname
FROM silver.crm_cust_info
WHERE cst_lastname ! = TRIM(cst_lastname)


-- Check for unwanted Spaces for gndr
-- Expectation: No Result

SELECT 
	cst_gndr
FROM silver.crm_cust_info
WHERE cst_gndr ! = TRIM(cst_gndr)


SELECT 
	cst_key
FROM silver.crm_cust_info
WHERE cst_key ! = TRIM(cst_key)


-- Data Standardization & Consistency
SELECT DISTINCT cst_gndr
FROM silver.crm_cust_info

SELECT DISTINCT cst_marital_status
FROM silver.crm_cust_info

SELECT * FROM silver.crm_cust_info