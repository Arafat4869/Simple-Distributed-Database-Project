SET linesize 300


---Delete Existing Tables
drop table assault cascade constraints;
drop table smg cascade constraints;
drop table sniper cascade constraints;
drop table pistol cascade constraints;
drop table sticker1 cascade constraints;


---Create New Tables

---Assault
create table assault(
ID integer,
Name varchar2(25) not null,
Model varchar2(15) not null,
Exterior varchar2(2) not null,
Wear_Rating varchar2(10) not null UNIQUE,
Price float not null,
Collection varchar2(20) not null,
		PRIMARY KEY(ID)
);

---SMG
create table smg(
ID integer,
Name varchar2(25) not null,
Model varchar2(15) not null,
Exterior varchar2(2) not null,
Wear_Rating varchar2(10) not null UNIQUE,
Price float not null,
Collection varchar2(20) not null,
		PRIMARY KEY(ID)
);

---Sniper
create table sniper(
ID integer,
Name varchar2(25) not null,
Model varchar2(15) not null,
Exterior varchar2(2) not null,
Wear_Rating varchar2(10) not null UNIQUE,
Price float not null,
Collection varchar2(20) not null,
		PRIMARY KEY(ID)
);

---Pistols
create table pistol(
ID integer,
Name varchar2(25) not null,
Model varchar2(15) not null, ---- SITE1
Exterior varchar2(2) not null,
Wear_Rating varchar2(10) not null UNIQUE,
Price float not null,
Collection varchar2(20) not null,
		PRIMARY KEY(ID)
);

---Sticker
create table sticker1(
stid integer,
Name varchar2(20) not null,
Collection varchar2(20) not null,
		PRIMARY KEY(stid)
);

---- Inserting Data in Tables
----Assault
insert into assault values(10001,'Welcome to the Jungle','M4A1-S','MW','0.08256489',1854.83,'Ancient');
insert into assault values(10002,'Wild Lotus','AK-47','WW','0.41569874',1804.13,'St.Marc');
insert into assault values(10003,'Fire Serpent','AK-47','FN','0.01254691',1645.00,'Bravo');
insert into assault values(10004,'Poseidon','M4A4','FN','0.00258496',1084.13,'Gods and Monsters');
insert into assault values(10005,'Akihabara','AUG','FT','0.21589635',891.34,'Rising Sun');
insert into assault values(10006,'Radiation Hazard','M4A4','FN','0.01000032',1854.83,'Nuke');
insert into assault values(10007,'X-Ray','AK-47','BS','0.71326985',607.59,'Havoc');
insert into assault values(10008,'Fire Serpent','AK-47','WW','0.41320015',612.39,'Bravo');
insert into assault values(10009,'Asiimov','AK-47','FN','0.06251436',178.88,'Danger Zone');
insert into assault values(10010,'Intergale','SG 553','MW','0.08140326',115.20,'2018 Inferno');
insert into assault values(10011,'Spitfire','FAMAS','FN','0.05120001',95.33,'Alpha');
insert into assault values(10012,'Aqua Terrace','Galil AR','BS','0.5036985',62.02,'Rising Sun');



----SMG
insert into smg values(20001,'Wild Lily','MP9','FN','0.04001301',688.27,'St.Marc');
insert into smg values(20002,'Bulldozer','MP9','FN','0.03001514',674.55,'Assault');
insert into smg values(20003,'Wild Lily','MP9','FT','0.20154563',412.11,'St.Marc');
insert into smg values(20004,'Hot Snakes','MAC-10','FN','0.04918645',395.67,'Havoc');
insert into smg values(20005,'Run and Hide','P90','FN','0.04700152',347.60,'Ancient');
insert into smg values(20006,'Astral Jormungandr','P90','MW','0.08230098',100.91,'Norse');
insert into smg values(20007,'Modern Hunter','PP-Bizon','MW','0.09987465',95.31,'Militia');
insert into smg values(20008,'Stained Glass','MP9','BS','0.49025161',78.37,'Canals');
insert into smg values(20009,'Whiteout','MP7','FN','0.06943522',353.60,'Office');
insert into smg values(20010,'Assiimov','P90','FN','0.06884932',43.86,'Breakout');
insert into smg values(20011,'Minotaurs Labyrinth','UMP-45','WW','0.39656585',41.35,'Gods and Monsters');
insert into smg values(20012,'Gold Brick','MAC-10','WW','0.41110989',28.26,'Ancient');



----Snipers
insert into sniper values(30001,'The Prince','AWP','BS','0.51326352',1800.00,'Canals');
insert into sniper values(30002,'Medusa','AWP','FT','0.14151414',1694.00,'Gods and Monsters');
insert into sniper values(30003,'Fade','AWP','FN','0.06991258',1584.77,'Control');
insert into sniper values(30004,'Splash Jam','SCAR-20','FN','0.05986532',1229.44,'Militia');
insert into sniper values(30005,'Chronos','G3SG1','WW','0.29635494',291.44,'Gods and Monsters');
insert into sniper values(30006,'Asiimov','AWP','FT','0.18639654',92.85,'Phoenix');
insert into sniper values(30007,'Asiimov','AWP','WW','0.44369898',82.71,'Phoenix');
insert into sniper values(30008,'Sea Calico','SSG 08','BS','0.69857312',77.76,'St.Marc');
insert into sniper values(30009,'Blood in Water','SSG 08','FN','0.06014536',65.25,'Arms Deal 2');
insert into sniper values(30010,'Emerald','SCAR-20','MW','0.11025514',48.85,'Alpha');
insert into sniper values(30011,'Cyrex','SCAR-20','FN','0.06983264',28.89,'Huntsman');
insert into sniper values(30012,'Flux','G3SG1','FN','0.04014021',20.26,'Shadow');



----Pistols
insert into pistol values(40001,'Fade','Glock-18','FN','0.06952216',987.64,'Assault');
insert into pistol values(40002,'Sunset Storm','Desert Eagle','WW','0.44985232',627.61,'Rising Sun');
insert into pistol values(40003,'Blaze','Desert Eagle','MW','0.09632158',410.32,'Dust');
insert into pistol values(40004,'Nuclear Threat','Tec-9','FN','0.00052369',249.79,'Nuke');
insert into pistol values(40005,'Nuclear Threat','P250','FN','0.00156987',277.58,'Nuke');
insert into pistol values(40006,'Kill Confirmed','USP-S','FN','0.05256315',197.28,'Shadow');
insert into pistol values(40007,'Modern Hunter','P250','FN','0.00359897',199.99,'Militia');
insert into pistol values(40008,'Target Acquired','USP-S','WW','0.41256398',171.25,'Control');
insert into pistol values(40009,'Neon Kimono','Five-SeveN','FN','0.04985632',131.25,'Rising Sun');
insert into pistol values(40010,'Ocean Foam','P2000','MW','0.08989745',126.50,'Bravo');
insert into pistol values(40011,'Neo-Noir','Glock-18','MW','0.09928721',107.21,'Operation Broke Fang');
insert into pistol values(40012,'Whiteout','P250','FN','0.00569823',98.98,'Chop Shop');
insert into pistol values(40013,'The Fuschia is Now','CZ75-Auto','FN','0.00984578',42.47,'Arms Deal 3');
insert into pistol values(40014,'Duelists','Dual Berettas','MW','0.12996365',28.68,'Chop Shop');




----Sticker
insert into sticker1 values(70001,'Ninjas in Pyjamas','Katowice 2014');
insert into sticker1 values(70002,'NiKo','Cluj-Napoca 2015');
insert into sticker1 values(70003,'sunNy','London 2014');
insert into sticker1 values(70004,'captainMo','Boston 2018');
insert into sticker1 values(70005,'Keyd Stars','Katowice 2015');
insert into sticker1 values(70006,'Karrigan','Atlanta 2017');
insert into sticker1 values(70007,'B1ad3','Cologne 2016');
insert into sticker1 values(70008,'Team Liquid','Boston 2018');
insert into sticker1 values(70009,'DD','Boston 2018');
insert into sticker1 values(70010,'Narus Vincere','Katowice 2014');
insert into sticker1 values(70011,'coldzera','Atlanta 2017');


column Exterior Format A15;
column Wear_Rating Format A11;



commit;



-----Show all the tables

select * from assault;
select * from smg;
select * from sniper;
select * from pistol;
select * from sticker1;
