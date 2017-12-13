-- select *
-- from emp 
-- where sal>(select sal from emp where ENAME='JONES')
-- 
-- SELECT ENAME
-- from emp 
-- where sal=(select min(sal) from emp )

select ENAME,JOB 
from emp 
where DEPTNO <>10 
and job in (select job from emp where DEPTNO=10 )
