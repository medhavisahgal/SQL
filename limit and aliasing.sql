-- LIMIT and ALIASING

SELECT * FROM employee_demographics;


-- Top 3 rows would be visible 
SELECT * FROM employee_demographics LIMIT 3;

-- Top 3 oldest people 
 SELECT * 
 FROM employee_demographics 
 ORDER BY age DESC
 LIMIT 3;
 
 SELECT * 
 FROM employee_demographics 
 ORDER BY age DESC
 LIMIT 2,1; -- skip the first 2 rows and then return 1 row give the 3rd oldest person from the table
 
 -- Aliasing 
SELECT gender,AVG(age) AS avg_age
FROM employee_demographics
GROUP BY gender
HAVING avg_age > 30;

SELECT gender,AVG(age) avg_age
FROM employee_demographics
GROUP BY gender
HAVING avg_age > 30;

 
 

