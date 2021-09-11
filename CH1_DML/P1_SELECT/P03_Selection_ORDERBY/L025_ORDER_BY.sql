select * from employees;

select first_name, salary from employees where job_id = 'IT_PROG' order by salary;

select first_name, salary, hire_date from employees
where job_id = 'IT_PROG' order by hire_date;

select first_name, salary, hire_date from employees
where job_id = 'IT_PROG' order by first_name;

/*Сортировка по возрастанию (по умолчанию)*/
select first_name, salary, hire_date from employees
where job_id = 'IT_PROG' order by first_name asc;

/*Сортировка по убыванию*/
select first_name, salary, hire_date from employees
where job_id = 'IT_PROG' order by first_name desc;

select last_name, salary, hire_date, hire_date + salary*2 as result
from employees
where employee_id > 120
order by result;

/*Значения null будут в конце*/
select * from employees order by commission_pct desc nulls last;

/*Значения null будут в начале*/
select * from employees order by commission_pct desc nulls first;

/*Сортировка по второму столюцу*/
select first_name, salary from employees order by 2;

select job_id, first_name, last_name, salary, hire_date
from employees
order by job_id desc, last_name, 4 desc;


