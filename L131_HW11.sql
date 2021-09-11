/*1. ������� ������� friends � ������� subquery ���, 
����� ��� ����� �������� ��������� �������� ��������� �������� �� �������
employees: employee_id, first_name, last_name 
��� ��� �����, ��� ������� ������������. 
������� � ������� friends ������ ���������� id, name, surname.*/
select * from employees;

CREATE TABLE friends
    AS
        ( SELECT
            employee_id id,
            first_name name,
            last_name surname
        FROM
            employees
        WHERE
            commission_pct IS NOT NULL
        );

select * from friends;

/*2. �������� � ������� friends ����� ������� email.*/
ALTER TABLE friends ADD (
    email VARCHAR2(10)
);

/*3. �������� ������� email ���, ����� ��� �������� �� ��������� ����
�no email�.*/
ALTER TABLE friends MODIFY (
    email VARCHAR2(10) DEFAULT 'no email'
);

/*4. ��������� ����������� ����� ������, �������� �� ���������
�������� ������� email.*/
INSERT INTO friends (
    id,
    name,
    surname
) VALUES (
    180,
    INITCAP('Oleg'),
    INITCAP('filatov')
);

/*5. �������� �������� ������� � id �� friends_id.*/
ALTER TABLE friends RENAME COLUMN id to friends_id;

/*6. ������� ������� friends.*/
DROP TABLE friends;

/*7. ������� ������� friends �� ���������� ���������: 
id, name, surname, email, salary, city, birthday. 
� �������� salary � birthday ������ ���� �������� �� ���������.*/
CREATE TABLE friends(
    id varchar2(5),
    name varchar2(15),
    surname varchar2(15),
    email varchar2(10),
    salary number(4, 2) DEFAULT null,
    city varchar2(10),
    bithday date DEFAULT SYSDATE
);

SELECT * FROM friends;

/*8. �������� 1 ������ � ������� friends �� ����� ����������.*/
ALTER TABLE friends MODIFY (
    salary NUMBER(7, 2) DEFAULT NULL
);

INSERT INTO friends (
    id,
    name,
    surname,
    email,
    salary,
    city,
    bithday
) VALUES (
    1,
    initcap('OLEG'),
    initcap('FILATOV'),
    lower('FILATOV'),
    1500,
    initcap('MOSCOW'),
    TO_DATE('2-DEC-1989', 'DD-MON-YYYY')
);

/*9. �������� 1 ������ � ������� friends �� ����� ���������� ����� salary
� birthday.*/

INSERT INTO friends (
    id,
    name,
    surname,
    email,
    city
) VALUES (
    2,
    initcap('IVAN'),
    initcap('IVANOV'),
    lower('IVANOV'),
    initcap('MOSCOW')
);

/*10. ��������� commit.*/
commit;

/*11. ������� ������� salary.*/
ALTER TABLE friends DROP COLUMN salary;

/*12. ������� ������� email �������������� (unused).*/
ALTER TABLE friends SET UNUSED COLUMN email;

/*13. ������� ������� birthday �������������� (unused).*/
ALTER TABLE friends SET UNUSED COLUMN bithday;

/*14. ������� �� ������� friends �������������� �������.*/
ALTER TABLE friends DROP UNUSED COLUMNS;

/*15. ������� ������� friends ��������� ������ ��� ������.*/
ALTER TABLE friends READ ONLY;

/*16. ��������� ���������� �������� ����� DML ��������.*/
INSERT INTO friends (
    id,
    name,
    surname,
    email,
    city
) VALUES (
    3,
    initcap('PERT'),
    initcap('PETROV'),
    lower('PETROV'),
    initcap('MOSCOW')
);

/*17. ���������� ������� friends.*/
TRUNCATE TABLE friends;

/*18. ������� ������� friends.*/
DROP TABLE friends;





