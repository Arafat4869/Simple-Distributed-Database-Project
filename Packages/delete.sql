SET SERVEROUTPUT ON;

CREATE OR REPLACE PACKAGE deletepack AS
	
	FUNCTION item(iID IN NUMBER,itemtype IN NUMBER) RETURN NUMBER;
	
END deletepack;
/

CREATE OR REPLACE PACKAGE BODY deletepack AS
	
	FUNCTION item(iID IN NUMBER,itemtype IN NUMBER) RETURN NUMBER
	IS
	
	BEGIN
		IF itemtype = 1 THEN 
			delete from assault where ID = iID;
		END IF;
		IF itemtype = 2 THEN 
			delete from smg where ID = iID;
		END IF;
		IF itemtype = 3 THEN 
			delete from sniper where ID = iID;
		END IF;
		IF itemtype = 4 THEN 
			delete from pistol where ID = iID;
		END IF;
		IF itemtype = 5 THEN 
			delete from lmg@site1 where ID = iID;
		END IF;
		IF itemtype = 6 THEN 
			delete from shotgun@site1 where ID = iID;
		END IF;
		IF itemtype = 7 THEN 
			delete from sticker1 where STID = iID;
			delete from sticker2@site1 where STID = iID;
		END IF;
		commit;
		RETURN 1;
	END item;
	
	
END deletepack;
/