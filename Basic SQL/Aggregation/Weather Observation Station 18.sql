-- Consider  and  to be two points on a 2D plane.

--  happens to equal the minimum value in Northern Latitude (LAT_N in STATION).
--  happens to equal the minimum value in Western Longitude (LONG_W in STATION).
--  happens to equal the maximum value in Northern Latitude (LAT_N in STATION).
--  happens to equal the maximum value in Western Longitude (LONG_W in STATION).
-- Query the Manhattan Distance between points  and  and round it to a scale of  decimal places.


--Solution

/* This query will calculate the difference between the maximum and minimum Northern Latitudes (LAT_N) and the maximum and minimum Western Longitudes (LONG_W) in the STATION table and round the answer to 4 decimal places. */

SELECT
    /* This expression calculates the difference between the maximum and minimum Northern Latitudes (LAT_N) and the maximum and minimum Western Longitudes (LONG_W) in the STATION table. */
    cast(round((max(lat_n) - min(lat_n) + max(long_w) - min(long_w)), 4) as decimal(10, 4))

FROM
    /* This line specifies the STATION table as the source of data for the query. */
    STATION;
