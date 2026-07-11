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

    LEFT JOIN conversions conv
           ON tp.user_id=conv.user_id
)

SELECT *,
       ROUND(1.0/total_touchpoints,3) AS linear_weight
FROM attribution_base;