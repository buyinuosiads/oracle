第一题
SELECT dept.DNAME,avg(sal)
from emp 
join dept on emp.DEPTNO=dept.DEPTNO
GROUP BY dept.DNAME
HAVING avg(sal)>2500
第二题
SELECT job,avg(sal)
from emp 
where job not LIKE'SA%'
GROUP BY job 
HAVING avg(sal)>2500
ORDER BY avg(sal) DESC
第三题
select dept.DNAME,min(sal),round(max(sal))
from emp 
join dept on emp.DEPTNO=dept.DEPTNO
GROUP BY dept.DNAME
HAVING count(*)>2
第四题
select job,sum(sal)
from emp 
where job<>'SALESMAN'
GROUP BY job 
HAVING sum(sal)>2500
-- 第五题
-- 显示经理号码和经理姓名，这个经理所管理员工 的最低工资，没有经理的KING也要显示，不包括最低工资小于3000的，按最低工资由高到低排序。
select e.empno,e.ename,min(d.sal)
from emp e 
right 
join emp d on d.mgr = e.empno
group by e.empno,e.ename
having(min(d.sal)>=3000)
order by min(d.sal) desc   --*没明白*
第六题
select dept.DNAME,max(sal),min(sal),max(sal)-min(sal)
from emp 
join dept on emp.DEPTNO=dept.DEPTNO
GROUP BY dept.DNAME



