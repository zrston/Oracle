select *
from ���� ;

select ����ID, ����, 1000, ���� - 1000 as ����
from ����;

select ����ID
       , ����
       ,(���� * 0.1) as ���ʽ� , ���� + (���� * 0.1) as �Ǽ��ɾ�
from ����;

select �̸�, ����, �̸� || ' ������ ������ ' || ���� || '���� �Դϴ�.'
from ����;

select �̸�, ����, �̸� || ' ������ ���̴� ' || ���� || ' ���Դϴ�.' as ������������
from ���� ;

select �н�����, substr(�н�����, 2, 3) as substr���н�����
from ����;

select TRIM('   �ȳ��ϼ���    '), TRIM(    '��  �� �� �� ��')
from dual ;

select �ֹε�Ϲ�ȣ, REPLACE(�ֹε�Ϲ�ȣ , '-' , '')
from ���� ;

select substr ('https://smhrd.or.kr/' , 9, 5 )
from dual ;

select ����ID, �ֹε�Ϲ�ȣ , substr(�ֹε�Ϲ�ȣ, 0, 6) as �������
from ���� ;

select ����ID, �����ڵ�, ����ó, replace(����ó , '-', '') as ����ó��ȣ��
from ��������ó ;

select ���� , MOD(����, 1000)
from ���� ;

select sysdate from dual ;

select sysdate + 1 as �Ϸ����
    ,sysdate + 1/24 as �ѽð�����
    ,sysdate + 1/24/60 as �Ϻд���
    ,sysdate + 1/24/60/60 as ���ʴ���
from dual;

select ����ID
, �Ի��Ͻ�
, ADD_MONTHS(�Ի��Ͻ� , 60)
, ADD_MONTHS(�Ի��Ͻ� , -60)
from ����;

select ����ID
, �Ի��Ͻ�
, ADD_MONTHS(�Ի��Ͻ� , 60) as �������Ի��Ͻ�
from ����;

select sysdate + 3 as ���ϴ���
from dual ;

1.
SELECT TO_NUMBER('1') FROM DUAL ;
//������ (' �� ������ (1) �� ����ȯ�� ���
2.
SELECT TO_CHAR(1) FROM DUAL ;
//������ ( �� ������ ('1') �� ����ȯ�� ���
3.
SELECT TO_CHAR(SYSDATE , 'YYYY/MM/DD HH24:MI:SS') FROM DUAL ;
4.
SELECT TO_DATE('20230101' , 'YYYY/MM/DD') FROM DUAL ;
5.
SELECT TO_DATE('20230101141212' , 'YYYY/MM/DD HH24:MI:SS') FROM DUAL;

/*
3�� ������ ��¥�� (SYSDATE) �� ���������� �����մϴ� . �����ǹ̴� �� �ܿ�ô�
4�� ������ ������ (' �� ��¥�� (2023/01/01 14:00:00) ���� �����մϴ�
5�� ������ ������ (' �� ��¥�� (2023/01/01 14:12:12) ���� �����մϴ� .
*/

/*���� */
YYYY : ���� 4�ڸ�
MM : �� 2�ڸ� (1���̶�� 01)
DD : �� 2�ڸ� (1���̶�� 01, 20���̶�� 20)
HH24 : �ð��� �ǹ� (24�ð���) 0 ~ 23��
HH : 12�ð��� (0 ~ 11)
MI(MINUTES) : �� (0 ~ 59)
SS(SECONDS) : �� (0 ~ 59)