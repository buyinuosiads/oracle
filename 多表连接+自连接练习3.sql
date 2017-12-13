第一题
select worker.ENAME,worker.EMPNO,manager.ename,manager.empno,dept.LOC
from emp worker
join dept on worker.DEPTNO=dept.DEPTNO
join emp manager on worker.mgr= manager.empno
where dept.LOC='NEW YORK' or  dept.LOC='CHICAGO'
第二题
select worker.ENAME,worker.EMPNO,manager.ename,manager.empno
from emp worker
join dept on worker.DEPTNO=dept.DEPTNO
left join emp manager on worker.mgr= manager.empno
where dept.LOC='NEW YORK' or  dept.LOC='CHICAGO' 