CREATE SEQUENCE s1;

/*����� ������ ���������� ��� ���� ������*/
SELECT s1.nextval FROM dual;

/*��������� �������������� �������� � ������� ������*/
SELECT s1.currval FROM dual;

DROP TABLE students;

/*�������� ������� ���������*/
CREATE TABLE students (
    id          NUMBER,
    name        VARCHAR2(25),
    course      NUMBER,
    faculty_id  INTEGER
);

/*�������� ������� �����������*/
CREATE TABLE faculties (
    id    NUMBER,
    name  VARCHAR2(15)
);

/*�������� �������������������*/
CREATE SEQUENCE seq_st;
CREATE SEQUENCE seq_faculty START WITH 20 INCREMENT BY 5;

SELECT * FROM faculties;

/*���������� �����������*/
INSERT INTO faculties (
    id,
    name
) VALUES (
    seq_faculty.NEXTVAL,
    'IT'
);
INSERT INTO faculties (
    id,
    name
) VALUES (
    seq_faculty.NEXTVAL,
    'Marketing'
);
INSERT INTO faculties (
    id,
    name
) VALUES (
    seq_faculty.NEXTVAL,
    'Philology'
);

SELECT * FROM students;

/*���������� ��������� 
  ������������� ������ �������� ��� ��������� 
  � �������� �������� ��� �����������*/
INSERT INTO students (
    id,
    name,
    course,
    faculty_id
) VALUES (
    seq_st.NEXTVAL,
    'Oleg',
    3,
    seq_faculty.CURRVAL
);
INSERT INTO students (
    id,
    name,
    course,
    faculty_id
) VALUES (
    seq_st.NEXTVAL,
    'Mike',
    2,
    25
);

































