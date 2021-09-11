select * from employees;
/*Нежелательное написание*/
INSERT INTO employees (employee_id, last_name, email, hire_date, job_id)
VALUES (210, 'Filatov', 'FILATOV', '18-SEP-2019', 'IT_PROG');

/*Наисание с использованием функций*/
INSERT INTO employees (
    employee_id,
    last_name,
    email,
    hire_date,
    job_id
) VALUES (
    211,
    initcap('filatov'),
    upper('filatov1'),
    to_date('18-SEP-2019', 'DD-MON-YYYY'),
    UPPER('IT_PROG')
);


INSERT INTO employees (
    employee_id,
    last_name,
    email,
    hire_date,
    job_id
) VALUES (
    200+12,
    initcap('filatov'),
    upper('filatov2'),
    SYSDATE,
    UPPER('IT_PROG')
);



































