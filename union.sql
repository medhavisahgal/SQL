-- Union 
-- shows distinct entries in both the tables of the selected coloumn 
SELECT first_name,
    last_name
FROM employee_demographics
UNION
SELECT first_name,
    last_name
FROM employee_salary;
-- shows all the entries in both the tables of the selected coloumn may have duplicated
SELECT first_name,
    last_name
FROM employee_demographics
UNION ALL
SELECT first_name,
    last_name
FROM employee_salary;
-- query if you want to lets say remove older and employees whose salary are high 
SELECT first_name,
    last_name,
    'OLD Man' as Label
FROM employee_demographics
WHERE age > 40
    AND gender = 'Male'
UNION
SELECT first_name,
    last_name,
    'OLD Lady' as Label
FROM employee_demographics
WHERE age > 40
    AND gender = 'Female'
UNION
SELECT first_name,
    last_name,
    'Highly Paid Employee ' as Label
FROM employee_salary
WHERE salary > 50000
ORDER BY first_name,
    last_name;