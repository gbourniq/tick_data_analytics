USE ROLE ACCOUNTADMIN;

GRANT CREATE STAGE ON SCHEMA DATA_PLATFORM.SOURCE TO ROLE SYSADMIN;

GRANT USAGE ON INTEGRATION dev_s3_integration TO ROLE SYSADMIN;

USE ROLE SYSADMIN;

CREATE STAGE IF NOT EXISTS DATA_PLATFORM.SOURCE.LOAD_DATA_STAGING
    URL='s3://dev.data-staging.eu-west-1/'
    STORAGE_INTEGRATION=dev_s3_integration
    FILE_FORMAT=DATA_PLATFORM.SOURCE.PARQUET_FILEFORMAT;
