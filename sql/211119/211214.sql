USE mydb2;

CREATE TABLE jdbc_table(
	int_data INT NOT NULL,
	str_data VARCHAR(255) NOT NULL
);

USE mydb3;
CREATE TABLE signuptable1(
	id VARCHAR(255) NOT NULL,
	password INT NOT NULL,
	name VARCHAR(255) NOT NULL,
	age VARCHAR(255) NOT NULL,
	gender VARCHAR(50) NOT NULL,
	email VARCHAR(255) NOT NULL
);

CREATE DATABASE `examdb1` /*!40100 COLLATE 'utf8mb3_general_ci' */

CREATE TABLE `bbs` (

      `id` INT(11) NOT NULL AUTO_INCREMENT,

      `title` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb3_general_ci',

      `owner` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb3_general_ci',

      `createdate` DATE NULL DEFAULT NULL,

      `content` LONGTEXT NULbbsL DEFAULT NULL COLLATE 'utf8mb3_general_ci',

      PRIMARY KEY (`id`) USING BTREE

)

COLLATE='utf8mb3_general_ci'

ENGINE=InnoDB

;

INSERT INTO `bbs` (`title`, `owner`, `createdate`, `content`) VALUES ('제목1', '김부장', '2021-12-06','안녕하세요1');

INSERT INTO `bbs` (`title`, `owner`, `createdate`, `content`) VALUES ('제목2', '황과장', '2021-12-03','반갑습니다2');

INSERT INTO `bbs` (`title`, `owner`, `createdate`, `content`) VALUES ('제목33', '마대리', '2021-12-01','어서오세요3');

INSERT INTO `bbs` (`title`, `owner`, `createdate`, `content`) VALUES ('제목4', '권사원', '2021-12-02','hi4');

INSERT INTO `bbs` (`title`, `owner`, `createdate`, `content`) VALUES ('제목555', '이주임', '2021-12-02','hello5');

INSERT INTO `bbs` (`title`, `owner`, `createdate`, `content`) VALUES ('제목66', '주책임', '2021-12-01','무슨일이신가요6');

INSERT INTO `bbs` (`title`, `owner`, `createdate`, `content`) VALUES ('제목77', '안이사', '2021-12-03','도와드릴까요7');

INSERT INTO `bbs` (`title`, `owner`, `createdate`, `content`) VALUES ('제목88', '박전무', '2021-12-02','잠시만 기다려주세요8');

INSERT INTO `bbs` (`title`, `owner`, `createdate`, `content`) VALUES ('제목9999', '곽사장', '2021-12-06','곧 완료됩니다9');

INSERT INTO `bbs` (`title`, `owner`, `createdate`, `content`) VALUES ('제목10', '김사원', '2021-12-01','잘 되었습니다10');

INSERT INTO `bbs` (`title`, `owner`, `createdate`, `content`) VALUES ('제목11', '최상무', '2021-12-02','안녕히가세요11');

INSERT INTO `bbs` (`title`, `owner`, `createdate`, `content`) VALUES ('제목12', '임대리', '2021-12-02','또오세요12');



CREATE DATABASE `examdb2` /*!40100 COLLATE 'utf8mb3_general_ci' */;

CREATE TABLE `user` (

           `PID` INT(11) NOT NULL AUTO_INCREMENT,

           `USERID` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb3_general_ci',

           `PASSWORD` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb3_general_ci',

           `NAME` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb3_general_ci',

           PRIMARY KEY (`PID`) USING BTREE

)

COLLATE='utf8mb3_general_ci'

ENGINE=InnoDB

;