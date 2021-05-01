-- order by 

select ename, deptno ,sal from emp order by sal desc;

select ename, deptno ,sal from emp order by sal*2 desc; -- 수식으로 정렬 가능 

select ename, deptno ,sal from emp order by deptno desc, sal*2 ; 
-- 앞에 먼저 나온 조건을 기준으로 정렬후 그다음 조건으로 정렬한다 .

select ename,sal from emp order by hiredate;

select ename,sal,comm from emp order by comm nulls first; 
-- 원래  null 은 오름차순에서 맨뒤에 있지만 nulls first 를 통해앞으로 이동 가능 nulls last 가능
select ename,sal,comm from emp order by 2,3;  -- column 명 대신 숫자로 지정가능 2 : 두번째 컬럼인 sal 기준으로 정렬하겠다는 뜻 




