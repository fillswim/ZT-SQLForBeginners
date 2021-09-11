select * from new_emps;

DELETE FROM new_emps
WHERE
    job IN (
        SELECT DISTINCT
            job_id
        FROM
            employees
        WHERE
            department_id IN (
                SELECT
                    department_id
                FROM
                    departments
                WHERE
                    manager_id = 100
            )
    );








































