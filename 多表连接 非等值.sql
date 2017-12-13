select emp.ename,dept.dname,STDUENT.SNAME
from emp,dept,stduent 
where emp.deptno=dept.deptno and emp.empno=stduent.empno

SELECT emp.ENAME,emp.SAL,salgrade.GRADE
from emp,salgrade
where emp.sal 
BETWEEN SALGRADE.LOSAL and SALGRADE.HISAL

select emp.ENAME,emp.SAL,salgrade.GRADE,dept.LOC
from emp,dept,salgrade
where emp.DEPTNO=dept.DEPTNO 
and emp.sal BETWEEN SALGRADE.LOSAL and SALGRADE.HISAL
ORDER BY SALGRADE.GRADE