drop sequence cos_no_seq;
create sequence cos_no_seq start with 10025;
select cos_no_seq.nextval from dual;

drop table cosmatic;
select * from cosmetic;

delete from cosmetic where productno = '10028';

commit;
select * from player;
select * from position;