select TO_NUMBER('4555.77') from dual;

select TO_NUMBER('$4555.77', '$9999999999999999.99') from dual;

select TO_NUMBER('$4,555.77', '$999,999,999.99') from dual;

select TO_NUMBER('<4,555.77>', '999,999,999.99PR') from dual;

select TO_CHAR(3.17, '99.9') from dual;

select TO_NUMBER('3.17', '99.99') from dual;















