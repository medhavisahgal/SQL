-- Having and Where
-- This gives an error because AVG is an aggregate function and can't be used before grouping. It tries to compute the average before grouping the rows, which is invalid.
SELECT gender,
    AVG(age)
FROM employee_demographics
WHERE AVG(age) > 40
GROUP BY gender;
--  overcome this, we use the HAVING clause, as it allows the use of aggregate functions after the grouping is done.
SELECT gender,
    AVG(age)
FROM employee_demographics
GROUP BY gender
HAVING AVG(age) > 40;
-- The WHERE clause filters rows before any grouping is done, while the HAVING clause filters groups after the grouping is done.
SELECT occupation,
    AVG(salary)
FROM employee_salary
WHERE occupation LIKE '%man%'
GROUP BY occupation
HAVING AVG(salary) > 40000;
-- Practice 
SELECT gender,
    COUNT(*) AS no_of_employees
FROM employee_demographics
GROUP BY gender;
--Practice 2
SELECT gender,
    AVG(age) AS Avg_age
FROM employee_demographics
GROUP BY gender;
--Practice 3
SELECT occupation,
    MAX(salary) AS Max_Salary
FROM employee_salary
GROUP BY occupation;
--Practice 4
SELECT gender,
    COUNT(*) AS no_of_employees
FROM employee_demographics
WHERE birth_date > '1979-09-25'
GROUP BY gender
ORDER BY no_of_employees ASC;