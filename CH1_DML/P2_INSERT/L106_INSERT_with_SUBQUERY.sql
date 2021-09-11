CREATE TABLE new_emps (
    emp_id      INTEGER,
    name        VARCHAR2(20),
    start_date  DATE,
    job         VARCHAR2(10)
);

INSERT INTO new_emps (
    emp_id,
    name,
    start_date
)
    ( SELECT
        employee_id,
        first_name,
        hire_date
    FROM
        employees
    WHERE
        employee_id > 200
    );
    
select * from new_emps;
    
    































