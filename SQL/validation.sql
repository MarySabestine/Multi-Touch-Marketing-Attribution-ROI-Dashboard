--Total revenue in conversions
SELECT
SUM(revenue)
FROM cleaned_Conversion_Table;

-- Total attributed revenue
SELECT
SUM(credit)
FROM linear;