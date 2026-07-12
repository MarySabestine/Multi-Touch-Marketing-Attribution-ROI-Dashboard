--Aggregate
WITH linear AS (
    SELECT
        channel,
        revenue*1.0/
        COUNT(*) OVER(
    PARTITION BY user_id
    ) AS credit
FROM customer_journey
)
SELECT
    channel,
    SUM(credit)
FROM linear
GROUP BY channel;