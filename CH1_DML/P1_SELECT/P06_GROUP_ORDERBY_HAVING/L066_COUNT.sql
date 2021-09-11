select COUNT(*) from employees;

select COUNT(*) from employees where salary > 5000;

select COUNT(commission_pct) from employees;

select COUNT(salary) from employees;

select COUNT(distinct first_name) from employees;

select 
COUNT(*),
COUNT(commission_pct),
COUNT(distinct commission_pct)
from employees;

select COUNT('abc') from employees;











