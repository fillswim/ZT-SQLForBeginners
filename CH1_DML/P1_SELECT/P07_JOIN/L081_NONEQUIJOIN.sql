select * from employees;
select * from jobs;

select first_name, salary, min_salary, max_salary
from employees e
JOIN jobs j ON(e.job_id = j.job_id AND e.salary < j.max_salary/2);

select first_name, salary, min_salary, max_salary
from employees e JOIN jobs j 
ON(e.job_id=j.job_id AND e.salary=j.max_salary);

select first_name, salary, min_salary, max_salary
from employees e JOIN jobs j 
ON(e.job_id=j.job_id AND e.salary<j.max_salary);

select first_name, salary, min_salary, max_salary
from employees e JOIN jobs j
ON(e.job_id=j.job_id AND 
e.salary BETWEEN j.min_salary+2000 AND j.max_salary-2000);





































