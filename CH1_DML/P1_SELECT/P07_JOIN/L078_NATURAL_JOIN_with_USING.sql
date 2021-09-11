select * from employees;
select * from departments;

select * from employees where manager_id=101;
select * from departments where department_id=10;

select first_name, last_name, department_name, 
e.manager_id emp_manager, d.manager_id dep_manager, department_id
from employees e JOIN departments d USING(department_id);


select * from regions;
select * from countries;

select * from regions JOIN countries USING(region_id);

select * from employees;
select * from job_history;

select first_name, last_name, jh.job_id, start_date, end_date
from employees e JOIN job_history jh USING(employee_id);

select first_name, last_name, jh.job_id, start_date, end_date
from employees e JOIN job_history jh USING(employee_id, department_id);




















