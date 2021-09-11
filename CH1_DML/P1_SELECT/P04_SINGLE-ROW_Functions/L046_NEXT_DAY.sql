select sysdate, NEXT_DAY(sysdate, 2) from dual;

select sysdate, NEXT_DAY(sysdate, 'ѕнд') from dual;