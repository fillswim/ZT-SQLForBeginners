SELECT first_name, last_name, salary FROM employees
WHERE first_name like '%&&Char%' AND last_name like '%&Char%';

/*Разопределение переменной в &Char*/
UNDEFINE Char;

/*Вывод всех переменных и присвоенных им значений*/
DEFINE;

/*Определение для конкретной переменной конкретного значения*/
DEFINE Char = 'd';

/*Отключение & как призыва к вводу значений*/
SET DEFINE OFF;

























