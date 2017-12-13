-- select ename,sal,deptno
-- from emp outer
-- where sal > (select avg(sal) from emp inner where outer.DEPTNO = inner.DEPTNO )
-- 第一题
select ENAME,job
from emp outerTab
where sal > (select avg(sal) from emp innerTab where innerTab.job = outerTab.job)
-- 第二题
select ename,SAL
from emp outerTab
where sal = (select min(sal) from emp where emp.deptno = OUTERTAB.DEPTNO)
所有部门名称和人数
select dname,(SELECT count (empno) from emp where DEPTNO=d.DEPTNO)
from dept d 

select empno,ename,(select dname from dept where outerTab.deptno = DEPT.DEPTNO)
from emp outerTab

不是经理的员工
select * from emp a
where 0=(select count(empno) from emp b where b.mgr=a.empno )

select a.EMPNO,a.ENAME,a.SAL from emp a
where a.sal=(select min(sal) from emp b where b.deptno=a.DEPTNO )

查询每个部门工资最低的两个员工编号，姓名，工资。
SELECT *
FROM emp e
WHERE (SELECT COUNT(empno)FROM emp WHERE
deptno=e.deptno AND sal<e.sal)<=1  

select empno,ename,sal,DEPTNO
from EMP outerTab
where 1 >= (select count(*) from emp where EMP.sal < outerTab.sal and outerTab.DEPTNO = EMP.DEPTNO ) --- 公司里面比当前员工工资少的人的个数
order by deptno,sal


