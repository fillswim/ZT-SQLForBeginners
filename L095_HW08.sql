/*1. �������� ��� ���������� � �����������, � ����� ������� ������.*/
select MAX(LENGTH(first_name)) from employees;

select * from employees
where LENGTH(first_name) = (select MAX(LENGTH(first_name)) from employees);

/*2. �������� ��� ���������� � �����������, � ��������� �������
������� �������� ���� �����������.*/
select AVG(salary) from employees;

select * from employees
where salary > (select AVG(salary) from employees);


/*3. �������� �����/������, ��� ���������� � ����� ������������ ������
�����.*/
select * from employees;
select * from departments;
select * from locations;

/*������ - ��������� ��������*/
SELECT
    city,
    SUM(salary) city_salary
FROM
         employees e
    JOIN departments  d ON ( e.department_id = d.department_id )
    JOIN locations    l ON ( d.location_id = l.location_id )
GROUP BY
    city;

/*����������� �������� ����� ���� �������*/
SELECT
    MIN(SUM(salary))
FROM
         employees e
    JOIN departments  d ON ( e.department_id = d.department_id )
    JOIN locations    l ON ( d.location_id = l.location_id )
GROUP BY
    city;


SELECT
    city,
    SUM(salary)
FROM
         employees e
    JOIN departments  d ON ( e.department_id = d.department_id )
    JOIN locations    l ON ( d.location_id = l.location_id )
GROUP BY
    city
HAVING
    SUM(salary) = (
        SELECT
            MIN(SUM(salary))
        FROM
                 employees e
            JOIN departments  d ON ( e.department_id = d.department_id )
            JOIN locations    l ON ( d.location_id = l.location_id )
        GROUP BY
            city
    );


/*4. �������� ��� ���������� � �����������, � ������� ��������
�������� �������� ������ 15000.*/

/*��������� - �������� -- ��������� - ��������*/
select emp.first_name, emp.last_name, emp.salary, mgr.first_name, mgr.last_name, mgr.salary 
from 
employees emp JOIN employees mgr
ON (emp.manager_id = mgr.employee_id);

select emp.first_name, emp.last_name, mgr.first_name, mgr.last_name, mgr.salary 
from 
employees emp JOIN employees mgr
ON (emp.manager_id = mgr.employee_id AND mgr.salary > 15000);

SELECT
    first_name,
    last_name
FROM
    employees
WHERE
    manager_id IN (
        SELECT
            employee_id
        FROM
            employees
        WHERE
            salary > 15000
    );
    

/*5. �������� ��� ���������� � �������������, � ������� ��� �� ������
����������.*/
select * from employees;
select * from departments;

/*��� ���������� department_id � ������� employees*/
SELECT DISTINCT
    department_id
FROM
    employees
WHERE
    department_id IS NOT NULL;

SELECT
    department_name,
    department_id
FROM
    departments
WHERE
    department_id NOT IN (
        SELECT DISTINCT
            department_id
        FROM
            employees
        WHERE
            department_id IS NOT NULL
    );


/*6. �������� ��� ���������� � �����������, ������� �� ��������
�����������.*/

/*id ���� ����������*/
SELECT DISTINCT
    manager_id
FROM
    employees
WHERE
    manager_id IS NOT NULL;

SELECT
    *
FROM
    employees
WHERE
    employee_id NOT IN (
        SELECT DISTINCT
            manager_id
        FROM
            employees
        WHERE
            manager_id IS NOT NULL
    );


/*7. �������� ��� ���������� � ����������, ������� ����� �
���������� ������ 6�� �����������.*/

select * from employees e
WHERE (
select COUNT(*) from employees
where manager_id = e.employee_id) > 6;

SELECT
    mrg.first_name,
    mrg.last_name,
    mrg.employee_id,
    COUNT(*)
FROM
         employees mrg
    JOIN employees emp ON ( mrg.employee_id = emp.manager_id )
GROUP BY
    mrg.first_name,
    mrg.last_name,
    mrg.employee_id
HAVING
    COUNT(*) > 6
ORDER BY
    COUNT(*) DESC;
    

/*8. �������� ��� ���������� � �����������, ������� �������� �
������������ � ��������� IT */

select * from departments;

SELECT
    *
FROM
    employees
WHERE
    department_id IN (
        SELECT
            department_id
        FROM
            departments
        WHERE
            department_name = 'IT'
    );

/*9. �������� ��� ���������� � �����������, 
��������� ������� ���������� �� ������ � 2005�� ����, 
�� ��� ��� ���� ��������� ���������� �� ������ �� 2005 ����.*/

/*id ����������, ������������ �� 2005 ����*/
SELECT
    employee_id
FROM
    employees
WHERE
    to_number(to_char(hire_date, 'yyyy')) < 2005;

SELECT
    first_name,
    last_name
FROM
    employees
WHERE
    manager_id IN (
        SELECT
            employee_id
        FROM
            employees
        WHERE
            to_number(to_char(hire_date, 'yyyy')) = 2005
    )
    AND employee_id IN (
        SELECT
            employee_id
        FROM
            employees
        WHERE
            to_number(to_char(hire_date, 'yyyy')) < 2005
    );


/*10. �������� ��� ���������� � �����������, ��������� �������
���������� �� ������ � ������ ������ ����, � ����� job_title ����
����������� ������ 15�� ��������.*/

/*id ���� �����������, ������� ���������� �� ������ � ������*/
SELECT
    employee_id
FROM
    employees
WHERE
    to_char(hire_date, 'fmMONTH') = 'JANUARY';

/*id ���� �����������, job_title ������� > 15*/
SELECT
    job_id
FROM
    jobs
WHERE
    length(job_title) > 15;


SELECT
    *
FROM
    employees
WHERE
    manager_id IN (
        SELECT
            employee_id
        FROM
            employees
        WHERE
            to_char(hire_date, 'fmMONTH') = 'JANUARY'
    )
    AND job_id IN (
        SELECT
            job_id
        FROM
            jobs
        WHERE
            length(job_title) > 15
    );











































