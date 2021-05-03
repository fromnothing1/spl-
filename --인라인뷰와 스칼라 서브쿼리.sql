--인라인뷰와 스칼라 서브쿼리
-- from 절 서브쿼리 (인라인 뷰)
desc emp; -- db 정보 보기 

select rowid,ename,sal from emp;-- rowid row 가 저장되어 있는 디스크 위치 
select rownum,ename,sal from emp;-- 보통 갯수 제한해서 봄 
select rownum,ename,sal from emp 
where rownum <= 10;  --pandas head() 느낌 

select rownum,ename,sal from emp 
where rownum = 10;  -- 데이터 추출 할때 마다 번호 부여하기 때문에 10번째 가 없음 

--ex) 사원중 급여가 가장많은 5명 조회

select ename,sal from emp
where rownum <=5
order by sal desc;

select * 
from (select ename,sal from emp
order by sal desc) T
where rownum < 6;

-- from 절 쿼리 사용 예시 

-- 데이터 앞에서 부터 5명 뽑고 5명을 키 높이로 정렬
select rownum,player_name,height 
from player
where rownum < 6
order by height;

-- 키가 작은 사람 5명 순으로 정렬 후 5명 뽑음 
-- 즉 가장 키가 작은 5명 순서대로 추출 
select rownum,player_name,height 
from (select player_name,height 
        from player 
        order by height) P
where rownum < 6
order by height;

-- 스칼라 서브 쿼리 : row,colum 1개를 뽑는 서브 쿼리  select ,order by 뒤에 사용

select ename,sal ,deptno, (select dname from dept where deptno = 10) al from emp ; 

-- 상호 연관 서브 쿼리 

select ename,sal ,deptno, (select dname from dept where deptno = A.deptno) al from emp A; 

select deptno,dname, (select count(*) from emp where deptno = D.deptno) al from dept D
where 3 < (select count(*) from emp where deptno = D.deptno) ;


-- exists 서브 쿼리가 1개라도 존재하면 true 신청내역이 있는지 주문내역이 있는지 확인 

select deptno,dname
from dept d
where exists( select 1 from emp where deptno = d.deptno); -- 1은 그냥 존재 하면 1 나옴 


select * from dept;
select * from emp;

select * from dept d join emp e using(deptno)  order by deptno;








