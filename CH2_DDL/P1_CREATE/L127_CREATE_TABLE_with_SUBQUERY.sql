select * from new_emps;

CREATE TABLE new_emps2
    AS
        ( SELECT
            employee_id,
            first_name,
            last_name,
            salary,
            department_id
        FROM
            employees
        );

select * from new_emps2;

CREATE TABLE new_dep
    AS
        ( SELECT
            department_name,
            MAX(salary)     max_salary,
            MIN(salary)     min_salary
        FROM
                 employees e
            JOIN departments d ON ( e.department_id = d.department_id )
        GROUP BY
            department_name
        );
    
select * from new_dep;

/*Создание копию структцры таблицы (используется невыполнимое условие)*/
CREATE TABLE regions2
    AS
        ( SELECT
            *
        FROM
            regions
        WHERE
            1 = 2
        );






























