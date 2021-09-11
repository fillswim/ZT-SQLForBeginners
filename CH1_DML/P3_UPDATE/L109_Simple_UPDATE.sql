select * from employees;
select * from jobs;

UPDATE employees SET salary=10000 where employee_id=210;
UPDATE employees SET salary=salary * 2 where employee_id=210;

UPDATE employees SET salary=27000, job_id='FI_MGR' where employee_id=210;

/*Обновление нескольких строк*/
UPDATE employees SET salary=8000 where employee_id>=210;

/*Обновление информации для всей таблицы*/
UPDATE employees SET salary=8000;



























