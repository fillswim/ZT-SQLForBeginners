/*Пересечение множеств*/
select * from jobs
where job_id like '%MAN%'
INTERSECT
select * from jobs
where job_id like '%MAN%';

select * from jobs where min_salary between 4500 and 8000
INTERSECT
select * from jobs where max_salary between 10000 and 15000;

select job_id, job_title, max_salary 
from jobs where min_salary between 4500 and 8000
INTERSECT
select job_id, job_title, max_salary 
from jobs where max_salary between 10000 and 15000
order by max_salary;

/*Пустой INTRSECT*/
select first_name, last_name from employees
INTERSECT
select street_address, city from locations;

































