
--jonin � ���̺��� �������� �ٸ� ���̺� �ִ� row�� ã�ƿ��� �� 

select *from emp;

select ename,dname from emp,dept order by ename; -- �������� �� ���̺��� �ٿ����� īƼ�þȰ�

select ename,dname from emp,dept 
where emp.deptno = dept.deptno  -- ��Ȯ�� join ���� 
order by ename;

select * from emp,dept 
where emp.deptno = dept.deptno
order by ename;

-- ���� �ٸ� ���ǵ� ���Ե� ����

select player.player_name,team.team_name
from player ,team     
where player.team_id = team.team_id and player.team_id > 'Ko9'
order by player.player_name;

-- ���̺� ��Ī ���

select P.player_name
from player P  
order by P.player_name;

-- ���� �˻��� �̿��� ���� ó�� 
--losal,hisal ������ sal ���� ���� grade ó�� 
select ename, sal from emp;
select *from salgrade;

select e.ename ,e.sal,s.* from emp e,salgrade s
where e.sal between s.losal and s.hisal;

--outer join ���������� �������� �ʴ� �ڷ� ���� ǥ�� 

select e.empno,e.ename,e.job, e.deptno,d.deptno,d.dname
from dept d , emp e 
where d.deptno = e.deptno(+);


select * from dept;
select * from locations;

select d.dname,l.city 
from dept d , locations l
where d.loc_code = l.loc_code;


select d.dname,l.city 
from dept d , locations l
where d.loc_code = l.loc_code(+); -- dept ���� ���ε��� �ʴ� �ڷᵵ ������ 

select d.dname,l.city 
from dept d , locations l
where d.loc_code(+) = l.loc_code;  -- locations  ���� ���ε��� �ʴ� �ڷᵵ ������







