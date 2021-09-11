select
CASE 3*4
WHEN 12 THEN 100
END
from dual;

select
CASE 20
WHEN 12 THEN '12th'
WHEN 13 THEN '13th'
WHEN 14 THEN '14th'
ELSE 'NOTHING'
END
from dual;

select first_name,
CASE LENGTH(first_name)
WHEN 4 THEN 'TO SHORT NAME'
WHEN 5 THEN 'SHORT NAME'
WHEN 6 THEN 'NORMAL NAME'
WHEN 7 THEN 'NAME'
ELSE first_name
END
from employees;






