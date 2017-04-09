DROP TABLE book CASCADE CONSTRAINTS;
DROP TABLE memberBook CASCADE CONSTRAINTS;

--
-- memberBook_member_code_seq sequence
--
drop sequence memberBook_member_code_seq;
create sequence memberBook_member_code_seq start with 201700100;

CREATE TABLE book (
	book_code 		number(8) 			NOT NULL,
	book_name 		varchar2(35 char) 	NOT NULL,
	writer 			varchar2(20 char),
	published_date 	date,
	categorize_code number(8),
	check_state 	varchar2(15 char),
	PRIMARY KEY (book_code)
);

CREATE TABLE memberBook (
	member_code 		number(10) 			NOT NULL,
	member_name 		varchar2(15 char) 	NOT NULL,
	book_code 			number(8),
	check_state 		varchar2(15 char),
	rent_reserve_date 	date,
	constraint pk_memberBook PRIMARY KEY (member_code),
	constraint fk_memberBook foreign key(book_code) references book(book_code) on delete set null
);


--
-- insert into book
--
insert into book values(12125648, '나미야 잡화점의 기적', '히가시노 게이고', to_date('19-12-2012','dd-mm-yyyy'), 8001983, '서가');
insert into book values(11114260, '선물', '스펜서 존슨', to_date('28-11-2011','dd-mm-yyyy'), 3001050, '대여');
insert into book values(5127821, '총,균,쇠', '제레드 다이아몬드', to_date('19-12-2005','dd-mm-yyyy'), 5000865, '예약');
insert into book values(11103865, '책은 도끼다', '박웅현', to_date('10-10-2011','dd-mm-yyyy'), 4000923, '서가');
insert into book values(9010083, '아웃라이어', '말콤 글래드웰', to_date('15-01-2009','dd-mm-yyyy'), 2000093, '대여');
insert into book values(14125167, '지금 알고 있는 걸 그때도 알았더라면', '류시화', to_date('03-12-2014','dd-mm-yyyy'), 7002203, '예약');

--
-- insert into bookState
--
insert into memberBook values(201700056, '홍길동', 11114260, '대여',to_date('27-02-2017','dd-mm-yyyy'));
insert into memberBook values(201601320, '심청이', 9010083, '대여',to_date('15-03-2017','dd-mm-yyyy'));
insert into memberBook values(201616589, '한영희', 14125167, '예약',to_date('20-03-2017','dd-mm-yyyy'));
insert into memberBook values(201700057, '장희원', 5127821, '예약',to_date('02-03-2017','dd-mm-yyyy'));

commit;