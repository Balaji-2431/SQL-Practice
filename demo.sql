select * from emp ;
select * from dept ;

select *
from emp 
where ename = 'SMITH' ;

select empno, ename, sal
from emp
where sal > 2000;

select sal, sal*12 as annual_salary
from emp;



CREATE TABLE STUDENT
(
    STD_ID INT ,
    STD_NAME VARCHAR(50),
    AGE INT);
INSERT INTO STUDENT VALUES(1006,'DEEPAN',21);
SELECT * FROM STUDENT;