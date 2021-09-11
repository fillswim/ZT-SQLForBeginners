/*Удаление всех строк из таблицы*/
DELETE from new_emps;


select * from employees;
select * from new_emps;


INSERT INTO new_emps (
    emp_id,
    name,
    start_date,
    job
)
    ( SELECT
        employee_id,
        first_name,
        hire_date,
        job_id
    FROM
        employees
    );
    
    
DELETE FROM new_emps
WHERE
    emp_id = 210;


DELETE FROM new_emps
WHERE
    job LIKE '%CLERK%'
    OR name IS NULL;









































