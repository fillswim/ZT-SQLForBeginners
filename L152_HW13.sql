/*1. Создать таблицу emp1000 с помощью subquery так, чтобы она после
создания содержала значения следующих столбцов из таблицы
employees: first_name, last_name, salary, department_id.*/
CREATE TABLE emp1000
    AS
        ( SELECT
            first_name,
            last_name,
            salary,
            department_id
        FROM
            employees
        );

SELECT * FROM emp1000;

/*2. Создать view v1000 на основе select-а, который объединяет таблицы
emp1000 и departments по столбцу department_id. View должен
содержать следующие столбцы: first_name, last_name, salary,
department_name, city.*/
select * from departments;
select * from locations;
/*Join таблиц*/
SELECT
    first_name,
    last_name,
    salary,
    department_name,
    city
FROM
         emp1000 e
    JOIN departments  d ON ( e.department_id = d.department_id )
    JOIN locations    l ON ( d.location_id = l.location_id );

CREATE VIEW v1000 AS
    ( SELECT
        first_name,
        last_name,
        salary,
        department_name,
        city
    FROM
             emp1000 e
        JOIN departments  d ON ( e.department_id = d.department_id )
        JOIN locations    l ON ( d.location_id = l.location_id )
    );



/*3. Добавьте в таблицу emp1000 столбец city.*/

/*4. Откомпилируйте view v1000.*/
ALTER VIEW v1000 COMPILE;

/*5. Создайте синоним syn1000 для v1000.*/
CREATE SYNONYM syn1000 FOR v1000;

/*6. Удалите v1000.*/
DROP VIEW v1000;

/*7. Удалите syn1000.*/
DROP SYNONYM syn1000;

/*8. Удалите emp1000.*/
DROP TABLE emp1000;

/*9. Создайте последовательность seq1000, которая начинается с 12,
увеличивается на 4, имеет максимальное значение 200 и цикличность.*/
CREATE SEQUENCE seq1000 START WITH 12 INCREMENT BY 4 MAXVALUE 200 CYCLE;

/*10. Измените эту последовательность. Удалите максимальное значение и
цикличность.*/
ALTER SEQUENCE seq1000 NOMAXVALUE NOCYCLE;

/*11. Добавьте 2 строки в таблицу employees, используя минимально
возможное количество столбцов. Воспользуйтесь
последовательностью seq1000 при добавлении значений в столбец
employee_id.*/
INSERT INTO employees(employee_id, last_name, email, hire_date, job_id)
VALUES(SEQ1000.nextval, 'Filatov', 'Oleg', SYSDATE, 'IT_PROG');
INSERT INTO employees(employee_id, last_name, email, hire_date, job_id)
VALUES(SEQ1000.nextval, 'Ivanov', 'Ivan', SYSDATE, 'IT_PROG');

SELECT * FROM EMPLOYEES;

/*12. Совершите commit.*/
COMMIT;





















