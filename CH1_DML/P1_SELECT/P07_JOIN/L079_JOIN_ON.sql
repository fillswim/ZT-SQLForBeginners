select first_name, last_name, jh.job_id, start_date, end_date
from employees emp JOIN job_history jh ON(emp.employee_id = jh.employee_id);

select * from regions;
select * from departments;

select first_name, last_name, salary, jh.job_id, start_date, end_date
from employees e JOIN job_history jh 
ON(e.employee_id=jh.employee_id and e.department_id=jh.department_id);

select first_name, last_name, salary, jh.job_id, start_date, end_date
from employees e JOIN job_history jh 
ON(e.employee_id=jh.employee_id and e.department_id=jh.department_id)
where salary > 8500;


select * from departments;
select * from employees;

select first_name, department_name 
from employees emp JOIN departments dep
ON(emp.employee_id = dep.manager_id);


























