CREATE TABLE IF NOT EXISTS dv_raw.hub_specialoffer (
      hkey_specialoffer  STRING
    , record_source      STRING
    , load_dtm           TIMESTAMP
    , specialofferid     INT)
STORED AS ORC;
