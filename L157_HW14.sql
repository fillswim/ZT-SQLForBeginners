/*1. ������� ������� test200 �� ���������� ���������: 
id, name1, name2, address1, address2. 
1-�� ������ ���� ���� integer, ��������� - varchar2.*/
CREATE TABLE test200 (
    id        INTEGER,
    name1     VARCHAR2(15),
    name2     VARCHAR2(15),
    address1  VARCHAR2(15),
    address2  VARCHAR2(15)
);

/*2. �������� ����� ������ ��� ��������� �����, ������� ��� ������
������� ����� ����������, �������� ������ ������� ��������, �� �����
�������� �������� � ��� ������ �������� id ��������.*/
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

/*3. �������� select, � ������� ��������� ������� ��� ���������� ��
������� test200 ��� �����, � ������� ������� name1 � name2 �����
������ � ���� �� ��������, � ����� ������� address1 � address2 ����
����� ������ � ���� �� ��������. �������� ����� ������ ��� �����
statement-�, ������� ��� ������� ���� ��� ������� ����� 2 �������� �
���� ��� ������ 2� �������� � ������ ��� ������ 2� ��������.*/
SELECT
    *
FROM
    test200
WHERE
    ( name1 = '&&Name'
      AND name2 = '&Name' )
    AND ( address1 = '&&Address'
          AND address2 = '&Address' );

/*4. �������� �������/��, ������� ������� ���������� �������� ���
����� ����������.*/
UNDEFINE Name;
UNDEFINE Address;



























