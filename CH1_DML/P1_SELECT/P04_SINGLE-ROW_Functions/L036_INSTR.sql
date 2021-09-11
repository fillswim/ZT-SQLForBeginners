select * from employees;

select * from employees where INSTR(job_id, 'PROG')=4;

select INSTR('Oleg Filatov', 'l') from dual;

select * from employees where INSTR(hire_date, '05')=4;

select * from employees where INSTR(salary, '2')=2;

/*С указанием начальной позиции*/
select INSTR('Oleg Filatov', 'l', 4) from dual;

/*С указанием начальной позиции и номера вхождения*/
select INSTR('Oleg Filatov', 'l', 1, 2) from dual;




















