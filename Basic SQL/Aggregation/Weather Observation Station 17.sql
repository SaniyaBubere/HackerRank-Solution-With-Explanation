/* Query the Western Longitude (LONG_W)where the smallest Northern Latitude (LAT_N) in STATION is greater than  38.7780  Round your answer to 4 decimal places.

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

/* This query will find the Western Longitude (LONG_W) for the station with the lowest Northern Latitude (LAT_N) that is greater than 38.7780 and round the answer to 4 decimal places. */

SELECT
    /* This line selects the `LONG_W` column from the `STATION` table and rounds the value to 4 decimal places. */
    cast(round(long_w, 4) as decimal(10, 4))

FROM
    /* This line specifies the `STATION` table as the source of data for the query. */
    STATION

WHERE
    /* This line filters the rows to only include those where the `LAT_N` value is greater than 38.7780. */
    lat_n > 38.7780

ORDER BY
    /* This line sorts the rows by the `LAT_N` value in ascending order. */
    lat_n ASC

LIMIT
    /* This line limits the number of rows returned to 1. */
    1;

