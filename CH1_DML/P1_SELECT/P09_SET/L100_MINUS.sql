/*Пустой MINUS*/
select * from jobs
where job_id like '%MAN%'
MINUS
select * from jobs
where job_id like '%MAN%';

select job_id, job_title, max_salary 
from jobs where min_salary between 4500 and 8000
MINUS
select job_id, job_title, max_salary 
from jobs where max_salary between 10000 and 15000;

select job_id, job_title, max_salary 
from jobs where max_salary between 10000 and 15000
MINUS
select job_id, job_title, max_salary 
from jobs where min_salary between 4500 and 8000;
























