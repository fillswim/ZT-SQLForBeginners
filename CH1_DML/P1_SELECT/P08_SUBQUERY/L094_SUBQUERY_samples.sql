select * from employees;
select * from departments;
select * from locations;
select * from countries;

/*Найти всех людей, которые работают в Великобритании*/
select first_name, last_name, salary
from employees where department_id IN (
select department_id from departments where location_id in (
select location_id from locations where country_id = (
select country_id from countries where country_name='United Kingdom')));

/*Найти работников, которые заработывают больше, чем средняя з/п по предприятию 
и чья позиция менеджер*/
select * from jobs;

select first_name, last_name, salary from employees 
where job_id in (
select job_id from jobs where UPPER(job_title) like '%MANAGER%')
and salary > (
select AVG(salary) from employees);

/*Работники, которые зарабатывают больше, чем David*/
select first_name, last_name, salary from employees 
where salary > ALL (select salary from employees where first_name like 'David');























