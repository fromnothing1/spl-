
-- ��¥ ���� �� ��¥ �Լ� 

-- alter session set nls_date_format = 'yyyy-mm-dd:hh24:mi:ss';  ��¥ ������ ���� �����ϴ� �ڵ� 

select player_name, birth_date,birth_date+1000 from player;

select sysdate from dual;

select sysdate from emp;

alter session set nls_date_format = 'yyyy-mm-dd:hh24:mi:ss';
select sysdate from dual;
alter session set nls_date_format = 'yyyy-mm-dd';
select sysdate from dual;
alter session set nls_date_format = 'yyyy-mm-dd:hh24:mi:ss';
-- �ð� ������ ���� ���� /24 �̷� ������ �ú� ��(/24/60/60) ������ �Ҽ� ���� 
select sysdate + 1/24 from dual;


--��¥ �Լ� ��� add_months(),months_between(),last_day,round(),trunc() ����� �������� ��� 
--trunc(date,'mm') ������ trunc(date,'yy') �����

select sysdate,add_months(sysdate,36) from dual;

select ename, hiredate,trunc(months_between(sysdate,hiredate)) from emp;

select ename, hiredate,trunc(months_between(sysdate,hiredate)/12) as diff_yeaer  from emp;

select last_day(sysdate) from dual;

select sysdate,trunc(sysdate),trunc(sysdate,'mm'),trunc(sysdate,'yy') from dual;

-- extract ������ ��¥ �ʵ� ���� �� ����

select sysdate, extract( year from sysdate),extract( month from sysdate),extract(day from sysdate)from dual;

-- interval ���ϱ� 

--select ename,hiredate, hiredate + interval '60' year ,hiredate + interval '20' month  from emp;

select ename,hiredate, hiredate + interval '60' year ,hiredate + interval '20' month, hiredate + interval '2:3' hour to minute from emp;


















