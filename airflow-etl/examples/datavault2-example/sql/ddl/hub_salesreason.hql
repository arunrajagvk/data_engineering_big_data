CREATE TABLE IF NOT EXISTS dv_raw.hub_salesreason (
      hkey_salesreason   STRING
    , record_source      STRING
    , load_dtm           TIMESTAMP
    , name               STRING)
STORED AS ORC;
