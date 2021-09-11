/*Создание constraint in-line level с названием для него*/
CREATE TABLE students (
    id NUMBER CONSTRAINT st_id_unique UNIQUE, /*есть название*/
    name varchar2(15),
    course number,
    faculty_id integer,
    avg_score number(5, 2),
    start_date date,
    scholarship integer
);

/*Создание constraint in-line level без названия*/
CREATE TABLE students (
    id NUMBER UNIQUE, /*нет названия*/
    name varchar2(15),
    course number,
    faculty_id integer,
    avg_score number(5, 2),
    start_date date,
    scholarship integer
);

/*Создание constraint table level с названием для него*/
CREATE TABLE students (
    id NUMBER,
    name varchar2(15),
    course number,
    faculty_id integer,
    avg_score number(5, 2),
    start_date date,
    scholarship integer,
    CONSTRAINT st_id_unique UNIQUE(id) /*есть название*/
);

/*Создание constraint table level без названия*/
CREATE TABLE students (
    id NUMBER,
    name varchar2(15),
    course number,
    faculty_id integer,
    avg_score number(5, 2),
    start_date date,
    scholarship integer,
    UNIQUE(id) /*нет названия*/
);

/*Создание Composit constraint (для нескольких столбцов)
  При добавлении будет проверяться уникальность комбинации 2-х столбцов*/
CREATE TABLE students (
    id NUMBER,
    name varchar2(15),
    course number,
    faculty_id integer,
    avg_score number(5, 2),
    start_date date,
    scholarship integer,
    CONSTRAINT st_id_unique UNIQUE(id, name)
);

/*Добавление constraint после создания таблицы. Способ № 1*/
ALTER TABLE students ADD CONSTRAINT st_id_unique UNIQUE (id);

/*Добавление constraint после создания таблицы. Способ № 2*/
ALTER TABLE students MODIFY (id CONSTRAINT abc UNIQUE);
ALTER TABLE students MODIFY (id UNIQUE);

/*Удаление constraint*/
ALTER TABLE stubents DROP CONSTRAINT abc;

CREATE TABLE faculties (
    id NUMBER,
    name varchar2(15)
);

/*Добавление пользователя с уникальным id*/
INSERT INTO students (
    id,
    name,
    course,
    faculty_id,
    avg_score,
    start_date,
    scholarship
) VALUES (
    1,
    'Oleg',
    3,
    1,
    8.7,
    to_date('15-SEP-2017'),
    1500
);

select * from students;

/*Добавление пользователя с id null*/
INSERT INTO students (
    id,
    name,
    course,
    faculty_id,
    avg_score,
    start_date,
    scholarship
) VALUES (
    null,
    'Oleg',
    3,
    1,
    8.7,
    to_date('15-SEP-2017'),
    1500
);

INSERT INTO students (
    id,
    name,
    course,
    faculty_id,
    avg_score,
    start_date,
    scholarship
) VALUES (
    2,
    'Mike',
    2,
    3,
    7.5,
    to_date('15-SEP-2018'),
    800
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
    'Economics'
);




















