-- Group By and Order By
SELECT * FROM employee_demographics;

SELECT gender
FROM employee_demographics
GROUP BY gender;


SELECT gender,MIN(age),AVG(age),MAX(age)
FROM employee_demographics
GROUP BY gender;

SELECT occupation,salary
FROM employee_salary
GROUP BY occupation,salary;

-- ORDER BY
SELECT * FROM employee_demographics ORDER BY first_name;

SELECT * FROM employee_demographics ORDER BY first_name DESC;

SELECT * FROM employee_demographics ORDER BY gender;


-- 1st we are ordering by the gender then the age 
SELECT * FROM employee_demographics ORDER BY gender,age;

-- In this we are 1st we are ordering by age then the gender if age is same of two then 
-- female will come up as f comes 1st then m thats why order of the column matters
SELECT * FROM employee_demographics ORDER BY age,gender;

-- Not recommed but you can also order the rows by using there indexes (1 based)
SELECT * FROM employee_demographics ORDER BY 5,4;













