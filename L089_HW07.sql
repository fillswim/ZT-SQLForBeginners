select * from employees;
select * from departments;
select * from locations;
select * from countries;
select * from regions;

/*employees - departments
  departments - location_id
  locations - country_id
  countries - region_id
  region_id - region_name*/

SELECT
    first_name,
    r.region_name
FROM
         employees e
    JOIN departments  d ON ( e.department_id = d.department_id )
    JOIN locations    l ON ( d.location_id = l.location_id )
    JOIN countries    c ON ( l.country_id = c.country_id )
    JOIN regions      r ON ( c.region_id = r.region_id );
    
/*�������� ���������� � �������� � ���������� ����������� � ������
�������*/
SELECT
    region_name,
    COUNT(*)
FROM
         employees e
    JOIN departments  d ON ( e.department_id = d.department_id )
    JOIN locations    l ON ( d.location_id = l.location_id )
    JOIN countries    c ON ( l.country_id = c.country_id )
    JOIN regions      r ON ( c.region_id = r.region_id )
GROUP BY
    region_name;
    
/*�������� ��������� ���������� � ������ ����������: ���, 
�������, �������� ������������, job_id, �����, ������ � ������.*/
SELECT
    first_name,
    last_name,
    department_name,
    job_id,
    street_address,
    country_name,
    region_name
FROM
         employees e
    JOIN departments  d ON ( e.department_id = d.department_id )
    JOIN locations    l ON ( d.location_id = l.location_id )
    JOIN countries    c ON ( l.country_id = c.country_id )
    JOIN regions      r ON ( c.region_id = r.region_id );
    
/*�������� ���������� � ����� ���������� ������� ����� �
���������� ������ 6�� �����������, � ����� �������� ����������
�����������, ������� �� �����������.*/

SELECT
    employee_id,
    first_name,
    manager_id
FROM
    employees;
    

SELECT
    emp.first_name    employee_name,
    mng.first_name    manager_name
FROM
         employees emp
    JOIN employees mng ON ( emp.manager_id = mng.employee_id );


SELECT
    mng.first_name manager_name,
    COUNT(*)
FROM
         employees emp
    JOIN employees mng ON ( emp.manager_id = mng.employee_id )
GROUP BY
    mng.first_name
HAVING
    COUNT(*) > 6
ORDER BY
    COUNT(*) DESC;
    

/*�������� ���������� � �������� ���� ������������� � � ����������
����������, ���� � ������������ �������� ������ 30�� �����������.
����������� ���������� �USING� ��� ����������� �� id
������������.*/

SELECT
    department_name,
    COUNT(*)
FROM
         employees
    JOIN departments USING ( department_id )
GROUP BY
    department_name
HAVING
    COUNT(*) > 30;
    
    
/*�������� �������� ���� �������������, � ������� ��� �� ������
����������.*/
SELECT
    d.department_name
FROM
    employees    e
    RIGHT OUTER JOIN departments  d ON ( e.department_id = d.department_id )
WHERE
    first_name IS NULL;


/*�������� ��� ���������� � �����������, 
��������� ������� ���������� �� ������ � 2005�� ����, 
�� ��� ��� ���� ��������� ���������� �� ������ �� 2005 ����*/

SELECT
    emp.*
FROM
         employees emp
    JOIN employees mng ON ( emp.manager_id = mng.employee_id )
WHERE
        to_number(to_char(mng.hire_date, 'yyyy')) = 2005
    AND to_number(to_char(emp.hire_date, 'yyyy')) < 2005;
    
    
/*�������� �������� ������ � �������� ������� ���� ������, ���������
natural join*/

select * from countries;
select * from regions;

SELECT
    country_name,
    region_name
FROM
         countries
    NATURAL JOIN regions;
  

/*�������� �����, ������� � �/� �����������, ������� ��������
������, ��� (����������� �/� �� �� ������������� + 1000).*/

select * from jobs;

SELECT
    first_name,
    last_name,
    salary
FROM
         employees e
    JOIN jobs j ON ( e.job_id = j.job_id
                     AND salary < min_salary + 1000 );


/*�������� ���������� ����� � ������� �����������, �������� �����,
� ������� ��� ��������. ����� �������� ���������� � �����������,
� ������� ������� ��� ����������. � ����� �������� ��� ������, �
������� ��� ����������� ��������.*/

/*employees - departments
  departments - location_id
  locations - country_id
  countries - region_id
  region_id - region_name*/

SELECT DISTINCT
    first_name,
    last_name,
    c.country_name
FROM
    employees    e
    FULL OUTER JOIN departments  d ON ( e.department_id = d.department_id )
    FULL OUTER JOIN locations    l ON ( d.location_id = l.location_id )
    FULL OUTER JOIN countries    c ON ( l.country_id = c.country_id );


/* �������� ����� � ������� ���� �����������, � ����� �������� �����,
������� �� �������� ��� ����������� ���������� �� �����
�������� ��� �����-���� ������.*/

select first_name, last_name, country_name
from employees e
CROSS JOIN countries c;

/*�������� ���������� � �������� � ���������� ����������� � ������
�������, ��������� Oracle Join ���������*/

SELECT
    region_name,
    COUNT(*)
FROM
    employees    e,
    departments  d,
    locations    l,
    countries    c,
    regions      r
WHERE
    e.department_id = d.department_id AND
    d.location_id = l.location_id AND
    l.country_id = c.country_id AND
    c.region_id = r.region_id
GROUP BY
    region_name;
    

/*�������� �������� ���� �������������, � ������� ��� �� ������
����������, ��������� Oracle Join ���������*/

SELECT
    department_name
FROM
    employees    e,
    departments  d
WHERE
        e.department_id (+) = d.department_id
    AND first_name IS NULL;


























