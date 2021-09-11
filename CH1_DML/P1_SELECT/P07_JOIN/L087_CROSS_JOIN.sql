select * from countries;
select * from regions;

/*Каждая строка из первой таблицы объединяется 
с каждой строкой из второй таблицы
Cartesian product - Декартово произведение*/
select * from countries CROSS JOIN regions
order by country_id;

select * from jobs;
select * from countries;

/*Получается CROSS JOIN т.к. в таблицах нет одинаковых столбцов*/
select * from countries NATURAL JOIN jobs;



































-