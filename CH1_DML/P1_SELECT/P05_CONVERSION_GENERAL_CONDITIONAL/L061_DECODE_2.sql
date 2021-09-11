select * from employees;

select DECODE(12, 12, 'twenty') from dual;

select DECODE(20, 12, '12th', 13, '13th', 15, '15th', 'not matches') from dual;

select DECODE(2+2*2, 5, 'five', 6, 'six') from dual;

select first_name, commission_pct, DECODE(commission_pct, null, 'not', 'OK') 
from employees; 



















