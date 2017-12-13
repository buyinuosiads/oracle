--第一题
-- select EMPNO,ENAME,SAL
-- from emp 
-- where sal >
-- (select SAL
-- from emp 
-- where EMPNO='7782')
-- and 
-- job in (select job from emp where EMPNO='7369' )
--第三题
-- select emp.DEPTNO,dept.DNAME,min(sal)
-- from emp 
-- join dept on emp.DEPTNO=dept.DEPTNO
-- HAVING  min(sal)> (select min(sal) from emp where DEPTNO=10)
-- GROUP BY emp.DEPTNO,dept.DNAME
-- 第五题
-- select ename,sal
-- from emp 
-- join 
-- where ename in
-- (select a.ename
-- from emp a
-- join emp b on a.mgr=b.EMPNO 
-- WHERE b.ENAME='KING' ) 
-- 第七题
-- SELECT * from emp 
-- join dept on emp.DEPTNO=dept.DEPTNO
-- where loc in (select loc from dept where loc='NEW YORK'  )
-- 第九题
-- SELECT EMPNO,ENAME from emp 
--  where sal > (select avg(sal)	from emp )
-- 第十一题
-- select emp.ename,emp.job from emp 
-- join dept on emp.deptno=dept.deptno
-- where dname='RESEARCH'
-- 
第十九题








