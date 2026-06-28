 # Ranking based on first converion date to latest converion datee
 #Used Window Function
 SELECT
    user_id,
    conversion_date,
    revenue,
    ROW_NUMBER() OVER(
        ORDER BY conversion_date
    ) AS conversion_sequence
FROM conversions;
