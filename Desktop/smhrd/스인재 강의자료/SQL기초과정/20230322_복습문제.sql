/***************************************************************
다음 문항은 이전에 배웠던 내용을 복습하기 위한 문제입니다.
PDF를 참고하면서 천천히 문항을 풀어보세요. 
범위 : SELECT 형변환함수 ~ 끝까지
       WHERE 부정연산   ~ 끝까지 
****************************************************************/ 


/* 
1. 직원주소 테이블을 이용해서 직원ID가 'A0006' , 'A0007' 이 아닌 대상의 모든 정보를 출력하세요. 
<출력결과>
직원ID  구분코드    주소 
A0008	 집    	 서울 관악구 청룡로 66
A0009	 집 	     남구 송원로 812
A0010	 집	     동구 백서로 53
*/ 

select *
from 직원주소
where 직원ID != 'A0006'
and 직원ID != 'A0007' ;



/* 
2. 직원 테이블을 이용해서 나이가 NULL 이거나 입사일시가 NULL 대상의 모든 정보를 출력하세요. 
   ( 입사일시 출력 포맷은 다를 수 있음) 
<출력결과> 
직원ID    패스워드     이름   성별  나이     입사일시      주민등록번호     연봉    부서ID 
A0003	nono132	    이현정	여  null		22/11/06	000112-4566123	2600	D003
A0004	123123!!	김선미	여	null	20/03/11	930722-2766443	4500	D004
A0005	test123	    문현철	남	34		  null      891231-1786155	5000	D005
A0011	newman	     신입	남	null  	23/03/19 	940123-1332219	3000	D004
*/ 

select *
from 직원
where 나이 is null
or 입사일시 is null;



/* 
3. 직원 테이블을 이용해서 부서ID 가 D001 이거나 D005 인 대상의 직원ID , 이름 , 연봉 , 부서ID 를 출력해주세요. 
   (단, 이번에는 WHERE 조건에 IN 연산자를 활용하여 풀어보세요 . 그리고 출력 순서는 상관없습니다. ) 
   
<출력결과> 
직원ID    이름    연봉    부서ID  
A0001	김철수	2800	D001
A0005	문현철	5000	D005
A0006	송대주	7500	D001
A0010	김홍민	9300	D005
*/ 

select 직원ID, 이름, 연봉, 부서ID
from 직원
where 부서ID = 'D001' or 부서ID = 'D005';


/* 
4. 직원 테이블에서 나이가 40대인 대상의 직원ID , 이름 , 나이 를 출력해주세요.  
   (단, BETWEEN 을 이용해서 출력해주세요. 출력순서는 상관없습니다. ) 

<출력결과> 
직원ID    이름   나이 
A0006	송대주	44
A0007	메이슨	40
A0008	송진아	47
*/ 

select 직원ID, 이름, 나이
from 직원
where 나이 between 40 and 49 ;



/* 
5. 부서 테이블을 이용해서 부서명 컬럼의 값이 '인' 으로 시작하는 대상의 모든 정보를 출력해주세요.    
   (힌트 : LIKE 문법 활용 ) 

<출력 결과>
부서ID   부서명        근무지 
D001	인사부	      서울
D006	인프라서비스부	  서울
*/ 

select *
from 부서
where 부서명 like ('인%%');


/* 
6. 부서 테이블을 이용해서 부서명 컬럼의 값이 '사' 를 포함하는 대상의 모든 정보를 출력해주세요.    
   (힌트 : LIKE 문법 활용 ) 

<출력 결과>
부서ID   부서명        근무지 
D001	인사부	      서울
D004	SI사업부	      경기
D005	사업부	      제주
*/ 

select *
from 부서
where 부서명 like ('%사%');


/* 
7. (심화) 직원 테이블을 이용해서 입사일시가 
   2022년4월1일 0시0분0초 이후부터 2023년3월11일 23시59분59초 이내에 
   입사한 직원의 직원ID , 이름 , 입사일시 , 주민등록번호 를 출력하세요. 
   힌트 : 형변환 함수인 TO_DATE 를 활용해보세요. 

<출력결과> 
직원ID    이름    입사일시     주민등록번호 
A0003	이현정	22/11/06	000112-4566123
*/ 

select 직원ID, 이름, 입사일시, 주민등록번호
from 직원
where 입사일시 





--------------------------------------------------
--1번 답 
SELECT * 
  FROM 직원주소
 WHERE 직원ID != 'A0006' 
   AND 직원ID != 'A0007'; 
--혹은 
SELECT * 
  FROM 직원주소
 WHERE 직원ID NOT IN ('A0006' , 'A0007') ;
 
--2번 답 
SELECT * 
  FROM 직원
 WHERE 나이 IS NULL 
    OR 입사일시 IS NULL ;

--3번 답 
SELECT 직원ID , 이름 , 연봉 , 부서ID 
  FROM 직원 
 WHERE 부서ID IN ('D001' , 'D005');
 
--4번 답 
SELECT 직원ID , 이름 , 나이  
  FROM 직원 
 WHERE 나이 BETWEEN 40 AND 49 ;
 
--5번 답 
SELECT * 
  FROM 부서 
 WHERE 부서명 LIKE '인%';

--6번 답 
SELECT * 
  FROM 부서 
 WHERE 부서명 LIKE '%사%'; 
 
--7번 답 

SELECT 직원ID , 이름 , 입사일시 , 주민등록번호  
  FROM 직원 
 WHERE 입사일시 >= TO_DATE('20220401000000' , 'YYYYMMDDHH24MISS')
   AND 입사일시 <= TO_DATE('20230311235959' , 'YYYYMMDDHH24MISS');
   
-- 혹은 
SELECT 직원ID , 이름 , 입사일시 , 주민등록번호 
  FROM 직원 
 WHERE TO_CHAR(입사일시 , 'YYYYMMDD') >= '20220401' 
   AND TO_CHAR(입사일시 , 'YYYYMMDD') <= '20230311' ;
   
-- 혹은
SELECT 직원ID , 이름 , 입사일시 , 주민등록번호
  FROM 직원
 WHERE 입사일시 BETWEEN TO_DATE('20220401000000' , 'YYYYMMDDHH24MISS') AND TO_DATE('20230311235959' , 'YYYYMMDDHH24MISS');


/*
테스트 데이터를 만들어봅시다 **/
CREATE TABLE 
고객 ( 고객번호
VARCHAR2(5) PRIMARY KEY ,
고객명
VARCHAR2(50) NOT NULL
) ;

CREATE TABLE
고객전화번호 (
고객번호
VARCHAR2(5) ,
전화구분코드
VARCHAR2(10) ,
전화번호
VARCHAR(15) NOT NULL
) ;

ALTER TABLE
고객전화번호 ADD CONSTRAINT PK_ 고객전화번호 PRIMARY KEY( 고객번호 , 전화구분코드 ) ;
INSERT INTO
고객 VALUES ( '0001' , ' 동동일 ' ) ;
INSERT INTO
고객 VALUES ( '0002' , ' 동동이 ' ) ;
INSERT INTO
고객 VALUES ( '0003' , ' 동동삼 ' ) ;
INSERT INTO
고객전화번호 VALUES ( '0001' , '집전화 ' , '062-111-1111') ;
INSERT INTO
고객전화번호 VALUES ( '0001' , '휴대폰 ' , '010-1111-1111') ;
INSERT INTO
고객전화번호 VALUES ( '0002' , '휴대폰 ' , '010-2222-2222') ;
INSERT INTO
고객전화번호 VALUES ( '0004' , '휴대폰 ' , '010-4444-4444') ;
COMMIT;

select 고객.고객번호
, 고객.고객명
,고객전화번호.전화번호
from 고객, 고객전화번호;

-- 1. 실무에서 동등조인을 주로 쓰는구나
-- 2. 조인조건이 하나라도 '=' 이게 아니면 비동등 조인이구나

select a. 고객번호
, a.고객명
, b.전화번호
from 고객 a
, 고객전화번호 b
where a.고객번호 = b.고객번호;

--2교시 실습문제

--1 
select a.직원ID  as 직원_직원ID
, a.성별
, a.나이
, b.직원ID as 주소_직원ID
, b.구분코드
, b.주소
from 직원 a
, 직원주소 b
where a.직원ID = b.직원ID;

--2
select a.직원ID  as 직원_직원ID
, a.성별
, a.나이
, b.직원ID as 주소_직원ID
, b.구분코드
, b.주소
from 직원 a
, 직원주소 b
where a.직원ID = b.직원ID
and a.직원ID = 'A0007';

--3
select a.직원ID as 직원_직원ID
, a.성별
, a.나이
, b.직원ID as 주소_직원ID
, b.구분코드
, b.주소
from 직원 a
, 직원주소 b
where a.직원ID = b.직원ID(+);

--(4/7)
select a.직원ID as 주소_직원ID
, a.성별
, a.나이
, b.직원ID as 주소_직원ID
, b.구분코드
, b.주소
from 직원 a
, 직원주소 b
where a.직원ID = b.직원ID
and 주소 is null;

--(5/7)
select a.직원ID
, a.이름
, a.나이
, b.주소
, c.연락처

from 직원 a
, 직원주소 b
, 직원연락처 c

where a.직원ID = b.직원ID
and b.직원ID = c.직원ID ;

--(6/7)

select a. 직원ID
, a.이름
, a.입사일시
, b.직원연락처
from 직원 a
, 직원연락처 b
where a.직원ID = b.직원ID
and a.직원ID in ('A0001', 'A0002', 'A0003')
and b.구분코드 = ('휴대폰');

select a.직원ID
, a.이름
, b.주소
from 직원 a inner join 직원주소 b
on (a. 직원id = b.직원id)
where a.직원ID = 'A0006';

-- 오라클 -> ANSI

--(1/3)
select a.직원ID
, a.이름
, b.주소
from 직원 a left outer join 직원주소 b
on (a.직원ID = b.직원ID)
where a.직원ID IN ('A0005','A0008');

--(2/3)
select b.직원ID
, b.이름
, a.주소
from 직원주소 a right outer join 직원 b
on (a.직원ID = b.직원ID);

--(3/3)
select a.직원ID
, a.이름
, a.나이
, b.연락처
from 직원 a inner join 직원연락처 b
on (a.직원ID = b.직원ID);


