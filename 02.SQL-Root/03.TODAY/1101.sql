-- 할일테이블 만들기
CREATE TABLE `todolist`(
    -- 1. 레코드 순서번호(자동증가)
	`idx` int not null AUTO_INCREMENT,
    -- 2. 할일제목
    `title` varchar(200) not null,
    -- 3. 할일내용
    `cont` text(1000) not null,
    -- 4. 입력날짜(자동입력)
    `sysdate` timestamp,
    -- 기본키설정
    PRIMARY KEY (idx)
);

-- 할일리스트에 권한컬럼 추가하기
-- auth char(1) default
ALTER TABLE `todolist`
ADD `auth` char(1);
/*
[ 테이블 컬럼 추가하기 ]

ALTER TABLE `테이블명`
ADD `컬럼명` 데이터형;

예시)
ALTER TABLE `friends`
ADD `age` int;
*/



ALTER TABLE `todolist`
DROP COLUMN `auth`
/*
[ 테이블 컬럼 지우기 ]

ALTER TABLE `테이블명`
DROP COLUMN `컬럼명`;

예시)
ALTER TABLE `friends`
DROP COLUMN `age`;
 */



-- title컬럼의 데이터 형을 기존 200에서 300으로 변경
ALTER TABLE `todolist`
MODIFY COLUMN `title` varchar(300);
/*
[ 테이블 컬럼 수정하기(데이터형) ]

ALTER TABLE `테이블명`
MODIFY COLUMN `컬럼명` 데이터형;

예시)
ALTER TABLE `friends`
MODIFY COLUMN `fname` varchar(100);
*/


-- 기존 auth컬럼의 기본값 넣기로 변경하기 
-- 권한값은 A: Admin, U: User 
-- 기본값 U가 들어가게 함

-- 변경방법: ALTER TABLE 테이블명 ALTER COLUMN 컴럼명 SET DEFAULT 값
ALTER TABLE `todolist`
ALTER COLUMN `auth` SET DEFAULT "U"