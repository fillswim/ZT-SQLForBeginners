select * from employees;

/*Создание таблицы*/
CREATE TABLE students (
    student_id INTEGER,
    name varchar2(15),
    start_date date DEFAULT (SYSDATE),
    scholarship number(6, 2),
    avg_score number(4, 2) DEFAULT 5
);

SELECT * FROM students;

INSERT INTO students (
    student_id,
    name,
    start_date,
    scholarship,
    avg_score
) VALUES (
    1,
    'Oleg',
    to_date('18-SEP-19'),
    1500.3,
    7.8
);

INSERT INTO students (
    student_id,
    name,
    start_date,
    scholarship,
    avg_score
) VALUES (
    2,
    'Ivan',
    to_date('19-SEP-19'),
    800.356,
    8
);

/*Работа с дефолтными значениями*/
INSERT INTO students (
    student_id,
    name,
    scholarship
) VALUES (
    3,
    'Nina',
    555
);

commit;


























