--  This Sql Query uses CTE, Joins to display First Click Attribution.

WITH attribution_base AS
(
    SELECT
        tp.user_id,
        tp.channel,
        tp.timestamp,
        conv.revenue,

        ROW_NUMBER() OVER
        (
            PARTITION BY tp.user_id
            ORDER BY tp.timestamp
        ) AS rn

    FROM touchpoints tp

    LEFT JOIN conversions conv
           ON tp.user_id=conv.user_id
)

SELECT *,
       CASE
            WHEN rn=1 THEN 1
            ELSE 0
       END AS first_click_weight
FROM attribution_base;