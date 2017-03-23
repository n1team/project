DROP TABLE POSITION CASCADE CONSTRAINTS;
DROP TABLE PLAYER CASCADE CONSTRAINTS;

-- sequence
drop sequence player_playerno_seq;
create sequence player_playerno_seq start with 21;

CREATE TABLE POSITION (
	PSTNO number(2) NOT NULL,
	PSTNAME varchar2(10 char),
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

insert into player values(001, 'SONG SEUNG JUN', 'STARTING PITCHER', 1999, 184, 21, 10);
insert into player values(002, 'PARK SE WOONG', 'STARTING PITCHER', 2014, 183, 32,  10);
insert into player values(003, 'LEE JUNG MIN', 'RELIEVER', 2002, 182, 45,  10);
insert into player values(004, 'SONG SEUNG JUN', 'RELIEVER', 2001, 185, 28, 10);
insert into player values(005, 'SON SEUNG LAK', 'CLOSER', 2005, 187, 1, 10);
insert into player values(006, 'KANG MIN HO', 'CATCHER', 2004, 185, 47, 20);
insert into player values(007, 'ANH JOONG YEOL', 'CATCHER', 2014, 175, 2, 20);
insert into player values(008, 'KIM SANG HO', 'FIRST BASEMAN', 2012, 182, 66,  30);
insert into player values(009, 'PARK JONG YOON', 'FIRST BASEMAN', 2001, 188, 36, 30);
insert into player values(010, 'JUNG HOON', 'SECOND BASEMAN', 2000, 180, 33,  30);
insert into player values(011, 'MOON KYU HYUN', 'SHORT STOP', 2002, 184, 6, 30);
insert into player values(012, 'SHIN BON KI', 'SHORT STOP', 2012, 178, 56, 30);
insert into player values(013, 'CHOI JOON SUK', 'DESIGNATED HITTER', 2001, 187, 25,  30);
insert into player values(014, 'LEE DEA HO', 'FIRST BASEMAN', 2001, 193, 10, 30);
insert into player values(015, 'OH SEUNG TAEK', 'THIRD BASEMAN', 2010, 186, 3, 30);
insert into player values(016, 'SON A SEOP', 'RIGHT FIELDER', 2007, 174, 31, 40 );
insert into player values(017, 'JEON JUN WOO', 'CENTER FIELDER', 2008, 184, 8, 40);
insert into player values(018, 'KIM MIN HA', 'CENTER FIELDER', 2011, 181, 12, 40);
insert into player values(019, 'KIM MOON HO', 'LEFT FIELDER', 2006, 184, 24, 40);
insert into player values(020, 'LEE WOO MIN', 'LEFT FIELDER', 2001, 182, 17, 40);

COMMIT;


set linesize 190
set pagesize 70
set null null

column table_name format a20
