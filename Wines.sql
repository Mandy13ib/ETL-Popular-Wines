--drop employee table 
DROP TABLE winemag;
DROP TABLE winexl;

-- Create tables for raw data to be loaded into
CREATE TABLE newwinemag (
country VARCHAR,
description VARCHAR,
points VARCHAR,
price VARCHAR,
province VARCHAR,
variety VARCHAR,
winery VARCHAR
);

CREATE TABLE winexl (
country VARCHAR,
points INT,
price VARCHAR,
province VARCHAR,
title VARCHAR,
variety VARCHAR,
winery VARCHAR
);


--checking data imports
SELECT * FROM newwinemag;
SELECT * FROM winexl;

-- Joins tables
SELECT newwinemag.country, newwinemag.points, newwinemag.price, newwinemag.variety, winexl.winery
FROM newwinemag
JOIN winexl
ON newwinemag.winery = winexl.winery;
