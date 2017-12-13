老师方法
update emp set sal = sal + 500
where  (SELECT dept.loc from dept 
where dept.deptno = emp.deptno) in ('CHICAGO','NEW YORK')
学生方法
update emp set sal = sal + 500
where EMP.DEPTNO 
in 
(SELECT deptno from dept 
where loc in ('CHICAGO','NEW YORK'))

