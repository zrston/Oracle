insert into ���� (
    ����ID
, �н�����
, �̸�
, ����
, ����
, �Ի��Ͻ�
, �ֹε�Ϲ�ȣ
, �μ�ID
) values (
    'A0012'
, 'pass1234'
, '������'
, '��'
, '30'
, sysdate
, '930911-1255231'
, 'D001'
) ;

select *
from ����;

INSERT INTO ����
VALUES (
'A0014'
, 'hipasswd'
, '������'
, '��'
, 50
, sysdate
, '740922-2555111'
, 7000
, 'D002'
);

select *
from ����;

commit;

select ����ID , �̸�, ���� from ����;

