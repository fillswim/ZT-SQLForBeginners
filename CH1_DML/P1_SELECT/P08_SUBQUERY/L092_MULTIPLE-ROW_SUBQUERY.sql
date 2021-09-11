/*Работники у которых минимальная зарплата больше 8000*/
select * from jobs;
select job_id from jobs where min_salary > 8000;

select first_name, last_name, salary from employees
where job_id in (select job_id from jobs where min_salary > 8000);

/*Работники у которых минимальная зарплата не больше 8000
Используется, если только не null значений*/
select first_name, last_name, salary from employees
where job_id not in (select job_id from jobs where min_salary > 8000);

select first_name, last_name, salary from employees
where job_id in (select job_id from jobs where job_id='AD_VP');

/*Работники, зарплата которых больше, чем зарплата работников
в департаменте с ID=100 
(ANY - больше хотя бы одной из зарплат
 ALL - больше всех зарплат)*/
select first_name, last_name, salary from employees
where salary > ANY (select salary from employees where department_id=100);

select first_name, last_name, salary from employees
where salary > ALL (select salary from employees where department_id=100);

/*Найдем наименования департаментов, где есть работники*/
select distinct department_name 
from employees e JOIN departments d 
ON (e.department_id=d.department_id);

select department_name from departments
where department_id IN (select distinct department_id from employees);






































