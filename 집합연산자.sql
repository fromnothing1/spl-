--집합연산자
-- 주의 
--컬럼 수는 동일 해야한다. 대응 컬럼 끼리 데이터 타입이 같아야함
--   null 컬럼을 넣어서 억지로 대응 가능 

select team_id , height from player
union all
select null, height  from player;

select deptno from dept
intersect  -- 교집합
select deptno from emp;


select deptno from dept
minus  -- dept - emp 차집합
select deptno from emp;


select deptno from dept 
union  -- dept + emp 합집합 : 중복값은 없에줌
select deptno from emp;


select deptno from dept 
union all  -- dept + emp 합집합 : 중복값 제거 하지 않음
select deptno from emp
order by deptno;





