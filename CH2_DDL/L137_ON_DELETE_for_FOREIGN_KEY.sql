DROP TABLE students;
DROP TABLE faculties;

/*Создание FOREIGN KEY constraint с Каскадным удалением*/
CREATE TABLE students (
    id NUMBER,
    name varchar2(15),
    course number,
    /*Каскадное удаление студентов при удалении факультетов*/
    faculty_id integer REFERENCES faculties ON DELETE CASCADE
);

/*Создание FOREIGN KEY constraint c установкой null значений вместо удаленных*/
CREATE TABLE students (
    id NUMBER,
    name varchar2(15),
    course number,
    /*Устанавливает null значения вместо id удаленных факультетов в таблице students*/
    faculty_id integer REFERENCES faculties ON DELETE SET NULL
);

CREATE TABLE faculties (
    id NUMBER PRIMARY KEY,
    name varchar2(15)
);

/*Добавление факультетов*/
INSERT INTO faculties (
    id,
    name
) VALUES (
    1,
    'CS'
);
INSERT INTO faculties (
    id,
    name
) VALUES (
    2,
    'Marketing'
);
INSERT INTO faculties (
    id,
    name
) VALUES (
    3,
    'Philology'
);

/*Добавление студентов*/
INSERT INTO students (
    id,
    name,
    course,
    faculty_id
) VALUES (
    1,
    'Oleg',
    3,
    1
);
INSERT INTO students (
    id,
    name,
    course,
    faculty_id
) VALUES (
    2,
    'Ivan',
    2,
    2
);
INSERT INTO students (
    id,
    name,
    course,
    faculty_id
) VALUES (
    3,
    'Mike',
    1,
    1
);

SELECT * FROM students;
SELECT * FROM faculties;

select s.id, s.name, s.course, f.name 
from students s JOIN faculties f
ON (s.faculty_id = f.id);

/*Удаление факультета, на который нет ссылок*/
DELETE FROM faculties WHERE NAME = 'CS';
























