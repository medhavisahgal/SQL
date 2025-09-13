-- WHERE Clause
SELECT * 
FROM employee_salary;


SELECT * 
FROM employee_salary
WHERE occupation = 'Office Manager';

SELECT first_name, salary 
FROM employee_salary
WHERE occupation = 'Office Manager';

SELECT * 
FROM employee_salary
WHERE salary = 50000;

SELECT * 
FROM employee_salary
WHERE salary >= 50000;

SELECT * 
FROM employee_salary
WHERE salary <= 50000;

SELECT * 
FROM employee_salary
WHERE salary != 50000;

SELECT * 
FROM employee_salary
WHERE salary between 50000 AND 70000;

-- %(anything) and _(specific value) 
SELECT * 
FROM employee_salary
WHERE first_name LIKE 'R%';
-- First name starting with R

SELECT * 
FROM employee_salary
WHERE first_name LIKE '%r%';
-- First name having r in between 

SELECT * 
FROM employee_salary
WHERE first_name LIKE '%n';
-- First name ending with n

SELECT * 
FROM employee_salary
WHERE first_name LIKE '_n%';
-- First name having 2 letter as n

SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01';
-- format: year month and date

SELECT *
FROM employee_demographics
WHERE gender in ('Male','Female');

-- AND OR NOT Logical operators
SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01'
AND gender = 'Male';
-- Both of them should be true

SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01'
OR gender = 'Male';

SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01'
OR NOT gender = 'Male';

SELECT *
FROM employee_demographics
WHERE (first_name='Andy' AND age='34') OR gender = 'female';









 