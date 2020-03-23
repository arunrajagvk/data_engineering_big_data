CREATE TABLE IF NOT EXISTS dv_raw.sat_customer (
      hkey_customer   STRING
    , load_dtm        TIMESTAMP
    , record_source   STRING
    , checksum        STRING    
    , active          INT
    , activebool      STRING
    , create_date     TIMESTAMP
    , first_name      STRING
    , last_name       STRING
    , address         STRING
    , address2        STRING
    , district        STRING
    , city            STRING
    , postal_code     STRING
    , phone           STRING
    , country         STRING
)
STORED AS PARQUET;
