/*
Given a table STATION that holds data for five fields namely ID, CITY, STATE, NORTHERN LATITUDE and WESTERN LONGITUDE.

+-------------+------------+
| Field       |   Type     |
+-------------+------------+
| ID          | INTEGER    |
| CITY        | VARCHAR(21)|
| STATE       | VARCHAR(2) |
| LAT_N       | NUMERIC    |
| LONG_W      | NUMERIC    |
+-------------+------------+

Write a query to find the greatest value of the Northern Latitudes less than 137.2345 up to 4 decimal places.

*/

-- Solution

/* This query will select the maximum latitude value in the `STATION` table where the latitude is less than 137.2345. The maximum value will be rounded to 4 decimal places and cast to the `DECIMAL` data type with 10 digits total and 4 decimal places. */

SELECT
    /* This expression is used to select the maximum latitude value in the `STATION` table where the latitude is less than 137.2345. The maximum value will be rounded to 4 decimal places and cast to the `DECIMAL` data type with 10 digits total and 4 decimal places. */
    cast(round(max(lat_n), 4) as decimal(10, 4))

FROM
    /* This keyword specifies the table that the query should be run on. */
    station

WHERE
    /* This condition is used to filter the `STATION` table to only include rows where the latitude is less than 137.2345. */
    lat_n < 137.2345;
