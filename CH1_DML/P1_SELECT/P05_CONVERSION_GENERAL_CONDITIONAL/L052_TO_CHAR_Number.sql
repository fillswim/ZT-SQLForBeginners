select TO_CHAR(18) from dual;

select TO_CHAR(18, '99999') from dual;

select TO_CHAR(18, '099999') from dual;

select TO_CHAR(18.35, '099999.999') from dual;

select TO_CHAR(18.35, '099999D999') from dual;

select TO_CHAR(1234567, '99,999,999') from dual;

select TO_CHAR(1234567, '099,999,999') from dual;

select TO_CHAR(1234567, '099G999G999') from dual;

select TO_CHAR(18, '$999') from dual;

select TO_CHAR(18, 'L999') from dual;

select TO_CHAR(18, '999MI') from dual;

select TO_CHAR(-18, '999MI') from dual;

select TO_CHAR(18, '999PR') from dual;

select TO_CHAR(-18, '999PR') from dual;

select TO_CHAR(18, 'S0999') from dual;

select TO_CHAR(-18, 'S0999') from dual;

select first_name, 
salary * 1.111111, 
TO_CHAR(salary * 1.111111, '$999,999.99'),
TO_CHAR(salary * 1.111111, '$9,999.99')
from employees;








