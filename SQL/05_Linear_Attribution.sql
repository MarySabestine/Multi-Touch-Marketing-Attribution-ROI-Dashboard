-- This SQL Script uses CTE and Joins to display Linear Attribution.

-- Linear Attribution: Linear Attribution is a multi-touch attribution model that distributes conversion 
-- credit equally across all touchpoints in the customer journey.
-- Rather than isolating the first or last interaction,
-- this model operates on the assumption that every digital touchpoint contributed equally 
-- to the ultimate conversion.

Create table Linear_Attribution_table as

WITH attribution_base AS
(
    SELECT
        tp.user_id,
        tp.channel,
        tp.timestamp,
        conv.revenue,

        COUNT(*) OVER
        (
            PARTITION BY tp.user_id
        ) AS total_touchpoints

    FROM touchpoints tp

    Inner JOIN conversions conv
           ON tp.user_id=conv.user_id
)

SELECT *,
       ROUND(1.0/total_touchpoints,3) AS linear_weight
FROM attribution_base;
