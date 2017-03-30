DROP TABLE POSITION CASCADE CONSTRAINTS;
DROP TABLE PLAYER CASCADE CONSTRAINTS;

-- sequence
drop sequence player_playerno_seq;
create sequence player_playerno_seq start with 21;

CREATE TABLE POSITION (
	PSTNO number(2) NOT NULL,
	PSTNAME varchar2(20 char),
	LOC varchar2(10),
	PRIMARY KEY (PSTNO)
);

CREATE TABLE PLAYER (
	PLAYERNO number(3) not null,
	PNAME varchar2(20 char),
	JOB varchar2(20 char),
	JOIN number(4),
	HEIGHTS number(3),
	UNIFORM_NUMBER number(3),
	PSTNO number(2) constraint fk_pstno references position(pstno) on delete set null,
	PRIMARY KEY (PLAYERNO)
);

ALTER TABLE PLAYER ADD FOREIGN KEY (PSTNO) REFERENCES POSITION(PSTNO);


insert into position values(10, 'PITCHER','BUSAN');
insert into position values(20, 'CATCHER','BUSAN');
insert into position values(30, 'INFIELDER','BUSAN');
insert into position values(40, 'OUTFIELDER','BUSAN');

insert into player values(1, 'SONG SEUNG JUN', 'STARTING PITCHER', 1999, 184, 21, 10);
insert into player values(2, 'PARK SE WOONG', 'STARTING PITCHER', 2014, 183, 32,  10);
insert into player values(3, 'LEE JUNG MIN', 'RELIEVER', 2002, 182, 45,  10);
insert into player values(4, 'YOON GIL HYUN', 'RELIEVER', 2001, 185, 28, 10);
insert into player values(5, 'SON SEUNG LAK', 'CLOSER', 2005, 187, 1, 10);
insert into player values(6, 'KANG MIN HO', 'CATCHER', 2004, 185, 47, 20);
insert into player values(7, 'ANH JOONG YEOL', 'CATCHER', 2014, 175, 2, 20);
insert into player values(8, 'KIM SANG HO', 'FIRST BASEMAN', 2012, 182, 66,  30);
insert into player values(9, 'PARK JONG YOON', 'FIRST BASEMAN', 2001, 188, 36, 30);
insert into player values(10, 'JUNG HOON', 'SECOND BASEMAN', 2000, 180, 33,  30);
insert into player values(11, 'MOON KYU HYUN', 'SHORT STOP', 2002, 184, 6, 30);
insert into player values(12, 'SHIN BON KI', 'SHORT STOP', 2012, 178, 56, 30);
insert into player values(13, 'CHOI JOON SUK', 'DESIGNATED HITTER', 2001, 187, 25,  30);
insert into player values(14, 'LEE DEA HO', 'FIRST BASEMAN', 2001, 193, 10, 30);
insert into player values(15, 'OH SEUNG TAEK', 'THIRD BASEMAN', 2010, 186, 3, 30);
insert into player values(16, 'SON A SEOP', 'RIGHT FIELDER', 2007, 174, 31, 40 );
insert into player values(17, 'JEON JUN WOO', 'CENTER FIELDER', 2008, 184, 8, 40);
insert into player values(18, 'KIM MIN HA', 'CENTER FIELDER', 2011, 181, 12, 40);
insert into player values(19, 'KIM MOON HO', 'LEFT FIELDER', 2006, 184, 24, 40);
insert into player values(20, 'LEE WOO MIN', 'LEFT FIELDER', 2001, 182, 17, 40);

COMMIT;


set linesize 190
set pagesize 70
set null null

column table_name format a20
