DROP TABLE students;
DROP TABLE faculties;

select * from students;

CREATE TABLE students (
    id NUMBER,
    name varchar2(15),
    course number
);

INSERT INTO students(id, name, course) VALUES(1, 'Oleg', 3);
INSERT INTO students(id, name, course) VALUES(2, 'Mike', 2);
INSERT INTO students(id, name, course) VALUES(3, 'Nick', 4);
INSERT INTO students(id, name, course) VALUES(4, 'Vasy', 5);
INSERT INTO students(id, name, course) VALUES(5, 'Pete', 1);

/*Создание или перезапись представления*/
CREATE OR REPLACE VIEW v18 AS
    SELECT
        id,
        name
    FROM
        students;

/*Проверка VIEW на работоспособность*/
ALTER VIEW v18 COMPILE;

/*При SELECT проходит автокомпиляция*/
SELECT * FROM v18;

/*Удаление представления*/
DROP VIEW v18;

