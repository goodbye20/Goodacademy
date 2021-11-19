SELECT * FROM emp;

SELECT * FROM salgrade;

SELECT * FROM dept;

SELECT * FROM bonus;

-- 스키마 정보 알아보기
SHOW DATABASES;

-- 스키마 사용하기
USE scott;

-- 해당 스키마의 테이블에 대한 정보 검색
-- (테이블이란 데이터를 담는 틀)
SHOW TABLES;

-- 해당 테이블의 구조를 확인하기
/*
field : 컬럼명
type : 형식
Null : 비어있는 데이터를 허용할지 판단하는 유무
key : 테이블의 기준이 되는 컬럼 속성 
*/
DESC emp;



-- select --
-- 해당 테이블이나 항목을 선택하고 색인하는  명령어

-- DEPT 테이블에 있는 내용보기
SELECT * FROM dept;

-- 특정 컬럼에 대한 정보 색인
-- empno, ename 컬럼의 정보만 색인
SELECT empno, ename FROM emp;

-- empno, ename, job, sal 컬럼의 정보만 색인 
SELECT empno, ename, job, sal FROM emp;

-- SELECT 상에서 컬럼과 연산 수행
-- 더하기, 뺴기, 곱하기, 나누기 등 연산가능
SELECT ename, sal, sal*12 FROM emp;

-- null에는 연산을 해줘도 역시 null(null은 정해진 값이 아니기 때문에 연산,비교, 할당이 불가능하다.
SELECT ename, comm+1000 FROM emp;

-- NVL(항목(columm), 대체하여 줄 값)
-- IFNULL(항목(columm), 대체하여 줄 값)
SELECT ename, NVL(comm,0) FROM emp;

-- 0으로 null을 대체해준후 1000이라는 값을 더함
SELECT ename, NVL(comm,0)+1000 FROM emp;
SELECT ename, IFNULL(comm,0)+2000 FROM emp;

-- ALias
-- : 지정된 컬럼의 별칭을 지정하는 역할
SELECT ename, IFNULL(comm,0)+1000 AS inc FROM emp;
-- Alias 설정 시 as 는 생략이 가능
SELECT ename, IFNULL(comm,0)+1000  inc FROM emp;

-- ALias 설정시 Alias가 문장으로 되어있다면 " " 사용하여 설정이 가능
SELECT ename, IFNULL(comm,0)+1000 "i n c" FROM emp;
-- ""를 사용하여 한글로 ALiase 지정 가능
SELECT ename, IFNULL(comm,0)+1000 AS "임금상승" FROM emp;



-- distinct
-- : 중복 데이터를 소거할 때 사용하는 명령어
SELECT DISTINCT deptno FROM emp;
-- 다른 컬럼이랑 함꼐 쓰려면 뒤에 콤마와 함께 붙여준다.
SELECT DISTINCT deptno, ename FROM emp;



-- where --
-- : 색인, 삭제, 수정시 조건을 부여하기 위해 사용디는 명령어
SELECT * FROM emp WHERE sal >= 3000;

SELECT * FROM emp WHERE deptno = 10;

-- where 를 활용한 문자 데이터 조회
SELECT empno, ename, sal
FROM emp
WHERE ename='FORD';

-- where 를 활용한 날짜 데이터 조회
SELECT *
FROM emp
WHERE hiredate <= '1981/09/01';


-- AND 연산 이용
-- 사원의 부서 소속이 10번 부서이고 job이 manager인 사원의 모든 정보
SELECT * 
FROM emp 
WHERE deptno = 10 AND job = 'manager';

-- OR 연산 이용  
-- 사원의 부서가 10번 부서이거나 직급이 manager인 사원의 정보 출력
SELECT * 
FROM emp 
WHERE deptno = 10 OR job = 'manager';

-- NOT 연산 이용
-- 사원의 부서가 10번 부서가 아닌 사람들의 정보를 출력
SELECT * 
FROM emp 
WHERE NOT deptno = 10; 

-- 사원의 급여가 2000이상이고, 3000이하인 사원의 정보를 조회
-- 1. AND 이용
SELECT * 
FROM emp 
WHERE sal >= 2000 AND sal <= 3000;

-- 2. BETWEEN 이용
SELECT *
FROM emp
WHERE sal BETWEEN 2000 AND 3000;

-- 사원의 comm이 300 이거나 500이거나 1400인 사원을 출력하라 
-- 1. OR 이용
SELECT * 
FROM emp 
WHERE comm = 300 OR comm = 500 OR comm = 1400;

-- 2. IN 이용(이 중 하나라도 값을 가지고 있으면~)
SELECT * 
FROM emp 
WHERE comm IN(300,500,1400);

-- 사원의 이름이 SCOTT 이면 출력
-- 1. 단순 WHERE, = 이용
SELECT * 
FROM emp 
WHERE ename = 'SCOTT';
-- 2. LIKE 이용(보통 문자값은 LIKE를 사용)
SELECT * 
FROM emp 
WHERE ename LIKE 'SCOTT';
-- 와일드 카드 기능을 사용하기 위해 LIKE를 문자색인시 주로 사용
-- % :
-- 문자가 없거나, 하나 이상의 문자가 어떤 값이 와도 상관없다.
-- _ :
-- 하나의 문자가 어떤 값이 와도 상관 없다.

-- 사원의 이름이 'A'로 시작하는 사원을 출력해 주세요
SELECT * 
FROM emp 
WHERE ename LIKE 'A%';
-- 사원의 이름에 'A' 문자가 포함되어 있으면 출력
SELECT * 
FROM emp 
WHERE ename LIKE '%A%';
-- 사원의 이름이 N으로 끝나는 사원에 대한 데이터 출력
SELECT * 
FROM emp 
WHERE ename LIKE '%N';

-- 사원의 커미션이 null인 사원 정보 출력
SELECT * 
FROM emp 
WHERE comm is NULL;
-- (null은 연산을 할수 없으며 =로는 색인을 할수없어 is를 사용해주어야함)


-- 정렬 --
-- ORDER BY

-- 사원의 월급을 기준으로 오름차순 정렬
-- ASC 오름차순 정렬(default 값이여서 생략가능)
SELECT * 
FROM emp 
ORDER BY sal;
-- DESC 오름차순 정렬
SELECT * 
FROM emp 
ORDER BY sal DESC;

-- 사원의 월급을 기준으로 내림차순 정렬을 하되
-- 월급이 같을 경우 사원의 이름순으로 오름차순 정렬을 하라
SELECT * 
FROM emp 
ORDER BY sal DESC, ename ASC;


-- LIMIT -- 
-- 제한을 두지않으면 과부하가 올수 있어서 보통 반드시 제한을 두는게 중요함
-- 모든 사원의 정보를 처음부터 5개까지만 출력
SELECT *
FROM emp
LIMIT 5;
-- 2부터 5까지만 출력
SELECT *
FROM emp
LIMIT 2, 5;
-- WHERE을 이용한 10개까지만 출력 
-- LIMIT이 없는 툴에서 잘활용
SELECT * FROM emp WHERE rownum() < 10;




-- 숫자 함수--


-- ABS :
-- 절대 값
SELECT ABS(-100);

-- CEILING :
-- 올림

-- ** FLOOR ** :
-- 내림

-- ROUND :
-- 반올림
SELECT CEILING (3.7), FLOOR(3.7), ROUND (3.7);
-- mod :
-- 나머지(타겟 값, 나눌 값)
SELECT MOD (14,3);
SELECT 14%3;

-- pow :
-- 제곱값
SELECT POW(3,2);
-- SQRT :
-- 제곱근 값
SELECT SQRT(9); 
-- rand :
-- 랜덤
SELECT RAND();
-- trancate : 
-- 버림
SELECT TRUNCATE(1234.1234, 2);
SELECT TRUNCATE(1234.1234, -2);

-- conv(타겟  값, 현재 진수, 바꿀진수) :
-- 진수변환
SELECT CONV(100, 10, 2);


--  문자 함수 --
-- 아스키 코드 변환 : ASCII('문자')
SELECT CHAR(65);
-- 캐릭터에 할당한 바이트 크기 : BIT_LENGTH
-- 문자의 개수 : CHAR_LENGTH
-- 할당된  바이트의 크기 : LENGTH
SELECT BIT_LENGTH('abc'), CHAR_LENGTH('abc'),LENGTH ('abc');
SELECT BIT_LENGTH('가나다'), CHAR_LENGTH('가나다'),LENGTH ('가나다');

-- 문자열 결합 : concat
SELECT CONCAT('2021','11','19');

-- 문자열 결합 with 구분자 : concat_ws
SELECT CONCAT_WS('/','2021','11','19');

-- 문자 데이터 중 인덱스 번쨰의 문자 데이터 추출 : ELT
SELECT ELT(2, 'a','b','c');

-- 찾을 문자열의 위치를 찾아서 위치값을 변환하는 함수 : FIELD
SELECT FIELD('b','a','b','c');

-- 문자열 리스트에서 위치를 찾아서 위치값을 반환 : FIND_IN_SET
SELECT  FIND_IN_SET('b','a,b,c');

-- 기존 문자열에서 부분 문자열을 찾아서 시작 위치를 반환 : instr, locate
SELECT INSTR('abc','b');
SELECT LOCATE('b','abc');

-- 숫자를 소수점 아래 자리수 까지만 표현 : format
-- (trancat은 결과값이 숫자로 그대로 남는 반면 포멧은 문자열이되어 연산을 하려하면 오류남)
SELECT FORMAT(123.1234,2);

-- BIN : 2진수 변환, HEX : 16진수 변환, OCT : 8진수 변환
SELECT  BIN(31), HEX(31), OCT(31);

-- 기준 문자열의 위치부터 길이만큼을 삽입할 문자여롤 변환 : INSERT
SELECT INSERT('가나다라마',2,3,'@@@');

-- 문자열의 왼쪽부터 정해진 길이만큼 반환한다
SELECT LEFT('가나다라마바',3);

-- 문자열의 오른쪽부터 정해진 길이만큼 반환한다
SELECT RIGHT('가나다라마바',3);

-- 대문자를 소문자로 변경 : LCASE
SELECT LCASE('aBcDe');
-- 소문자를 대문자로 변경 : UCASE
SELECT UCASE('aBcDe');

-- 문자열의 길이의 왼쪽을 늘린 후 빈곳을 해당 문자로 채움 : LPAD
-- 문자열의 길이의 오른쪽을 늘린 후 빈곳을 해당 문자로 채움 : RPAD
SELECT LPAD('가나다',5,'@');
SELECT RPAD('가나다',5,'@');

-- 왼쪽 빈공백 제거 : LTRIM
-- 오른쪽 빈공백 제거 : RTRIM
-- 양쪽 공백 모두 제거 : TRIM 
SELECT LTRIM('     ABC');
SELECT RTRIM('     ABC      ');
SELECT TRIM('     ABC            ');

-- 앞 또는 뒤쪽의 문자열에 반복되는 문자를 지울 경우 : trim from
SELECT TRIM(BOTH 'a' FROM 'aaababaaa');
