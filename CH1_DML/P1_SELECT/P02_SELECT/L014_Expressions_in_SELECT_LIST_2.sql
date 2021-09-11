select * from employees;

select first_name||last_name from employees;

select 'My name is '||first_name||' and my surname is '||last_name as name from employees;

select 'A'||commission_pct||'B' from employees;

select first_name as fn, last_name, commission_pct as pct from employees;

