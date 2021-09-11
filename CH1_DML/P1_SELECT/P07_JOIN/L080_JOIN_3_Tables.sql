select * from regions;
select * from locations;
select * from countries;

select * from locations NATURAL JOIN countries;
select * from locations NATURAL JOIN countries NATURAL JOIN regions;

select * from locations JOIN countries USING(country_id);
select * from locations JOIN countries USING(country_id)
JOIN regions USING(region_id);

select * from employees;
select * from job_history;
select * from departments;

select first_name, last_name, jh.job_id, start_date, end_date
from employees e 
JOIN job_history jh ON (e.employee_id=jh.employee_id);

select first_name, last_name, jh.job_id, start_date, end_date, department_name
from employees e 
JOIN job_history jh ON (e.employee_id=jh.employee_id)
JOIN departments d ON (jh.department_id=d.department_id);

select first_name, last_name, salary, department_name
from employees e JOIN departments d ON (e.department_id=d.department_id);

select department_name, min(salary), max(salary)
from employees e JOIN departments d ON (e.department_id=d.department_id)
group by d.department_name;

























