/*Информация о работниках, в чьем имени содержится буква "а"
  и которые пересекаются с работниками, в чьем имени есть буква "e"
  и не содержится "l"*/
select first_name, salary from employees
where first_name like '%a%'
INTERSECT
select first_name, salary from employees
where first_name like '%e%'
MINUS
select first_name, salary from employees
where first_name like '%l%';


select first_name, salary from employees
where first_name like '%a%'
UNION
select first_name, salary from employees
where first_name like '%e%'
MINUS
select first_name, salary from employees
where first_name like '%l%';

/*Менеджер, который работает и в 20 и в 30 департаменте*/
select manager_id from employees where department_id=20
INTERSECT
select manager_id from employees where department_id=30;

select * from employees where manager_id=100;

/*Объединение department_id и job_id*/
select department_id dep_id, to_char(null) job_id, sum(salary) from employees
group by department_id
UNION
select to_number(null), job_id, sum(salary) from employees
group by job_id;




















