-- Creates Ad_Spend table structure.
-- Later Used Data Import Wizard in MySql workbench.

CREATE TABLE ad_spend (
    date DATETIME,
    channel VARCHAR(25),
    campaign VARCHAR(25),
    spend DECIMAL(10 , 2 )
);


-- This sql Script displays Full table content of ad_spend Table.
select *from ad_spend;

