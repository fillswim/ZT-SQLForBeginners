/*Поиск средней заработной платы*/
select AVG(salary) from employees;

/*Поиск людей, которые получают больше средней заработной платы*/
select first_name, last_name, salary
from employees where salary > (select AVG(salary) from employees);

select * from jobs;

/*Вывести минимальную зарплату и самое длинное имя*/
select 
(select MIN(min_salary) from jobs) min_zp,
(select MAX(LENGTH(first_name)) from employees) max_name
from dual;

/*Поиск имени и фамилии всех менеджеров*/
select manager_id from employees;

select first_name, last_name from employees
where employee_id IN (select manager_id from employees);

/*Вывод названия департамента, 
максимальной и минимальной зарплаты по всем департаментам*/
select salary, department_name 
from employees e 
JOIN departments d ON(e.department_id=d.department_id);

select department_name, min(salary), max(salary) 
from (select salary, department_name 
from employees e JOIN departments d 
ON(e.department_id=d.department_id))
group by department_name
HAVING MAX(salary) > (select 2 * 5000 from dual)
AND MIN(salary) < (select salary from employees where employee_id=113);

























