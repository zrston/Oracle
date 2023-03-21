select 직원ID
,입사일시
,to_char(입사일시, 'yyyy') as 입사연도
from 직원;

select 직원ID, 나이, NVL(나이 , 0)
from 직원;

select 직원ID, 부서ID , DECODE(부서ID, 'D001', 'OK', 'NO')
from 직원;

select 직원ID, 패스워드, NVL(나이, 20)
from 직원;

select 직원ID, 성별, 연봉, DECODE(성별, '남', '남성입니다', '여성입니다') as 남녀확인
from 직원;

select 직원ID
,구분코드
,연락처
from 직원연락처
where 구분코드 != '휴대폰' ;

select 직원ID
,이름
,성별
,나이
from 직원
where 나이 >= 50;

select *
from 직원
where 나이 = NULL ; -- 나이가 NULL인 데이터만 뽑을때 이렇게 쓰지않는다
                    -- NULL은 정상적인 산술, 비교 연산 불가능하다.
                    
select *
from 직원
where 나이 is not null;

select *
from 직원
where 입사일시 is null;

select *
from 직원
where 직원ID ( 'A0001', 'A0003', 'A0005');

select *
from 직원
where 직원ID NOT IN ('A0001' , 'A0003', 'A0005', NULL ) ;

select *
from 직원
where 나이 >= 20
and 나이 <= 29 ;

select *
from 직원
where 나이 between 20 and 29 ;

select *
from 직원
where 이름 like '강%' ;

select *
from 직원
where 이름
like '__수' ;

select *
from 부서
where 부서명
like '__부' ;

--문제1) 이름에 철이 들어가는 직원

select 직원ID, 이름, 나이
from 직원
where 이름 like '%철%' ;

select *
from 직원
where to_char(입사일시 , 'yyyy') = '2015'
or 입사일시 is null ; 

select *
from 직원
where to_char(입사일시, 'yyyy') >= 2017;

select 직원ID, 연봉, 입사일시
from 직원
where 연봉 between 7000 and 9000;

select *
from 직원주소
where 주소 like '동구%' ;

//from절

select 직원.직원ID
, 직원.이름
, 직원.나이
, 직원.연봉
, 직원연락처.직원ID
, 직원연락처.연락처
from 직원, 직원연락처
where 직원.직원ID = 직원연락처.직원ID;

//테이블의 별칭
select A.직원ID
, A.이름
, A.나이
, A.연봉
, B.직원ID
, B.연락처
from 직원 A, 직원연락처 B
where A.직원ID = B.직원ID ;

//JOIN
select A.직원ID
, A.이름
, A.연봉
, B.연락처
from 직원 A, 직원연락처 B
where A.직원ID = B.직원ID
and A.직원ID = 'A0006'
and B.구분코드 = '휴대폰';
