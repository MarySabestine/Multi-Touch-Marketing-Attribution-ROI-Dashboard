--  This Sql Query uses CTE and Joins to display Cost per Click (CPC).

WITH spend_by_channel AS
(
    SELECT
        channel,
        SUM(spend) AS total_spend
    FROM ad_spend
    GROUP BY channel
),

clicks_by_channel AS
(
    SELECT
        channel,
        COUNT(*) AS total_clicks
    FROM touchpoints
    GROUP BY channel
)

SELECT
    s.channel,
    s.total_spend,
    c.total_clicks,
    ROUND(
        s.total_spend / NULLIF(c.total_clicks,0),
        2
    ) AS CPC

FROM spend_by_channel s

INNER JOIN clicks_by_channel c
        ON s.channel = c.channel

ORDER BY CPC DESC;