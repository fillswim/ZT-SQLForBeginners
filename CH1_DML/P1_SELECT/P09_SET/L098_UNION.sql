/*Объединяет, удаляет дубликаты и сортирует*/
select * from jobs
where job_id like '%MAN%'
UNION
select * from jobs
where job_id like '%MAN%';

select * from jobs where min_salary between 4500 and 8000
union
select * from jobs where max_salary between 10000 and 15000
ORDER BY 3;



































