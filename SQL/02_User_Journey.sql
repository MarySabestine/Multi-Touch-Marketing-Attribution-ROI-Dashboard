-- Used CTE, Window Functions, Joins for creating a table with user Journey.

WITH customer_journey AS
(
    SELECT
        tp.user_id,
        tp.timestamp,
        tp.channel,
        tp.campaign,
        cust.region,
        cust.conversion_flag
    FROM touchpoints tp
    LEFT JOIN customers cust
           ON tp.user_id = cust.user_id
    LEFT JOIN conversions conv
           ON tp.user_id = conv.user_id
)


-- Used this Select Statement to display Customer Journey Order partitioned by each user id.

SELECT *,
       ROW_NUMBER() OVER(
            PARTITION BY user_id
            ORDER BY timestamp
       ) AS touch_order
FROM customer_journey;

