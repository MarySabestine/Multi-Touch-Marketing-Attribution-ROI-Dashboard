--  This Sql Query uses CTE, Joins to display Return on Ad Spend(ROAS).

WITH total_spend AS
(
    SELECT
        SUM(spend) AS total_spend
    FROM ad_spend
),

total_revenue AS
(
    SELECT
        SUM(revenue) AS total_revenue
    FROM conversions
)

SELECT
    r.total_revenue,
    s.total_spend,
    ROUND(
        r.total_revenue / NULLIF(s.total_spend,0),
        2
    ) AS ROAS
FROM total_revenue r
CROSS JOIN total_spend s;