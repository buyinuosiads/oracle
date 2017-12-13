-- select *
-- from emp  
--  where HIREDATE not BETWEEN '1981-01-01' and '1981-12-31'    and (DEPTNO,JOB) in     (SELECT deptno,job from emp 
--             where HIREDATE BETWEEN '1981-01-01' and '1981-12-31')
-- 查询工资比自己部门平均工资高的员工姓名，工资，部门编号，部门平均工资
select a.ENAME,a.SAL,a.DEPTNO,b.AVGSAL
from emp a
join (select deptno,avg(sal) as avgsal from emp GROUP BY DEPTNO) b
on a.DEPTNO=b.DEPTNO 
where a.sal>b.AVGSAL