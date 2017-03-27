drop sequence cos_no_seq;
create sequence cos_no_seq start with 10025;
select cos_no_seq.nextval from dual;

drop table cosmatic;
select * from cosmatic;

delete from cosmatic where productno = '10028';

commit;