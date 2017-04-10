drop table cosmatic;

CREATE TABLE COSMETIC (
	PRODUCTNO NUMBER(5),
	PRODUCTNAME VARCHAR2(50 char) NOT NULL,
	PRICE NUMBER(6),
	CAPACITY VARCHAR2(6 char),
	CATEGORY VARCHAR2(10 char) NOT NULL,
	PRIMARY KEY (PRODUCTNAME)
);


insert into cosmetic (PRODUCTNO, PRODUCTNAME, PRICE, CAPACITY, CATEGORY) values (10001, 'Soybean Energy Skin', 23000, '200ml', 'SKINCARE');
insert into cosmetic (PRODUCTNO, PRODUCTNAME, PRICE, CAPACITY, CATEGORY) values (10002, 'Blueberry rebalancing skin', 13000, '310ml', 'SKINCARE');
insert into cosmetic (PRODUCTNO, PRODUCTNAME, PRICE, CAPACITY, CATEGORY) values (10003, 'Truecare moist recovery lotion', 20000, '200ml', 'SKINCARE');
insert into cosmetic (PRODUCTNO, PRODUCTNAME, PRICE, CAPACITY, CATEGORY) values (10004, 'Soybean Energy Lotion', 23000, '160mL', 'SKINCARE');
insert into cosmetic (PRODUCTNO, PRODUCTNAME, PRICE, CAPACITY, CATEGORY) values (10005, 'Black green-tea cream', 35000, '60mL', 'SKINCARE');
insert into cosmetic (PRODUCTNO, PRODUCTNAME, PRICE, CAPACITY, CATEGORY) values (10006, 'Soybean Energy Neck Cream', 18000, '80mL', 'SKINCARE');

insert into cosmetic (PRODUCTNO, PRODUCTNAME, PRICE, CAPACITY, CATEGORY) values (10007, 'Long wear cover foundation', 18000, '30ml', 'BASE');
insert into cosmetic (PRODUCTNO, PRODUCTNAME, PRICE, CAPACITY, CATEGORY) values (10008, 'Ampoule intense foundation', 18000, '30ml', 'BASE');
insert into cosmetic (PRODUCTNO, PRODUCTNAME, PRICE, CAPACITY, CATEGORY) values (10009, 'Cushion base', 12000, '25ml', 'BASE');
insert into cosmetic (PRODUCTNO, PRODUCTNAME, PRICE, CAPACITY, CATEGORY) values (10010, 'NO-SEBUM Blur Primer', 10000, '25ml', 'BASE');
insert into cosmetic (PRODUCTNO, PRODUCTNAME, PRICE, CAPACITY, CATEGORY) values (10011, 'Perfect UV protection cushion', 12000, '14g', 'BASE');
insert into cosmetic (PRODUCTNO, PRODUCTNAME, PRICE, CAPACITY, CATEGORY) values (10012, 'Longwear cover cushion', 12000, '14g', 'BASE');

insert into cosmetic (PRODUCTNO, PRODUCTNAME, PRICE, CAPACITY, CATEGORY) values (10013, 'Powerproof brush liner', 9000, '0.6g', 'EYE');
insert into cosmetic (PRODUCTNO, PRODUCTNAME, PRICE, CAPACITY, CATEGORY) values (10014, 'Powerproof pen liner', 9000, '0.6g', 'EYE');
insert into cosmetic (PRODUCTNO, PRODUCTNAME, PRICE, CAPACITY, CATEGORY) values (10015, 'Eye contouring stick', 7500, '2.3g', 'EYE');
insert into cosmetic (PRODUCTNO, PRODUCTNAME, PRICE, CAPACITY, CATEGORY) values (10016, 'Mineral single shadow trand', 5000, '2.3g', 'EYE');
insert into cosmetic (PRODUCTNO, PRODUCTNAME, PRICE, CAPACITY, CATEGORY) values (10017, 'Super Longlashcara', 12000, '7.0g', 'EYE');
insert into cosmetic (PRODUCTNO, PRODUCTNAME, PRICE, CAPACITY, CATEGORY) values (10018, 'Super Volumecara', 12000, '10g', 'EYE');

insert into cosmetic (PRODUCTNO, PRODUCTNAME, PRICE, CAPACITY, CATEGORY) values (10019, 'Real Fit Creamy Lipstick', 12000, '3.5g', 'LIP');
insert into cosmetic (PRODUCTNO, PRODUCTNAME, PRICE, CAPACITY, CATEGORY) values (10020, 'Real fit lipstick', 12000, '3.5g', 'LIP');
insert into cosmetic (PRODUCTNO, PRODUCTNAME, PRICE, CAPACITY, CATEGORY) values (10021, 'Tapping lip concealer', 10000, '1.8g', 'LIP');
insert into cosmetic (PRODUCTNO, PRODUCTNAME, PRICE, CAPACITY, CATEGORY) values (10022, 'Treatment Lip Tint', 10000, '5ml', 'LIP');
insert into cosmetic (PRODUCTNO, PRODUCTNAME, PRICE, CAPACITY, CATEGORY) values (10023, 'Canola Honey Lip Balm', 6000, '3.5g', 'LIP');
insert into cosmetic (PRODUCTNO, PRODUCTNAME, PRICE, CAPACITY, CATEGORY) values (10024, 'Moisture lip treatment', 4000, '9g', 'LIP');

commit;