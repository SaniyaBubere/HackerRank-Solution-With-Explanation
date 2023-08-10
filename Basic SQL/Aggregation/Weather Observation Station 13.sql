/* Query the sum of Northern Latitudes (LAT_N) from STATION having values greater than 38.788038.7880 and less than 137.2345137.2345. 
Truncate your answer to 44 decimal places.

+-------------+------------+
| Field       |   Type     |
+-------------+------------+
| ID          | INTEGER    |
| CITY        | VARCHAR(21)|
| STATE       | VARCHAR(2) |
| LAT_N       | NUMERIC    |
| LONG_W      | NUMERIC    |
+-------------+------------+
*/

--Solution

/* This query will select the sum of the latitude values in the `STATION` table where the latitude is greater than 38.7880 and less than 137.2345. The sum will be rounded to 4 decimal places and cast to the `DECIMAL` data type with 10 digits total and 4 decimal places. */

SELECT
    /* This expression is used to select the sum of the latitude values in the `STATION` table where the latitude is greater than 38.7880 and less than 137.2345. The sum will be rounded to 4 decimal places and cast to the `DECIMAL` data type with 10 digits total and 4 decimal places. */
    cast(round(sum(lat_n), 4) as decimal(10, 4))

FROM
    /* This keyword specifies the table that the query should be run on. */
    station

WHERE
    /* This condition is used to filter the `STATION` table to only include rows where the latitude is greater than 38.7880 and less than 137.2345. */
    lat_n > 38.7880 and lat_n < 137.2345;
