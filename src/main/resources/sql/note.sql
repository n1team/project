delete from note;
drop table note;
delete from note where note_no=133;
UPDATE  NOTE set note_id 			= 'ad',
				note_title			= 222222222,
				note_content		= 22222222,
				note_date			= sysdate
	 				where note_no = 174;

drop table note;
drop table name_se;
CREATE TABLE note (
				note_id 		VARCHAR2(20 char),
				note_no 		NUMBER,
				note_title		VARCHAR2(50 char),
				note_content 	long,
				note_date		date
				);
				drop SEQUENCE note_no_seq;
			create sequence note_no_seq START WITH 1;
			select note_no_seq.nextval from dual;
			
			
			select * from note;
			
			
				select * from note;
				
				  insert into note values('admin', 1, '스며와','하나면하나',sysdate);	
					insert into note values('admin', 2, '선명했던','나 홀로 이 어둠 속을 걸어 ',sysdate);
																
					insert into note values('admin', 3, '걸어','한 폭의 풍경 같던 사랑이 Oh',sysdate);
																
					insert into note values('admin', 4, '못한','희미해지는 Color',sysdate);
																
					insert into note values('admin', 5, '희미한','네 모습 아득해져 가',sysdate);
																
					insert into note values('admin', 6, '흑백처럼','내 맘속에 아련하게 남아 ',sysdate);
																
					insert into note values('admin', 7, '물들었던','내 맘 속에 눈부시게',sysdate);
																
					insert into note values('admin', 8, '우리','슬픔에 젖은 듯 퍼져',sysdate);
																
					insert into note values('admin', 9, '선명했던','Now we’re faded Oh Oh Oh Oh Oh',sysdate);
					
commit;
select n.*,n.note_content as content from note n;




	select 	n.note_id 		as	note_id,
				n.note_no 		as	note_no,
				n.note_title	as	note_title,
				n.note_content 	as	note_content,
				n.note_date		as	note_date
				from note n
				where n.note_no =2 ;









				 