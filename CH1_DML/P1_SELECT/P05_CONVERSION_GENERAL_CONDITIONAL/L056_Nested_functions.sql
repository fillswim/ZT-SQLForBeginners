select first_name, LENGTH(first_name), ROUND(123.456789, LENGTH(first_name)) 
from employees;

select TO_DATE('18-09-87', 'DD-MM-RR'),
TO_CHAR(TO_DATE('18-09-87', 'DD-MM-RR'), 'DAY')
from dual;



















