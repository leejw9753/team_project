SET SESSION FOREIGN_KEY_CHECKS=0;

/* Drop Tables */

DROP TABLE IF EXISTS Board;
DROP TABLE IF EXISTS Finally;
DROP TABLE IF EXISTS photo;
DROP TABLE IF EXISTS HReserve;
DROP TABLE IF EXISTS Review;
DROP TABLE IF EXISTS Room;
DROP TABLE IF EXISTS Hotel;
DROP TABLE IF EXISTS Point;
DROP TABLE IF EXISTS Member;
DROP TABLE IF EXISTS PReserve;
DROP TABLE IF EXISTS Package;




/* Create Tables */

CREATE TABLE Board
(
	No int(5) NOT NULL,
	userid varchar(50) NOT NULL,
	subject varchar(30) NOT NULL,
	content varchar(2000) NOT NULL,
	regdate datetime,
	ref int(5),
	reflevel int(5),
	refstep int(5),
	type varchar(5),
	type2 varchar(5),
	PRIMARY KEY (No)
);


CREATE TABLE Finally
(
	hno int(5) NOT NULL,
	rname varchar(5) NOT NULL,
	roomnum varchar(5),
	total int(20),
	userid varbinary(50),
	repdate varchar(10),
	checked varchar(5)
);


CREATE TABLE Hotel
(
	no int(5) NOT NULL,
	hname varchar(10) NOT NULL,
	location varchar(20),
	content varchar(2000),
	tel varchar(10),
	PRIMARY KEY (no)
);


CREATE TABLE HReserve
(
	hno int(5) NOT NULL,
	name varchar(5) NOT NULL,
	roomnum varchar(5),
	mon int(3),
	day int(3),
	subscriber varchar(10)
);


CREATE TABLE Member
(
	userid varchar(50) NOT NULL,
	username varchar(5) NOT NULL,
	password varchar(200) NOT NULL,
	phone varchar(10) NOT NULL,
	PRIMARY KEY (userid)
);


CREATE TABLE Package
(
	no int(5) NOT NULL,
	name varchar(50),
	content varchar(10000),
	travelday varchar(10),
	price int(10),
	mon int(4),
	startday varchar(50),
	regdate datetime,
	max int(5),
	PRIMARY KEY (no)
);


CREATE TABLE photo
(
	no int(5) NOT NULL,
	type varchar(5) NOT NULL,
	photourl varchar(50),
	photoname varchar(20)
);


CREATE TABLE Point
(
	userid varchar(50) NOT NULL,
	point int(10),
	regdate datetime
);


CREATE TABLE PReserve
(
	pno int(5) NOT NULL,
	name varchar(50),
	tprice int(20),
	day varchar(10),
	checked varchar(5)
);


CREATE TABLE Review
(
	hno int(5) NOT NULL,
	rname varchar(5) NOT NULL,
	pno int(5) NOT NULL,
	name varchar(50),
	regdate datetime,
	content varchar(1000),
	clpoint int(2),
	lopoint int(2),
	prpoint int(2),
	sepoint int(2)
);


CREATE TABLE Room
(
	hno int(5) NOT NULL,
	name varchar(5) NOT NULL,
	price int(10),
	convenient varchar(100),
	bed varchar(10),
	bedcount int(5),
	max int(3),
	roomnum varchar(100),
	PRIMARY KEY (hno, name)
);



/* Create Foreign Keys */

ALTER TABLE photo
	ADD FOREIGN KEY (no)
	REFERENCES Hotel (no)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE Room
	ADD FOREIGN KEY (hno)
	REFERENCES Hotel (no)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE Board
	ADD FOREIGN KEY (userid)
	REFERENCES Member (userid)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE Point
	ADD FOREIGN KEY (userid)
	REFERENCES Member (userid)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE PReserve
	ADD FOREIGN KEY (pno)
	REFERENCES Package (no)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE Review
	ADD FOREIGN KEY (pno)
	REFERENCES Package (no)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE Finally
	ADD FOREIGN KEY (hno, rname)
	REFERENCES Room (hno, name)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE HReserve
	ADD FOREIGN KEY (hno, name)
	REFERENCES Room (hno, name)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE Review
	ADD FOREIGN KEY (hno, rname)
	REFERENCES Room (hno, name)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;