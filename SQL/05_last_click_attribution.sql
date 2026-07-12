CREATE TABLE fact_last_click_attribution AS

WITH RankedTouchpoints AS
(
    SELECT
        tp.User_ID,
        tp.Campaign,
        tp.Channel,
        tp.Timestamp,
        c.Conversion_Date,
        c.Revenue,

        ROW_NUMBER() OVER
        (
            PARTITION BY tp.User_ID
            ORDER BY tp.Timestamp DESC
        ) AS rn

    FROM touchpoints tp

    INNER JOIN conversions c
        ON tp.User_ID = c.User_ID

    WHERE tp.Timestamp <= c.Conversion_Date
)

SELECT
    User_ID,
    Campaign,
    Channel,
    Timestamp AS Last_Touch_Time,
    Conversion_Date,
    Revenue
FROM RankedTouchpoints
WHERE rn = 1;

select *from fact_last_click_attribution;