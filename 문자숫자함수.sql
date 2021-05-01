-- 문자 숫자 함수 사용하기 


-- 문자함수 사용
-- 대소문자 변환 initcap 첫글자만 대문자로 변환
select ename, lower(ename),initcap(ename) from emp;
select ename, lower(ename),initcap(ename),length(ename) from emp;

select ename, lower(ename),initcap(ename),length(ename) from emp
where LENGTH(ename) = 4;

--STBSTR( 대상, 사작위치,문자갯수 );
-- 1이 시작위치이다.
select ename, substr(ename,1,2),length(ename) from emp;

--lpad rpad 자릿수 맞추기 
select ename, LPAD(ename,7,'*'),rpad(ename,7,'*') from emp;

--ltrim 오른쪽 왼쪽 문자열 제거, 연달아 나오며 모두 제거함 
--trim 양방향 모두 제거 

select ename, ltrim(ename,'A'),rtrim(ename,'A'), trim('T' from ename) from emp;


-- replace(s,p,r) 특정문자열을 다른 문자열로 대체 

select ename,replace(ename,'CO','*?*') from emp;
--translate:  c -> * , o-> ? 로 변경  : 한글자씩 따로따로 처리함
select ename, translate(ename,'CO','*?*') from emp;

-- 숫자함수 사용
-- power(x,n) 제곱,  ceil 올림, floor 내림 , sign 양수 음수 판별, 










