#Ranking based on revenue value(High to Low)
#Used Window Function
SELECT
    user_id,
    revenue,
    RANK() OVER(
        ORDER BY revenue DESC
    ) AS revenue_rank
FROM conversions;