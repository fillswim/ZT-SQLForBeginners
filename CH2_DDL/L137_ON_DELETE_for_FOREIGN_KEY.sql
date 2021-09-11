DROP TABLE students;
DROP TABLE faculties;

/*�������� FOREIGN KEY constraint � ��������� ���������*/
CREATE TABLE students (
    id NUMBER,
    name varchar2(15),
    course number,
    /*��������� �������� ��������� ��� �������� �����������*/
    faculty_id integer REFERENCES faculties ON DELETE CASCADE
);

/*�������� FOREIGN KEY constraint c ���������� null �������� ������ ���������*/
CREATE TABLE students (
    id NUMBER,
    name varchar2(15),
    course number,
    /*������������� null �������� ������ id ��������� ����������� � ������� students*/
    faculty_id integer REFERENCES faculties ON DELETE SET NULL
);

CREATE TABLE faculties (
    id NUMBER PRIMARY KEY,
    name varchar2(15)
);

/*���������� �����������*/
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

/*�������� ����������, �� ������� ��� ������*/
DELETE FROM faculties WHERE NAME = 'CS';
























