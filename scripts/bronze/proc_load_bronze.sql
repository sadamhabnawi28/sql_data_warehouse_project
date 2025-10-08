/*
===============================================================================
Stored Procedure: Load Bronze Layer (Source -> Bronze)
===============================================================================
Script Purpose:
    This stored procedure loads data into the 'bronze' schema from external CSV files. 
    It performs the following actions:
    - Truncates the bronze tables before loading data.
    - Uses the `COPY` command to load data from csv Files to bronze tables.
===============================================================================
*/

TRUNCATE TABLE bronze.crm_cust_info;

COPY bronze.crm_cust_info
FROM 'D:\Data Project\sql-data-warehouse-project\datasets\source_crm\cust_info.csv'
DELIMITER ',' 
CSV HEADER;


TRUNCATE TABLE bronze.crm_prd_info;

COPY bronze.crm_prd_info
FROM 'D:\Data Project\sql-data-warehouse-project\datasets\source_crm\prd_info.csv'
DELIMITER ',' 
CSV HEADER;

TRUNCATE TABLE bronze.crm_sales_details;

COPY bronze.crm_sales_details
FROM 'D:\Data Project\sql-data-warehouse-project\datasets\source_crm\sales_details.csv'
DELIMITER ',' 
CSV HEADER;

TRUNCATE TABLE bronze.erp_cust_az12;

COPY bronze.erp_cust_az12
FROM 'D:\Data Project\sql-data-warehouse-project\datasets\source_erp\cust_az12.csv'
DELIMITER ',' 
CSV HEADER;

TRUNCATE TABLE bronze.erp_loc_a101;

COPY bronze.erp_loc_a101
FROM 'D:\Data Project\sql-data-warehouse-project\datasets\source_erp\loc_a101.csv'
DELIMITER ',' 
CSV HEADER;


TRUNCATE TABLE bronze.erp_px_cat_g1v2;

COPY bronze.erp_px_cat_g1v2
FROM 'D:\Data Project\sql-data-warehouse-project\datasets\source_erp\px_cat_g1v2.csv'
DELIMITER ',' 
CSV HEADER;




