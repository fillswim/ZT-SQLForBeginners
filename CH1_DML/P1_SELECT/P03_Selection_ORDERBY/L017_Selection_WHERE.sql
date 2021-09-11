select first_name, last_name, salary from employees where last_name='King';

select * from employees where hire_date='21.09.05';

select * from departments where location_id=1700;

select * from employees where employee_id = manager_id;

select * from employees where employee_id = 1000/10+1;

select * from job_history where job_id='ST_CLERK';

select * from employees where first_name=last_name;

select * from employees 
where 'Dr '||first_name||' '||last_name = 'Dr David Austin';

select * from employees 
where 'Dr David Austin' = 'Dr '||first_name||' '||last_name;

select * from departments;

select first_name, last_name, salary from employees where salary<10000; 

select * from employees where first_name > 'Steven';

select first_name, last_name, salary from employees 
where salary between 4000 and 10000;

select * from job_history
where start_date between '01.01.04' and '31.12.06';

select * from employees;

select * from employees where first_name between 'A' and 'C';

select first_name, last_name, salary from employees 
where salary >=4000 and salary <= 10000;

select * from departments;

select * from departments where location_id in (1700, 2400, 1500);

select * from job_history;
desc job_history;

select * from job_history where job_id in('IT_PROG', 'ST_CLERK');
select * from job_history where end_date in('31.12.07', '05.05.05');

select * from departments 
where location_id =1700 or location_id=2400 or location_id=1500;

select * from employees
where commission_pct is null;

select * from employees;

select * from employees where first_name='Steven';

select * from employees where first_name like 'S%';

select * from employees where first_name like '%r';

select * from employees where first_name like 'A%r';

/*Содержит любое количество символов*/
select * from employees where first_name like '%';

/*Содержит только один символ*/
select * from employees where first_name like 'D_n';

/*У которых 3-й символ 'n'*/
select * from employees where first_name like '__n%';

/*Поиск со слов со специальным символом*/
select * from employees where job_id like 'ST\_%' escape '\';























