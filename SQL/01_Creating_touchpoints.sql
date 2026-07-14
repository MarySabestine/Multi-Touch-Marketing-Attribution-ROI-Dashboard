-- Uses "marketing_attribution" Database.
USE marketing_attribution;

-- 1. Build an empty touchpoints table structure.
CREATE TABLE IF NOT EXISTS touchpoints (
    user_id VARCHAR(50),
    timestamp DATETIME,
    region VARCHAR(100),
    device VARCHAR(50),
    channel VARCHAR(100),
    campaign VARCHAR(150),
    event_type VARCHAR(50),
    utm_source VARCHAR(100),
    utm_medium VARCHAR(100),
    utm_campaign VARCHAR(150)
);

-- Deletes all the table fields if existed.
TRUNCATE TABLE touchpoints;

-- Bulk load data from the local computer to MySql Workbench.
LOAD DATA LOCAL INFILE 'W:/Anil/Infotact Solutions/Project Files/Cleaned/Cleaned_touchpoints.csv'
INTO TABLE touchpoints
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n' -- Switched back to standard Unix line breaks
IGNORE 1 LINES
-- If your Pandas export added an index column, this @dummy variable catches it and safely throws it away:
(@dummy, user_id, @raw_timestamp, region, device, channel, campaign, event_type, utm_source, utm_medium, utm_campaign)
SET timestamp = STR_TO_DATE(@raw_timestamp, '%Y-%m-%d %H:%i:%s');

-- Displays Entire Table.
select *from touchpoints;
