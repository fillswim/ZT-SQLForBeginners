select
CASE
WHEN 3*4=12 THEN '12 Ok'
WHEN 3*5=15 THEN '15 Ok'
ELSE 'NOTHING'
END
from dual;

select
CASE
WHEN 3*4=20 THEN '12 Ok'
WHEN 3*5=25 THEN '15 Ok'
ELSE 'NOTHING'
END AS "Case statement"
from dual;

select first_name, 
CASE
WHEN LENGTH(first_name)<5 THEN 'STATEMENT1'
WHEN LENGTH(first_name)>5 THEN 'STATEMENT2'
ELSE 'ELSE STATEMENT'
END AS "Case statement"
from employees;





















