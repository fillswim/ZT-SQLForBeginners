select * from employees;

select MOD(7, 3) from dual;

select MOD(8, 3) from dual;

select MOD(3, 9) from dual;

select MOD(39, 9) from dual;

select MOD(3.2, 2) from dual;

select MOD(3.1, 2.2) from dual;

select MOD(17, 2) from dual;

select * from employees;

select * from employees where (MOD(employee_id, 2)=0);

select employee_id, first_name, last_name, MOD(employee_id, 3) + 1 as team 
from employees;
















