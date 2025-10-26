select e.employee_id,
    e.name,
    count(m.employee_id) as reports_count,
    round(avg(m.age)) as average_age
from Employees e
    join Employees m on e.employee_id = m.reports_to
group by e.employee_id
order by e.employee_id;