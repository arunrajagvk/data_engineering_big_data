CREATE TABLE IF NOT EXISTS dv_raw.hub_category (
      hkey_category   STRING
    , record_source   STRING
    , load_dtm        TIMESTAMP
    , category_id     INT
    , name            STRING)
STORED AS PARQUET;
