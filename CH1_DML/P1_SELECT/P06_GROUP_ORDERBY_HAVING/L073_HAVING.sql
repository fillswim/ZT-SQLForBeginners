select * from employees where salary > 10000;

select department_id, count(*) from employees
where length(first_name) > 4
group by department_id
having count(*) > 3
order by department_id;

select department_id, count(*), ROUND(AVG(salary)) from employees
where length(first_name) > 4
group by department_id
having count(*) > 3 and ROUND(AVG(salary)) > 5000
order by department_id;






























