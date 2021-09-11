select TRIM(trailing 'q' from 'Olegqqqqqqqq') from dual;

select TRIM(leading '*' from '********Olegqqq') from dual;

select TRIM(both '*' from '***Oleg***') from dual;

select TRIM(both ' ' from '         Oleg         ') from dual;

select TRIM('    Oleg            ') from dual;

select TRIM(both 7 from '77885677') from dual;




