/*������ lock �� ������, ����������� ��� ���������*/
select * from new_emps for UPDATE;
UPDATE new_emps SET emp_id = 1500 where emp_id=104;

/*lock ��������� �� ���������� ����������*/
commit;






























