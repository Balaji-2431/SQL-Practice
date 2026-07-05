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
