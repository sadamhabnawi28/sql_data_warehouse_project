drop table if exists silver.crm_cust_info;

create table silver.crm_cust_info (
cst_id INT,
cst_key VARCHAR(50),
cst_firstname VARCHAR(50),
cst_lastname VARCHAR(50),
cst_marital_status varchar(50),
cst_gndr VARCHAR(50),
cst_create_date date,
dwh_create_date TIMESTAMP DEFAULT NOW()
);

drop table if exists silver.crm_prd_info;

create table silver.crm_prd_info (
prd_id int,
cat_id varchar(50),
prd_key VARCHAR(50),
prd_nm VARCHAR(50),
prd_cost int,
prd_line VARCHAR(50),
prd_start_dt timestamp,
prd_end_dt timestamp,
dwh_create_date TIMESTAMP DEFAULT NOW()
);

drop table if exists silver.crm_sales_details;

create table silver.crm_sales_details (
sls_ord_num varchar(50),
sls_prd_key varchar(50),
sls_cust_id int,
sls_order_dt int,
sls_ship_dt int,
sls_due_dt int,
sls_sales int,
sls_quantity int,
sls_price int,
dwh_create_date TIMESTAMP DEFAULT NOW()
);

drop table if exists silver.erp_loc_a101;

create table silver.erp_loc_a101 (
cid varchar(50),
cntry varchar(50),
dwh_create_date TIMESTAMP DEFAULT NOW()
);

drop table if exists silver.erp_cust_az12;

create table silver.erp_cust_az12 (
cid varchar(50),
bdate date,
gen varchar(50),
dwh_create_date TIMESTAMP DEFAULT NOW()
);

drop table if exists silver.erp_px_cat_g1v2;

create table silver.erp_px_cat_g1v2(
id varchar(50),
cat varchar(50),
subcat varchar(50),
maintenance varchar(50),
dwh_create_date TIMESTAMP DEFAULT NOW()
);


