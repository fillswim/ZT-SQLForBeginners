/*1. ������� ������� emp1000 � ������� subquery ���, ����� ��� �����
�������� ��������� �������� ��������� �������� �� �������
employees: first_name, last_name, salary, department_id.*/
CREATE TABLE emp1000
    AS
        ( SELECT
            first_name,
            last_name,
            salary,
            department_id
        FROM
            employees
        );

SELECT * FROM emp1000;

/*2. ������� view v1000 �� ������ select-�, ������� ���������� �������
emp1000 � departments �� ������� department_id. View ������
��������� ��������� �������: first_name, last_name, salary,
department_name, city.*/
select * from departments;
select * from locations;
/*Join ������*/
SELECT
    first_name,
    last_name,
    salary,
    department_name,
    city
FROM
         emp1000 e
    JOIN departments  d ON ( e.department_id = d.department_id )
    JOIN locations    l ON ( d.location_id = l.location_id );

CREATE VIEW v1000 AS
    ( SELECT
        first_name,
        last_name,
        salary,
        department_name,
        city
    FROM
             emp1000 e
        JOIN departments  d ON ( e.department_id = d.department_id )
        JOIN locations    l ON ( d.location_id = l.location_id )
    );



/*3. �������� � ������� emp1000 ������� city.*/

/*4. �������������� view v1000.*/
ALTER VIEW v1000 COMPILE;

/*5. �������� ������� syn1000 ��� v1000.*/
CREATE SYNONYM syn1000 FOR v1000;

/*6. ������� v1000.*/
DROP VIEW v1000;

/*7. ������� syn1000.*/
DROP SYNONYM syn1000;

/*8. ������� emp1000.*/
DROP TABLE emp1000;

/*9. �������� ������������������ seq1000, ������� ���������� � 12,
������������� �� 4, ����� ������������ �������� 200 � �����������.*/
CREATE SEQUENCE seq1000 START WITH 12 INCREMENT BY 4 MAXVALUE 200 CYCLE;

/*10. �������� ��� ������������������. ������� ������������ �������� �
�����������.*/
ALTER SEQUENCE seq1000 NOMAXVALUE NOCYCLE;

/*11. �������� 2 ������ � ������� employees, ��������� ����������
��������� ���������� ��������. ��������������
������������������� seq1000 ��� ���������� �������� � �������
employee_id.*/
INSERT INTO employees(employee_id, last_name, email, hire_date, job_id)
VALUES(SEQ1000.nextval, 'Filatov', 'Oleg', SYSDATE, 'IT_PROG');
INSERT INTO employees(employee_id, last_name, email, hire_date, job_id)
VALUES(SEQ1000.nextval, 'Ivanov', 'Ivan', SYSDATE, 'IT_PROG');

SELECT * FROM EMPLOYEES;

/*12. ��������� commit.*/
COMMIT;





















