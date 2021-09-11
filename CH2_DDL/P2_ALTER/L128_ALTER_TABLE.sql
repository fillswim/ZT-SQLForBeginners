SELECT * FROM students;

/*Добавление курса в таблицу students*/
ALTER TABLE students ADD (
    course NUMBER DEFAULT 3
);

/*Изменеие столбца*/
ALTER TABLE students MODIFY (
    avg_score NUMBER(5,3)
);

/*Отключение дефолтного значения*/
ALTER TABLE students MODIFY (
    start_date date DEFAULT null
);

INSERT INTO students(student_id, name)
VALUES(4, 'Vova');

/*Удаление столбца из таблицы*/
ALTER TABLE students DROP COLUMN scholarship;

/*Сделать колонку неиспользуемой - невидимой*/
ALTER TABLE students SET UNUSED COLUMN start_date;

/*Удаление неиспользуемых колонок*/
ALTER TABLE students DROP UNUSED COLUMNS;

/*Изменение названия колонки*/
ALTER TABLE students RENAME COLUMN student_id TO id;

/*Сделать таблицу доступной только для select-а, недоступной для изменений
  Но таблицу можно удалить*/
ALTER TABLE students READ ONLY;





























