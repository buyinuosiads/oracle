第一题
select emp.DEPTNO,dept.DNAME,count(emp.DEPTNO),max(sal),min(sal),sum(sal),avg(sal)
from emp 
join dept on emp.deptno=dept.deptno
GROUP BY emp.DEPTNO,dept.DNAME
第二题
select emp.DEPTNO,dept.DNAME,emp.JOB,count(emp.DEPTNO),max(sal),min(sal),sum(sal),avg(sal)
from emp 
join dept on emp.deptno=dept.deptno
GROUP BY emp.DEPTNO,dept.DNAME,emp.JOB
第三题
select count(*),a.EMPNO,nvl(a.ENAME,'没经理')
from emp a right join emp b on b.mgr=a.empno 
GROUP BY a.EMPNO,a.ENAME