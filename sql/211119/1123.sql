USE scott;

-- create table 테이블 만들기
CREATE TABLE emp01(
	EMPNO DECIMAL(4),
	-- 정수 4자리
	ENAME VARCHAR(20),
	SAL DECIMAL(7,2)
	-- 정수 7자리 중 소수점 아래 2자리 (5자리)
)

-- EMP 테이블을 복사해서 새로운 테이블을 만들 경우
CREATE TABLE emp02
AS
SELECT * FROM emp;

-- EMP 테이블을 복사하는데 ename, empno 두개의 열만 복사하고 싶을 경우
CREATE TABLE emp03
AS
SELECT empno, ename FROM emp; 

-- 부서가 10번 부서의 데이터만 가져와서 테이블 EMP04를 생성할 경우
CREATE TABLE emp04
AS
SELECT * FROM emp
WHERE deptno=10;

-- 구조만 복사해오고 싶은 경우 
-- (where이라는 조건문의 성질을 이용해 모든 값을 false로
--  만들어서 데이터는 넘어오지 않고 구조만 본 뜨는 것)
CREATE TABLE emp05
AS
SELECT * FROM emp WHERE 1=0;

-- ========= ALTER TABLE ==========
-- emp01에 JOB 이라는 컬럼을 추가
ALTER TABLE emp01 ADD JOB VARCHAR(9);
-- JOB 컬럼 수정
ALTER TABLE emp01 MODIFY JOB VARCHAR(30);
ALTER TABLE emp01 MODIFY JOB VARCHAR(20);
-- 수정시 주의할 점이 크기를 늘리는건 상관이 없지만 
-- 들어있는 데이터크기보다 줄이려하면 오류발생
ALTER TABLE emp01 MODIFY JOB VARCHAR(10);

-- JOB 컬럼 삭제
-- ALTER TABLE emp01 DROP COLUMN JOB;

-- 테이블 삭제
-- DROP TABLE emp01;

-- 데이터만 삭제 할 경우
-- TRUNCATE TABLE emp02;

-- 테이블 이름을 바꿀경우
-- RENAME TABLE emp02 TO test;



-- DROP TABLE dept01;
CREATE TABLE dept01
AS
SELECT * FROM dept WHERE 0=1;

-- TRUNCATE TABLE dept01;
INSERT INTO dept01(deptno,dname,loc) VALUES(10, 'ACCOUNTING', 'NEW YORK');
ROLLBACK;

SET @@AUTOCOMMIT = 0;
SELECT @@AUTOCOMMIT;


