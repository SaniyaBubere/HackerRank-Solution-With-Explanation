/* Query the following two values from the STATION table:

The sum of all values in LAT_N rounded to a scale of 2  decimal places.
The sum of all values in LONG_W rounded to a scale of 2 decimal places.
+-------------+------------+
| Field       |   Type     |
+-------------+------------+
| ID          | INTEGER    |
| CITY        | VARCHAR(21)|
| STATE       | VARCHAR(2) |
| LAT_N       | NUMERIC    |
| LONG_W      | NUMERIC    |
+-------------+------------+*/

-- Solution


/* This query will first calculate the sums of the latitude and longitude values in the `STATION` table. */
select
    /* This expression is used to round the sum of the latitude values to 2 decimal places and cast it to the `DECIMAL` data type with 10 digits total and 2 decimal places. */
    cast(round(sum(lat_n), 2) as decimal(10,2)),
    /* This expression is used to round the sum of the longitude values to 2 decimal places and cast it to the `DECIMAL` data type with 10 digits total and 2 decimal places. */
    cast(round(sum(long_w), 2) as decimal(10,2))
from station;

/* The `from station` clause specifies the table that we want to run the query on. */
