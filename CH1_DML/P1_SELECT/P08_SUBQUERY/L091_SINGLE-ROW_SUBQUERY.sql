/*����� ����������, �������� ������� ������, 
��� 1/5 ����� ������� �������� � �����*/

/*1 ������*/
select MAX(salary) / 5 from employees;

select first_name, last_name, salary from employees
where salary < (select MAX(salary) / 5 from employees);

/*����� ����������, �������� ������� ������, 
��� ������� �� ��������*/
select first_name, last_name, salary from employees
where salary > (select AVG(salary) from employees);

/*����� ����������, �������� ������� ������, 
��� �������� � ID=180*/
select first_name, last_name, salary from employees
where salary > (select salary from employees where employee_id=180);

/*����� ������ � ����� ������� ������� ���������*/

select * from jobs;
select * from employees;
select job_id, avg(salary) from employees group by job_id;
select MAX(avg(salary)) from employees group by job_id;

select job_title 
from jobs j JOIN employees e
ON(j.job_id=e.job_id)
group by job_title
having avg(salary)=(select MAX(avg(salary)) from employees group by job_id);





































