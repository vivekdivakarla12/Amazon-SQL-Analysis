-- Creating table for amazon purchases, and importing from the CSV file
CREATE TABLE amazon_purchases (
    Order_Date TEXT,
    Purchase_Price_Per_Unit REAL,
    Quantity INTEGER,
    Shipping_Address_State TEXT,
    Title TEXT,
    ASIN_ISBN TEXT,
    Category TEXT,
    Survey_ResponseID INTEGER
);

.mode csv 
.import amazon-purchases.csv amazon_purchases

-- Getting Top Categories from 2022
SELECT
Category,
SUM(Purchase_Price_Per_Unit * Quantity) AS Total_Spent
FROM
amazon_purchases
WHERE
strftime ('%Y', Order _Date) = ' 2022'
GROUP BY
Category
ORDER BY
Total_Spent DESC

-- Creating table for amazon survey data, and importing from the CSV file
CREATE TABLE amazon_survey (
    Survey_ResponseID TEXT,
    Q_demos_age TEXT,
    Q_demos_hispanic TEXT,
    Q_demos_race TEXT,
    Q_demos_education TEXT,
    Q_demos_income TEXT,
    Q_demos_gender TEXT,
    Q_sexual_orientation TEXT,
    Q_demos_state TEXT,
    Q_amazon_use_howmany TEXT,
    Q_amazon_use_hh_size TEXT,
    Q_amazon_use_how_oft TEXT,
    Q_substance_use_cigarettes TEXT,
    Q_substance_use_marijuana TEXT,
    Q_substance_use_alcohol TEXT,
    Q_personal_diabetes TEXT,
    Q_personal_wheelchair TEXT,
    Q_life_changes TEXT,
    Q_sell_YOUR_data TEXT,
    Q_sell_consumer_data TEXT,
    Q_small_biz_use TEXT,
    Q_census_use TEXT,
    Q_research_society TEXT
);

.mode csv 
.import survey.csv amazon_survey
    
-- Join between the purchase and survey data on Survey Response ID
CREATE TABLE purchases_and_survey AS
SELECT * 
FROM amazon_purchases 
JOIN amazon_survey 
ON CAST(amazon_purchases.Survey_ResponseID AS TEXT) = amazon_survey.Survey_ResponseID;
