select * from employees
where job_id like '%MAN%'
UNION ALL
select * from employees
where job_id like '%MAN%';

/*����������� �������� ����� ������ ������� ���������*/
select job_id col_1, max_salary col_2 from jobs where job_id like '%MAN%'
UNION ALL
select job_title xxx, min_salary yyy from jobs where job_id like '%MAN%';

/*���������� �������� ������ �� ����� �������*/
select job_id, job_title, min_salary from jobs
where job_id like '%MAN%'
UNION ALL
select job_id, job_title, min_salary from jobs
where job_id like '%MAN%'
order by job_id;

/*���������� ������� �� ���� �������� � ������� ����������� ������ �������*/
select * from jobs
where job_id like '%MAN%'
UNION ALL
select * from jobs
where job_id like '%MAN%'
order by 3;


select first_name, last_name, salary from employees where employee_id > 200
UNION ALL
select job_id, job_title, max_salary from jobs where job_id like '%MAN%';

select country_id from countries
UNION ALL
select country_name from countries;





















