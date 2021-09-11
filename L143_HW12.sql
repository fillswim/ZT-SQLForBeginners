select * from v$version;

/*1. ������� ������� address �� ���������� ���������: 
id, country, city.
��� �������� ������� �������� �� inline ������ unique constraint �
������ ad_id_un �� ������� id.*/
CREATE TABLE address (
    id NUMBER CONSTRAINT ad_id_un UNIQUE,
    country VARCHAR2(15),
    city VARCHAR2(15)
);

/*2. ������� ������� friends �� ���������� ���������: id, name, email,
address_id, birthday. 
��� �������� ������� �������� �� inline ������ foreign key constraint 
�� ������� address_id, ������� ��������� �� ������� id �� ������� address, 
����������� ����� �on delete set null�.
����� ��� �������� ������� �������� �� table ������ check constraint
��� �������� ����, ��� ����� ����� ������ ���� ������ 3-�.*/
CREATE TABLE friends (
    id NUMBER,
    name VARCHAR2(15),
    email VARCHAR2(15),
    address_id NUMBER REFERENCES address(id) ON DELETE SET NULL,
    birthday DATE,
    CHECK (LENGTH(name) >= 3)
);

/*3. �������� ���������� ������ �� ������� id �� ������� friends.*/
CREATE UNIQUE INDEX fr_in1 ON friends(id);

/*4. � ������� ����������� �add� ������� �alter table� ��������
constraint primary key � ��������� fr_id_pk �� ������� id �� �������
friends.*/
ALTER TABLE friends ADD CONSTRAINT fr_id_pk PRIMARY KEY (id);

/*5. �������� ������ � ��������� fr_email_in �� ������� email �� �������
friends.*/
CREATE INDEX fr_email_in ON friends(email);

/*6. � ������� ����������� �modify� ������� �alter table� ��������
constraint not null � ��������� fr_email_nn �� ������� email �� �������
friends.*/
ALTER TABLE friends MODIFY(email CONSTRAINT fr_email_nn NOT NULL);

/*7. ������� ������� friends.*/
DROP TABLE friends;

/*8. ������� ������� address.*/
DROP TABLE address;








