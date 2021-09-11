DROP TABLE students;
DROP TABLE faculties;

select * from students;

CREATE TABLE students (
    id NUMBER,
    name varchar2(15),
    course number
);

INSERT INTO students(id, name, course) VALUES(1, 'Oleg', 3);
INSERT INTO students(id, name, course) VALUES(2, 'Mike', 2);
INSERT INTO students(id, name, course) VALUES(3, 'Nick', 4);
INSERT INTO students(id, name, course) VALUES(4, 'Vasy', 5);
INSERT INTO students(id, name, course) VALUES(5, 'Pete', 1);

/*�������� ��� ���������� �������������*/
CREATE OR REPLACE VIEW fin_emp2 AS
    SELECT
        *
    FROM
        students;
        
SELECT * FROM fin_emp2;

/*�������� ������������� ��� ����� ��������
  �.�. ������ ����� �� �������� � �������������, �� �������� � �������*/
CREATE OR REPLACE VIEW fin_emp2 AS
    SELECT
        *
    FROM
        students
    WHERE
        course>2;
        
SELECT * FROM fin_emp2;

/*���������� ����� � �������������*/
INSERT INTO fin_emp2(id, name, course) VALUES(8, 'Mate', 1);

CREATE OR REPLACE VIEW fin_emp2 AS
    SELECT
        *
    FROM
        students
    WHERE
        course>2;
        
SELECT * FROM fin_emp2;


/*�������� ������������� c ������ ��������*/
CREATE OR REPLACE VIEW fin_emp2 AS
    SELECT
        *
    FROM
        students
    WHERE
        course > 2
WITH CHECK OPTION;
        
SELECT * FROM fin_emp2;

INSERT INTO fin_emp2(id, name, course) VALUES(9, 'Fine', 1);

/*�������� ������������� ������ ��� ������*/
CREATE OR REPLACE VIEW fin_emp2 AS
    SELECT
        *
    FROM
        students
    WHERE
        course > 2
WITH READ ONLY;

/*�������� ������������� ������ ��� ������ � ������������� ��� constraint*/
CREATE OR REPLACE VIEW fin_emp2 AS
    SELECT
        *
    FROM
        students
    WHERE
        course > 2
WITH READ ONLY CONSTRAINT restriction_1;

/*�������������� �������� � �������������*/
CREATE OR REPLACE VIEW fin_emp2 (column1, column2, column3) AS
    SELECT
        *
    FROM
        students;


















