SELECT first_name, last_name, salary FROM employees
WHERE first_name like '%&&Char%' AND last_name like '%&Char%';

/*�������������� ���������� � &Char*/
UNDEFINE Char;

/*����� ���� ���������� � ����������� �� ��������*/
DEFINE;

/*����������� ��� ���������� ���������� ����������� ��������*/
DEFINE Char = 'd';

/*���������� & ��� ������� � ����� ��������*/
SET DEFINE OFF;

























