DROP TABLE students;

/*Создание PRIMARY KEY constraint Способ № 1*/
CREATE TABLE students (
    id NUMBER CONSTRAINT st_id_pk PRIMARY KEY, /*Полное описание*/
    name varchar2(15),
    course number,
    faculty_id integer
);

/*Создание PRIMARY KEY constraint Способ № 2*/
CREATE TABLE students (
    id NUMBER,
    name varchar2(15),
    course number,
    faculty_id integer,
    CONSTRAINT st_pk PRIMARY KEY (id) /*Полное описание*/
);

/*Создание PRIMARY KEY constraint Способ № 2*/
CREATE TABLE students (
    id NUMBER,
    name varchar2(15),
    course number,
    faculty_id integer,
    PRIMARY KEY (id) /*Сокращенное описание*/
);

/*Добаление constraint PRIMARY KEY. Способ № 1*/
ALTER TABLE students ADD CONSTRAINT st_pk PRIMARY KEY (id);
ALTER TABLE students ADD PRIMARY KEY (id);

/*Добаление constraint PRIMARY KEY. Способ № 2*/
ALTER TABLE students MODIFY (id CONSTRAINT st_pk PRIMARY KEY);
ALTER TABLE students MODIFY (id PRIMARY KEY);

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
    2,
    'Mike',
    2,
    6
);

INSERT INTO students (
    id,
    name,
    course,
    faculty_id
) VALUES (
    2,
    'Pete',
    3,
    1
);





































