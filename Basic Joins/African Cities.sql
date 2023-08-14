-- African Cities
-- https://www.hackerrank.com/challenges/african-cities/problem

SELECT CITY.NAME
-- This line selects the `NAME` column from the `CITY` table.

FROM CITY
-- The `CITY` table is the source of data for this query.

INNER JOIN COUNTRY ON CITY.CountryCode=COUNTRY.Code
-- The `INNER JOIN` clause joins the `CITY` and `COUNTRY` tables on the `CountryCode` column.
-- This ensures that only cities that have a corresponding country record are included in the results.

WHERE COUNTRY.CONTINENT='Africa'
-- The `WHERE` clause filters the results to only include cities in the `Africa` continent.

-- or 

SELECT CITY.NAME FROM CITY INNER JOIN COUNTRY ON CITY.CountryCode=COUNTRY.Code WHERE COUNTRY.CONTINENT='Africa';
