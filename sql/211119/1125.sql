-- JSON 타입을 컬럼으로 잡고있는 테이블 정의
USE SCOTT;

CREATE TABLE EMPLOYEES (
	ID INTEGER AUTO_INCREMENT PRIMARY KEY,
	NAME VARCHAR(200),
	PROFILE json
);

INSERT INTO employees(NAME,PROFILE) VALUES('홍길동','{"age":30, "gender":"man", "부서":"개발"}'),
('유관순','{"age":26, "gender":"woman", "부서":"회계"}'),
('임꺽정','{"age":41, "gender":"man", "부서":"총무"}');

-- 배열로 넣는방법
INSERT INTO employees(NAME,PROFILE) VALUES('김갑수','[35, "man","인사"]');

-- mysql, 마리아db에 추가된 Json데이터 함수 사용 
INSERT INTO employees(NAME,PROFILE) VALUES('이영주', JSON_OBJECT(
'age',41,
'gender','man',
'부서','연구'
));

INSERT INTO employees(NAME, PROFILE) VALUES('신사임당', JSON_OBJECT(
	'age',56,
	'gender','woman',
	'부서','영업',
	'자격증', JSON_ARRAY('리눅스 마스터','정보처리기사','CISA')
));

-- 이름과 부서를 출력하는 select 문장 
-- JSON_EXTRACT 활용 $.는 루트를 의미
SELECT id, NAME, JSON_EXTRACT(PROFILE, '$.부서') FROM employees;

-- 사원의 나이가 35세 이상인 사원들의 id, 이름, 나이를 출력해라
SELECT id, NAME, JSON_EXTRACT(PROFILE,'$.age') FROM employees
WHERE JSON_EXTRACT(PROFILE,'$.age') >= 35;

-- 배열로 넣어둔 JSON의 값에 접근할때
SELECT JSON_EXTRACT(PROFILE, '$[1]')
FROM employees
WHERE NAME = '김갑수';

-- JSON 컬럼에서 값으 치환해서 리턴하는 함수 : JSON_REPLACE

-- age 필드의 값을 30으로 변경
SELECT id, NAME, JSON_REPLACE(PROFILE, '$.age', 30)
FROM employees;

SELECT id, NAME, JSON_REPLACE(PROFILE, '$[0]', 30)
FROM employees
WHERE NAME = '김갑수';

-- gender 필드를 'none' 으로 수정해서 출력
SELECT JSON_REPLACE(PROFILE, '$.gender', 'none') FROM employees;

-- age필드의 값을 30,gender 필드를 'none'으로 수정하여 출력
SELECT JSON_REPLACE(PROFILE,
'$.age',30, 
'$.gender', 'none') FROM employees;

-- age필드에 값에 +1을 더해서 출력
SELECT id, NAME, JSON_REPLACE(PROFILE, '$.age', JSON_EXTRACT(PROFILE, '$.age')+1)
FROM employees;

-- age가 30인 사람의 id와 name을 출력
SELECT id, NAME
FROM employees
WHERE JSON_EXTRACT(PROFILE, '$.age') = 30;


DESC emp;

DESC information_schema.TABLE_CONSTRAINTS;

-- 제약조건 없는 테이블 생성
CREATE TABLE emp01(
	empno DECIMAL(4),
	ename VARCHAR(10),
	job VARCHAR(9),
	deptno DECIMAL(2)
);

-- 데이터 생성
INSERT INTO emp01 VALUES(NULL, NULL, 'salesman', 30);

SELECT * FROM emp01;

DELETE FROM emp01;

-- 기존에 생성된 테이블의 컬럼을 지정해 null 값이 허용되지 않게 변경
ALTER table emp01 MODIFY COLUMN empno DECIMAL(4) NOT NULL;
-- null 값이 허용되지 않게 변경 후 null 값을 넣으려하면 오류 발생


-- not null 제약 조건과 같이 생성
CREATE TABLE emp02(
	empno DECIMAL(4) NOT NULL,
	ename VARCHAR(10) NOT NULL,
	job VARCHAR(9),
	deptno DECIMAL(2)
);

-- unique
CREATE TABLE emp022(
	empno DECIMAL(4) UNIQUE,
	ename VARCHAR(10) NOT NULL,
	job VARCHAR(9),
	deptno DECIMAL(2)
);

INSERT INTO emp022 VALUES(7499, 'ALLEN', 'SALESMAN', 30);
-- INSERT INTO emp022 VALUES(7499, 'JONES', 'MANAGER', 30); -- empno에 값을 더 넣으려하면 유니크의 중복을 허용하지 않는 제약을 걸어두었기 때문에 오류가 발생
INSERT INTO emp022 VALUES(null, 'JONES', 'MANAGER', 30); -- 유니크라는 조건은 중복을 허용치 않겠다는 뜻이지 null을 허용하지 않겠다는 뜻이기 때문에 실행됨



CREATE TABLE emp041(
	empno DECIMAL(4),
	ename VARCHAR(10) NOT NULL,
	job VARCHAR(9),
	deptno DECIMAL(2),
	CONSTRAINT UNIQUE  emp041_empno_uk(empno)
);

SELECT * FROM information_schema.TABLE_CONSTRAINTS WHERE TABLE_NAME='emp041';

CREATE TABLE emp051(
	empno DECIMAL(4),
	ename VARCHAR(20),
	job VARCHAR(9),
	deptno DECIMAL(2),
	CONSTRAINT PRIMARY KEY emp051_empno_pk(empno)
);

INSERT INTO emp051 VALUES(7499, 'ALLEN', 'SALESMAN', 30);
-- INSERT INTO emp051 VALUES(7499, 'JONES', 'MANAGER', 30); -- 프라이머리키 또한 유니크와 같이 중복을 허용하지 않기  떄문에 더 값을 넣으려하면 오류가 발생
INSERT INTO emp051 VALUES(null, 'JONES', 'MANAGER', 30); -- 프라이머리 키는  중복을 허용치 않고 또한 null도 허용하지 않겠다는 뜻이기 때문에 실행됨



-- Auto_increment
CREATE TABLE emp052(
	empno INT UNSIGNED auto_increment,
	ename VARCHAR(20),
	job VARCHAR(9),
	deptno DECIMAL(2),
	CONSTRAINT PRIMARY KEY emp052_empno_pk(empno)
);

INSERT INTO emp052 VALUES(null, 'ALLEN', 'SALESMAN', 30);
INSERT INTO emp052 VALUES(null, 'JONES', 'MANAGER', 30);

SHOW TABLE STATUS WHERE NAME = 'emp052';
-- 다음에 올라갈 인덱스 값을 설정해주는 기능
ALTER TABLE emp052 AUTO_INCREMENT = 100;


-- FOREIGN KEY
CREATE TABLE emp06(
	empno DECIMAL(4) PRIMARY KEY,
	ename VARCHAR(20),
	job VARCHAR(9),
	deptno INT,
	-- foreign key와 참조하고자하는 키의 타입은 같아야한다(int면 똑같이 int)
	-- pk와 대상은 위치가 바뀌어도 괜찮다
	CONSTRAINT emp06_DEPTNO_FK FOREIGN KEY (DEPTNO) REFERENCES dept(DEPTNO)
);

INSERT INTO emp06 VALUES(7566, 'jones', 'manager', 50); -- 참고하고자하는 테이블(dept)에 없는 값(50)으로 값을 넣으려하면 오류 발생
INSERT INTO emp06 VALUES(7566, 'jones', 'manager', NULL); -- null은 참고하고자 하는 값은 null값을 제한하지 않았다면 값이 입력된다.(선택관계) 
                                                          -- 그러므로 강한 연결관계(필수관계)를 원한다면 foreign key지정시 not null로 null값을 제한해줘야한다.
INSERT INTO emp06 VALUES(7568, 'jones', 'manager', 30);

-- check 제약 조건
CREATE TABLE emp07(
	empno DECIMAL(4) PRIMARY KEY, 
	ename VARCHAR(10) NOT NULL,
	sal DECIMAL(7,2),
	CONSTRAINT emp07_sal_ck CHECK(sal BETWEEN 500 AND 5000),
	gender VARCHAR(1),
	CONSTRAINT emp07_gander_ck CHECK(gender IN('M','F'))
);

-- INSERT INTO emp07 VALUES(1111,'John',7000,'M'); -- 이 쿼리는 sal가 체크 제한에 오버되기 때문에 에러
-- INSERT INTO emp07 VALUES(1111,'John',3000,'F'); -- 이 쿼리는 sal가 체크 제한에 부합하지 않기  때문에 에러


-- default 제약 조건
CREATE TABLE dept03(
	deptno DECIMAL(2) PRIMARY KEY,
	dname VARCHAR(14),
	loc VARCHAR(13) DEFAULT 'seoul'
);

INSERT INTO dept03(deptno, dname) VALUES(10, 'accounting');
