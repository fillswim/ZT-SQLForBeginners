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
CREATE OR REPLACE VIEW fin_emp2 AS
    SELECT
        *
    FROM
        students;
        
SELECT * FROM fin_emp2;

/*Создание представления без опции проверки
  Т.е. данные могут не попадать в представление, но попадать в таблицу*/
CREATE OR REPLACE VIEW fin_emp2 AS
    SELECT
        *
    FROM
        students
    WHERE
        course>2;
        
SELECT * FROM fin_emp2;

/*Добавление строк в представление*/
INSERT INTO fin_emp2(id, name, course) VALUES(8, 'Mate', 1);

CREATE OR REPLACE VIEW fin_emp2 AS
    SELECT
        *
    FROM
        students
    WHERE
        course>2;
        
SELECT * FROM fin_emp2;


/*Создание представления c опцией проверки*/
CREATE OR REPLACE VIEW fin_emp2 AS
    SELECT
        *
    FROM
        students
    WHERE
        course > 2
WITH CHECK OPTION;
        
SELECT * FROM fin_emp2;

INSERT INTO fin_emp2(id, name, course) VALUES(9, 'Fine', 1);

/*Создание представления только для чтения*/
CREATE OR REPLACE VIEW fin_emp2 AS
    SELECT
        *
    FROM
        students
    WHERE
        course > 2
WITH READ ONLY;

/*Создание представления только для чтения с наименованием для constraint*/
CREATE OR REPLACE VIEW fin_emp2 AS
    SELECT
        *
    FROM
        students
    WHERE
        course > 2
WITH READ ONLY CONSTRAINT restriction_1;

/*Переименование столбцов в представлении*/
CREATE OR REPLACE VIEW fin_emp2 (column1, column2, column3) AS
    SELECT
        *
    FROM
        students;


















