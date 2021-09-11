select * from employees;

INSERT INTO employees (
    employee_id,
    last_name,
    email,
    hire_date,
    job_id
) VALUES (
    210,
    initcap('filatov'),
    upper('filatov'),
    sysdate,
    'IT_PROG'
);

commit;
































