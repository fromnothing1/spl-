--���տ�����
-- ���� 
--�÷� ���� ���� �ؾ��Ѵ�. ���� �÷� ���� ������ Ÿ���� ���ƾ���
--   null �÷��� �־ ������ ���� ���� 

select team_id , height from player
union all
select null, height  from player;

select deptno from dept
intersect  -- ������
select deptno from emp;


select deptno from dept
minus  -- dept - emp ������
select deptno from emp;


select deptno from dept 
union  -- dept + emp ������ : �ߺ����� ������
select deptno from emp;


select deptno from dept 
union all  -- dept + emp ������ : �ߺ��� ���� ���� ����
select deptno from emp
order by deptno;





