-- ���� ���� �Լ� ����ϱ� 


-- �����Լ� ���
-- ��ҹ��� ��ȯ initcap ù���ڸ� �빮�ڷ� ��ȯ
select ename, lower(ename),initcap(ename) from emp;
select ename, lower(ename),initcap(ename),length(ename) from emp;

select ename, lower(ename),initcap(ename),length(ename) from emp
where LENGTH(ename) = 4;

--STBSTR( ���, ������ġ,���ڰ��� );
-- 1�� ������ġ�̴�.
select ename, substr(ename,1,2),length(ename) from emp;

--lpad rpad �ڸ��� ���߱� 
select ename, LPAD(ename,7,'*'),rpad(ename,7,'*') from emp;

--ltrim ������ ���� ���ڿ� ����, ���޾� ������ ��� ������ 
--trim ����� ��� ���� 

select ename, ltrim(ename,'A'),rtrim(ename,'A'), trim('T' from ename) from emp;


-- replace(s,p,r) Ư�����ڿ��� �ٸ� ���ڿ��� ��ü 

select ename,replace(ename,'CO','*?*') from emp;
--translate:  c -> * , o-> ? �� ����  : �ѱ��ھ� ���ε��� ó����
select ename, translate(ename,'CO','*?*') from emp;

-- �����Լ� ���
-- power(x,n) ����,  ceil �ø�, floor ���� , sign ��� ���� �Ǻ�, 










