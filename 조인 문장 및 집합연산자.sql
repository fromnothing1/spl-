-- ANSI JOIN 다른 조인 문장 

-- 동일 동작 cross join
select e.ename, d.dname from emp e , dept d;
select e.ename, d.dname from emp e cross join dept d; -- 카다시안곱

-- 동일 동작 natural join & using
select e.ename, d.dname from emp e , dept d
where d.deptno = e.deptno;
select e.ename, d.dname,deptno from emp e natural join dept d; -- 컬럼 명이 똑같은 걸로 조인함 , equel 연산일때만 가능
select e.ename, d.dname, deptno from emp e join dept d using (deptno);-- 동일한 컬럼명이 여러게 있을때 특정 컬럼을 지정할수 있다.

-- 동일 동작 join on 구문
select e.ename, e.sal,s.grade from emp e ,salgrade s
where e.sal BETWEEN s.losal and s.hisal; 

select e.ename, e.sal,s.grade from emp e join salgrade s 
on(e.sal BETWEEN s.losal and s.hisal);

-- left/rihgt/full outer join , inner join:일반적인 조인

select * from dept;
select * from locations;

select d.dname,l.city from dept d,locations l -- 왼쪽 거 다보고 싶어
where d.loc_code = l.loc_code(+);

select d.dname,l.city from dept d left join locations l  -- 왼쪽 거 다보고 싶어 조인 키워드 기줁
on d.loc_code = l.loc_code;

select d.dname,l.city from dept d right join locations l  --  오른쪽 거 다보고 싶어 조인 키워드 기줁
on d.loc_code = l.loc_code;

select d.dname,l.city from dept d full outer join locations l  --  ANSI JOIN 은 둘다 볼수 있음
on d.loc_code = l.loc_code;

        
-- 



