select dept.dname,TEMPTAB2.MAXSAL
from
(select max(tempTab.avgsal) maxsal
from 
(select DEPTNO,avg(sal) avgsal
from EMP
GROUP BY DEPTNO) tempTab) tempTab2
join 
(select DEPTNO,avg(sal) avgsal
from EMP
GROUP BY DEPTNO) tempTab3 on tempTab2.MAXSAL = tempTab3.AVGSAL
join dept on dept.deptno = tempTab3.deptno