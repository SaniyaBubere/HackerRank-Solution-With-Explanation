/* Query the two cities in STATION with the shortest and longest CITY names, 
as well as their respective lengths (i.e.: number of characters in the name). 
If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically. 
Sample Input

For example, CITY has four entries: DEF, ABC, PQRS and WXY.

Sample Output

ABC 3
PQRS 4

Explanation

When ordered alphabetically, 
the CITY names are listed as ABC, DEF, PQRS, and WXY, with lengths  and . 
The longest name is PQRS, but there are  options for shortest named city. Choose ABC, because it comes first alphabetically.

Note
You can write two separate queries to get the desired output. It need not be a single query.*/


-- Solution

SELECT CITY, LENGTH(CITY) FROM STATION --Get the city name and length of city name from the STATION table.
ORDER BY LENGTH(CITY) ASC, CITY -- Sort the results by the length of the city name in Ascending order, and then by the city name.
LIMIT 1; --Limit the results to 1 row.

SELECT CITY, LENGTH(CITY) FROM STATION --Get the city name and length of city name from the STATION table.
ORDER BY LENGTH(CITY) DESC, CITY -- Sort the results by the length of the city name in descending order, and then by the city name.
LIMIT 1; --Limit the results to 1 row.




