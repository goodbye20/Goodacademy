USE scott;

SELECT * FROM emp;

SELECT * FROM dept;

DESC emp;

CREATE TABLE guest(
	cnt INT 
);

INSERT INTO guest VALUES(0);


USE scott;

CREATE TABLE ministore(
	stock INT
);

INSERT INTO ministore(stock) VALUES(0);

DESC ministore;

SELECT * FROM ministore;

USE mydb2;

CREATE TABLE member(
	uid INT AUTO_INCREMENT,
	uname VARCHAR(20) NULL,
	age DECIMAL(2) NULL,
	comments VARCHAR(255) NULL,
	CONSTRAINT member_pk
		PRIMARY KEY (uid)
);

INSERT INTO mydb2.member (uname, age, comments)
VALUES('홍길동',30,'안녕하세요');

CREATE TABLE bbs (
	sid INT AUTO_INCREMENT,
	title VARCHAR(255) NULL,
	owner VARCHAR(30) NULL,
	createdate DATE NULL,
	CONSTRAINT bbs_pk
		PRIMARY KEY (sid)
);

INSERT INTO mydb2.bbs(title, owner, createdate) VALUES('제목1','김부장','2021-12-06');
INSERT INTO mydb2.bbs(title, owner, createdate) VALUES('제목2','황과장','2021-12-03');
INSERT INTO mydb2.bbs(title, owner, createdate) VALUES('제목33','마대리','2021-12-01');
INSERT INTO mydb2.bbs(title, owner, createdate) VALUES('제목4','권사원','2021-12-02');
INSERT INTO mydb2.bbs(title, owner, createdate) VALUES('제목555','이주임','2021-12-02');
INSERT INTO mydb2.bbs(title, owner, createdate) VALUES('제목66','주책임','2021-12-01');
INSERT INTO mydb2.bbs(title, owner, createdate) VALUES('제목77','안이사','2021-12-03');
INSERT INTO mydb2.bbs(title, owner, createdate) VALUES('제목88','박전무','2021-12-02');
INSERT INTO mydb2.bbs(title, owner, createdate) VALUES('제목9999','곽사장','2021-12-06');
INSERT INTO mydb2.bbs(title, owner, createdate) VALUES('제목10','김사원','2021-12-01');
INSERT INTO mydb2.bbs(title, owner, createdate) VALUES('제목11','최상무','2021-12-02');
INSERT INTO mydb2.bbs(title, owner, createdate) VALUES('제목12','임대리','2021-12-02');
