SET SERVEROUTPUT ON;

CREATE OR REPLACE PACKAGE updatepack AS
	
	PROCEDURE gun(gunID IN NUMBER,guntype IN NUMBER, pr IN float);
	
	PROCEDURE stk(sid IN NUMBER,pr IN float);
	
END updatepack;
/

CREATE OR REPLACE PACKAGE BODY updatepack AS
	
	PROCEDURE gun(gunID IN NUMBER,guntype IN NUMBER, pr IN float)
	IS
	
	
	BEGIN
		IF guntype = 1 THEN 
			update assault set Price= pr where ID = gunID;
		END IF;
		IF guntype = 2 THEN 
			update smg set Price= pr where ID = gunID;
		END IF;
		IF guntype = 3 THEN 
			update sniper set Price= pr where ID = gunID;
		END IF;
		IF guntype = 4 THEN 
			update pistol set Price= pr where ID = gunID;
		END IF;
		IF guntype = 5 THEN 
			update lmg@site1 set Price= pr where ID = gunID;
		END IF;
		IF guntype = 6 THEN 
			update shotgun@site1 set Price= pr where ID = gunID;
		END IF;
		commit;
	END gun;
	
	
	PROCEDURE stk(sid IN NUMBER,pr IN float)
	IS
	
	BEGIN
		update sticker2@site1 set Price= pr where stid = sid;
		commit;
	END stk;
	
END updatepack;
/


@"K:\4.1\4126 DDB\Project\Packages\delete.sql"