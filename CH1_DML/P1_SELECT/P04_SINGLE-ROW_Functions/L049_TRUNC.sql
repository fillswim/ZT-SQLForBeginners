select hire_date, TRUNC(hire_date, 'YYYY') from employees
where employee_id in (120, 121);

select hire_date, TRUNC(hire_date, 'Q') from employees
where employee_id in (120, 121);

select hire_date, TRUNC(hire_date, 'MM') from employees
where employee_id in (120, 121);

select hire_date, TRUNC(hire_date) from employees
where employee_id in (120, 121);
















