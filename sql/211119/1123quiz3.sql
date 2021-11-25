-- 문제 1
-- 다음과 같은 형태의 dept를 만들어라
-- 열이름		데이터 형식	NULL 적용		PK
-- DEPTNO	       INT			   X	   		O
-- DNAME	       VARCHAR(14)   	X
-- LOC	     	VARCHAR(13)       O
create database mydb;
use mydb;


CREATE TABLE dept02(
	DEPTNO INT NOT NULL DEFAULT 0,
	DNAME VARCHAR(14) NOT NULL default 'unknown',
	LOC VARCHAR(13)
	PRIMARY KEY(deptno)
);



-- 문제 2
-- 만들어진 DEPT테이블에 아래의 데이터를 삽입하라
-- 10, '경리부', '서울'
-- 20, '인사부', '인천'
-- 30, '영업부', '용인'
-- 40, '전산부', '수원'
INSERT INTO dept02 VALUES(10, '경리부', '서울'),
(20, '인사부', '인천'),
(30, '영업부', '용인'),
(40, '전산부', '수원');
-- 문제 3
-- 만들어놓은 mydb에 아래와 같이 테이블을 만들어라.
-- 테이블명 : EMP
-- 열이름
-- - deptNo
-- - deptName 
-- - job 
-- - sal
-- 데이터 형식 : int, char(10), char(5), int
-- PK : deptNo
CREATE TABLE emp02(
	DEPTNO INT,
	DEPTNAME CHAR(10),
	JOB CHAR(5),
	SAL INT
);
-- 문제4
-- 만들어진 emp테이블에 아래의 데이터를 삽입하라
-- 10, '인사팀', '사원', 250
-- 20, '재무팀', '대리', 300
-- 30, '법무팀', '과장', 350
-- 40, '영업팀', '사원', 250
-- 50, '설계팀', '부장', 500
INSERT INTO emp02 VALUES(10, '인사팀', '사원', 250);
INSERT INTO emp02 VALUES(20, '재무팀', '대리', 300);
INSERT INTO emp02 VALUES(30, '법무팀', '과장', 350);
INSERT INTO emp02 VALUES(40, '영업팀', '사원', 250);
INSERT INTO emp02 VALUES(50, '설계팀', '부장', 500);

-- 문제5
-- emp 테이블에서 job이 '사원'들만 sal을 180으로 고치시오.
UPDATE emp02 SET SAL = 180
WHERE JOB = '사원';

-- 문제6
-- emp테이블에서 '법무팀'을 삭제하세요.
DELETE FROM emp02
WHERE DEPTNAME = '법무팀';

-- 문제 7
-- 만들어놓은 mydb에 아래와 같이 테이블을 만들어라.
-- 테이블명 : videotbl
-- 열이름	    데이터형식		NULL허용	PK	기타
-- video_id int	       	x		O	자동증가(1에서부터 시작)
-- title	varchar(20)	x		x	
-- genre	varchar(8)	x		x	
-- star		varchar(10)	O		X	
CREATE TABLE videotbl02(
	video_id INT NOT NULL AUTO_INCREMENT,
	title VARCHAR(20) NOT NULL,
	genre VARCHAR(8) NOT NULL,
	star VARCHAR(10),
	PRIMARY KEY(video_id)
);

-- 문제8
-- 만들어진 videotbl테이블에 아래의 데이터를 삽입하라
-- null, '태극기휘날리며', '전쟁', '장동건'
-- null, '대부', '액션', null
-- null, '반지의제왕', '액션', '일라이저우드'
-- null, '친구', '액션', '유오성'
-- null, '해리포터', '환타지', '다니엘'
-- null, '형', '코미디', '조정석'
INSERT INTO videotbl02 VALUES
(NULL, '태극기휘날리며', '전쟁', '장동건'),
(null, '대부', '액션', null),
(null, '반지의제왕', '액션', '일라이저우드'),
(null, '친구', '액션', '유오성'),
(null, '해리포터', '환타지', '다니엘'),
(NULL, '형', '코미디', '조정석');
  
-- 문제9
--  videotbl 테이블에서 star값이 없는 것만 출력하시오.
SELECT *
FROM videotbl02
WHERE star IS NULL;
 
-- 문제10
--  videotbl테이블에서 장르가 액션인것만 출력하시오.
SELECT *
FROM videotbl02
WHERE genre = '액션';
 
-- 문제11
--   videotbl테이블에서 주인공이 유오성이 것만 삭제하시오
DELETE FROM videotbl02 WHERE star = '유오성';

-- 문제12
--   videotbl테이블에서 제목이 형인 것을 동생으로 바꾸시오.
UPDATE videotbl02 SET title = '동생' WHERE title = '형';

-- 문제13
--   videotbl테이블 있는 모든 데이터를 지우시오.
DELETE FROM videotbl02;

-- 문제14
--   videotbl테이블을 제거하시오.
DROP TABLE videotbl02;
