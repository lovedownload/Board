DROP TABLE IF EXISTS USERS;

CREATE TABLE USERS ( 
	userId          varchar(12)		NOT NULL, 
	password		varchar(12)		NOT NULL,
	name			varchar(20)		NOT NULL,
	email			varchar(50),	
  	
	PRIMARY KEY               (userId)
);

INSERT INTO USERS VALUES('admin', '1234', '김태용', 'lovedownload@sds.co.kr');

DROP TABLE IF EXISTS BOARD;

CREATE TABLE BOARD ( 
	boardidx		bigint 			NOT NULL 	auto_increment,
	title           VARCHAR(100)	NOT NULL, 
	name     		VARCHAR(20)		NOT NULL,
	content			LONGTEXT		NOT NULL,
	cdate			VARCHAR(30)     NOT NULL,	
  	
	PRIMARY KEY     (boardidx)
);


DROP TABLE IF EXISTS REPLY;

CREATE TABLE REPLY (
	idx				bigint 			NOT NULL 	auto_increment,
	boardidx		bigint 			NOT NULL,
	name     		VARCHAR(20)		NOT NULL,
	content			VARCHAR(255)    NOT NULL,
	cdate		    VARCHAR(30)     NOT NULL,
	
	PRIMARY KEY 	(idx)
	/*KEY boardidx    (boardidx),
	FOREIGN KEY     (boardidx) 
	REFERENCES BOARD(boardidx) 
	ON DELETE CASCADE*/
);