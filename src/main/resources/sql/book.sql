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
insert into book values(12125648, '���̾� ��ȭ���� ����', '�����ó� ���̰�', to_date('19-12-2012','dd-mm-yyyy'), 8001983, '����');
insert into book values(11114260, '����', '���漭 ����', to_date('28-11-2011','dd-mm-yyyy'), 3001050, '�뿩');
insert into book values(5127821, '��,��,��', '������ ���̾Ƹ��', to_date('19-12-2005','dd-mm-yyyy'), 5000865, '����');
insert into book values(11103865, 'å�� ������', '�ڿ���', to_date('10-10-2011','dd-mm-yyyy'), 4000923, '����');
insert into book values(9010083, '�ƿ����̾�', '���� �۷�����', to_date('15-01-2009','dd-mm-yyyy'), 2000093, '�뿩');
insert into book values(14125167, '���� �˰� �ִ� �� �׶��� �˾Ҵ����', '����ȭ', to_date('03-12-2014','dd-mm-yyyy'), 7002203, '����');

--
-- insert into bookState
--
insert into memberBook values(201700056, 'ȫ�浿', 11114260, '�뿩',to_date('27-02-2017','dd-mm-yyyy'));
insert into memberBook values(201601320, '��û��', 9010083, '�뿩',to_date('15-03-2017','dd-mm-yyyy'));
insert into memberBook values(201616589, '�ѿ���', 14125167, '����',to_date('20-03-2017','dd-mm-yyyy'));
insert into memberBook values(201700057, '�����', 5127821, '����',to_date('02-03-2017','dd-mm-yyyy'));

commit;