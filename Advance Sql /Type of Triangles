--Problem Statement

/*
Given a table TRIANGLES that holds data for three fields namely A, B, C.
+-------------+------------+
| Column      |   Type     |
+-------------+------------+
| A           | INTEGER    |
| B           | INTEGER    |
| C           | INTEGER    |
+-------------+------------+
 
Write a query identifying the type of each record in the TRIANGLES table using its three side lengths. Output one of the following statements for each record in the table:

Equilateral   : It's a triangle with  sides of equal length.
Isosceles     : It's a triangle with  sides of equal length.
Scalene       : It's a triangle with  sides of differing lengths.
Not A Triangle: The given values of A, B, and C don't form a triangle.
*/

Solution:

SELECT CASE
-- This line selects the CASE statement.
WHEN A+B <= C OR A+C <= B OR B+C <= A THEN 'Not A Triangle'
-- This line checks if the sum of any two sides is less than the third side. If it is, then the triangle is not a triangle.
WHEN A=B AND B=C THEN 'Equilateral'
-- This line checks if all three sides of the triangle are equal. If they are, then the triangle is equilateral.
WHEN A=B OR B=C OR C=A THEN 'Isosceles'
-- This line checks if any two sides of the triangle are equal. If they are, then the triangle is isosceles.
ELSE 'Scalene'
-- This line is the default case. If the triangle is not equilateral or isosceles, then it is scalene.
END FROM TRIANGLES;
-- This line specifies the table that the query should be run on.

