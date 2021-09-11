/*Вывод всех объектов пользователя*/
SELECT
    object_type,
    COUNT(object_type)
FROM
    user_objects
GROUP BY
    object_type
ORDER BY
    object_type;
    
/*Вывод всех объектов, доступных пользователю*/
SELECT
    object_type,
    COUNT(object_type)
FROM
    all_objects
GROUP BY
    object_type
ORDER BY
    object_type;

/*Вывод всех доступных таблиц*/
select table_name from user_tables;

/*Вывод всех столбцов таблиц и их типов*/
SELECT
    column_name,
    data_type,
    nullable
FROM
    user_tab_columns
WHERE
    table_name = 'DEPARTMENTS';


































