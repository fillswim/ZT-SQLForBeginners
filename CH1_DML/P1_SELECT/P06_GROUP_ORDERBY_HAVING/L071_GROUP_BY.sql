select department_id, COUNT(*) 
from employees 
group by department_id
order by department_id;

select job_id, COUNT(job_id) from employees
group by job_id
order by job_id;

select job_id, MIN(salary), MAX(salary) from employees 
group by job_id;

select job_id, AVG(salary), MIN(salary), MAX(salary) from employees
where salary > 5000
group by job_id
order by job_id;

select job_id, AVG(salary), MIN(salary) myMin, MAX(salary) from employees
where salary > 5000
group by job_id
order by myMin;

select max(hire_date), min(first_name), count(*)
from employees group by department_id;

select TO_CHAR(hire_date, 'Month'), count(*) from employees
group by TO_CHAR(hire_date, 'Month')
order by count(*);

select location_id, count(*) from departments
group by location_id;

select department_id, count(*) from employees
group by department_id
order by department_id;

select department_id, job_id, count(*) from employees
group by department_id, job_id
order by department_id, job_id;

select job_id, TO_CHAR(hire_date, 'yyyy') year, 
sum(salary) from employees
group by job_id, TO_CHAR(hire_date, 'yyyy')
order by job_id, TO_CHAR(hire_date, 'yyyy');

select job_id, TO_CHAR(hire_date, 'yyyy') year, 
commission_pct, count(*), sum(salary) from employees
where job_id in ('ST_CLERK', 'SA_REP', 'SH_CLERK')
and employee_id > 115
group by job_id, TO_CHAR(hire_date, 'yyyy'), commission_pct
order by job_id, TO_CHAR(hire_date, 'yyyy');


















