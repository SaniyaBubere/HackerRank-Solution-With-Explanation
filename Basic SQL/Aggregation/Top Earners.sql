/*
We define an employee's total earnings to be their monthly  worked, and the maximum 
total earnings to be the maximum total earnings for any employee in the Employee table.
Write a query to find the maximum total earnings for all employees as well as the total number of employees who have maximum total earnings. 
Then print these values as  space-separated integers.

Input Format

The Employee table containing employee data for a company is described as follows:

*/

--Solution


/* This query will find the employee who has the maximum salary * months and the number of employees who have the maximum salary * months. */

SELECT
    /* This expression calculates the maximum salary * months for all employees. */
    max(salary * months),

    /* This expression counts the number of employees who have the maximum salary * months. */
    count(salary * months)

FROM
    /* This keyword tells the database that we want to get the data from the EMPLOYEE table. */
    employee

WHERE
    /* This condition filters the rows to only include those where the salary * months is equal to the maximum salary * months for all employees. */
    salary * months in (
        /* This subquery calculates the maximum salary * months for all employees. */
        select max(salary * months)
        from employee
    )
;

-- or

select max(salary*months),count(salary*months) from employee
where salary*months in (select max(salary*months) from employee);
