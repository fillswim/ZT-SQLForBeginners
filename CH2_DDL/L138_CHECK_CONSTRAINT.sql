/*�������� CHECK CONSTRAINT in-line level c ������ ��������*/
CREATE TABLE students (
    id NUMBER,
    name varchar2(15),
    course number CONSTRAINT ch CHECK (course > 0 AND course < 6),
    faculty_id integer
);

/*�������� CHECK CONSTRAINT table level c ������ ��������*/
CREATE TABLE students (
    id NUMBER,
    name varchar2(15),
    course number,
    faculty_id integer,
    CONSTRAINT ch CHECK (course > 0 AND course < 6)
);

/*�������� CHECK CONSTRAINT table level c ����������� ��������*/
CREATE TABLE students (
    id NUMBER,
    name varchar2(15),
    course number,
    faculty_id integer,
    CHECK (course > 0 AND course < 6)
);

/*���������� CONSTRAINT*/
ALTER TABLE students ADD CONSTRAINT ch CHECK (course < 6);
ALTER TABLE students ADD CHECK (course < 6);

ALTER TABLE students MODIFY (id CONSTRAINT ch CHECK (id >= 1));


/*���������� ���������*/
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
    3,
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
    4,
    1
);


































