
/* Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent) and their respective average city populations (CITY.Population) rounded down to the nearest integer.

Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

Input Format

The CITY and COUNTRY tables are described as follows: */

--SOLUTION

SELECT COUNTRY.CONTINENT,
    FLOOR(AVG(CITY.Population))
-- This line selects the `Continent` column from the `COUNTRY` table, and the average population of all cities in each continent, rounded down to the nearest integer.

FROM CITY
-- The `CITY` table is the source of data for this query.

INNER JOIN COUNTRY ON CITY.CountryCode = COUNTRY.Code
-- The `INNER JOIN` clause joins the `CITY` and `COUNTRY` tables on the `CountryCode` column.
-- This ensures that only cities that have a corresponding country record are included in the results.

GROUP BY COUNTRY.Continent
-- This line groups the results by the `Continent` column.
-- This means that the results will be one row for each continent, and each row will contain the continent name and the average city population for that continent.

--OR

select COUNTRY.CONTINENT,FLOOR(AVG(CITY.POPULATION)) FROM CITY INNER JOIN COUNTRY ON CITY.CountryCode = COUNTRY.Code GROUP BY CONTINENT;
