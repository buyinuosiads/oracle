select emp.ENAME,dept.DNAME,dept.LOC,salgrade.GRADE
from emp
join dept on emp.DEPTNO=dept.DEPTNO
join salgrade on 
emp.sal BETWEEN SALGRADE.LOSAL and SALGRADE.HISAL
where  dept.LOC='CHICAGO'