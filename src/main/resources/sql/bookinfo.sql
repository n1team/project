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
insert into book values(12125648, '���̾� ��ȭ���� ����', '�����ó� ���̰�', '2012/12/19', '����', 456, 14800);
insert into book values(11114260, '����', '���漭 ����', '2011/11/28', '����', 140, 9000);
insert into book values(5127821, '��,��,��', '������ ���̾Ƹ��', '2005/12/19', '����/��ȭ', 751, 28000);
insert into book values(11103865, 'å�� ������', '�ڿ���', '2011/10/10', '�ι�', 348, 16000);
insert into book values(9010083, '�ƿ����̾�', '���� �۷�����', '2009/01/15', '�ڱ���', 300, 13000);
insert into book values(14125167, '���� �˰� �ִ� �� �׶��� �˾Ҵ����', '����ȭ', '2014/12/03', '��/������', 136, 9000);

commit;