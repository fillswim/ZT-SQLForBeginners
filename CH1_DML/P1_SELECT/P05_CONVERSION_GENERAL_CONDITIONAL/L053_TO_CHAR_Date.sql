select TO_CHAR('23-SEP-83') from dual;

select TO_CHAR(SYSDATE, 'Y') from dual;

select TO_CHAR(SYSDATE, 'RR') from dual;

select TO_CHAR(SYSDATE, 'YEAR') from dual;

select TO_CHAR(SYSDATE, 'Year') from dual;

select TO_CHAR(SYSDATE, 'year') from dual;

select TO_CHAR(SYSDATE, 'MM') from dual;

select TO_CHAR(SYSDATE, 'MON') from dual;

select TO_CHAR(SYSDATE, 'Mon') from dual;

select TO_CHAR(SYSDATE, 'MONTH') from dual;

select TO_CHAR(SYSDATE, 'Month') from dual;

select hire_date, TO_CHAR(hire_date, 'Month') from employees;

select hire_date, TO_CHAR(hire_date, 'Month', 'NLS_DATE_LANGUAGE = RUSSIAN') 
from employees;

select hire_date, TO_CHAR(hire_date, 'Month') || 'hello' from employees;

/*Dalene spaces*/
select hire_date, TO_CHAR(hire_date, 'fmMonth') || 'hello' from employees;

select first_name, hire_date from employees 
where TO_CHAR(hire_date, 'fmMonth') = 'August';

select TO_CHAR(SYSDATE, 'd') from dual;

select TO_CHAR(SYSDATE, 'DD') from dual;

select TO_CHAR(SYSDATE, 'DDD') from dual;

select TO_CHAR(SYSDATE, 'Day') from dual;

select TO_CHAR(SYSDATE, 'WW') from dual;

select TO_CHAR(SYSDATE, 'Q') from dual;

select TO_CHAR(SYSDATE, 'CC') from dual;



select TO_CHAR(SYSDATE, 'P.M.') from dual;
select TO_CHAR(SYSDATE, 'HH12') from dual;
select TO_CHAR(SYSDATE, 'HH24') from dual;
select TO_CHAR(SYSDATE, 'MI') from dual;
select TO_CHAR(SYSDATE, 'SS') from dual;
select TO_CHAR(SYSDATE, 'SSSSS') from dual;
select TO_CHAR(SYSDATE, 'fmDAY!fmMonth!yyyy') from dual;
select TO_CHAR(SYSDATE, '"quarter "Q" of "year') from dual;
select TO_CHAR(SYSDATE, 'DDth " of "mm') from dual;
select TO_CHAR(SYSDATE, 'yyyysp mmsp ssssssp') from dual;
select TO_CHAR(SYSDATE, 'MIthsp') from dual;

select 'my colleague with ID = ' 
|| employee_id || ' and job_id = ' || job_id || 
' joined us on ' || TO_CHAR(hire_date, 'fmDay "the "ddTH "of" fmMonthfm YYYY') from employees;














