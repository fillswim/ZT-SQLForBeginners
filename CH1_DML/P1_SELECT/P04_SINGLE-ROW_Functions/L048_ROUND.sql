select hire_date, ROUND(hire_date, 'CC') from employees 
where employee_id IN (120, 121);

select hire_date, ROUND(hire_date, 'YYYY') from employees 
where employee_id IN (120, 121);

/*Quarter*/
select hire_date, ROUND(hire_date, 'Q') from employees 
where employee_id IN (120, 121);

select hire_date, ROUND(hire_date, 'MM') from employees 
where employee_id IN (120, 121);

select hire_date, ROUND(hire_date) from employees 
where employee_id IN (120, 121);