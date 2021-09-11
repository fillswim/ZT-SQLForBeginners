select * from employees;

select email, SUBSTR(email, 4) from employees;

select email, SUBSTR(email, 4, 2) from employees;

select SUBSTR('Hello, how are you?', 7) from dual;

select SUBSTR('Hello, how are you?', 7, 5) from dual;

select salary, SUBSTR(salary, 2, 3) from employees;

select hire_date, SUBSTR(hire_date, -3) from employees; 

select hire_date, SUBSTR(hire_date, -4, 2) from employees; 


























