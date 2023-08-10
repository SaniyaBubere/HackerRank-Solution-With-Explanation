/*Query the smallest Northern Latitude (LAT_N) from STATION that is greater than  38.7780 Round your answer to 4 decimal places.
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


SELECT
    /* This line selects the `lat_n` column from the `STATION` table and rounds the value to 4 decimal places. */
    cast(round(lat_n, 4) as decimal(10, 4))

FROM
    /* This line specifies the `STATION` table as the source of data for the query. */
    STATION

WHERE
    /* This line filters the rows to only include those where the `LAT_N` value is greater than  38.7780. */
    LAT_N > 38.7780

ORDER BY
    /* This line sorts the rows by the `LAT_N` value in ascending order. */
    LAT_N asc

LIMIT
    /* This line limits the number of rows returned to 1. */
    1;
