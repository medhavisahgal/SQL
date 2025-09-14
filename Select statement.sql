SELECT *
FROM parks_and_recreation.parks_departments;
SELECT first_name,
    last_name,
    occupation,
    salary,
    salary + 1000
FROM parks_and_recreation.employee_salary;
-- PEMDAS->parenthese,exponent,multiplycation,division,addition,subtraction
SELECT DISTINCT first_name,
    age
FROM employee_demographics;