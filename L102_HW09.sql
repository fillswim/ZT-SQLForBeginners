/*1. �������� � ����� ������� ���������� � ������ �/� �����,
����������� �� id ���������, �� job_id, �� id ������������. ������
������ ��������� 4 �������: id ���������, job_id, id ������������,
������������� �/�.*/
SELECT
    manager_id,
    to_char(NULL) job_id,
    to_number(NULL) department_id,
    SUM(salary)
FROM
    employees
GROUP BY
    manager_id
UNION
SELECT
    to_number(NULL),
    job_id,
    to_number(NULL),
    SUM(salary)
FROM
    employees
GROUP BY
    job_id
UNION
SELECT
    to_number(NULL),
    to_char(NULL),
    department_id,
    SUM(salary)
FROM
    employees
GROUP BY
    department_id;


/*2. �������� id ��� �������������, ��� �������� �������� � 100 � ��
�������� ��������� � 145, 201.*/
select department_id, manager_id from employees
where manager_id = 100
MINUS
select department_id, manager_id from employees
where manager_id in (124, 201);

/*3. ��������� SET ��������� � �� ��������� ���������� ���������,
�������� ���������� ���������� � ������, �������� � �/�
�����������, ������ ������ � ������ ������� ����� ��, � �������
�������� ����� �s� ��� ����������� �� ��������. ������������
��������� �� �/� �� ��������.*/

select first_name, last_name, salary from employees
where first_name like '_a%'
INTERSECT
select first_name, last_name, salary from employees
where LOWER(last_name) like '%s%'
order by salary desc;

/*4. ��������� SET ��������� � �� ��������� ���������� ���������,
�������� ���������� � id �������, �������� ���� � ������ ���
�������, ������� ��������� � ������ ��� ��������. � ����� ���
�������, �������� ��� ������� �������� ����� �9�.*/
select * from locations;
select * from countries;

SELECT
    location_id,
    postal_code,
    city
FROM
    locations
WHERE
    country_id IN (
        SELECT
            country_id
        FROM
            countries
        WHERE
            country_name IN ( 'Germany', 'Italy' )
    )
UNION
SELECT
    location_id,
    postal_code,
    city
FROM
    locations
WHERE
    postal_code LIKE '%9%';

/*������� 2*/
SELECT
    location_id,
    postal_code,
    city
FROM
         locations l
    JOIN countries c ON ( l.country_id = c.country_id
                          AND country_name = 'Italy' )
UNION
SELECT
    location_id,
    postal_code,
    city
FROM
         locations l
    JOIN countries c ON ( l.country_id = c.country_id
                          AND country_name = 'Germany' )
UNION
SELECT
    location_id,
    postal_code,
    city
FROM
    locations
WHERE
    postal_code LIKE '%9%';


/*5. ��������� SET ��������� � �� ��������� ���������� ���������,
�������� ��� ���������� ���������� ��� �����, ����� ���
������� ������ 8 ��������. � ����� ��� �����, ������� ��������� �� �
����������� �������. ������� ������� ������ ���������� id, country,
region. ������ ������������ �� �������� ����� �� ���������.*/
select country_id id, country_name country, region_id region 
from countries where LENGTH(country_name) > 8
UNION
select * from countries
where region_id in (
select region_id from regions
where region_name != 'Europe')
order by country desc;

























