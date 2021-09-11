/*1. ���������� � ��������� ������ statemenet ��� �������� ������� locations2, 
������� ����� ��������� ����� �� �������, ��� � locations:
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

/*2. �������� � ������� locations2 2 ������ � ����������� 
� id �������, ������, ������, id ������. 
����� ������ ������ ��������� � ������ ������.*/
select * from countries;

/*������� 2-� �����*/
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

/*3. ��������� commit.*/
commit;
select * from locations2;

/*4. �������� � ������� locations2 ��� 2 ������, 
�� ��������� ������������ ��� ��������, � ������� ��������� ����������. 
����� ������ ������ ��������� � ������ �������. 
��� ��������� ��������, ��� ��������, ����������� �������.*/

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

/*5. ��������� commit.*/

commit;

/*6. �������� � ������� locations2 ������ �� ������� locations, 
� ������� ����� �������� ������� state_province ������ 9.*/

INSERT INTO locations2
    ( SELECT
        *
    FROM
        locations
    WHERE
        length(state_province) > 9
    );

select * from locations2;

/*7. ��������� commit.*/
commit;

/*8. ���������� � ��������� ������ statemenet 
��� �������� ������� locations4europe, 
������� ����� ��������� ����� �� �������, ��� � locations:
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

/*9. ����� statement-�� �������� � ������� locations2 ��� ����������
��� ���� ����� �� ������� locations, 
� � ������� locations4europe �������� ���������� 
� id �������, ������, ������, id ������ ������ ��� ��� ����� �� ������� locations, 
��� ������ ��������� � ������.*/

select * from regions;
select * from countries;
select * from locations;
select * from locations2;
select * from locations4europe;

insert into locations2 (select * from locations);

/*����� region_id ������*/
select region_id from regions where region_name = 'Europe';

/*������� ���� country_id �� ������*/
select country_id from countries where region_id = (
select region_id from regions where region_name = 'Europe');

/*������� ���� ������� �� ������*/
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

/*��������� ������*/
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

/*10. ��������� commit.*/
commit;

select * from locations4europe;

/*11. � ������� locations2 �������� �������� ��� �� ����� �������� � ��� �������,
��� ������ ��� ���������� � �������� ����.*/

select * from locations2;
select * from locations2 where postal_code is null;

UPDATE locations2 SET postal_code=99999 where postal_code is null;

/*12. ��������� rollback*/
rollback;

/*13. � ������� locations2 �������� �������� ��� � ��� �������, 
��� ������ ��� ���������� � �������� ����. 
����� �������� ������ ���� ����� �� ������� locations ��� ������ � id 2600.*/
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

/*14. ��������� commit.*/
commit;

/*15. ������� ������ �� ������� locations2, ��� id ������ �IT�.*/

select * from locations2;

DELETE from locations2 where country_id = 'IT';

/*16. �������� ������ savepoint.*/

savepoint s1;

/*17. � ������� locations2 �������� ����� � ��� �������, 
��� id ������� ������ 2500. 
����� �������� ������ ���� �Sezam st. 18�*/

select * from locations2 where location_id=2500;

UPDATE locations2
SET
    street_address = 'Sezam st. 18'
WHERE
    location_id = 2500;

/*18. �������� ������ savepoint.*/

savepoint s2;

/*19. ������� ������ �� ������� locations2, ��� ����� ����� �Sezam st. 18�.*/
DELETE FROM locations2
WHERE
    street_address = 'Sezam st. 18';

/*20. �������� ��������� �� ������� savepoint.*/

rollback to savepoint s1;

select * from locations2;

/*21. ��������� commit.*/
commit;












