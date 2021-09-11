/*Изпользование одного значения для замены в нескольких местах.
  Выюор запоминается*/
SELECT first_name, last_name, salary FROM employees
WHERE first_name like '%&&Char%' AND last_name like '%&Char%'; 

/*Использование & в SELECT списке*/
SELECT first_name, last_name, &column FROM employees
ORDER BY &column2;






























