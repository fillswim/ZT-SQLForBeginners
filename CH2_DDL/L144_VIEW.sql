select * from employees;

CREATE VIEW fin_exp AS 
SELECT employee_id, job_id, salary from employees;

select * from fin_exp;

CREATE VIEW fin_exp2 AS 
SELECT department_name, SUM(salary) sum_salary 
FROM employees e
JOIN departments d ON (e.department_id = d.department_id)
GROUP BY department_name;

select * from fin_exp2;

CREATE VIEW emps_with_high_salary AS
SELECT first_name, last_name FROM employees WHERE salary >= 12000;

SELECT * FROM emps_with_high_salary;

































