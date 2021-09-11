/*1. Перепишите и запустите данный statemenet для создания таблицы locations2, 
которая будет содержать такие же столбцы, что и locations:
CREATE TABLE locations2 AS (SELECT * FROM locations WHERE 1=2);*/

select * from locations;

CREATE TABLE locations2
    AS
        ( SELECT
            *
        FROM
            locations
        WHERE
            1 = 2
        );
select * from locations2;

/*2. Добавьте в таблицу locations2 2 строки с информацией 
о id локации, адресе, городе, id страны. 
Пусть данные строки относятся к стране Италия.*/
select * from countries;

/*Вставка 2-х строк*/
INSERT INTO locations2 (
    location_id,
    street_address,
    postal_code,
    city,
    country_id
)
    ( SELECT
        location_id,
        street_address,
        postal_code,
        city,
        country_id
    FROM
        locations
    WHERE
        country_id = (
            SELECT
                country_id
            FROM
                countries
            WHERE
                country_name = 'Italy'
        )
    );

select * from locations2;

/*3. Совершите commit.*/
commit;
select * from locations2;

/*4. Добавьте в таблицу locations2 ещё 2 строки, 
не используя перечисления имён столбцов, в которые заносится информация. 
Пусть данные строки относятся к стране Франция. 
При написании значений, где возможно, используйте функции.*/

INSERT INTO locations2 VALUES (
    3000,
    'Palais Royal',
    '75001',
    'Paris',
    NULL,
    'FR'
);

INSERT INTO locations2 VALUES (
    3001,
    'Place Georges-Pompidou',
    '75004',
    'Paris',
    NULL,
    'FR'
);

/*5. Совершите commit.*/

commit;

/*6. Добавьте в таблицу locations2 строки из таблицы locations, 
в которых длина значения столбца state_province больше 9.*/

INSERT INTO locations2
    ( SELECT
        *
    FROM
        locations
    WHERE
        length(state_province) > 9
    );

select * from locations2;

/*7. Совершите commit.*/
commit;

/*8. Перепишите и запустите данный statemenet 
для создания таблицы locations4europe, 
которая будет содержать такие же столбцы, что и locations:
CREATE TABLE locations4europe AS (SELECT * FROM locations WHERE 1=2);*/

CREATE TABLE locations4europe
    AS
        ( SELECT
            *
        FROM
            locations
        WHERE
            1 = 2
        );
select * from locations4europe;

/*9. Одним statement-ом добавьте в таблицу locations2 всю информацию
для всех строк из таблицы locations, 
а в таблицу locations4europe добавьте информацию 
о id локации, адресе, городе, id страны только для тех строк из таблицы locations, 
где города находятся в Европе.*/

select * from regions;
select * from countries;
select * from locations;
select * from locations2;
select * from locations4europe;

insert into locations2 (select * from locations);

/*Поиск region_id Европы*/
select region_id from regions where region_name = 'Europe';

/*Выборка всех country_id из Европы*/
select country_id from countries where region_id = (
select region_id from regions where region_name = 'Europe');

/*Выборка всех локаций из Европы*/
SELECT
    location_id,
    street_address,
    city,
    country_id
FROM
    locations
WHERE
    country_id IN (
        SELECT
            country_id
        FROM
            countries
        WHERE
            region_id = (
                SELECT
                    region_id
                FROM
                    regions
                WHERE
                    region_name = 'Europe'
            )
    );

/*Финальный запрос*/
INSERT INTO locations4europe (
    location_id,
    street_address,
    city,
    country_id
)
    ( SELECT
        location_id,
        street_address,
        city,
        country_id
    FROM
        locations
    WHERE
        country_id IN (
            SELECT
                country_id
            FROM
                countries
            WHERE
                region_id = (
                    SELECT
                        region_id
                    FROM
                        regions
                    WHERE
                        region_name = 'Europe'
                )
        )
    );

/*10. Совершите commit.*/
commit;

select * from locations4europe;

/*11. В таблице locations2 измените почтовый код на любое значение в тех строках,
где сейчас нет информации о почтовом коде.*/

select * from locations2;
select * from locations2 where postal_code is null;

UPDATE locations2 SET postal_code=99999 where postal_code is null;

/*12. Совершите rollback*/
rollback;

/*13. В таблице locations2 измените почтовый код в тех строках, 
где сейчас нет информации о почтовом коде. 
Новое значение должно быть кодом из таблицы locations для строки с id 2600.*/
select * from locations2;
select * from locations2 where postal_code is null;


SELECT DISTINCT
    postal_code
FROM
    locations2
WHERE
    location_id = 2600;


UPDATE locations2
SET
    postal_code = (
        SELECT DISTINCT
            postal_code
        FROM
            locations2
        WHERE
            location_id = 2600
    )
WHERE
    postal_code IS NULL;

/*14. Совершите commit.*/
commit;

/*15. Удалите строки из таблицы locations2, где id страны «IT».*/

select * from locations2;

DELETE from locations2 where country_id = 'IT';

/*16. Создайте первый savepoint.*/

savepoint s1;

/*17. В таблице locations2 измените адрес в тех строках, 
где id локации больше 2500. 
Новое значение должно быть «Sezam st. 18»*/

select * from locations2 where location_id=2500;

UPDATE locations2
SET
    street_address = 'Sezam st. 18'
WHERE
    location_id = 2500;

/*18. Создайте второй savepoint.*/

savepoint s2;

/*19. Удалите строки из таблицы locations2, где адрес равен «Sezam st. 18».*/
DELETE FROM locations2
WHERE
    street_address = 'Sezam st. 18';

/*20. Откатите изменения до первого savepoint.*/

rollback to savepoint s1;

select * from locations2;

/*21. Совершите commit.*/
commit;












