select * from employees;

select * from employees where INSTR(job_id, 'PROG')=4;

select INSTR('Oleg Filatov', 'l') from dual;

select * from employees where INSTR(hire_date, '05')=4;

select * from employees where INSTR(salary, '2')=2;

/*� ��������� ��������� �������*/
select INSTR('Oleg Filatov', 'l', 4) from dual;

/*� ��������� ��������� ������� � ������ ���������*/
select INSTR('Oleg Filatov', 'l', 1, 2) from dual;




















