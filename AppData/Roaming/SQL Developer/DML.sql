insert into 직원 (
    직원ID
, 패스워드
, 이름
, 성별
, 나이
, 입사일시
, 주민등록번호
, 부서ID
) values (
    'A0012'
, 'pass1234'
, '강감찬'
, '남'
, '30'
, sysdate
, '930911-1255231'
, 'D001'
) ;

select *
from 직원;

INSERT INTO 직원
VALUES (
'A0014'
, 'hipasswd'
, '공손한'
, '여'
, 50
, sysdate
, '740922-2555111'
, 7000
, 'D002'
);

select *
from 직원;

commit;

select 직원ID , 이름, 연봉 from 직원;

