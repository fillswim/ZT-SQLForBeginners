select * from employees;

INSERT INTO employees (
    employee_id,
    last_name,
    email,
    hire_date,
    job_id
) VALUES (
    211,
    initcap('ivanov'),
    upper('ivanov'),
    sysdate,
    'IT_PROG'
);

rollback;
select * from employees;





























