
--jonin 어떤 테이블을 기준으로 다른 테이블에 있는 row를 찾아오는 것 

select *from emp;

select ename,dname from emp,dept order by ename; -- 무작위로 두 테이블을 붙여버림 카티시안곱

select ename,dname from emp,dept 
where emp.deptno = dept.deptno  -- 정확한 join 조건 
order by ename;

select * from emp,dept 
where emp.deptno = dept.deptno
order by ename;

-- 조금 다른 조건도 포함된 조인

select player.player_name,team.team_name
from player ,team     
where player.team_id = team.team_id and player.team_id > 'Ko9'
order by player.player_name;

-- 테이블 별칭 기능

select P.player_name
from player P  
order by P.player_name;

-- 범위 검색을 이용한 조인 처리 
--losal,hisal 사이의 sal 값에 따른 grade 처리 
select ename, sal from emp;
select *from salgrade;

select e.ename ,e.sal,s.* from emp e,salgrade s
where e.sal between s.losal and s.hisal;

--outer join 조인조건을 만족하지 않는 자료 또한 표현 

select e.empno,e.ename,e.job, e.deptno,d.deptno,d.dname
from dept d , emp e 
where d.deptno = e.deptno(+);


select * from dept;
select * from locations;

select d.dname,l.city 
from dept d , locations l
where d.loc_code = l.loc_code;


select d.dname,l.city 
from dept d , locations l
where d.loc_code = l.loc_code(+); -- dept 에서 조인되지 않는 자료도 보여줌 

select d.dname,l.city 
from dept d , locations l
where d.loc_code(+) = l.loc_code;  -- locations  에서 조인되지 않는 자료도 보여줌







