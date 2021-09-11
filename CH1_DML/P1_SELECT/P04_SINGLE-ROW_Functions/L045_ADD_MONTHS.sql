select end_date, ADD_MONTHS(end_date, 4) from job_history;

select end_date, ADD_MONTHS(end_date, -4) from job_history;

select end_date, ADD_MONTHS(end_date, 4.5) from job_history;

select ADD_MONTHS('30.09.19', 1) from dual;

select ADD_MONTHS('31.12.19', 2) from dual;

select * from employees where MONTHS_BETWEEN('01.01.10', hire_date)>60;
























