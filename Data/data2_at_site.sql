SET linesize 150

---Delete Existing Tables
drop table lmg cascade constraints;
drop table shotgun cascade constraints;
drop table sticker2 cascade constraints;



---Create New Tables

---LMG
create table lmg(
ID integer,
Name varchar2(25) not null,
Model varchar2(15) not null,
Exterior varchar2(2) not null,
Wear_Rating varchar2(10) not null UNIQUE,
Price float not null,
Collection varchar2(25) not null,
		PRIMARY KEY(ID)
);

---Shotgun
create table shotgun(
ID integer,
Name varchar2(25) not null,
Model varchar2(15) not null,
Exterior varchar2(2) not null,
Wear_Rating varchar2(10) not null UNIQUE,
Price float not null,
Collection varchar2(25) not null,
		PRIMARY KEY(ID)
);

---Sticker
create table sticker2(
stid integer,
Exterior varchar2(15) not null,
Price float not null,
		PRIMARY KEY(stid)
);





---- Inserting Data in Tables
----LMG
insert into lmg values(50001,'Mjolnir','Negev','FT','0.18288489',830.56,'Norse');
insert into lmg values(50002,'Anodized Navy','Negev','FN','0.00562574',225.18,'Assault');
insert into lmg values(50003,'Power Loader','Negev','FN','0.01296391',7.78,'Revolver Case');
insert into lmg values(50004,'Blizzard Marbleized','M249','MW','0.08259996',7.74,'Office');
insert into lmg values(50005,'Shipping Forecast','M249','BS','0.69586938',5.98,'Gods and Monsters');
insert into lmg values(50006,'Impact Drill','M249','FN','0.01099832',2.23,'Chop Shop');
insert into lmg values(50007,'Nebula Crusader','M249','MW','0.07932685',2.07,'Shadow');
insert into lmg values(50008,'Lionfish','Negev','FN','0.04132005',1.17,'Clutch');





----Shotgun
insert into shotgun values(60001,'Cinquedea','MAG-7','WW','0.41991301',386.09,'Canals');
insert into shotgun values(60002,'Cinquedea','MAG-7','BS','0.63001994',375.28,'Canals');
insert into shotgun values(60003,'Blaze Orange','XM1014','FN','0.02145463',96.39,'Militia');
insert into shotgun values(60004,'Chopper','Sawed-Off','FN','0.04219995',79.58,'Dust');
insert into shotgun values(60005,'Modern Hunter','Nova','FN','0.00963152',70.29,'Militia');
insert into shotgun values(60006,'Counter Terrace','MAG-7','WW','0.43998098',47.95,'Norse');
insert into shotgun values(60007,'Baroque Orange','Nova','BS','0.76777465',37.66,'Canals');
insert into shotgun values(60008,'Ancient Lore','XM1014','MW','0.09088167',38.00,'Ancient');
insert into shotgun values(60009,'Hyper Beast','Nova','FN','0.06989866',19.50,'Wildfire');
insert into shotgun values(60010,'Incinegator','XM1014','MW','0.12884442',11.86,'Prisma');



----Sticker
insert into sticker2 values(70001,'Remarkable',1092.25);
insert into sticker2 values(70002,'Exotic',106.75);
insert into sticker2 values(70003,'Extraordinary',65.50);
insert into sticker2 values(70004,'Remarkable',100.25);
insert into sticker2 values(70005,'Exotic',1092.25);
insert into sticker2 values(70006,'Exotic',37.19);
insert into sticker2 values(70007,'High Grade',4.40);
insert into sticker2 values(70008,'Exotic',62.04);
insert into sticker2 values(70009,'Remarkable',70.07);
insert into sticker2 values(70010,'High Grade',580.31);
insert into sticker2 values(70011,'Exotic',38.00);


column Exterior Format A15;
column Wear_Rating Format A11;


commit;


----Show All  the tables
select * from lmg;
select * from shotgun;
select * from sticker2;

