INSERT INTO TABLE dv_raw.hub_staff
SELECT DISTINCT
      Md5(CONCAT(LTRIM(RTRIM(COALESCE(CAST(a.first_name as string), ''))) , '-' ,
LTRIM(RTRIM(COALESCE(CAST(a.last_name as string), ''))))) as hkey_staff
    , 'dvdrentals' as rec_src
    , from_unixtime(unix_timestamp("{{ts_nodash}}", "yyyyMMdd'T'HHmmss")) as load_dtm
      , a.staff_id
    , a.first_name
, a.last_name
FROM
    staging_dvdrentals.staff_{{ts_nodash}} a
WHERE
    NOT EXISTS (
        SELECT 
                hub.hkey_staff
        FROM 
                dv_raw.hub_staff hub
        WHERE
                    hub.first_name = a.first_name
AND     hub.last_name = a.last_name

    )
