-- Total Advertistment Expenditure grouped by Channel.

SELECT
    channel,
    ROUND(SUM(spend), 2) AS total_spend
FROM ad_spend
GROUP BY channel
ORDER BY total_spend DESC;