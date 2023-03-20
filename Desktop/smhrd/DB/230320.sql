select *
from 직원 ;

select 직원ID, 연봉, 1000, 연봉 - 1000 as 감봉
from 직원;

select 직원ID
       , 연봉
       ,(연봉 * 0.1) as 보너스 , 연봉 + (연봉 * 0.1) as 실수령액
from 직원;

select 이름, 연봉, 이름 || ' 직원의 연봉은 ' || 연봉 || '만원 입니다.'
from 직원;

select 이름, 나이, 이름 || ' 직원의 나이는 ' || 나이 || ' 살입니다.' as 직원나이정보
from 직원 ;

select 패스워드, substr(패스워드, 2, 3) as substr한패스워드
from 직원;

select TRIM('   안녕하세요    '), TRIM(    '안  녕 하 세 요')
from dual ;

select 주민등록번호, REPLACE(주민등록번호 , '-' , '')
from 직원 ;

select substr ('https://smhrd.or.kr/' , 9, 5 )
from dual ;

select 직원ID, 주민등록번호 , substr(주민등록번호, 0, 6) as 생년월일
from 직원 ;

select 직원ID, 구분코드, 연락처, replace(연락처 , '-', '') as 연락처번호만
from 직원연락처 ;

select 연봉 , MOD(연봉, 1000)
from 직원 ;

select sysdate from dual ;

select sysdate + 1 as 하루더함
    ,sysdate + 1/24 as 한시간더함
    ,sysdate + 1/24/60 as 일분더함
    ,sysdate + 1/24/60/60 as 일초더함
from dual;

select 직원ID
, 입사일시
, ADD_MONTHS(입사일시 , 60)
, ADD_MONTHS(입사일시 , -60)
from 직원;

select 직원ID
, 입사일시
, ADD_MONTHS(입사일시 , 60) as 오년후입사일시
from 직원;

select sysdate + 3 as 삼일더함
from dual ;

1.
SELECT TO_NUMBER('1') FROM DUAL ;
//문자형 (' 을 숫자형 (1) 로 형변환해 출력
2.
SELECT TO_CHAR(1) FROM DUAL ;
//숫자형 ( 을 문자형 ('1') 로 형변환해 출력
3.
SELECT TO_CHAR(SYSDATE , 'YYYY/MM/DD HH24:MI:SS') FROM DUAL ;
4.
SELECT TO_DATE('20230101' , 'YYYY/MM/DD') FROM DUAL ;
5.
SELECT TO_DATE('20230101141212' , 'YYYY/MM/DD HH24:MI:SS') FROM DUAL;

/*
3번 문제는 날짜형 (SYSDATE) 을 문자형으로 변경합니다 . 포맷의미는 꼭 외웁시다
4번 문제는 문자형 (' 을 날짜형 (2023/01/01 14:00:00) 으로 변경합니다
5번 문제는 문자형 (' 을 날짜형 (2023/01/01 14:12:12) 으로 변경합니다 .
*/

/*포맷 */
YYYY : 연도 4자리
MM : 월 2자리 (1월이라면 01)
DD : 일 2자리 (1일이라면 01, 20일이라면 20)
HH24 : 시간을 의미 (24시간제) 0 ~ 23시
HH : 12시간제 (0 ~ 11)
MI(MINUTES) : 분 (0 ~ 59)
SS(SECONDS) : 초 (0 ~ 59)