set linesize 150
CREATE OR REPLACE VIEW  ALLGUN AS 
select * from assault union 
select * from smg union
select * from sniper union
select * from pistol union
select * from lmg@site1 union
select * from shotgun@site1 ;

CREATE OR REPLACE VIEW SITE AS
SELECT S.STID, S.EXTERIOR, S.PRICE FROM STICKER2@SITE1 S;

CREATE OR REPLACE VIEW  STICKER AS
select sticker1.stid as STID, sticker1.Name as Name,sticker1.Collection as Collection, 
site.Exterior as Exterior, site.Price as Price
from sticker1 
join site on sticker1.stid= site.stid;

commit;


@"K:\4.1\4126 DDB\Project\Packages\show.sql"