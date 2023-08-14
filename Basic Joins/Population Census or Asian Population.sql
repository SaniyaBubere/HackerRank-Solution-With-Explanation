-- Asian Population
-- https://www.hackerrank.com/challenges/asian-population/problem

--Solution

-- This query selects the sum of the population of all cities in Asia.

SELECT Sum(CITY.Population)
-- The `SUM()` function is used to calculate the sum of the population column.

from CITY
-- The `CITY` table is the source of data for this query.

Inner join COUNTRY ON CITY.CountryCode = COUNTRY.Code
-- The `INNER JOIN` clause joins the `CITY` and `COUNTRY` tables on the `CountryCode` column.

WHERE COUNTRY.CONTINENT='Asia';
-- The `WHERE` clause filters the results to only include cities in the `Asia` continent.


-- OR 

Select Sum(CITY.Population) from CITY 
Inner join COUNTRY ON CITY.CountryCode = COUNTRY.Code
WHERE COUNTRY.CONTINENT='Asia';
