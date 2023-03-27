rollback;
select * from 성적표;

--1. delete (Rollback이 가능)
delete from 성적표 ;

--2. truncate (rollback이 불가능) -- 실행하면 영구삭제
truncate table 성적표 ;

--3. drop (rollback이 불가능) -- 실행하면 영구삭제, 테이블도 날아감

create sequence 직원ID_SEQ
INCREMENT by 1
start with 1
minvalue 1
maxvalue 9999 ;

select 직원ID_SEQ.nextval from dual;

--INSERT INTO 직원 (
--    직원ID
--, 비밀번호
--, 이름
--, 성별
--, 나이
--, 입사일시
--, 주민등록번호
--, 연봉
--, 부서ID
--) VALUES (
--    'A'||LPAD(직원ID_SEQ.NEXTVAL , 4, '0')
--, '비밀번호123'
--, '새직원'
--, '여'
--, 30
--, SYSDATE
--, '930711-2441223'
--, 5000
--, 'D006'
--);

--drop sequence 직원ID_SEQ ;


--뷰 : 이 쿼리 자주 쓰니까 따로 저장 좀 하고싶다.
-- 우리가 만들때 써놓은 쿼리를 재작성 할 뿐이다.

create view 부서별최고연봉_view as 
select 부서ID, MAX(연봉) AS 부서별최고연봉
from 직원
group by 부서ID
order by 부서ID ;

select * from 부서별최고연봉_view ;

select a.이름
,a.연봉
,b.부서별최고연봉
from 직원 a
, ( select 부서ID, MAX(연봉) AS 부서별최고연봉
from 직원
group by 부서ID
order by 부서ID 
) b
where a.부서ID =b.부서ID
and a.연봉 =  b.부서별최고연봉 ;

create view 직원_민감정보제외 as
select 직원ID
,이름
,부서ID
from 직원;

select * from 직원_민감정보제외 ;
