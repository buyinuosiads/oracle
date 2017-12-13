select tempTab2.ENAME,tempTab2.HIREDATE,DEPT.DNAME,TEMPTAB2.sal
from 
(select rownum rn, tempTab.* from (select * from emp order by sal desc) tempTab where rownum <= 15) tempTab2
join dept on DEPT.deptno = tempTab2.deptno
where tempTab2.rn > 10