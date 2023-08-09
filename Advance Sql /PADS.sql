--Problem Statement

/*
Given a table OCCUPATIONS that holds data for three fields namely Column, Type.
+-------------+-----------+
| Column      |   Type    |
+-------------+-----------+
| Name        | STRING    |
| Occupation  | STRING    |
+-------------+-----------+
 
Generate the following two result sets:

Query an alphabetically ordered list of all names in OCCUPATIONS, immediately followed by the first letter of each profession as a parenthetical (i.e.: enclosed in parentheses). 
For example: AnActorName(A), ADoctorName(D), AProfessorName(P), and ASingerName(S).
Query the number of ocurrences of each occupation in OCCUPATIONS. Sort the occurrences in ascending order, and output them in the following format: 

There are a total of [occupation_count] [occupation]s.

where [occupation_count] is the number of occurrences of an occupation in OCCUPATIONS and [occupation] is the lowercase occupation name. If more than one Occupation has the same [occupation_count], they should be ordered alphabetically.
*/

--Solution

-- Start of the SELECT statement
SELECT name || '(' || left(occupation, 1) || ')' -- Select the name and occupation columns, and concatenate them with a parenthetical containing the first letter of the occupation.
FROM occupations -- Select the rows from the occupations table.
ORDER BY name; -- Order the results by the name column in ascending order.



-- Start of the SELECT statement
SELECT 'There are a total of ' || COUNT(*) || ' ' || lower(occupation) || 's.'
-- Select the COUNT(*) function, which counts the number of rows in each group, and concatenate it with a string containing the number of rows, the lowercase version of the occupation, and the plural suffix "s".
FROM occupations
-- Select the rows from the occupations table.
GROUP BY occupation
-- Group the rows by the occupation column.
ORDER BY COUNT(*), occupation;
-- Order the results by the COUNT(*) column in descending order, then by the occupation column in ascending order.
