
-- /* 
-- Working platform:- MySQL

/* Ketty gives Eve a task to generate a report containing three columns: Name, Grade and Mark.
Ketty doesn't want the NAMES of those students who received a grade lower than 8. 
The report must be in descending order by grade -- i.e. higher grades are entered first.
If there is more than one student with the same grade (8-10) assigned to them, order those particular students by their name alphabetically.
Finally, if the grade is lower than 8, use "NULL" as their name and list them by their grades in descending order.
If there is more than one student with the same grade (1-7) assigned to them, order those particular students by their marks in ascending order.

Print "NULL"  as the name if the grade is less than 8.

Write a query to help Eve.
*/

SELECT
    IF(grade >= 8, name, NULL),
    grades.grade,
    students.marks
-- This line selects the `Name`, `Grade`, and `Marks` columns from the `Students` table.
-- The `IF` statement is used to handle the null values in the `Name` column.
-- If the `Grade` column is greater than or equal to 8, then the `Name` column is set to the student's name.
-- Otherwise, the `Name` column is set to `NULL`.

FROM students
-- The `Students` table is the source of data for this query.

JOIN grades ON students.marks BETWEEN grades.min_mark AND grades.max_mark
-- The `JOIN` clause joins the `Students` and `Grades` tables on the `marks` column.
-- This ensures that only students whose marks are between the minimum and maximum marks for the grade are included in the results.

ORDER BY grade DESC, name;
-- This `ORDER BY` clause orders the results by the `Grade` column in descending order.
-- If there is more than one student with the same grade, then the students are ordered by their name alphabetically.

-- OR

select if(grade>=8,name,null), grades.grade, students.marks from students inner join grades on students.marks between grades.max_mark and grades.min_mark 
order by grade desc, name;

