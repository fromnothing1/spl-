
-- 날짜 연산 및 날짜 함수 

-- alter session set nls_date_format = 'yyyy-mm-dd:hh24:mi:ss';  날짜 데이터 형식 지정하는 코드 

select player_name, birth_date,birth_date+1000 from player;

select sysdate from dual;

select sysdate from emp;

alter session set nls_date_format = 'yyyy-mm-dd:hh24:mi:ss';
select sysdate from dual;
alter session set nls_date_format = 'yyyy-mm-dd';
select sysdate from dual;
alter session set nls_date_format = 'yyyy-mm-dd:hh24:mi:ss';
-- 시간 단위로 더할 때는 /24 이런 식으로 시분 초(/24/60/60) 단위로 할수 있음 
select sysdate + 1/24 from dual;


--날짜 함수 사용 add_months(),months_between(),last_day,round(),trunc() 년단위 월단위로 계산 
--trunc(date,'mm') 월기준 trunc(date,'yy') 년기준

select sysdate,add_months(sysdate,36) from dual;

select ename, hiredate,trunc(months_between(sysdate,hiredate)) from emp;

select ename, hiredate,trunc(months_between(sysdate,hiredate)/12) as diff_yeaer  from emp;

select last_day(sysdate) from dual;

select sysdate,trunc(sysdate),trunc(sysdate,'mm'),trunc(sysdate,'yy') from dual;

-- extract 지정한 날짜 필드 값만 을 추출

select sysdate, extract( year from sysdate),extract( month from sysdate),extract(day from sysdate)from dual;

-- interval 더하기 

--select ename,hiredate, hiredate + interval '60' year ,hiredate + interval '20' month  from emp;

select ename,hiredate, hiredate + interval '60' year ,hiredate + interval '20' month, hiredate + interval '2:3' hour to minute from emp;


















