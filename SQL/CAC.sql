WITH total_spend AS
(
    SELECT SUM(spend) AS total_spend
    FROM ad_spend
),
acquired_customers AS
(
    SELECT COUNT(DISTINCT user_id) AS total_customers
    FROM conversions
)

SELECT
    total_spend,
    total_customers,
    ROUND(total_spend / NULLIF(total_customers,0),2) AS CAC
FROM total_spend
CROSS JOIN acquired_customers;