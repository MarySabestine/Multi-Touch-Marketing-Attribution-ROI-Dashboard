USE marketing_attribution;

DROP TABLE IF EXISTS customers;

-- Recreate the structure to account for your date and flag fields
CREATE TABLE customers (
    user_id VARCHAR(50) PRIMARY KEY,
    region VARCHAR(100),
    primary_device VARCHAR(50),
    first_touch_date DATE,
    last_touch_date DATE,
    total_touchpoints INT,
    conversion_flag VARCHAR(20),
    conversion_date DATE,
    customer_lifetime_revenue DECIMAL(10,2),
    acquisition_channel VARCHAR(100),
    acquisition_campaign VARCHAR(150)
);


LOAD DATA LOCAL INFILE 'W:/Anil/Infotact Solutions/Project Files/Cleaned/Cleaned_customer.csv'
INTO TABLE customers
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
-- Matches the raw file sequence perfectly, throwing away the unnamed index using @dummy
(@dummy, @dummy_cust_key, user_id, region, primary_device, @raw_first_date, @raw_last_date, total_touchpoints, conversion_flag, @raw_conv_date, customer_lifetime_revenue, acquisition_channel, acquisition_campaign)
SET 
    first_touch_date = NULLIF(@raw_first_date, ''),
    last_touch_date = NULLIF(@raw_last_date, ''),
    conversion_date = NULLIF(@raw_conv_date, '');