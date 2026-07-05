WITH first_touch AS (
SELECT
user_id,
channel,
revenue,
ROW_NUMBER() OVER(
PARTITION BY user_id
ORDER BY timestamp
) AS rn
FROM customer_journey
)

SELECT
channel,
SUM(revenue) AS attributed_revenue
FROM first_touch
WHERE rn=1
GROUP BY channel;