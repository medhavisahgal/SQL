-- Joins
SELECT *
FROM employee_demographics;
SELECT *
FROM employee_salary;
SELECT *
FROM parks_departments;
-- Inner JOIN /JOIN
SELECT ed.employee_id,
  es.first_name,
  es.salary
FROM employee_demographics AS ed
  INNER JOIN employee_salary AS es ON ed.employee_id = es.employee_id;
-- INNER JOIN ON 3 TABLES (shows intersection of all three)
SELECT ed.employee_id,
  es.first_name,
  es.last_name,
  pd.department_id,
  es.dept_id
FROM employee_demographics AS ed
  INNER JOIN employee_salary AS es ON ed.employee_id = es.employee_id
  INNER JOIN parks_departments pd ON es.dept_id = pd.department_id;
-- Left join (left outer join select all the rows from the selected columns from the tables and the data of the rows that are common in both the tables)
SELECT ed.first_name,
  ed.last_name,
  es.salary
FROM employee_demographics AS ed
  LEFT JOIN employee_salary AS es ON ed.employee_id = es.employee_id;
-- Right Outer join returns all records from the right table, and the matched records from the left table
SELECT ed.first_name,
  ed.last_name,
  es.salary
FROM employee_demographics AS ed
  RIGHT JOIN employee_salary AS es ON ed.employee_id = es.employee_id;
-- Full Outer join returns all records when there is a match in either left or right table
-- SELECT ed.first_name,ed.last_name,es.salary
-- FROM employee_demographics AS ed
-- FULL OUTER JOIN employee_salary AS es
-- ON ed.employee_id=es.employee_id;
-- mysql doesnt support Full outer join 
-- Cross join returns the Cartesian product of the two tables involved in the join. This means that it combines each row from the first table with every row from the second table.
SELECT e.first_name,
  m.last_name
FROM employee_demographics e
  CROSS JOIN employee_salary m;
-- Self join a self join is a regular join, but the table is joined with itself.
SELECT e.first_name AS employee,
  m.first_name AS manager
FROM employee_demographics e
  LEFT JOIN employee_demographics m ON e.employee_id = m.employee_id;