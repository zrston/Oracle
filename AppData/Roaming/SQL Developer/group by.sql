DROP TABLE ���������� ; 
DROP TABLE ����ǥ ; 
CREATE TABLE ���������� (
�л�ID VARCHAR2(9) PRIMARY KEY , 
�л��̸� VARCHAR2(50) NOT NULL , 
�Ҽӹ� VARCHAR2(5) 
); 
CREATE TABLE ����ǥ ( 
�л�ID VARCHAR2(9) , 
���� VARCHAR2(30) , 
���� NUMBER , 
CONSTRAINT PK_����ǥ PRIMARY KEY(�л�ID , ����) , 
CONSTRAINT FK_����ǥ FOREIGN KEY(�л�ID) REFERENCES ����������(�л�ID) 
) ; 
INSERT INTO ���������� VALUES ('S0001' , '����ö' , 'A') ; 
INSERT INTO ���������� VALUES ('S0002' , '������' , 'A') ; 
INSERT INTO ���������� VALUES ('S0003' , '����ġ' , 'B') ; 
INSERT INTO ���������� VALUES ('S0004' , '�ڳ���' , 'B') ; 
INSERT INTO ���������� VALUES ('S0005' , '���°�' , 'B') ; 
INSERT INTO ���������� VALUES ('S0006' , '�����' , 'C') ; 
INSERT INTO ���������� VALUES ('S0007' , '�ڶ��' , 'C') ; 
INSERT INTO ���������� VALUES ('S0008' , '���ȵ�' , 'C') ; 
INSERT INTO ���������� VALUES ('S0009' , '������' , 'C') ; 
INSERT INTO ����ǥ VALUES('S0001' ,'����' , 90); 
INSERT INTO ����ǥ VALUES('S0001' ,'����' , 85); 
INSERT INTO ����ǥ VALUES('S0001' ,'����' , 100); 
INSERT INTO ����ǥ VALUES('S0002' ,'����' , 100); 
INSERT INTO ����ǥ VALUES('S0002' ,'����' , 100); 
INSERT INTO ����ǥ VALUES('S0002' ,'����' , 20); 
INSERT INTO ����ǥ VALUES('S0003' ,'����' , 100); 
INSERT INTO ����ǥ VALUES('S0003' ,'����' , 100); 
INSERT INTO ����ǥ VALUES('S0003' ,'����' , 20); 
INSERT INTO ����ǥ VALUES('S0004' ,'����' , 85); 
INSERT INTO ����ǥ VALUES('S0004' ,'����' , 40); 
INSERT INTO ����ǥ VALUES('S0004' ,'����' , 60); 
INSERT INTO ����ǥ VALUES('S0005' ,'����' , 100); 
INSERT INTO ����ǥ VALUES('S0005' ,'����' , 100); 
INSERT INTO ����ǥ VALUES('S0005' ,'����' , 100); 
INSERT INTO ����ǥ VALUES ( 'S0006' , '����' , NULL ) ; 
INSERT INTO ����ǥ VALUES ( 'S0006' , '����' , NULL ) ; 
INSERT INTO ����ǥ VALUES ( 'S0006' , '����' , NULL ) ; 
COMMIT; 


SELECT * FROM ���������� ;
SELECT * FROM ����ǥ ;

select �Ҽӹ� , �л��̸�
from ����������
group by �Ҽӹ� ;

-- count() ,avg(), sum(), max() , min()
select �Ҽӹ�, count(*)
from ����������
group by �Ҽӹ�;

--�����Լ��� ����

select �л�ID, ROUND (AVG(����), 1) as ����
from ����ǥ
group by �л�ID ;

select �л�ID, round(avg(����) ,1) as ��ռ���
from ����ǥ
group by �л�ID ;

select max(����) as �ְ���, min(����) as ��������
from ���� ;

select �Ҽӹ�, count(*)
from ����������
group by �Ҽӹ�;

select �л�ID, avg(����) as �������������
from ����ǥ
where ���� != '����'
group by �л�ID;

select �μ�ID, sum(����) as �μ��������հ�
from ����
group by �μ�ID;

select a.����ID, count(b.����ó) as ����ó����
from ���� a, ��������ó b
where a.����ID = b.����ID(+)
group by a.����ID;

--having
select �л�ID, round( avg(����) , 1) as ��ռ���
from ����ǥ
group by �л�ID
having avg(����) <= 75;

select �Ҽӹ�, count(*) as �ο���
from ����������
group by �Ҽӹ�
having count(*) >= 3;

select �μ�ID, max(����) as �ְ���
from ����
group by �μ�ID
having max(����) = 7500;

select �л�ID, round (avg(����) ,1) as ��ռ���
from ����ǥ
group by �л�ID
having avg(����) is not null;


--ORDER BY
select *
from ����
order by �̸� desc ;

select *
from ����
order by �μ�ID, �̸� DESC;

select ����ID
, �̸�
, ���� as �������ǿ���
, ���� * 01. as ���ʽ�
from ����
order by 3;

