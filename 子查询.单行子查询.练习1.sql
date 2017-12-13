-- 1*
-- SELECT ENAME,HIREDATE
-- from emp 
-- where HIREDATE= 
-- 								(select min(HIREDATE)
-- 								 from emp )
-- 	
-- 2*					
-- select emp.ENAME,emp.SAL,dept.DNAME
-- from emp 
-- join dept on emp.DEPTNO=dept.DEPTNO
-- where dept.loc='CHICAGO' and emp.sal>
-- 																		(select sal 
-- 																		 from emp
-- 																		 WHERE ename='SMITH')	
-- 3*
-- select ENAME,HIREDATE
-- from emp 
-- where HIREDATE<
-- 								(select min(HIREDATE)
-- 								 from emp 
-- 									where deptno=20 GROUP BY DEPTNO)
-- 4*
SELECT emp.deptno,dept.DNAME,COUNT(*)
from emp 
join dept on emp.DEPTNO=dept.DEPTNO
GROUP BY emp.DEPTNO,dept.DNAME
HAVING COUNT(*)>
								(select avg(COUNT(*))
								from emp 
								GROUP BY deptno)  --不明白
													