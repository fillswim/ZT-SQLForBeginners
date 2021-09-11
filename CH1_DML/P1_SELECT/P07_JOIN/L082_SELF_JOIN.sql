select employee_id, first_name, manager_id from employees;

select emp1.employee_id, emp1.first_name, emp1.manager_id,
emp2.first_name manager_name
from employees emp1 JOIN employees emp2
ON(emp1.manager_id = emp2.employee_id);

select emp2.first_name, count(*)
from employees emp1 JOIN employees emp2
ON(emp1.manager_id = emp2.employee_id)
group by emp2.first_name
order by count(*) desc;






































