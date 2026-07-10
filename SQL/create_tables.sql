--Creating Aspend table
CREATE TABLE cleaned_Adspend_Table (
 date TIMESTAMPTZ,
 channel TEXT,
 campaign TEXT,
 spend NUMERIC,
 date_quarter INTEGER,
 date_month_name TEXT,
 date_day_name TEXT,
 date_day_of_the_week TEXT,
 date_week INTEGER,
 date_hour INTEGER,
 date_is_weekend TEXT);

---Creating Conversion table
CREATE TABLE cleaned_Conversion_Table (
 user_id TEXT,
 conversion_date TIMESTAMPTZ,
 revenue NUMERIC,
 conversion_date_quarter INTEGER,
 conversion_date_month_name TEXT,
 conversion_date_day_name TEXT,
 conversion_date_day_of_the_week TEXT,
 conversion_date_week INTEGER,
 conversion_date_hour INTEGER,
 conversion_date_is_weekend TEXT);

-- Creating Customer table
 CREATE TABLE cleaned_Customer_Table (
 customer_key INTEGER,
 user_id TEXT,
 region TEXT,
 primary_device TEXT,
 first_touch_date TIMESTAMPTZ,
 last_touch_date TIMESTAMPTZ,
 total_touchpoints INTEGER,
 conversion_flag TEXT,
 conversion_date TIMESTAMPTZ,
 revenue NUMERIC,
 channel TEXT,
 campaign TEXT,
 first_touch_date_quarter INTEGER,
 first_touch_date_month_name TEXT,
 first_touch_date_day_name TEXT,
 first_touch_date_day_of_the_week TEXT,
 first_touch_date_week INTEGER,
 first_touch_date_hour INTEGER,
 first_touch_date_is_weekend TEXT,
 last_touch_date_quarter INTEGER,
 last_touch_date_month_name TEXT,
 last_touch_date_day_name TEXT,
 last_touch_date_day_of_the_week TEXT,
 last_touch_date_week INTEGER,
 last_touch_date_hour INTEGER,
 last_touch_date_is_weekend TEXT,
 conversion_date_quarter NUMERIC,
 conversion_date_month_name TEXT,
 conversion_date_day_name TEXT,
 conversion_date_day_of_the_week TEXT,
 conversion_date_week INTEGER,
 conversion_date_hour NUMERIC,
 conversion_date_is_weekend TEXT);

--creating User Weblogs table
 CREATE TABLE cleaned_User_Weblogs (
 user_id TEXT,
 timestamp TIMESTAMPTZ,
 region TEXT,
 device TEXT,
 channel TEXT,
 campaign TEXT,
 event_type TEXT,
 utm_source TEXT,
 utm_medium TEXT,
 utm_campaign TEXT,
 quarter NUMERIC,
 month_name TEXT,
 day_name TEXT,
 day_of_the_week TEXT,
 week INTEGER,
 hour NUMERIC,
 weekend TEXT
);