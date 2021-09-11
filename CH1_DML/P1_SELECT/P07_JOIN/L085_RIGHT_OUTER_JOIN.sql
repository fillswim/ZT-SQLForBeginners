/*����� ���� ����������*/
select first_name, last_name, salary, department_name
from employees e LEFT OUTER JOIN departments d 
ON (e.department_id=d.department_id);

/*����� ���� �������������*/
select first_name, last_name, salary, department_name
from employees e RIGHT OUTER JOIN departments d 
ON (e.department_id=d.department_id);

/*����� ���� ������������� c �������������� USING*/
select first_name, last_name, salary, department_name
from employees e RIGHT OUTER JOIN departments d 
USING (department_id);

select * from countries;
select * from locations;

/*����� ���� ����� ��� �������*/
select country_name, city, street_address
from locations l RIGHT OUTER JOIN countries c
ON (l.country_id = c.country_id);







































