select first_name, last_name, salary, e.department_id, department_name
from employees e, departments d
where e.department_id = d.department_id;

/*RIGHT OUTER JOIN*/
select first_name, last_name, salary, e.department_id, department_name
from employees e, departments d
where e.department_id (+)= d.department_id;

/*LEFT OUTER JOIN*/
select first_name, last_name, salary, e.department_id, department_name
from employees e, departments d
where e.department_id = d.department_id (+);

/*CROSS JOIN*/
select * from countries, regions;
































