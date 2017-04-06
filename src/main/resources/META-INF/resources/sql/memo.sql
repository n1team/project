
set termout on
set echo on

--
-- drop table
--

drop table memo;

--
--  sequence
--
drop sequence memo_seq;
create sequence memo_seq start with 300;

select memo_seq.nextval from dual; 
--
-- create table
--

create table memo (
	mno		number(4) constraint pk_memo primary key,
	mname	varchar2(100) not null,
	mcontent varchar2(4000),
	password varchar2(20),
	mdate date default sysdate+9/24
);


--
-- insert into memo
--

-- insert into memo(mno,mname,mcontent,password) values        (1,'test_name'    ,'test_content','1234');

--
-- commit;
--

commit;

--
-- select
--

set linesize 200
set pagesize 100

select table_name from user_tables;

select * from memo;


SET TERMOUT ON
SET ECHO ON


