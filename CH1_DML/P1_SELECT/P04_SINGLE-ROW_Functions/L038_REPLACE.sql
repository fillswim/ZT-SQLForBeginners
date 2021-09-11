select * from employees;

select REPLACE('Hello, how are you?', 'o', '*') from dual;

select REPLACE('Hello, how are you?', 'o') from dual;

select salary, REPLACE(salary, '1', '9') from employees;

select hire_date, REPLACE(hire_date, '.', '/') from employees;
















