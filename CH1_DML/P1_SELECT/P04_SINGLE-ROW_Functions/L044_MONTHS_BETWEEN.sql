select * from job_history;

select employee_id, MONTHS_BETWEEN(start_date, end_date) from job_history;

select MONTHS_BETWEEN('12.02.19', '05.01.19') from dual;

select MONTHS_BETWEEN('05.01.19', '12.02.19') from dual;

select MONTHS_BETWEEN('18.09.19', '17.09.19') * 31 from dual;


























