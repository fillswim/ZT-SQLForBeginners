SELECT * FROM students;

/*���������� ����� � ������� students*/
ALTER TABLE students ADD (
    course NUMBER DEFAULT 3
);

/*�������� �������*/
ALTER TABLE students MODIFY (
    avg_score NUMBER(5,3)
);

/*���������� ���������� ��������*/
ALTER TABLE students MODIFY (
    start_date date DEFAULT null
);

INSERT INTO students(student_id, name)
VALUES(4, 'Vova');

/*�������� ������� �� �������*/
ALTER TABLE students DROP COLUMN scholarship;

/*������� ������� �������������� - ���������*/
ALTER TABLE students SET UNUSED COLUMN start_date;

/*�������� �������������� �������*/
ALTER TABLE students DROP UNUSED COLUMNS;

/*��������� �������� �������*/
ALTER TABLE students RENAME COLUMN student_id TO id;

/*������� ������� ��������� ������ ��� select-�, ����������� ��� ���������
  �� ������� ����� �������*/
ALTER TABLE students READ ONLY;





























