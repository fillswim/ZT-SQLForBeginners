select * from employees;

UPDATE employees SET salary = 5000 where department_id IN (
select department_id from departments where department_name='Marketing');

UPDATE employees
SET
    salary = (
        SELECT
            MAX(salary)
        FROM
            employees
    ),
    hire_date = (
        SELECT
            MIN(start_date)
        FROM
            job_history
    )
WHERE
    employee_id = 210;


UPDATE employees
SET
    salary = (
        SELECT
            salary
        FROM
            employees
        WHERE
            employee_id=5
    )
WHERE
    employee_id = 211;



































