rollback;
select * from ����ǥ;

--1. delete (Rollback�� ����)
delete from ����ǥ ;

--2. truncate (rollback�� �Ұ���) -- �����ϸ� ��������
truncate table ����ǥ ;

--3. drop (rollback�� �Ұ���) -- �����ϸ� ��������, ���̺� ���ư�

create sequence ����ID_SEQ
INCREMENT by 1
start with 1
minvalue 1
maxvalue 9999 ;

select ����ID_SEQ.nextval from dual;

--INSERT INTO ���� (
--    ����ID
--, ��й�ȣ
--, �̸�
--, ����
--, ����
--, �Ի��Ͻ�
--, �ֹε�Ϲ�ȣ
--, ����
--, �μ�ID
--) VALUES (
--    'A'||LPAD(����ID_SEQ.NEXTVAL , 4, '0')
--, '��й�ȣ123'
--, '������'
--, '��'
--, 30
--, SYSDATE
--, '930711-2441223'
--, 5000
--, 'D006'
--);

--drop sequence ����ID_SEQ ;


--�� : �� ���� ���� ���ϱ� ���� ���� �� �ϰ�ʹ�.
-- �츮�� ���鶧 ����� ������ ���ۼ� �� ���̴�.

create view �μ����ְ���_view as 
select �μ�ID, MAX(����) AS �μ����ְ���
from ����
group by �μ�ID
order by �μ�ID ;

select * from �μ����ְ���_view ;

select a.�̸�
,a.����
,b.�μ����ְ���
from ���� a
, ( select �μ�ID, MAX(����) AS �μ����ְ���
from ����
group by �μ�ID
order by �μ�ID 
) b
where a.�μ�ID =b.�μ�ID
and a.���� =  b.�μ����ְ��� ;

create view ����_�ΰ��������� as
select ����ID
,�̸�
,�μ�ID
from ����;

select * from ����_�ΰ��������� ;
