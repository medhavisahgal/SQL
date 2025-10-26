SELECT first_name,last_name,salary,
CASE
  WHEN salary < 50000 THEN salary+(salary*0.05)
  WHEN salary >= 50000 THEN salary+(salary*0.07)
  WHEN dept_id=6 THEN salary+(salary*0.10)
END AS New_salary
FROM employee_salary;
