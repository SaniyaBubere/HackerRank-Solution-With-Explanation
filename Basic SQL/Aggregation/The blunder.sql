/*Samantha was tasked with calculating the average monthlysalaries for all employees in the EMPLOYEES table, 
but did not realize her keyboard's 0 key was broken until after completing the calculation. She wants your help
finding the difference between her miscalculation (using salaries with any zeroes removed), and the actual average salary.

Write a query calculating the amount of error (i.e.: actual−miscalculatedactual−miscalculated average monthly salaries),
and round it up to the next integer.*/

Solution

-- Select the ceiling of the difference between the averages of the salary column
-- after casting it to a string and after replacing all leading zeros with empty strings,
-- and add 1.
--The + 1 at the end of the query is used to ensure that the result is always an integer.
--This is because the CEILING() function can sometimes return a floating-point number.

SELECT CEILING(AVG(SALARY) - AVG(CAST(REPLACE(SALARY,'0','') AS INT))) + 1

-- From the EMPLOYEES table.
FROM EMPLOYEES;
