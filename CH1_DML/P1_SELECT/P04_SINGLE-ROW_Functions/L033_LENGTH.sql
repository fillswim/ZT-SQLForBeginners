SELECT first_name, LENGTH(first_name) FROM employees;

SELECT LENGTH('Oleg Filatov') from dual;

SELECT salary, LENGTH(salary * 100), hire_date, LENGTH(hire_date) FROM employees;

SELECT * FROM countries;

SELECT country_name FROM countries WHERE LENGTH(country_name) > 8;

SELECT country_name FROM countries ORDER BY LENGTH(country_name);

