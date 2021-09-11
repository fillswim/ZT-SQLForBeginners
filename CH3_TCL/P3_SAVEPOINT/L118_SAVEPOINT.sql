/*Создание таблицы new_emps*/
CREATE TABLE new_emps (
    emp_id      INTEGER,
    name        VARCHAR2(20),
    start_date  DATE,
    job         VARCHAR2(10)
);
    
select * from new_emps;

/*Добавление 10 первых строк*/
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
        employee_id < 110
    );

/*Добавление одной записи*/
INSERT INTO new_emps (
    emp_id,
    name,
    start_date,
    job
) VALUES (
    1000,
    'Igor',
    sysdate,
    'IT_PROG'
);

savepoint s1;

UPDATE new_emps SET emp_id=300 where emp_id=100;

savepoint s2;

DELETE from new_emps where emp_id=101;

/*Откат к определенному savepoint-у*/
rollback to savepoint s2;
rollback to savepoint s1;
commit;

/*Откат всех изменений и окончание транзакции*/
rollback;



























