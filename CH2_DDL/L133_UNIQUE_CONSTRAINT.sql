/*�������� constraint in-line level � ��������� ��� ����*/
CREATE TABLE students (
    id NUMBER CONSTRAINT st_id_unique UNIQUE, /*���� ��������*/
    name varchar2(15),
    course number,
    faculty_id integer,
    avg_score number(5, 2),
    start_date date,
    scholarship integer
);

/*�������� constraint in-line level ��� ��������*/
CREATE TABLE students (
    id NUMBER UNIQUE, /*��� ��������*/
    name varchar2(15),
    course number,
    faculty_id integer,
    avg_score number(5, 2),
    start_date date,
    scholarship integer
);

/*�������� constraint table level � ��������� ��� ����*/
CREATE TABLE students (
    id NUMBER,
    name varchar2(15),
    course number,
    faculty_id integer,
    avg_score number(5, 2),
    start_date date,
    scholarship integer,
    CONSTRAINT st_id_unique UNIQUE(id) /*���� ��������*/
);

/*�������� constraint table level ��� ��������*/
CREATE TABLE students (
    id NUMBER,
    name varchar2(15),
    course number,
    faculty_id integer,
    avg_score number(5, 2),
    start_date date,
    scholarship integer,
    UNIQUE(id) /*��� ��������*/
);

/*�������� Composit constraint (��� ���������� ��������)
  ��� ���������� ����� ����������� ������������ ���������� 2-� ��������*/
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

/*���������� constraint ����� �������� �������. ������ � 1*/
ALTER TABLE students ADD CONSTRAINT st_id_unique UNIQUE (id);

/*���������� constraint ����� �������� �������. ������ � 2*/
ALTER TABLE students MODIFY (id CONSTRAINT abc UNIQUE);
ALTER TABLE students MODIFY (id UNIQUE);

/*�������� constraint*/
ALTER TABLE stubents DROP CONSTRAINT abc;

CREATE TABLE faculties (
    id NUMBER,
    name varchar2(15)
);

/*���������� ������������ � ���������� id*/
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

/*���������� ������������ � id null*/
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
    'Economics'
);




















