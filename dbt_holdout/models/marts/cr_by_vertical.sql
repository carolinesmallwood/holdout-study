WITH conv_per_user AS (
    SELECT
        user_hash
        , treatment
        , vertical
        , SUM(conversion_amt) AS total_amt
        , CASE 
            WHEN SUM(conversion_amt) > 0 THEN 1
            ELSE 0
        END AS converted
    FROM {{ ref('fact_sessions') }}
    GROUP BY user_hash, treatment, vertical
)

SELECT 
    treatment
    , COALESCE(SUM(converted) / COUNT(user_hash), 0) AS conversion_rate
FROM conv_per_user
GROUP BY treatment, vertical