/*1. Создать таблицу friends с помощью subquery так, 
чтобы она после создания содержала значения следующих столбцов из таблицы
employees: employee_id, first_name, last_name 
для тех строк, где имеются комиссионные. 
Столбцы в таблице friends должны называться id, name, surname.*/
select * from employees;

CREATE TABLE friends
    AS
        ( SELECT
            employee_id id,
            first_name name,
            last_name surname
        FROM
            employees
        WHERE
            commission_pct IS NOT NULL
        );

select * from friends;

/*2. Добавить в таблицу friends новый столбец email.*/
ALTER TABLE friends ADD (
    email VARCHAR2(10)
);

/*3. Изменить столбец email так, чтобы его значение по умолчанию было
«no email».*/
ALTER TABLE friends MODIFY (
    email VARCHAR2(10) DEFAULT 'no email'
);

/*4. Проверить добавлением новой строки, работает ли дефолтное
значение столбца email.*/
INSERT INTO friends (
    id,
    name,
    surname
) VALUES (
    180,
    INITCAP('Oleg'),
    INITCAP('filatov')
);

/*5. Изменить название столбца с id на friends_id.*/
ALTER TABLE friends RENAME COLUMN id to friends_id;

/*6. Удалить таблицу friends.*/
DROP TABLE friends;

/*7. Создать таблицу friends со следующими столбцами: 
id, name, surname, email, salary, city, birthday. 
У столбцов salary и birthday должны быть значения по умолчанию.*/
CREATE TABLE friends(
    id varchar2(5),
    name varchar2(15),
    surname varchar2(15),
    email varchar2(10),
    salary number(4, 2) DEFAULT null,
    city varchar2(10),
    bithday date DEFAULT SYSDATE
);

SELECT * FROM friends;

/*8. Добавить 1 строку в таблицу friends со всеми значениями.*/
ALTER TABLE friends MODIFY (
    salary NUMBER(7, 2) DEFAULT NULL
);

INSERT INTO friends (
    id,
    name,
    surname,
    email,
    salary,
    city,
    bithday
) VALUES (
    1,
    initcap('OLEG'),
    initcap('FILATOV'),
    lower('FILATOV'),
    1500,
    initcap('MOSCOW'),
    TO_DATE('2-DEC-1989', 'DD-MON-YYYY')
);

/*9. Добавить 1 строку в таблицу friends со всеми значениями кроме salary
и birthday.*/

INSERT INTO friends (
    id,
    name,
    surname,
    email,
    city
) VALUES (
    2,
    initcap('IVAN'),
    initcap('IVANOV'),
    lower('IVANOV'),
    initcap('MOSCOW')
);

/*10. Совершить commit.*/
commit;

/*11. Удалить столбец salary.*/
ALTER TABLE friends DROP COLUMN salary;

/*12. Сделать столбец email неиспользуемым (unused).*/
ALTER TABLE friends SET UNUSED COLUMN email;

/*13. Сделать столбец birthday неиспользуемым (unused).*/
ALTER TABLE friends SET UNUSED COLUMN bithday;

/*14. Удалить из таблицы friends неиспользуемые столбцы.*/
ALTER TABLE friends DROP UNUSED COLUMNS;

/*15. Сделать таблицу friends пригодной только для чтения.*/
ALTER TABLE friends READ ONLY;

/*16. Проверить предыдущее действие любой DML командой.*/
INSERT INTO friends (
    id,
    name,
    surname,
    email,
    city
) VALUES (
    3,
    initcap('PERT'),
    initcap('PETROV'),
    lower('PETROV'),
    initcap('MOSCOW')
);

/*17. Опустошить таблицу friends.*/
TRUNCATE TABLE friends;

/*18. Удалить таблицу friends.*/
DROP TABLE friends;





