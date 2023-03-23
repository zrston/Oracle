DROP TABLE 수강생정보 ; 
DROP TABLE 성적표 ; 
CREATE TABLE 수강생정보 (
학생ID VARCHAR2(9) PRIMARY KEY , 
학생이름 VARCHAR2(50) NOT NULL , 
소속반 VARCHAR2(5) 
); 
CREATE TABLE 성적표 ( 
학생ID VARCHAR2(9) , 
과목 VARCHAR2(30) , 
성적 NUMBER , 
CONSTRAINT PK_성적표 PRIMARY KEY(학생ID , 과목) , 
CONSTRAINT FK_성적표 FOREIGN KEY(학생ID) REFERENCES 수강생정보(학생ID) 
) ; 
INSERT INTO 수강생정보 VALUES ('S0001' , '김현철' , 'A') ; 
INSERT INTO 수강생정보 VALUES ('S0002' , '문현중' , 'A') ; 
INSERT INTO 수강생정보 VALUES ('S0003' , '강문치' , 'B') ; 
INSERT INTO 수강생정보 VALUES ('S0004' , '박나선' , 'B') ; 
INSERT INTO 수강생정보 VALUES ('S0005' , '신태강' , 'B') ; 
INSERT INTO 수강생정보 VALUES ('S0006' , '물고기' , 'C') ; 
INSERT INTO 수강생정보 VALUES ('S0007' , '자라니' , 'C') ; 
INSERT INTO 수강생정보 VALUES ('S0008' , '공팔두' , 'C') ; 
INSERT INTO 수강생정보 VALUES ('S0009' , '최팔현' , 'C') ; 
INSERT INTO 성적표 VALUES('S0001' ,'국어' , 90); 
INSERT INTO 성적표 VALUES('S0001' ,'수학' , 85); 
INSERT INTO 성적표 VALUES('S0001' ,'영어' , 100); 
INSERT INTO 성적표 VALUES('S0002' ,'국어' , 100); 
INSERT INTO 성적표 VALUES('S0002' ,'수학' , 100); 
INSERT INTO 성적표 VALUES('S0002' ,'영어' , 20); 
INSERT INTO 성적표 VALUES('S0003' ,'국어' , 100); 
INSERT INTO 성적표 VALUES('S0003' ,'수학' , 100); 
INSERT INTO 성적표 VALUES('S0003' ,'영어' , 20); 
INSERT INTO 성적표 VALUES('S0004' ,'국어' , 85); 
INSERT INTO 성적표 VALUES('S0004' ,'수학' , 40); 
INSERT INTO 성적표 VALUES('S0004' ,'영어' , 60); 
INSERT INTO 성적표 VALUES('S0005' ,'국어' , 100); 
INSERT INTO 성적표 VALUES('S0005' ,'수학' , 100); 
INSERT INTO 성적표 VALUES('S0005' ,'영어' , 100); 
INSERT INTO 성적표 VALUES ( 'S0006' , '국어' , NULL ) ; 
INSERT INTO 성적표 VALUES ( 'S0006' , '수학' , NULL ) ; 
INSERT INTO 성적표 VALUES ( 'S0006' , '영어' , NULL ) ; 
COMMIT; 


SELECT * FROM 수강생정보 ;
SELECT * FROM 성적표 ;

select 소속반 , 학생이름
from 수강생정보
group by 소속반 ;

-- count() ,avg(), sum(), max() , min()
select 소속반, count(*)
from 수강생정보
group by 소속반;

--집계함수의 종류

select 학생ID, ROUND (AVG(성적), 1) as 성적
from 성적표
group by 학생ID ;

select 학생ID, round(avg(성적) ,1) as 평균성적
from 성적표
group by 학생ID ;

select max(연봉) as 최고연봉, min(연봉) as 최저연봉
from 직원 ;

select 소속반, count(*)
from 수강생정보
group by 소속반;

select 학생ID, avg(성적) as 수학제외한평균
from 성적표
where 과목 != '수학'
group by 학생ID;

select 부서ID, sum(연봉) as 부서별연봉합계
from 직원
group by 부서ID;

select a.직원ID, count(b.연락처) as 연락처개수
from 직원 a, 직원연락처 b
where a.직원ID = b.직원ID(+)
group by a.직원ID;

--having
select 학생ID, round( avg(성적) , 1) as 평균성적
from 성적표
group by 학생ID
having avg(성적) <= 75;

select 소속반, count(*) as 인원수
from 수강생정보
group by 소속반
having count(*) >= 3;

select 부서ID, max(연봉) as 최고연봉
from 직원
group by 부서ID
having max(연봉) = 7500;

select 학생ID, round (avg(성적) ,1) as 평균성적
from 성적표
group by 학생ID
having avg(성적) is not null;


--ORDER BY
select *
from 직원
order by 이름 desc ;

select *
from 직원
order by 부서ID, 이름 DESC;

select 직원ID
, 이름
, 연봉 as 직원들의연봉
, 연봉 * 01. as 보너스
from 직원
order by 3;

