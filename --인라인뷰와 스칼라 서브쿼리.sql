--�ζ��κ�� ��Į�� ��������
-- from �� �������� (�ζ��� ��)
desc emp; -- db ���� ���� 

select rowid,ename,sal from emp;-- rowid row �� ����Ǿ� �ִ� ��ũ ��ġ 
select rownum,ename,sal from emp;-- ���� ���� �����ؼ� �� 
select rownum,ename,sal from emp 
where rownum <= 10;  --pandas head() ���� 

select rownum,ename,sal from emp 
where rownum = 10;  -- ������ ���� �Ҷ� ���� ��ȣ �ο��ϱ� ������ 10��° �� ���� 

--ex) ����� �޿��� ���帹�� 5�� ��ȸ

select ename,sal from emp
where rownum <=5
order by sal desc;

select * 
from (select ename,sal from emp
order by sal desc) T
where rownum < 6;

-- from �� ���� ��� ���� 

-- ������ �տ��� ���� 5�� �̰� 5���� Ű ���̷� ����
select rownum,player_name,height 
from player
where rownum < 6
order by height;

-- Ű�� ���� ��� 5�� ������ ���� �� 5�� ���� 
-- �� ���� Ű�� ���� 5�� ������� ���� 
select rownum,player_name,height 
from (select player_name,height 
        from player 
        order by height) P
where rownum < 6
order by height;

-- ��Į�� ���� ���� : row,colum 1���� �̴� ���� ����  select ,order by �ڿ� ���

select ename,sal ,deptno, (select dname from dept where deptno = 10) al from emp ; 

-- ��ȣ ���� ���� ���� 

select ename,sal ,deptno, (select dname from dept where deptno = A.deptno) al from emp A; 

select deptno,dname, (select count(*) from emp where deptno = D.deptno) al from dept D
where 3 < (select count(*) from emp where deptno = D.deptno) ;


-- exists ���� ������ 1���� �����ϸ� true ��û������ �ִ��� �ֹ������� �ִ��� Ȯ�� 

select deptno,dname
from dept d
where exists( select 1 from emp where deptno = d.deptno); -- 1�� �׳� ���� �ϸ� 1 ���� 


select * from dept;
select * from emp;

select * from dept d join emp e using(deptno)  order by deptno;








