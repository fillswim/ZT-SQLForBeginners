select * from countries;
select * from regions;

/*������ ������ �� ������ ������� ������������ 
� ������ ������� �� ������ �������
Cartesian product - ��������� ������������*/
select * from countries CROSS JOIN regions
order by country_id;

select * from jobs;
select * from countries;

/*���������� CROSS JOIN �.�. � �������� ��� ���������� ��������*/
select * from countries NATURAL JOIN jobs;



































-