select *
from 직원;

select 직원ID, 패스워드, 이름, 성별, 연봉 
from 직원
where 성별 = '남' ;

select 직원ID, 입사일시, 주민등록번호, 연봉, 부서ID
from 직원 ;

select 부서ID, 부서명, 근무지
from 부서 ;

select 직원ID, 구분코드, 연락처
from 직원연락처 ;

select * from 직원;

select * from 직원주소;

--직원테이블에서 성별 컬럼만 출력합니다.

select distinct 성별 from 직원;

select distinct 성별, 이름 from 직원;

select * from 직원연락처;

select distinct 직원ID from 직원연락처;

select 직원ID as emp_ID
,패스워드 as passwd
,이름 as NAME
from 직원 ;

select *
from 직원
where 직원ID = 'A0003' ;

INSERT INTO 직원 (
직원ID
, 패스워드
, 이름
, 성별
, 입사일시
, 주민등록번호
, 연봉
, 부서ID
) VALUES (
'A0011'
, 'newman'
, '신입'
, '남'
, SYSDATE
, '940123-1332219'
, 3000
, 'D004'
) ;

select * from 직원 ;

COMMIT ;
select * from 직원 ;

CREATE TABLE 테스트테이블 ( -- 테스트테이블 이라는 이름의 테이블을 만듭니다 .
문자형
VARCHAR2(10) , -- 문자형 이라는 컬럼에 문자형자료형 ( 부여
숫자형
NUMBER , --숫자형 이라는 컬럼에 숫자형자료형 (NUMBER) 부여
날짜형
DATE ) ; -- 날짜형 이라는 컬럼에 날짜형자료형 (DATE) 부여

select *
from 직원
where 부서ID = 'D001' ;

select *
from 직원
where 성별 = '남' ;

select *
from 직원
where 연봉 >= 8000 ;

select 직원ID, 이름, 나이, 입사일시
from 직원
where 연봉 >9000 ;

select *
from 직원
where 이름 = '이현정' ;

select *
from 직원연락처
where 연락처 = '010-1231-1234' ;

select 부서명
from 부서
where 근무지 = '서울';

select 주소
from 직원주소
where 직원ID = 'A0007' ;

select *
from 직원
where 성별 = '남'
and 나이 >= 28 ;

select *
from 직원
where 부서id = 'D002'
or 부서id = 'D004' ;

select 연락처
from 직원연락처
where 직원ID = 'A0001'
and 구분코드 = '집전화';

select *
from 직원
where 부서ID = 'D003'
and 나이 >= 30 ;

select *
from 직원
where 직원ID = 'A0001'
or 직원ID = 'A0005'
or 직원ID = 'A0007'  ;