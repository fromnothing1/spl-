--���� ���� 
-- ������ ������ (=,>,<,<>��),������ ������(in,any,all)
-- select from where having orderby update set insert into ��� ���� ���� ���� ��밡�� groub by �� �ȵ�

select ename,sal from emp 
where sal > (select sal from emp where ename = 'BLAKE');

--Ȱ�� 

select team_id, avg(height) from player
group by team_id
HAVING avg(height) > (select avg(height) from player where team_id = 'K01');

-- ������ ������(in,any,all)
--in ��Ͽ� �ִ� ������ ���� ����
--any 1���� ���̶� ���� ����
--all ��� ����� ���� ����

select player_name from player;


select position,player_name from player 
where position = (select position from player where player_name = '������');

select position,player_name from player 
where position in (select position from player where player_name = '�ڵ���'); --  �ڵ��� ������ 2�� ��������

--emp ���̺� 30�� �μ��� �Ҽӵ� ��� ������� �޿��� �� ���� �޴� �����ȸ 

select * from emp;

select ename, sal from emp 
where sal > all(select sal from emp where Deptno = 30);
-- ���� ���� use max
select ename, sal from emp 
where sal > (select max(sal) from emp where Deptno = 30);

--  ���� �÷� ���� Ŀ�� ��� ���ÿ� �ΰ��� �÷��� ������ �� 

select player_name,team_id,position ,height from player
where (position,height) in (select position , height from player 
                             where player_name in ('����','�̿���'))
order by height;
                      

-- and �� ������ position �� height �� �ٸ� 4���� ��찡 ���´�.
select player_name,team_id,position ,height from player 
where position in (select position from player 
                             where player_name in ('����','�̿���'))
and  height in (select height from player where player_name in ('����','�̿���'))  
order by height;  






