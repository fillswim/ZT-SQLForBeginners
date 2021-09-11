DROP TABLE students;

/*Создание NOT NULL constraint Способ № 1*/
CREATE TABLE students (
    id NUMBER,
    name varchar2(15),
    course number CONSTRAINT st_course_notnull NOT NULL, /*Полное описание*/
    faculty_id integer
);

/*Создание NOT NULL constraint Способ № 2*/
CREATE TABLE students (
    id NUMBER,
    name varchar2(15),
    course number NOT NULL, /*Сокращенное написание*/
    faculty_id integer
);

/*Добавление constraint после создания таблицы*/
ALTER TABLE students MODIFY (course CONSTRAINT st_course_notnull NOT NULL);
ALTER TABLE students MODIFY (course NOT NULL);

CREATE TABLE faculties (
    id NUMBER,
    name varchar2(15)
);

SELECT * FROM students;

INSERT INTO students (
    id,
    name,
    course,
    faculty_id
) VALUES (
    1,
    'Oleg',
    3,
    5
);

INSERT INTO students (
    id,
    name,
    course,
    faculty_id
) VALUES (
    1,
    'Oleg',
    null,
    5
);




































