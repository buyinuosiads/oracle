select * from emp where hiredate between '1982-01-01' and '1985-12-31' 
select * from emp where sal between 3000 and 5000
select * from emp where deptno in (10,20)
select * from emp where mgr in (7902,7566,7788)
select * from emp where (sal>2000 and job='MANAGER') or job='SALESMAN'
select * from emp where sal>2000 and (job='MANAGER' or job='SALESMAN')
select * from emp where deptno in (10,20) and sal BETWEEN 3000 and 5000
select * from emp where (HIREDATE BETWEEN '1981-01-01' and '1981-12-31') AND job NOT LIKE('SALES%')
select * from emp where (job='SALESMAN'or job='MANAGER') and(deptno=10 or deptno=20)and  ename like ('%A%')
select * from emp where deptno in (10,20)  order by sal 
select * from emp where (sal BETWEEN 2000 and 3000) and deptno not in 10 ORDER BY DEPTNO,SAL DESC
select * from emp where (HIREDATE BETWEEN '1982-01-01' and '1983-12-31') AND (job LIKE'SALES%'or job LIKE'MAN%') ORDER BY HIREDATE DESC