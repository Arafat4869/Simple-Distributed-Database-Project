SET SERVEROUTPUT ON;


--------------LMG--------------
CREATE OR REPLACE TRIGGER lmgin
AFTER INSERT 
ON lmg
DECLARE
BEGIN
	DBMS_OUTPUT.PUT_LINE('Data inserted into the LMG table!');
END;
/


CREATE OR REPLACE TRIGGER lmgup
AFTER UPDATE 
ON lmg
DECLARE
BEGIN
	DBMS_OUTPUT.PUT_LINE('Data updated in the assault table!');
END;
/



CREATE OR REPLACE TRIGGER lmgdl
AFTER DELETE
ON lmg
DECLARE
BEGIN
	DBMS_OUTPUT.PUT_LINE('Data row deleted in the assault table!');
END;
/



----------------SHOTGUN----------------
CREATE OR REPLACE TRIGGER shotgunin
AFTER INSERT 
ON shotgun
DECLARE
BEGIN
	DBMS_OUTPUT.PUT_LINE('Data inserted into the shotgun table!');
END;
/


CREATE OR REPLACE TRIGGER shotgunup
AFTER UPDATE 
ON shotgun
DECLARE
BEGIN
	DBMS_OUTPUT.PUT_LINE('Data updated in the shotgun table!');
END;
/


CREATE OR REPLACE TRIGGER shotgundl
AFTER DELETE 
ON shotgun
DECLARE
BEGIN
	DBMS_OUTPUT.PUT_LINE('Data row deleted in the shotgun table!');
END;
/

------------Sticker1-----------------
CREATE OR REPLACE TRIGGER sticker2in
AFTER INSERT 
ON sticker2
DECLARE
BEGIN
	DBMS_OUTPUT.PUT_LINE('Data inserted into the sticker table!');
END;
/


CREATE OR REPLACE TRIGGER sticker2up
AFTER UPDATE 
ON sticker2
DECLARE
BEGIN
	DBMS_OUTPUT.PUT_LINE('Data updated in the sticker table!');
END;
/


CREATE OR REPLACE TRIGGER sticker2dl
AFTER DELETE 
ON sticker2
DECLARE
BEGIN
	DBMS_OUTPUT.PUT_LINE('Data row deleted in the sticker table!');
END;
/
