select * from employees;

select * from countries;

INSERT INTO countries VALUES ('SW', 'Sweden', 1);
INSERT INTO countries VALUES ('GR', 'Greece');

INSERT INTO countries (country_id, country_name, region_id) 
VALUES ('NR', 'Norway', 1);

INSERT INTO countries (region_id, country_name, country_id) 
VALUES (1, 'Greece', 'GR');

INSERT INTO countries (country_id, country_name)
VALUES('PR', 'Portugal');

INSERT INTO countries (country_name, region_id)
VALUES('Finland', 1);

INSERT INTO countries VALUES('FL', 'Finland', null);

select * from regions;
INSERT INTO countries (country_id, country_name, region_id) 
VALUES ('CR', 'Croatia', 5);


























