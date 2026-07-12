SELECT
    channel,
    campaign,
    ROUND(SUM(spend), 2) AS total_spend
FROM ad_spend
GROUP BY channel,campaign
ORDER BY total_spend DESC;