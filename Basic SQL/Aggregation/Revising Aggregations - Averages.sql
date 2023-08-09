/*
# Revising Aggregations - Averages

Query the average population of all cities in CITY where DISTRICT is California.

## Input Format

The CITY table is described as follows:

+-------------+--------------+
| Field       | Type         |
+-------------+--------------+
| ID          | NUMBER       |
| NAME        | VARCHAR2(17) |
| COUNTRYCODE | VARCHAR2(3)  |
| DISTRICT    | VARCHAR2(20) |
| POPULATION  | NUMBER       |
+-------------+--------------+
*/


-- Solution

-- Select the Average of the population column from the CITY table.
SELECT AVG(population)

-- Where the district column is equal to 'California'.
FROM city
WHERE district = 'California';
