select ����ID
,�Ի��Ͻ�
,to_char(�Ի��Ͻ�, 'yyyy') as �Ի翬��
from ����;

select ����ID, ����, NVL(���� , 0)
from ����;

select ����ID, �μ�ID , DECODE(�μ�ID, 'D001', 'OK', 'NO')
from ����;

select ����ID, �н�����, NVL(����, 20)
from ����;

select ����ID, ����, ����, DECODE(����, '��', '�����Դϴ�', '�����Դϴ�') as ����Ȯ��
from ����;

select ����ID
,�����ڵ�
,����ó
from ��������ó
where �����ڵ� != '�޴���' ;

select ����ID
,�̸�
,����
,����
from ����
where ���� >= 50;

select *
from ����
where ���� = NULL ; -- ���̰� NULL�� �����͸� ������ �̷��� �����ʴ´�
                    -- NULL�� �������� ���, �� ���� �Ұ����ϴ�.
                    
select *
from ����
where ���� is not null;

select *
from ����
where �Ի��Ͻ� is null;

select *
from ����
where ����ID ( 'A0001', 'A0003', 'A0005');

select *
from ����
where ����ID NOT IN ('A0001' , 'A0003', 'A0005', NULL ) ;

select *
from ����
where ���� >= 20
and ���� <= 29 ;

select *
from ����
where ���� between 20 and 29 ;

select *
from ����
where �̸� like '��%' ;

select *
from ����
where �̸�
like '__��' ;

select *
from �μ�
where �μ���
like '__��' ;

--����1) �̸��� ö�� ���� ����

select ����ID, �̸�, ����
from ����
where �̸� like '%ö%' ;

select *
from ����
where to_char(�Ի��Ͻ� , 'yyyy') = '2015'
or �Ի��Ͻ� is null ; 

select *
from ����
where to_char(�Ի��Ͻ�, 'yyyy') >= 2017;

select ����ID, ����, �Ի��Ͻ�
from ����
where ���� between 7000 and 9000;

select *
from �����ּ�
where �ּ� like '����%' ;

//from��

select ����.����ID
, ����.�̸�
, ����.����
, ����.����
, ��������ó.����ID
, ��������ó.����ó
from ����, ��������ó
where ����.����ID = ��������ó.����ID;

//���̺��� ��Ī
select A.����ID
, A.�̸�
, A.����
, A.����
, B.����ID
, B.����ó
from ���� A, ��������ó B
where A.����ID = B.����ID ;

//JOIN
select A.����ID
, A.�̸�
, A.����
, B.����ó
from ���� A, ��������ó B
where A.����ID = B.����ID
and A.����ID = 'A0006'
and B.�����ڵ� = '�޴���';
