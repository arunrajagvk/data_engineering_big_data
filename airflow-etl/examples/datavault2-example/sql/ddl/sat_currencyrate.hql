CREATE TABLE IF NOT EXISTS dv_raw.sat_currencyrate (
      hkey_currencyrate  STRING
    , load_dtm           TIMESTAMP
    , load_end_dtm       TIMESTAMP
    , record_source      STRING
    , currencyratedate   TIMESTAMP
    , averagerate        DOUBLE
    , endofdayrate       DOUBLE
)
STORED AS ORC;
