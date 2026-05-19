-- Duplicate Service Codes

SELECT
Service_Code,
COUNT(*) AS duplicate_count
FROM product_service_master_data
GROUP BY Service_Code
HAVING COUNT(*) > 1;

-- Missing Cost Center

SELECT *
FROM product_service_master_data
WHERE Cost_Center IS NULL
OR Cost_Center = '';

-- Missing Responsible Team

SELECT *
FROM product_service_master_data
WHERE Responsible_Team IS NULL
OR Responsible_Team = '';

-- Invalid Status Values

SELECT *
FROM product_service_master_data
WHERE Status NOT IN ('Active', 'Inactive', 'Pending');

-- Incorrect Cost Center Format

SELECT *
FROM product_service_master_data
WHERE Cost_Center NOT LIKE 'CC-%';

-- Invalid Date Format Check

SELECT *
FROM product_service_master_data
WHERE Valid_From LIKE '%/%';
