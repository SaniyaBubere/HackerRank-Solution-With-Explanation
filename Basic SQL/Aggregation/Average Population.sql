--Problem Statement
/*
Given a City table, whose fields are described as

+-------------+----------+
| Field       | Type     |
+-------------+----------+
| ID          | int(11)  |
| Name        | char(35) |
| CountryCode | char(3)  |
| District    | char(20) |
| Population  | int(11)  |
+-------------+----------+
you have to print the average population of all cities, rounded down to the nearest integer.

*/

--Solution

-- Select the rounded average of the population column from the CITY table.
SELECT round(avg(population))
FROM city;
