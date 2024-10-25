USE ROLE SYSADMIN;

CREATE WAREHOUSE IF NOT EXISTS DBT_TRANSFORM_WH_M
    WAREHOUSE_SIZE = 'MEDIUM'
    AUTO_SUSPEND = 60
    AUTO_RESUME = TRUE
    INITIALLY_SUSPENDED = TRUE;
