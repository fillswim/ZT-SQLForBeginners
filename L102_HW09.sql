/*1. Выведите в одном репорте информацию о суммах з/п групп,
объединённых по id менеджера, по job_id, по id департамента. Репорт
должен содержать 4 столбца: id менеджера, job_id, id департамента,
суммированная з/п.*/
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


/*2. Выведите id тех департаментов, где работает менеджер № 100 и не
работают менеджеры № 145, 201.*/
select department_id, manager_id from employees
where manager_id = 100
MINUS
select department_id, manager_id from employees
where manager_id in (124, 201);

/*3. Используя SET операторы и не используя логические операторы,
выведите уникальную информацию о именах, фамилиях и з/п
сотрудников, второй символ в именах которых буква «а», и фамилия
содержит букву «s» вне зависимости от регистра. Отсортируйте
результат по з/п по убыванию.*/

select first_name, last_name, salary from employees
where first_name like '_a%'
INTERSECT
select first_name, last_name, salary from employees
where LOWER(last_name) like '%s%'
order by salary desc;

/*4. Используя SET операторы и не используя логические операторы,
выведите информацию о id локаций, почтовом коде и городе для
локаций, которые находятся в Италии или Германии. А также для
локаций, почтовый код которых содержит цифру «9».*/
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

/*Вариант 2*/
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


/*5. Используя SET операторы и не используя логические операторы,
выведите всю уникальную информацию для стран, длина имён
которых больше 8 символов. А также для стран, которые находятся не в
европейском регионе. Столбцы аутпута должны называться id, country,
region. Аутпут отсортируйте по названию стран по убывающей.*/
select country_id id, country_name country, region_id region 
from countries where LENGTH(country_name) > 8
UNION
select * from countries
where region_id in (
select region_id from regions
where region_name != 'Europe')
order by country desc;

























