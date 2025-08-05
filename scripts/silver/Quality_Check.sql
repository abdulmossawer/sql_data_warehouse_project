-- Check For Nulls or Duplicates in Primary Key
-- Expectation: No Result

SELECT
	prd_id,
	COUNT(*)
FROM silver.crm_prd_info
GROUP BY prd_id
HAVING COUNT(*) > 1 OR prd_id IS NULL


-- Check for unwanted Spaces 
-- Expectation: No Result

SELECT
	prd_nm
FROM silver.crm_prd_info
WHERE prd_nm ! = TRIM(prd_nm) 

-- Check for Negative Values OR NULL 
-- Expectation: No Result

SELECT
	prd_cost
FROM silver.crm_prd_info
WHERE prd_cost < 0 OR prd_cost IS NULL

-- Data Standardization & Consistency

SELECT DISTINCT prd_line
FROM silver.crm_prd_info



-- Check for Invalid Date Orders
-- Expectation: No Result

SELECT * 
FROM silver.crm_prd_info
WHERE prd_end_dt < prd_start_dt

