select department_id, AVG(salary) from employees
group by department_id;

select ROUND(SUM(AVG(salary))) from employees
group by department_id;



































