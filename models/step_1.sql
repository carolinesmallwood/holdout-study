-- dedupe records
-- rename columns
-- filter out invalid cohort
SELECT DISTINCT
    agegroup AS age
    , bidprice_usd AS bid
    , campaigntimestamp AS event_time
    , cohort
    , LOWER(device) AS device
    , gender
    , "group" AS treatment
    , sessionid AS session_id
    , userhash AS user_hash
    , "value" AS conversion_amt
    , verticalname AS vertical
FROM holdout_data.holdout_data
WHERE cohort != 203902