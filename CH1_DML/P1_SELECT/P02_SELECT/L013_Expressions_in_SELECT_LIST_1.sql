select salary*2 + employee_id from employees;

select first_name, salary * 1.5, salary from employees;

select * from job_history;
select start_date, end_date,(end_date-start_date)+1 as "count of days" from job_history;

select start_date, start_date + 7 from job_history;