SELECT first_name from employees;

select first_name from employees 
where INSTR(LOWER(first_name), 'b') != 0;

select first_name from employees 
where INSTR(LOWER(first_name), 'a', 1, 2) > 0;

select
department_name,
INSTR(department_name, ' '),
SUBSTR(department_name, 1, INSTR(department_name, ' '))
from departments where department_name like '% %';

select first_name, 
SUBSTR(first_name, 2, LENGTH(first_name)-1) 
from employees;

select job_id,
SUBSTR(job_id, INSTR(job_id, '_')+1, LENGTH(job_id))
from employees
where LENGTH(SUBSTR(job_id, INSTR(job_id, '_')+1, LENGTH(job_id)))>=3 
and 
SUBSTR(job_id, INSTR(job_id, '_')+1, LENGTH(job_id))!='CLERK';

select first_name from employees
where hire_date = TRUNC(hire_date, 'MM');

select first_name from employees
where TO_CHAR(hire_date, 'YYYY') = 2008;

SELECT sysdate, 'Today is ' 
|| TO_CHAR(sysdate, 'DdSpTh') 
|| ' day of ' 
|| TO_CHAR(sysdate, 'Month') 
from dual;

SELECT sysdate, 'Tomorrow is ' 
|| TO_CHAR(sysdate+1, 'DdSpTh') 
|| ' day of ' 
|| TO_CHAR(sysdate, 'Month') 
from dual;

select first_name, 
TO_CHAR(hire_date, 'ddth "of "fmMonth, YYYY') 
from employees;

select first_name, TO_CHAR(salary * 1.2, '$99,999.99') 
from employees;

select
TO_NUMBER(TO_CHAR(sysdate, 'YYYY')) YY,
TO_NUMBER(TO_CHAR(sysdate, 'MM')) MM,
TO_NUMBER(TO_CHAR(sysdate, 'DD')) DD,
TO_NUMBER(TO_CHAR(sysdate, 'HH')) HH,
TO_NUMBER(TO_CHAR(sysdate, 'MI')) MI,
TO_NUMBER(TO_CHAR(sysdate, 'SS')) SS,
TO_NUMBER(TO_CHAR(sysdate, 'YYYY'))+
TO_NUMBER(TO_CHAR(sysdate, 'MM'))+
TO_NUMBER(TO_CHAR(sysdate, 'DD'))+
TO_NUMBER(TO_CHAR(sysdate, 'HH'))+
TO_NUMBER(TO_CHAR(sysdate, 'MI'))+
TO_NUMBER(TO_CHAR(sysdate, 'SS')) as result
from dual;

select
first_name,
salary,
salary + TO_NUMBER('$12,345.55', '$99,999.99')
from employees;

select
TO_DATE('SEP, 18:45:00 18 2009', 'MON, HH24:MI:SS DD YYYY')
from dual;

select
first_name,
hire_date,
ROUND(
MONTHS_BETWEEN(
TO_DATE('SEP, 18:45:00 18 2009', 'MON, HH24:MI:SS DD YYYY'),
hire_date)) as Months
from employees;

select first_name, salary, commission_pct,
TO_CHAR(salary + salary*NVL(commission_pct, 0), '$99,999.99') as result
from employees 
where commission_pct is not null;

select first_name, last_name,
DECODE(LENGTH(first_name), LENGTH(last_name), 'same length', 'different length')
from employees;

select * from employees;

select first_name, 
NVL2(commission_pct, 'Yes', 'No') as Bonus
from employees;

select first_name,
COALESCE(commission_pct, manager_id, salary)
from employees;

select first_name,
CASE
WHEN salary < 5000 then 'low level'
WHEN salary >= 5000 and salary < 10000 then 'normal level'
WHEN salary >= 10000 then 'High level'
else 'nothing'
end
from employees;

select * from countries;

select country_name,
DECODE(region_id, 1, 'Europe', 2, 'America', 3, 'Asia', 4, 'Africa') as region
from countries;

select country_name,
CASE region_id
WHEN 1 then 'Europe'
WHEN 2 then 'America'
WHEN 3 then 'Asia'
WHEN 4 then 'Africa'
else 'nothing'
end
from countries;

select first_name,
case
when salary < 10000 then 'BAD'
when (salary >= 10000 and salary < 15000) or commission_pct is not null then 'NORMAL'
when salary >= 15000 then 'GOOD'
end as "level"
from employees;


















































