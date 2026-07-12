WITH last_touch AS (
    SELECT
        user_id,
        channel,
        revenue,
        timestamp,
        ROW_NUMBER() OVER (
            PARTITION BY user_id
            ORDER BY timestamp DESC
        ) AS rn
    FROM customer_journey
)

SELECT
    channel,
    SUM(revenue) AS attributed_revenue
FROM last_touch
WHERE rn = 1
GROUP BY channel
ORDER BY attributed_revenue DESC;