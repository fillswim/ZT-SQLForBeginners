select LAST_DAY(sysdate) from dual;

select hire_date, LAST_DAY(hire_date) - hire_date as worked from employees;













