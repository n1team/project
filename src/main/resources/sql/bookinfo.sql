DROP TABLE book CASCADE CONSTRAINTS;

CREATE TABLE book (
	book_code 		number(8) 			NOT NULL,
	book_name 		varchar2(35 char) 	NOT NULL,
	writer 			varchar2(20 char),
	published_date 	date,
	categorize		varchar2(20 char),
	page_number		number(10),
	price			number(10),
	PRIMARY KEY (book_code)
);

--
-- insert into book
--
insert into book values(12125648, '나미야 잡화점의 기적', '히가시노 게이고', to_date('19-12-2012','dd-mm-yyyy'), '문학', 456, 14800);
insert into book values(11114260, '선물', '스펜서 존슨', to_date('28-11-2011','dd-mm-yyyy'), '문학', 140, 9000);
insert into book values(5127821, '총,균,쇠', '제레드 다이아몬드', to_date('19-12-2005','dd-mm-yyyy'), '역사/문화', 751, 28000);
insert into book values(11103865, '책은 도끼다', '박웅현', to_date('10-10-2011','dd-mm-yyyy'), '인문', 348, 16000);
insert into book values(9010083, '아웃라이어', '말콤 글래드웰', to_date('15-01-2009','dd-mm-yyyy'), '자기계발', 300, 13000);
insert into book values(14125167, '지금 알고 있는 걸 그때도 알았더라면', '류시화', to_date('03-12-2014','dd-mm-yyyy'), '시/에세이', 136, 9000);

commit;