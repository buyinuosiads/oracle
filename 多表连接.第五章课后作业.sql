-- 第四题
select worker.ENAME,worker.HIREDATE,manager.ENAME,manager.HIREDATE
from emp worker
join emp manager on worker.MGR=manager.EMPNO
where worker.HIREDATE<manager.HIREDATE
第一题
select worker.ENAME,dept.DNAME,manager.ename
from emp worker
join dept on worker.deptno=dept.deptno 
join emp manager on worker.MGR=manager.EMPNO
where worker.ENAME='SMITH'
第三题
select manager.ENAME,worker.ENAME,manager.ENAME
from emp manager
join emp worker on manager.EMPNO=worker.MGR
where manager.ENAME='KING' or manager.ENAME='FORD'