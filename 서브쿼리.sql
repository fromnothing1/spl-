--서브 쿼리 
-- 단일행 연산자 (=,>,<,<>등),복수행 연산자(in,any,all)
-- select from where having orderby update set insert into 모든 절에 서브 쿼리 사용가능 groub by 는 안됨

select ename,sal from emp 
where sal > (select sal from emp where ename = 'BLAKE');

--활용 

select team_id, avg(height) from player
group by team_id
HAVING avg(height) > (select avg(height) from player where team_id = 'K01');

-- 복수행 연산자(in,any,all)
--in 목록에 있는 임의의 값과 동일
--any 1개의 값이라도 조건 만족
--all 모든 목록이 조건 만족

select player_name from player;


select position,player_name from player 
where position = (select position from player where player_name = '서동명');

select position,player_name from player 
where position in (select position from player where player_name = '박동우'); --  박동우 포지션 2개 동명이인

--emp 테이블 30번 부서에 소속된 모든 사원보다 급여를 더 많이 받는 사원조회 

select * from emp;

select ename, sal from emp 
where sal > all(select sal from emp where Deptno = 30);
-- 동일 문자 use max
select ename, sal from emp 
where sal > (select max(sal) from emp where Deptno = 30);

--  다중 컬럼 서브 커리 사용 동시에 두가지 컬럼이 같은지 비교 

select player_name,team_id,position ,height from player
where (position,height) in (select position , height from player 
                             where player_name in ('샤샤','이운재'))
order by height;
                      

-- and 로 묶으면 position 과 height 가 다른 4가지 경우가 나온다.
select player_name,team_id,position ,height from player 
where position in (select position from player 
                             where player_name in ('샤샤','이운재'))
and  height in (select height from player where player_name in ('샤샤','이운재'))  
order by height;  






