DROP TABLE book CASCADE CONSTRAINTS;

CREATE TABLE book (
	book_code 		number(10) 			NOT NULL,
	book_name 		varchar2(35 char) 	NOT NULL,
	writer 			varchar2(20 char),
	published_date 	varchar2(12 char),
	categorize		varchar2(20 char),
	page_number		number(10),
	price			number(10),
	PRIMARY KEY (book_code)
);

--
-- insert into book
--
insert into book values(12125648, '나미야 잡화점의 기적', '히가시노 게이고', '2012/12/19', '문학', 456, 14800);
insert into book values(11114260, '선물', '스펜서 존슨', '2011/11/28', '문학', 140, 9000);
insert into book values(5127821, '총,균,쇠', '제레드 다이아몬드', '2005/12/19', '역사/문화', 751, 28000);
insert into book values(11103865, '책은 도끼다', '박웅현', '2011/10/10', '인문', 348, 16000);
insert into book values(9010083, '아웃라이어', '말콤 글래드웰', '2009/01/15', '자기계발', 300, 13000);
insert into book values(14125167, '지금 알고 있는 걸 그때도 알았더라면', '류시화', '2014/12/03', '시/에세이', 136, 9000);

commit;