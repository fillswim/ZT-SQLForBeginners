DROP TABLE students;
DROP TABLE faculties;

/*Создание FOREIGN KEY constraint Способ № 1 Полное описание*/
CREATE TABLE students (
    id NUMBER,
    name varchar2(15),
    course number,
    faculty_id integer CONSTRAINT st_faculty_fk REFERENCES faculties(id)
);

/*Создание FOREIGN KEY constraint Способ № 1 Короткое описание*/
CREATE TABLE students (
    id NUMBER,
    name varchar2(15),
    course number,
    faculty_id integer REFERENCES faculties(id)
);

/*Создание FOREIGN KEY constraint Способ № 2 Полное описание*/
CREATE TABLE students (
    id NUMBER,
    name varchar2(15),
    course number,
    faculty_id integer,
    CONSTRAINT fk FOREIGN KEY (faculty_id) REFERENCES faculties(id)
);

/*Создание FOREIGN KEY constraint Способ № 2 Сокращенное описание*/
CREATE TABLE students (
    id NUMBER,
    name varchar2(15),
    course number,
    faculty_id integer,
    FOREIGN KEY (faculty_id) REFERENCES faculties(id)
);


CREATE TABLE faculties (
    id    NUMBER PRIMARY KEY,
    name  VARCHAR2(15)
);

/*Добавление constraint FOREIGN KEY после*/
ALTER TABLE students ADD CONSTRAINT fk FOREIGN KEY(faculty_id) REFERENCES faculties(id);
ALTER TABLE students ADD FOREIGN KEY(faculty_id) REFERENCES faculties(id);

ALTER TABLE students MODIFY (faculty_id CONSTRAINT fk REFERENCES faculties(id));
ALTER TABLE students MODIFY (faculty_id REFERENCES faculties(id));

/*Добавление значений для факультетов*/
select * from faculties;
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

/*Добавление значений для студентов*/
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
    1
);

INSERT INTO students (
    id,
    name,
    course,
    faculty_id
) VALUES (
    2,
    'Mike',
    4,
    2
);

INSERT INTO students (
    id,
    name,
    course,
    faculty_id
) VALUES (
    3,
    'Pete',
    4,
    null
);



































