select SUM(salary) from employees;
select SUM(DISTINCT(commission_pct)) from employees;

select ROUND(SUM(sysdate - hire_date)) /365 from employees;

select SUM(LENGTH(first_name)) / COUNT(*) from employees;


























