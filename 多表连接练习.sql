select emp.ENAME,dept.DNAME,dept.DEPTNO 
from emp,dept 
WHERE emp.DEPTNO=dept.DEPTNO

select emp.ENAME,dept.LOC,emp.COMM 
from emp,dept
 WHERE emp.DEPTNO=dept.DEPTNO and dept.LOC='CHICAGO'and  comm is not NULL

select emp.ENAME,dept.LOC 
from emp,dept 
where emp.DEPTNO=dept.DEPTNO and emp.ENAME LIKE '%A%'