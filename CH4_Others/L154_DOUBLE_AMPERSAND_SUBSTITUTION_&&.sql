/*������������� ������ �������� ��� ������ � ���������� ������.
  ����� ������������*/
SELECT first_name, last_name, salary FROM employees
WHERE first_name like '%&&Char%' AND last_name like '%&Char%'; 

/*������������� & � SELECT ������*/
SELECT first_name, last_name, &column FROM employees
ORDER BY &column2;






























