select * from employees where department_id=210;
select * from departments;

select first_name, last_name, salary, department_name
from employees e LEFT OUTER JOIN departments d 
ON (e.department_id=d.department_id);

select first_name, last_name, salary, department_name
from departments d LEFT OUTER JOIN employees e 
ON (e.department_id=d.department_id);

select first_name, last_name, salary, department_name
from departments d LEFT OUTER JOIN employees e 
ON (e.department_id=d.department_id)
WHERE department_name like '%i%';

select first_name, salary, min_salary, max_salary
from employees e JOIN jobs j
ON(e.job_id=j.job_id AND salary*2<max_salary);

select first_name, salary, min_salary, max_salary
from employees e LEFT OUTER JOIN jobs j
ON(e.job_id=j.job_id AND salary*2<max_salary);

select * from locations;
select * from departments;

select postal_code, city, department_name
from locations l LEFT OUTER JOIN departments d
ON (d.location_id=l.location_id);

select * from employees;
select * from departments;


select first_name, department_name, d.department_id
from departments d LEFT OUTER JOIN employees e
ON (e.department_id = d.department_id)
WHERE first_name is NULL;

select department_name, d.department_id
from departments d LEFT OUTER JOIN employees e
ON (e.department_id = d.department_id)
WHERE e.department_id is NULL;




































