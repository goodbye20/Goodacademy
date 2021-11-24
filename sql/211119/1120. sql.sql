USE scott;

-- 문자열을 횟수만큼 반복 : REPEAT
SELECT repeat('abc',3);

-- 문자열 내에 타겟 문자를 찾아서 바꿀 문자열로 바꿔줌 : REPLACE
SELECT REPLACE('it is banana', 'banana', 'apple');

-- 문자열을 가꾸로 정렬 : REVERSE
SELECT REVERSE('가나다');

-- 길이만큼 공백으로 지원 : SPACE
SELECT CONCAT('ab',SPACE(5),'cd');

-- 시작위치부터 길이만큼 문자열을 반환 : SUBSTRING
SELECT SUBSTRING('abcdef',3,2);

-- 문자열부터 시작해서  마지막 반복된 구분자를 기준으로 버림  : SUBSTRING_INDEX
SELECT SUBSTRING_INDEX('oklinkgh.tistory.com','.',2);
SELECT SUBSTRING_INDEX('oklinkgh.tistory.com','.',-2);




-- 날짜 및 시간 함수 --
-- 기준일에 일정 일 수를 더한 결과를 출력 : ADDDATE
SELECT ADDDATE('2020-01-01',INTERVAL 31 DAY);
-- 기준일에 일정 일 수를 뺀 결과를 출력 : SUBDATE
SELECT SUBDATE('2020-01-01',INTERVAL 31 DAY);
-- 기준시간안에 일정 시간을 더한 결과를 반환 : ADDTIME
SELECT ADDTIME('2020-01-01 21:20:00','01:00:00');
-- 기준시간안에 일정 시간을 더한 결과를 반환 : SUBTIME
SELECT SUBTIME('2020-01-01 21:20:00','01:00:00');
-- 현재 시간을 출력 : now
SELECT NOW();
-- 년 : YEAR, 월 : MONTH, 일 : DAYOFMONTH, 시 : HOUR, 분 : MINUTE, 초 : SECOND, 밀리초 : MICROSECOND
SELECT YEAR(NOW()), MONTH(NOW()), DAYOFMONTH(NOW()), HOUR(NOW()), MINUTE(NOW()), SECOND(NOW());

-- 년월일 : DATE, 시분초 : TIME
SELECT DATE(NOW()), TIME(NOW());

-- 남은 일자 계산 : DATEDIFF
SELECT DATEDIFF('2020-01-05', '2020-1-1');
-- 남은 시간  계산 : DATEDIFF
SELECT TIMEDIFF('14:30:00', '06:20:00');

-- 요일 출력 : DAYOFWEEK
SELECT DAYOFWEEK(NOW());
-- 월 이름 출력 : MONTHNAME
SELECT MONTHNAME(NOW());
-- 1년 중 몇일이 지났는가 : DAYOFYEAR
SELECT DAYOFYEAR(NOW());

-- 주어진 월의 마지막 날을 반환 : LAST_DAY
SELECT LAST_DAY('2021-11-22');
-- 시간을 초단위로 계산 : TIME_TO_SEC
SELECT TIME_TO_SEC('3:00:00');

-- 형변환 함수
SELECT CAST(NOW() AS SIGNED), CONVERT(NOW(), SIGNED);
SELECT CAST(20211122 AS DATE), CONVERT(20211122, DATE);

-- 조건에 따라 반환될 값을 참과 거짓으로 구분하여 출력할 때 사용 : if
SELECT if(1<3,'true','false');
SELECT if(1=1,'남자','여자');

-- 양 측의 값이 같다면 null을 반환 아니면 첫번째 값 반환 : nullif
SELECT NULLIF(1,2);

-- nullIf는 주로 검색하는 값을 좁히기 위해 null을 줄때 사용
-- A B 예시
SELECT ename, deptno ,NULLIF(deptno, 10)
-- ex) deptno 10인 그룹은 제외된 20, 30 만 색인 할수 있음
FROM emp;

-- switch~case : case
SELECT case 10
	when 1 then 'a'
	when 5 then 'b'
	when 10 then 'c'
	ELSE '?'
END;

SELECT ename, deptno, 
	case when deptno=10 then 'accounting'
		  when deptno=20 then 'research'
		  when deptno=30 then 'sales'
		  when deptno=40 then 'operations'
	END AS dname
FROM emp;



-- 그룹함수 --
-- 모든 sal의 총합을 구하는 문제 : sum(sal)
-- null은 연산이 되지 않기떄문에 null값을 가진 컬럼을 제외한 값이 계산된다고 생각
SELECT SUM(sal)
FROM emp;

SELECT SUM(comm)
FROM emp;

SELECT AVG(comm)
FROM emp;

SELECT MAX(sal), MIN(sal)
FROM emp;

SELECT COUNT(comm)
FROM emp;

-- 원하는 컬럼들의 값만을 색인하여 출력값을  받을때 : GROUP BY
SELECT job, COUNT(*)
FROM emp
GROUP BY job;

-- 소속 부서별 최대 급여, 최소 급여
SELECT deptno, MAX(sal), MIN(sal)
FROM emp
GROUP BY deptno;

-- 소속 부서의 평균급여가 2000이상인 부서의 부서코드와 평균급여
-- 그룹 함수에서 조건절을 사용하려면 HAVING을 사용해야만함.
SELECT deptno, AVG(sal)
FROM emp
GROUP BY deptno
HAVING AVG(sal) >= 2000;

-- 소속 부서별 최대 급여, 최소 급여를 구하되 최대 급여가 3000이상인 부서만 출력
SELECT deptno, MAX(sal), MIN(sal)
FROM emp
GROUP BY deptno
HAVING MAX(sal) >= 3000;

-- 각 부서의 직업을 기준으로 각 직업의 급여의 합을 출력하는 sal문을 작성하시오
SELECT deptno, job, SUM(sal)
FROM emp
GROUP BY deptno, job;

-- with rollup
SELECT deptno, job, SUM(sal)
FROM emp
GROUP BY deptno, job WITH ROLLUP;




-- Join 문--
-- cross join = m * n 방식의 row를 매치시키는 것(사용 빈도 낮음) => 14*4 = 56
SELECT * 
FROM emp CROSS JOIN dept;

-- Equal join : 조인 대상이 되는 두 테이블에서 공통적으로 존재하는 컬럼의 값이 일치되는
--              행을 연결하여 결과를 생성하는 조인 방식 
SELECT * 
FROM emp e INNER JOIN dept d
ON e.DEPTNO = d.DEPTNO;

-- 사원이름이 `SCOTT`인 사원의 근무지를 출력하라
SELECT loc, ename
FROM emp e INNER JOIN dept d
ON e.DEPTNO = d.DEPTNO
WHERE e.ENAME = 'scott';

-- 'FORD' 가 근무하는 곳의 부서번호와 부서명을 출력하라
SELECT ename, e.deptno, dname
FROM emp e INNER JOIN dept d
ON e.DEPTNO = d.DEPTNO
WHERE e.ENAME = 'FORD';

-- 각 사원들의 연봉 등급을 출력하라
SELECT ename, sal, grade
FROM emp INNER JOIN salgrade
ON sal BETWEEN losal AND hisal;

-- 모든 사원들의 상사이름과 상사의 사원번호를 출력하라
SELECT a.ENAME, a.MGR, b.ENAME
FROM emp a INNER JOIN emp b
ON. a.MGR = b.EMPNO;

-- 상사가 KING인 사원들의 이름과 직급을 출력하세요
SELECT e.ENAME, e.JOB, b.ENAME
FROM emp e INNER JOIN emp b
ON e.MGR = b.EMPNO
WHERE b.ENAME = 'KING';

-- outer join
-- 상사가 king인 사원들의 상사 이름과 상사의 사원번호를 출력하라(KING 포함)
SELECT a.ename employee, b.ename manager
FROM emp a LEFT OUTER JOIN emp b
ON a.MGR = b.EMPNO;

-- 모든 부서들을 출력하고 해당 부서에 속한 사원의 이름을 출력하라
-- 참고 : 반드시 모든 부서들이 출력되어야함
-- SELECT a.ename , b.dname
-- FROM emp a right OUTER JOIN dept b
-- ON a.DEPTNO = b.DEPTNO;
 SELECT a.ename , b.dname
 FROM emp a right OUTER JOIN dept b
 USING(DEPTNO);
-- 컬럼명이 동일할때 on 대신 using으로 조인문 연결가능



-- DEPT01 테이블 작성
CREATE TABLE DEPT01(
DEPTNO INT(2),
DNAME VARCHAR(14));

INSERT INTO DEPT01 VALUES(10, 'ACCOUNTING');
INSERT INTO DEPT01 VALUES (20, 'RESEARCH');

-- DEPT02 테이블 작성

CREATE TABLE DEPT02(
DEPTNO INT(2),
DNAME VARCHAR(14));

INSERT INTO DEPT02 VALUES(10, 'ACCOUNTING');
INSERT INTO DEPT02 VALUES (30, 'SALES');

COMMIT;


-- union : 중복된 row를 제거하고 두 테이브르이 색인 결과를 합쳐서 하나의 테이블로 
--         출력할 때  사용이 가능하다.
SELECT e.empno, e.ename, d.dname
FROM emp e INNER JOIN dept01 d
USING(deptno)
UNION
SELECT e.empno, e.ename, d.dname
FROM emp e INNER JOIN dept02 d
USING(deptno);

-- union all: 중복되는 열까지 모두 합쳐서 결과값을 결합
SELECT e.empno, e.ename, d.dname
FROM emp e INNER JOIN dept01 d
USING(deptno)
UNION ALL 
SELECT e.empno, e.ename, d.dname
FROM emp e INNER JOIN dept02 d
USING(deptno);



-- ============= 서브쿼리 ===========--
-- scott과 같은 부서에서 근무하는 사원의 이름과 부서번호를 출력하라
SELECT a.ename, a.deptno 
FROM emp a INNER JOIN emp b 
ON a.DEPTNO = b.DEPTNO
WHERE b.ENAME = 'SCOTT';


SELECT ename, deptno
FROM emp
WHERE DEPTNO = (SELECT DEPTNO
					 FROM emp
					 WHERE ename = 'scott');
					 
-- scott과 같은 지역에서 근무하는 사원의 이름과 부서번호를 출력하라					 
SELECT a.ename, b.deptno
FROM emp a INNER JOIN dept b
USING(deptno)
WHERE b.loc = (SELECT b.loc
					 FROM emp a INNER JOIN dept b
					 USING(deptno)
					 WHERE a.ename = 'scott');

-- scott과 동일한 직책을 가진 사원을 출력하라
SELECT ename
FROM emp
WHERE job = (SELECT job 
				 FROM emp
				 WHERE ename = 'scott');
				 
-- 전체 사원의 평균 급여보다 더 많이 받는 사원의 이름과 급여를 출력하라
SELECT ename, sal
FROM emp
WHERE sal > (SELECT avg(sal)
				 FROM emp);
				 
-- 급여를 3000 이상 받는 사원이 소속된 부서와 동일한 부서에서 근무하는 사원을 출력하시오
SELECT *
FROM emp
WHERE deptno IN(SELECT DISTINCT(deptno) FROM emp WHERE sal >= 3000);

-- 부서별로 가장 급여를 많이 받는 사원의 정보를 출력하라
SELECT *
FROM emp 
WHERE sal IN (SELECT MAX(sal) FROM emp GROUP BY DEPTNO);
