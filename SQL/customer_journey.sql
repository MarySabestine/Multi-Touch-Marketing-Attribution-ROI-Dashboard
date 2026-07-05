--Reconstruct Customer Journeys
SELECT
    user_id,
    timestamp,
    channel,
    campaign,

    ROW_NUMBER() OVER(
        PARTITION BY user_id
        ORDER BY timestamp
    ) AS touch_order

FROM cleaned_User_Weblogs;


--Create the Customer Journey Table
CREATE VIEW customer_journey AS

SELECT
    cuw.user_id,
    cuw.timestamp,
    cuw.channel,
    cuw.campaign,
    ct.conversion_date,
    ct.revenue

FROM cleaned_User_Weblogs cuw

JOIN cleaned_Conversion_Table ct

ON cuw.user_id = ct.user_id

WHERE cuw.timestamp <= ct.conversion_date;

