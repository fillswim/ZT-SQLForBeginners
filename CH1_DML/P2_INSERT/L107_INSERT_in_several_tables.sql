CREATE TABLE emps_with_high_salary (
    name VARCHAR2(20),
    salary integer
);

CREATE TABLE emps_with_dept_100 (
    name VARCHAR2(20),
    salary integer
);

CREATE TABLE some_emps (
    name VARCHAR2(20),
    salary integer
);

INSERT
    ALL WHEN department_id = 100 THEN
        INTO emps_with_dept_100
        VALUES (
            first_name,
            salary
        )
        WHEN salary > 15000 THEN
            INTO emps_with_high_salary ( name )
            VALUES ( last_name )
        WHEN 5 = 5 THEN
            INTO some_emps (
                name,
                salary
            )
            VALUES (
                first_name,
                salary
            )
SELECT
    first_name,
    last_name,
    salary,
    department_id
FROM
    employees
WHERE
    length(first_name) > 5;
    
select * from emps_with_dept_100;
select * from emps_with_high_salary;
select * from some_emps;