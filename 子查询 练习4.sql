-- -- 第二题
-- select ename,EMP.job (from子句查询老师答案)
-- from EMP
-- join 
-- (select job,mgr
-- from emp 
-- where ename in ('SCOTT','BLAKE')) tempTab 
-- on EMP.job = TEMPTAB.job and EMP.MGR = TEMPTAB.mgr
-- where ename not in ('SCOTT','BLAKE')
-- （学生答案）
-- select ename,job
-- from emp
-- where ename not in ('SCOTT','BLAKE')
-- and (job,mgr) = any(select job,mgr from emp where ename in ('SCOTT','BLAKE'))
-- 显示每位经理管理员工的最低工资，及最低工资者的姓名
-- SELECT emp.employee, emp.salary, emp.department, emp.manager
-- FROM employees emp 
-- WHERE NOT EXISTS
-- 				(SELECT man.salary 
-- 				 FROM employees man 
-- WHERE man.manager_id=emp.manager_id 
-- AND man.salary
-- (SELECT hire_date 
-- FROM employees 
-- WHERE salary=(SELECT MAX(salary) FROM employees)
-- )

--  select ename,sal 
-- from emp 
-- where (mgr,sal) in 
-- (select mgr,min(sal) from emp group by mgr)
1、显示每位经理管理员工的最低工资，及最低工资者的姓名
第一种答案
select emp.ENAME,emp.SAL
from emp 
where (mgr,sal)in 
(select emp.MGR,min (sal)
from emp 
GROUP BY emp.mgr )

第二种答案
select EMP.ename,EMP.sal
from EMP
join (select EMP.mgr, min(sal) minsal
from EMP
GROUP BY EMP.mgr) tempTab on EMP.mgr = tempTab.mgr and EMP.sal = tempTab.minsal
