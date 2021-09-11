/*Использование подстановки значений &ID*/
SELECT
    first_name,
    last_name,
    salary
FROM
    employees
WHERE
    employee_id = &ID;

/*Использование подстановки значений &name*/
SELECT
    first_name,
    last_name,
    salary
FROM
    employees
WHERE
    first_name = '&Name';


































