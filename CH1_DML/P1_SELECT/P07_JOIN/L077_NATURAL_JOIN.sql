select * from regions;

select * from countries;

select * from regions NATURAL JOIN countries;

select c.country_name, r.region_name from regions r NATURAL JOIN countries c;

select country_name, region_name from regions NATURAL JOIN countries;

select * from employees where department_id=90 and manager_id=100;
select * from departments where department_id=90 and manager_id=100;

select first_name, last_name, salary, department_name, 
department_id, manager_id from employees NATURAL JOIN departments; 

select * from employees;
select * from job_history;

select * from employees NATURAL JOIN job_history;

select c.country_name, c.country_id, r.region_name, region_id
from regions r NATURAL JOIN countries c where r.region_name='Europe';




















