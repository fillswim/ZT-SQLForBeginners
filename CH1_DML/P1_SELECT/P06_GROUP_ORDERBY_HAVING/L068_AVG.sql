
select AVG(salary) from employees;

select AVG(distinct salary) from employees;

select AVG(distinct salary) from employees
where job_id='IT_PROG';

select AVG(sysdate - hire_date) / 365 from employees;

select AVG(NVL(commission_pct, 0)) from employees;










