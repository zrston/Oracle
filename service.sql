select *
from ����;

select ����ID, �н�����, �̸�, ����, ���� 
from ����
where ���� = '��' ;

select ����ID, �Ի��Ͻ�, �ֹε�Ϲ�ȣ, ����, �μ�ID
from ���� ;

select �μ�ID, �μ���, �ٹ���
from �μ� ;

select ����ID, �����ڵ�, ����ó
from ��������ó ;

select * from ����;

select * from �����ּ�;

--�������̺��� ���� �÷��� ����մϴ�.

select distinct ���� from ����;

select distinct ����, �̸� from ����;

select * from ��������ó;

select distinct ����ID from ��������ó;

select ����ID as emp_ID
,�н����� as passwd
,�̸� as NAME
from ���� ;

select *
from ����
where ����ID = 'A0003' ;

INSERT INTO ���� (
����ID
, �н�����
, �̸�
, ����
, �Ի��Ͻ�
, �ֹε�Ϲ�ȣ
, ����
, �μ�ID
) VALUES (
'A0011'
, 'newman'
, '����'
, '��'
, SYSDATE
, '940123-1332219'
, 3000
, 'D004'
) ;

select * from ���� ;

COMMIT ;
select * from ���� ;

CREATE TABLE �׽�Ʈ���̺� ( -- �׽�Ʈ���̺� �̶�� �̸��� ���̺��� ����ϴ� .
������
VARCHAR2(10) , -- ������ �̶�� �÷��� �������ڷ��� ( �ο�
������
NUMBER , --������ �̶�� �÷��� �������ڷ��� (NUMBER) �ο�
��¥��
DATE ) ; -- ��¥�� �̶�� �÷��� ��¥���ڷ��� (DATE) �ο�

select *
from ����
where �μ�ID = 'D001' ;

select *
from ����
where ���� = '��' ;

select *
from ����
where ���� >= 8000 ;

select ����ID, �̸�, ����, �Ի��Ͻ�
from ����
where ���� >9000 ;

select *
from ����
where �̸� = '������' ;

select *
from ��������ó
where ����ó = '010-1231-1234' ;

select �μ���
from �μ�
where �ٹ��� = '����';

select �ּ�
from �����ּ�
where ����ID = 'A0007' ;

select *
from ����
where ���� = '��'
and ���� >= 28 ;

select *
from ����
where �μ�id = 'D002'
or �μ�id = 'D004' ;

select ����ó
from ��������ó
where ����ID = 'A0001'
and �����ڵ� = '����ȭ';

select *
from ����
where �μ�ID = 'D003'
and ���� >= 30 ;

select *
from ����
where ����ID = 'A0001'
or ����ID = 'A0005'
or ����ID = 'A0007'  ;