/*Работники, получающие больше средней зарплаты в фирме*/
SELECT
    first_name,
    last_name,
    salary
FROM
    employees
WHERE
    salary > (
        SELECT
            AVG(salary)
        FROM
            employees
    );

/*Работники, получающие больше средней зарплаты в своем же департаменте*/
SELECT
    e1.first_name,
    e1.last_name,
    e1.salary
FROM
    employees e1
WHERE
    salary > (
        SELECT
            AVG(e2.salary)
        FROM
            employees e2
        WHERE
            e2.department_id = e1.department_id
    );




























