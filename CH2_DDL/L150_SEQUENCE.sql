CREATE SEQUENCE s1;

/*Будет всегда уникальным для всех сессий*/
SELECT s1.nextval FROM dual;

/*Последнее использованное значение в текущей сессии*/
SELECT s1.currval FROM dual;

DROP TABLE students;

/*Создание таблицы студентов*/
CREATE TABLE students (
    id          NUMBER,
    name        VARCHAR2(25),
    course      NUMBER,
    faculty_id  INTEGER
);

/*Создание таблицы факультетов*/
CREATE TABLE faculties (
    id    NUMBER,
    name  VARCHAR2(15)
);

/*Создание последовательностей*/
CREATE SEQUENCE seq_st;
CREATE SEQUENCE seq_faculty START WITH 20 INCREMENT BY 5;

SELECT * FROM faculties;

/*Добавление факультетов*/
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

/*Добавление студентов 
  Использование навого значения для студентов 
  и текущего значения для факультетов*/
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

































