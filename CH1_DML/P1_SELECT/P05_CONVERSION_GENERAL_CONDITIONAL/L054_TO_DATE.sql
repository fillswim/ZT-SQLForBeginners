select TO_DATE('08-MAR-19') from dual;

select TO_DATE('08!MAR!19') from dual;

select TO_DATE('08-MAR-2019') from dual;

select TO_DATE('18:40 2019!17-Sep', 'HH24:MI YYYY!DD-Mon') from dual;

select TO_DATE('28-Sep-19 15:16:17', 'dd-Mon-RR hh24:mi:ss') from dual;

select TO_CHAR(
TO_DATE('28-Sep-19 15:16:17', 'dd-Mon-RR hh24:mi:ss'), 'dd-Mon-RR hh24:mi:ss') 
from dual;

select TO_DATE('18-SEP-10', 'fxDD-MON-YY') from dual;

select * from employees where hire_date > '01-JAN-05';

select * from employees where hire_date > TO_DATE('01-JAN-05', 'dd-MON-YY');

select TO_CHAR(TO_DATE('18-SEP-10', 'dd-MON-YY'), 'Month') from dual;











