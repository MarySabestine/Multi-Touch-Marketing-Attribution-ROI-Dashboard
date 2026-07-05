--Count touches.
SELECT

user_id,

channel,

COUNT(*) OVER(

PARTITION BY user_id

) AS touches,

revenue,

revenue*1.0/

COUNT(*) OVER(

PARTITION BY user_id

) AS credit

FROM customer_journey;


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


--First Touch View
CREATE VIEW first_touch AS

WITH ordered_journey AS (
    SELECT
        user_id,
        channel,
        revenue,
        ROW_NUMBER() OVER (
            PARTITION BY user_id
            ORDER BY timestamp
        ) AS touch_order
    FROM customer_journey
)

SELECT
    channel,
    SUM(revenue) AS first_touch_revenue
FROM ordered_journey
WHERE touch_order = 1
GROUP BY channel;

--Last view
CREATE VIEW last_touch AS

WITH ordered_journey AS (
    SELECT
        user_id,
        channel,
        revenue,
        ROW_NUMBER() OVER (
            PARTITION BY user_id
            ORDER BY timestamp DESC
        ) AS touch_order
    FROM customer_journey
)

SELECT
    channel,
    SUM(revenue) AS last_touch_revenue
FROM ordered_journey
WHERE touch_order = 1
GROUP BY channel;

--Linear Attribution View
CREATE VIEW linear_touch AS

WITH linear AS (
    SELECT
        channel,
        revenue * 1.0 /
        COUNT(*) OVER (
            PARTITION BY user_id
        ) AS attribution_credit
    FROM customer_journey
)

SELECT
    channel,
    SUM(attribution_credit) AS linear_revenue
FROM linear
GROUP BY channel;

--Creating a Comparison Table
SELECT
    f.channel AS Channel,
    f.first_touch_revenue AS "First Touch",
    l.last_touch_revenue AS "Last Touch",
    lt.linear_revenue AS "Linear"

FROM first_touch f

LEFT JOIN last_touch l
ON f.channel = l.channel

LEFT JOIN linear_touch lt
ON f.channel = lt.channel

ORDER BY Channel;

-- Creating a View Linear
CREATE VIEW linear AS

SELECT
    user_id,
    channel,
    revenue,
    COUNT(*) OVER (
        PARTITION BY user_id
    ) AS touch_count,
    revenue * 1.0 /
    COUNT(*) OVER (
        PARTITION BY user_id
    ) AS credit
FROM customer_journey;


--Total attributed revenue
SELECT
SUM(credit)
FROM linear;