-- Create a new table with a clear Structure of the table.
CREATE TABLE conversions (
    user_id VARCHAR(25),
    conversion_date DATETIME,
    revenue DECIMAL(10 , 2 )
);
 
-- Viewing all data values in table
select * from conversions;
 
 -- Checking datatypes
 DESCRIBE conversions;
 
-- Ranking based on first converion date to latest converion datee
-- Used Window Function
 SELECT
    user_id,
    conversion_date,
    revenue,
    ROW_NUMBER() OVER(
        ORDER BY conversion_date
    ) AS conversion_sequence
FROM conversions;


-- Ranking based on revenue value(High to Low)
-- Used Window Function
SELECT
    user_id,
    revenue,
    RANK() OVER(
        ORDER BY revenue DESC
    ) AS revenue_rank
FROM conversions;

-- Calculating total Revenue and order by date desc
-- Used Window Function
SELECT
    user_id,
    conversion_date,
    revenue,
    SUM(revenue) OVER(
        ORDER BY conversion_date
    ) AS cumulative_revenue
FROM conversions;