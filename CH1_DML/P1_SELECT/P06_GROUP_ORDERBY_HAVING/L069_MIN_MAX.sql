select * from employees;

select MIN(salary), MAX(salary) from employees
where department_id=50;

select MIN(hire_date), MAX(hire_date) from employees
where department_id=50;

select MIN(last_name), MAX(last_name) from employees
where department_id=50;

select
COUNT(salary),
SUM(salary),
AVG(salary),
MIN(salary),
MAX(salary) 
from employees
where department_id=50;

select MAX(LENGTH(first_name)), MIN(LENGTH(first_name)) from employees;












