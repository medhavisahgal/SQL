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
SELECT occupation,
    AVG(salary)
FROM employee_salary
WHERE occupation LIKE '%man%'
GROUP BY occupation
HAVING AVG(salary) > 40000;
-- Practice 
select gender,
    count(*) as no_of_employees
from employee_demographics
group by gender;
select gender,
    AVG(age) as Avg_age
from employee_demographics
group by gender;
select occupation,
    MAX(salary) as Max_Salary
from employee_salary
group by occupation;
select gender,
    count(*) as no_of_employees
from employee_demographics
where birth_date > '1979-09-25'
group by gender
order by no_of_employees asc;