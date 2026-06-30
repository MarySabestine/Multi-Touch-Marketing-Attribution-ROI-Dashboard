#Calculating total Revenue and order by date desc
#Used Window Function
SELECT
    user_id,
    conversion_date,
    revenue,
    SUM(revenue) OVER(
        ORDER BY conversion_date
    ) AS cumulative_revenue
FROM conversions;