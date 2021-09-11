select * from employees;

select * from employees where LENGTH(first_name) > 10;

select * from employees where MOD(salary, 1000)=0;

select phone_number, SUBSTR(phone_number, 0, 3) from employees 
where phone_number LIKE '___.___.____';

select * from employees 
where SUBSTR(first_name, -1)='m' and LENGTH(first_name)>5;

select sysdate, NEXT_DAY(sysdate, 'Ïòí') as next_friday from dual;

select * from employees
where MONTHS_BETWEEN(sysdate, hire_date) > 150;

select phone_number, REPLACE(phone_number, '.', '-') as new_phone_number 
from employees;

select RPAD(UPPER(first_name), 10, ' ')
|| RPAD(LOWER(email), 10, ' ') 
|| INITCAP(job_id) from employees;

select CONCAT(first_name, salary) from employees;

select hire_date, ROUND(hire_date, 'MM'), TRUNC(hire_date, 'YYYY') from employees;

select RPAD(first_name, 10, '$'), LPAD(last_name, 15, '!') from employees;

select first_name, INSTR(first_name, 'a', 1, 2) from employees;

select TRIM(both '!' from '!!!HELLO!! MY FRIEND!!!!!!!!') from dual;

select salary, 
salary * 3.1415, 
ROUND(salary * 3.1415),
ROUND(salary * 3.1415, -3) / 1000
from employees;

select hire_date,
ADD_MONTHS(hire_date, 6),
LAST_DAY(hire_date) from employees;

















