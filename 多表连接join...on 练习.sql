select * from emp 
join dept on emp.DEPTNO=dept.DEPTNO

select * from emp 
join dept on emp.DEPTNO=dept.DEPTNO
where dept.loc='CHICAGO'
and emp.comm is not NULL

select * from emp 
join dept on emp.DEPTNO=dept.DEPTNO
where emp.ENAME like '%A%'