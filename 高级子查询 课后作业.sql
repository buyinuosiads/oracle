select a.ENAME,a.DEPTNO
from emp a
where sal > 
(select avg(sal) avgsal 
 from emp b where a.DEPTNO=b.deptno)

		
select ename,(select emp.ename from emp where outerTab.mgr = emp.EMPNO)
from EMP outerTab

select a.ENAME,sal
from emp a
where sal=(select max(sal) from emp b where a.DEPTNO=b.deptno )			
	
select OUTERTAB.ename,OUTERTAB.sal,OUTERTAB.DEPTNO
FROM EMP outerTab -- 这个部门中工资第一高或者第二高的员工
where 1 >= (select count(*) from emp where EMP.sal > outerTab.sal )
order by deptno,sal