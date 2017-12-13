第一题
select emp.DEPTNO,dept.DNAME,count(emp.DEPTNO)
from emp 
join dept on emp.DEPTNO=dept.DEPTNO
GROUP BY emp.DEPTNO,dept.DNAME
HAVING count(emp.DEPTNO)>2

第二题
select emp.DEPTNO,dept.DNAME,count(emp.DEPTNO),avg(sal)
from emp 
join dept on emp.DEPTNO=dept.DEPTNO
GROUP BY emp.DEPTNO,dept.DNAME
HAVING count(emp.DEPTNO)>2 and avg(sal)>2000
ORDER BY count(emp.DEPTNO) 