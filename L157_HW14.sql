/*1. Создать таблицу test200 со следующими столбцами: 
id, name1, name2, address1, address2. 
1-ый должен быть типа integer, остальные - varchar2.*/
CREATE TABLE test200 (
    id        INTEGER,
    name1     VARCHAR2(15),
    name2     VARCHAR2(15),
    address1  VARCHAR2(15),
    address2  VARCHAR2(15)
);

/*2. Напишите такой шаблон для изменения строк, который при каждом
запуске будет спрашивать, значение какого столбца меняется, на какое
значение меняется и для какого значения id меняется.*/
INSERT INTO test200 (
    id,
    name1,
    name2,
    address1,
    address2
) VALUES (
    1,
    'Mike',
    'Pete',
    'Moscow',
    'London'
);
INSERT INTO test200 (
    id,
    name1,
    name2,
    address1,
    address2
) VALUES (
    2,
    'Nick',
    'Nick',
    'Paris',
    'Paris'
);
INSERT INTO test200 (
    id,
    name1,
    name2,
    address1,
    address2
) VALUES (
    3,
    'Kate',
    'Nate',
    'New York',
    'Las Vegas'
);
INSERT INTO test200 (
    id,
    name1,
    name2,
    address1,
    address2
) VALUES (
    4,
    'Mate',
    'Bone',
    'Rome',
    'Berlin'
);

SELECT * FROM test200;

UPDATE test200
SET
    &column = '&Value'
WHERE
    id = &id;

/*3. Напишите select, в котором требуется вывести всю информацию из
таблицы test200 для строк, у которых столбцы name1 и name2 равны
одному и тому же значению, а также столбцы address1 и address2 тоже
равны одному и тому же значению. Напишите такой шаблон для этого
statement-а, который при запуске один раз спросит всего 2 значения –
одно для первых 2х столбцов и второе для других 2х столбцов.*/
SELECT
    *
FROM
    test200
WHERE
    ( name1 = '&&Name'
      AND name2 = '&Name' )
    AND ( address1 = '&&Address'
          AND address2 = '&Address' );

/*4. Напишите команду/ды, которая удаляет сессионные значения для
наших переменных.*/
UNDEFINE Name;
UNDEFINE Address;



























