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
    
/*Выведите информацию о регионах и количестве сотрудников в каждом
регионе*/
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
    
/*Выведите детальную информацию о каждом сотруднике: имя, 
фамилия, название департамента, job_id, адрес, страна и регион.*/
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
    
/*Выведите информацию о имени менеджеров которые имеют в
подчинении больше 6ти сотрудников, а также выведите количество
сотрудников, которые им подчиняются.*/

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
    

/*Выведите информацию о названии всех департаментов и о количестве
работников, если в департаменте работают больше 30ти сотрудников.
Используйте технологию «USING» для объединения по id
департамента.*/

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
    
    
/*Выведите названия всех департаментов, в которых нет ни одного
сотрудника.*/
SELECT
    d.department_name
FROM
    employees    e
    RIGHT OUTER JOIN departments  d ON ( e.department_id = d.department_id )
WHERE
    first_name IS NULL;


/*Выведите всю информацию о сотрудниках, 
менеджеры которых устроились на работу в 2005ом году, 
но при это сами работники устроились на работу до 2005 года*/

SELECT
    emp.*
FROM
         employees emp
    JOIN employees mng ON ( emp.manager_id = mng.employee_id )
WHERE
        to_number(to_char(mng.hire_date, 'yyyy')) = 2005
    AND to_number(to_char(emp.hire_date, 'yyyy')) < 2005;
    
    
/*Выведите название страны и название региона этой страны, используя
natural join*/

select * from countries;
select * from regions;

SELECT
    country_name,
    region_name
FROM
         countries
    NATURAL JOIN regions;
  

/*Выведите имена, фамилии и з/п сотрудников, которые получают
меньше, чем (минимальная з/п по их специальности + 1000).*/

select * from jobs;

SELECT
    first_name,
    last_name,
    salary
FROM
         employees e
    JOIN jobs j ON ( e.job_id = j.job_id
                     AND salary < min_salary + 1000 );


/*Выведите уникальные имена и фамилии сотрудников, названия стран,
в которых они работают. Также выведите информацию о сотрудниках,
о странах которых нет информации. А также выведите все страны, в
которых нет сотрудников компании.*/

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


/* Выведите имена и фамилии всех сотрудников, а также названия стран,
которые мы получаем при объединении работников со всеми
странами без какой-либо логики.*/

select first_name, last_name, country_name
from employees e
CROSS JOIN countries c;

/*Выведите информацию о регионах и количестве сотрудников в каждом
регионе, используя Oracle Join синтаксис*/

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
    

/*Выведите названия всех департаментов, в которых нет ни одного
сотрудника, используя Oracle Join синтаксис*/

SELECT
    department_name
FROM
    employees    e,
    departments  d
WHERE
        e.department_id (+) = d.department_id
    AND first_name IS NULL;


























