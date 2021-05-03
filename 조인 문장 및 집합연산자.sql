-- ANSI JOIN �ٸ� ���� ���� 

-- ���� ���� cross join
select e.ename, d.dname from emp e , dept d;
select e.ename, d.dname from emp e cross join dept d; -- ī�ٽþȰ�

-- ���� ���� natural join & using
select e.ename, d.dname from emp e , dept d
where d.deptno = e.deptno;
select e.ename, d.dname,deptno from emp e natural join dept d; -- �÷� ���� �Ȱ��� �ɷ� ������ , equel �����϶��� ����
select e.ename, d.dname, deptno from emp e join dept d using (deptno);-- ������ �÷����� ������ ������ Ư�� �÷��� �����Ҽ� �ִ�.

-- ���� ���� join on ����
select e.ename, e.sal,s.grade from emp e ,salgrade s
where e.sal BETWEEN s.losal and s.hisal; 

select e.ename, e.sal,s.grade from emp e join salgrade s 
on(e.sal BETWEEN s.losal and s.hisal);

-- left/rihgt/full outer join , inner join:�Ϲ����� ����

select * from dept;
select * from locations;

select d.dname,l.city from dept d,locations l -- ���� �� �ٺ��� �;�
where d.loc_code = l.loc_code(+);

select d.dname,l.city from dept d left join locations l  -- ���� �� �ٺ��� �;� ���� Ű���� �⡘
on d.loc_code = l.loc_code;

select d.dname,l.city from dept d right join locations l  --  ������ �� �ٺ��� �;� ���� Ű���� �⡘
on d.loc_code = l.loc_code;

select d.dname,l.city from dept d full outer join locations l  --  ANSI JOIN �� �Ѵ� ���� ����
on d.loc_code = l.loc_code;

        
-- 



