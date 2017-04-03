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
insert into book values(12125648, '���̾� ��ȭ���� ����', '�����ó� ���̰�', to_date('19-12-2012','dd-mm-yyyy'), '����', 456, 14800);
insert into book values(11114260, '����', '���漭 ����', to_date('28-11-2011','dd-mm-yyyy'), '����', 140, 9000);
insert into book values(5127821, '��,��,��', '������ ���̾Ƹ��', to_date('19-12-2005','dd-mm-yyyy'), '����/��ȭ', 751, 28000);
insert into book values(11103865, 'å�� ������', '�ڿ���', to_date('10-10-2011','dd-mm-yyyy'), '�ι�', 348, 16000);
insert into book values(9010083, '�ƿ����̾�', '���� �۷�����', to_date('15-01-2009','dd-mm-yyyy'), '�ڱ���', 300, 13000);
insert into book values(14125167, '���� �˰� �ִ� �� �׶��� �˾Ҵ����', '����ȭ', to_date('03-12-2014','dd-mm-yyyy'), '��/������', 136, 9000);

commit;