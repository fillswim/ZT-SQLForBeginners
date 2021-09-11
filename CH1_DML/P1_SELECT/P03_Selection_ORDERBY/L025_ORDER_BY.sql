select * from employees;

select first_name, salary from employees where job_id = 'IT_PROG' order by salary;

select first_name, salary, hire_date from employees
where job_id = 'IT_PROG' order by hire_date;

select first_name, salary, hire_date from employees
where job_id = 'IT_PROG' order by first_name;

/*���������� �� ����������� (�� ���������)*/
select first_name, salary, hire_date from employees
where job_id = 'IT_PROG' order by first_name asc;

/*���������� �� ��������*/
select first_name, salary, hire_date from employees
where job_id = 'IT_PROG' order by first_name desc;

select last_name, salary, hire_date, hire_date + salary*2 as result
from employees
where employee_id > 120
order by result;

/*�������� null ����� � �����*/
select * from employees order by commission_pct desc nulls last;

/*�������� null ����� � ������*/
select * from employees order by commission_pct desc nulls first;

/*���������� �� ������� �������*/
select first_name, salary from employees order by 2;

select job_id, first_name, last_name, salary, hire_date
from employees
order by job_id desc, last_name, 4 desc;


