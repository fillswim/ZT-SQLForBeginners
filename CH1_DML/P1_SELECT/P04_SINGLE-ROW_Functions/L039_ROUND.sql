select ROUND(3.14) from dual;

select ROUND(3.1456, 2) from dual;

select salary*3.14, ROUND(salary*3.14) from employees;

select ROUND(356825, -1) from dual;

select ROUND(356825, -5) from dual;

select first_name, ROUND((SYSDATE - hire_date) * employee_id) as bonus from employees;














