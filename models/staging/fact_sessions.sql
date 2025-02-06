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
    , t. group AS treatment
    , sessionid AS session_id
    , userhash AS user_hash
    , t.value AS conversion_amt
    , verticalname AS vertical
FROM  {{ source('holdout_data', 'sessions') }} t