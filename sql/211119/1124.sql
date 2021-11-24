-- DML

SELECT @@autocommit

SET autocommit = 0;

USE scott;

-- ============ insert =============

TRUNCATE TABLE dept01;

INSERT INTO dept01(deptno, dname, loc) VALUES(10,'ACCOUNTING','NEW YORK');

ROLLBACK;

-- COMMIT;

-- INSERT INTO dept01(deptno, dname, loc) VALUES(10,'ACCOUNTING'); 컬럼값과 벨류 값이 매치가 안되어 에러

-- INSERT INTO dept01(deptno, dname, loc) VALUES(10,'ACCOUNTING','NEW YORK', 40); 컬럼값과 벨류 값이 매치가 안되어 에러

INSERT INTO dept01(deptno, dname) VALUES(10,'ACCOUNTING');

COMMIT;

INSERT INTO dept01(deptno, dname, loc) VALUES(10, 'ACCOUNTING','NEW YORK');
INSERT INTO dept01 VALUES(10, 'ACCOUNTING','NEW YORK'); -- 지정된 컬럼값이 있으면 생략하고 벨류값만 순서에 맞게 나열해서 입력가능

-- sam01 예제
CREATE TABLE sam01(
	EMPNO DECIMAL(4),
	ENAME VARCHAR(10),
	JOB VARCHAR(9),
	SAL DECIMAL(7,2)
	);
	
INSERT INTO sam01 VALUES(1000,'APPLE','POLICE', 10000);
INSERT INTO sam01 VALUES(1010,'BANANA','NURSE', 15000);
INSERT INTO sam01 VALUES(1020,'ORANGE','DOCTOR', 25000);

COMMIT;

-- null 입력
INSERT INTO dept01(deptno, dname) VALUES(30, 'SALES'); -- NULL값 입력 방법1
INSERT INTO dept01 VALUES(40, 'OPERATIONS', NULL); -- NULL값 입력 방법2
INSERT INTO dept01 VALUES(50, '', 'CHICAGO'); -- 공백''은 NULL이 아닌 빈문자열임을 알것

COMMIT;

-- ========== 서브쿼리를 통한 값 입력 ==========
-- TRUNCATE TABLE dept02;
-- DROP TABLE dept02;
-- 빈 데이터 값을 가진 테이블 가져오기
CREATE TABLE dept02
AS
SELECT * FROM dept WHERE 1=0;

-- 데이터 값 서브쿼리로 채워넣기
INSERT INTO dept02 SELECT * FROM dept;
COMMIT;



-- ============== UPDATE ============

CREATE TABLE emp01
AS SELECT * FROM emp;

UPDATE emp01 SET deptno=30;

ROLLBACK;
COMMIT;

-- 월급 10% 인상
UPDATE emp01 SET sal=sal*1.10;


UPDATE emp01 SET HIREDATE = CURDATE();

-- 부서번호가 10번인 부서인 사원의 부서번호를 30번으로 교체
UPDATE emp01 SET deptno=30 WHERE deptno=10;

-- 급여가 3000이상인 사원만 급여를 10% 인상
-- UPDATE emp01 SET sal= FLOOR(sal+sal*0.1) WHERE sal >= 3000;
SELECT * FROM emp01;

-- scott 사원의 부서번호를 30번으로, 직급은 manager로 수정
UPDATE emp01 SET DEPTNO=20, JOB='MANAGER' WHERE ENAME = 'SCOTT';

-- SCOTT 사원의 입사일자를 오늘로, sal를 50으로, comm 4000으로 수정
UPDATE emp01 SET HIREDATE = CURDATE(), SAL = 50, COMM = 4000 WHERE ENAME = 'SCOTT';

ROLLBACK;

-- 20번 부서의 지역명을 40번 부서의 지역명으로 변경하기
TRUNCATE TABLE dept01;

INSERT INTO dept01
SELECT * FROM dept;

COMMIT;
ROLLBACK;

UPDATE dept01 SET LOC=(SELECT LOC FROM dept01 WHERE DEPTNO=40)
WHERE DEPTNO=20;

SELECT * FROM dept01;

-- 부서번호가 20번인 부서의 부서명과 지역명을 부서번호가 40번인 부서와 동일하게 변경
UPDATE dept01 
SET loc = (SELECT loc FROM dept01 WHERE deptno = 40) , 
dname = (SELECT dname FROM dept01 WHERE deptno = 40) 
WHERE deptno = 20;

COMMIT;
-- ORACLE, ALTIBASE,(O)           MYSQL, MYRIADB(X)
/*
UPDATE dept01 
SET (DNAME, LOC) = (SELECT DNAME, LOC FROM dept01 WHERE DEPTNO=40)
WHERE DEPTNO = 20; 
*/ 


-- ============= DELETE =============
-- TRUNCATE TABLE AAAA01 는 바로 커밋이 되어버리기에 되돌릴 수 없음.
DELETE FROM dept01;
ROLLBACK; -- DELETE는 롤백 가능

SELECT * FROM dept01;

-- 부서 테이블에서 30번 부서만 삭제한다
DELETE FROM dept01
WHERE DEPTNO =30;

-- 부서명이 'SALES'인 부서를 삭제
DELETE FROM dept01
WHERE DEPTNO = (SELECT DEPTNO FROM dept01 WHERE DNAME = 'SALES');