/*1. �������� ������ �� department_id � ����������� � ������������
���������, � ����� ������ � ����� ������� ����� ������� �� ������ �
� ����������� �����������. ����������� �� ���������� �����������
(�� ��������).*/
SELECT
    department_id,
    MAX(salary),
    MIN(salary),
    MIN(hire_date),
    MAX(hire_date),
    COUNT(*) count
FROM
    employees
GROUP BY
    department_id
ORDER BY
    count DESC;

/*2. �������� ���������� � ������ ����� ����� ���������� � ����������
���, ������� ���������� � ���� �����. �������� ������ ��� ����, ���
���������� ���, ������������ � �� ������ 1. ����������� ��
����������.*/
SELECT
    substr(first_name, 1, 1) first_char,
    COUNT(*) count
FROM
    employees
GROUP BY
    substr(first_name, 1, 1)
HAVING
    ( COUNT(*) ) > 1
ORDER BY
    count;

/*3. �������� id ������������, �/� � ���������� �����������, �������
�������� � ����� � ��� �� ������������ � �������� ����������
��������.*/
SELECT
    department_id,
    salary,
    COUNT(*)
FROM
    employees
GROUP BY
    department_id,
    salary;

/*4. �������� ���� ������ � ���������� �����������, ������� ������� ��
������ � ���� ����.*/
SELECT
    to_char(hire_date, 'Day'),
    COUNT(*)
FROM
    employees
GROUP BY
    to_char(hire_date, 'Day');

/*5. �������� id �������������, � ������� �������� ������ 30
����������� � ����� �� �/�-� ������ 300000.*/
SELECT
    department_id,
    COUNT(*),
    SUM(salary)
FROM
    employees
GROUP BY
    department_id
HAVING COUNT(*) > 30
       AND SUM(salary) > 300000;

/*6. �� ������� countries ������� ��� region_id, ��� ������� ����� ����
���� �� ����� ������ 50��.*/
SELECT
    region_id,
    SUM(length(country_name))
FROM
    countries
GROUP BY
    region_id
HAVING
    SUM(length(country_name)) > 50;

/*7. �������� ���������� � job_id � ����������� ������� ��������
���������� ��� ������� job_id.*/
SELECT
    job_id,
    AVG(salary)
FROM
    employees
GROUP BY
    job_id;
    
/*8. �������� ������ id �������������, � ������� �������� ����������
���������� (>1) job_id.*/
SELECT
    department_id,
    COUNT(*)
FROM
    employees
GROUP BY
    department_id
HAVING
    COUNT(DISTINCT job_id) > 1;

/*9. �������� ���������� � department, job_id, ������������ �
����������� �/� ��� ���� ��������� department_id - job_id, ���
������� �/� ������ 10000.*/
SELECT
    department_id,
    job_id,
    MIN(salary),
    MAX(salary)
FROM
    employees
GROUP BY
    department_id,
    job_id
HAVING
    AVG(salary) > 10000;
    
/*10. �������� ������ manager_id, � ������� ������� �������� ���� ���
�����������, �� ������� ������������, ��������� � ���������� �� 6000 �� 9000.*/
SELECT
    manager_id,
    AVG(salary)
FROM
    employees
WHERE
    commission_pct IS NULL
GROUP BY
    manager_id
HAVING
    AVG(salary) BETWEEN 6000 AND 9000;

/*11. �������� ���������� �� ����� (�� ��������) ������������ ��������
����� ���� ������� ������� �� �������������.*/
SELECT
    MAX(round(AVG(salary), - 3))
FROM
    employees
GROUP BY
    department_id;














































































