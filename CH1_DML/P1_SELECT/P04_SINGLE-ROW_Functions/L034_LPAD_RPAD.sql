SELECT LPAD('Oleg', 10, '#') FROM DUAL;

SELECT RPAD('Oleg', 10, '#') FROM DUAL;

SELECT first_name, LPAD(first_name, 25, '$') FROM employees;

SELECT first_name, RPAD(first_name, 25, '$') FROM employees;

SELECT first_name, RPAD(first_name, 25, 'ABC') FROM employees;

select RPAD('Hello', 5, '!') from dual;

select SYSDATE, LPAD(SYSDATE, 5, '!') from dual;

select RPAD(first_name, 15, ' ') || LPAD(salary, 8, ' ') from employees;