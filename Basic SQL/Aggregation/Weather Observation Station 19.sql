/*Consider P1(a, c) and P2(b,d) to be two points on a 2D plane where a, c are the respective minimum and maximum 

values of Northern Latitude (LAT_N) and b, d are the respective minimum and maximum values of Western Longitude (LONG_W) in STATION.

Query the Euclidean Distance between points and and format your answer to display decimal digits.*/


-- Solution

/* This query will calculate the Euclidean distance between the points with the maximum and minimum latitude and longitude values in the STATION table and round the answer to 4 decimal places. */

SELECT
    /* This expression calculates the Euclidean distance between the points with the maximum and minimum latitude and longitude values in the STATION table. */
    cast(ROUND(
        sqrt(
            POWER((max(lat_n) - min(lat_n)), 2) +
            POWER((max(long_w) - min(long_w)), 2)
        ),
        4
    ) as decimal(10, 4))

FROM
    /* This keyword tells the database that we want to get the data from the STATION table. */
    STATION;

-- or 

SELECT cast(ROUND((SQRT(POWER((MAX(LAT_N)-MIN(LAT_N)),2) + POWER((MAX(LONG_W)-MIN(LONG_W)),2))),4) as decimal(10,4)) FROM STATION;
