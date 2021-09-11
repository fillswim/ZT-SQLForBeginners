DROP TABLE students;

CREATE TABLE students (
    id NUMBER,
    name varchar2(15),
    course number
);

CREATE INDEX in1 ON students(id);


/*Добавление студентов*/
INSERT INTO students (
    id,
    name,
    course
) VALUES (
    1,
    'Oleg',
    3
);
INSERT INTO students (
    id,
    name,
    course
) VALUES (
    2,
    'Mike',
    2 
);
INSERT INTO students (
    id,
    name,
    course
) VALUES (
    2,
    'Alex',
    5
);
INSERT INTO students (
    id,
    name,
    course
) VALUES (
    3,
    'Alex',
    3
);

DELETE FROM students where id = 3;
select * from students;

CREATE UNIQUE INDEX in2 ON students(name);































