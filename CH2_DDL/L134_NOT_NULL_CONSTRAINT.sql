DROP TABLE students;

/*�������� NOT NULL constraint ������ � 1*/
CREATE TABLE students (
    id NUMBER,
    name varchar2(15),
    course number CONSTRAINT st_course_notnull NOT NULL, /*������ ��������*/
    faculty_id integer
);

/*�������� NOT NULL constraint ������ � 2*/
CREATE TABLE students (
    id NUMBER,
    name varchar2(15),
    course number NOT NULL, /*����������� ���������*/
    faculty_id integer
);

/*���������� constraint ����� �������� �������*/
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




































