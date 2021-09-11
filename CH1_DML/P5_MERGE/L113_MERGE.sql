select * from new_emps;
select * from employees;
delete from new_emps;


INSERT INTO new_emps
    ( SELECT
        employee_id,
        first_name,
        hire_date,
        job_id
    FROM
        employees
    WHERE
        employee_id < 110
    );


/*���� ���������� ���������, �������� update start_date � new_emps
  ���� job �������� 'IT', �� ������ ���������
  ���� ��� ����������, �� � new_emps ��������� ��� ������*/
MERGE INTO new_emps ne
USING employees e ON ( ne.emp_id = e.employee_id )
WHEN MATCHED THEN UPDATE
SET ne.start_date = sysdate 
DELETE WHERE
    ne.job LIKE '%IT%'
WHEN NOT MATCHED THEN
INSERT (
    emp_id,
    name,
    start_date,
    job )
VALUES
    ( employee_id,
      last_name,
      hire_date,
      job_id );































