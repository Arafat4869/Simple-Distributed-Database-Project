SET SERVEROUTPUT ON;


--------------Assault--------------
CREATE OR REPLACE TRIGGER Assaultin
AFTER INSERT 
ON Assault
DECLARE
BEGIN
	DBMS_OUTPUT.PUT_LINE('Data inserted into the assault table!');
END;
/


CREATE OR REPLACE TRIGGER Assaultup
AFTER UPDATE 
ON Assault
DECLARE
BEGIN
	DBMS_OUTPUT.PUT_LINE('Data updated in the assault table!');
END;
/



CREATE OR REPLACE TRIGGER Assaultdl
AFTER DELETE 
ON Assault
DECLARE
BEGIN
	DBMS_OUTPUT.PUT_LINE('Data row deleted in the assault table!');
END;
/



----------------SMG----------------
CREATE OR REPLACE TRIGGER smgin
AFTER INSERT 
ON smg
DECLARE
BEGIN
	DBMS_OUTPUT.PUT_LINE('Data inserted into the smg table!');
END;
/


CREATE OR REPLACE TRIGGER smgup
AFTER UPDATE 
ON smg
DECLARE
BEGIN
	DBMS_OUTPUT.PUT_LINE('Data updated in the smg table!');
END;
/


CREATE OR REPLACE TRIGGER smgdl
AFTER DELETE
ON smg
DECLARE
BEGIN
	DBMS_OUTPUT.PUT_LINE('Data row deleted in the smg table!');
END;
/




----------------Sniper--------------
CREATE OR REPLACE TRIGGER sniperin
AFTER INSERT 
ON sniper
DECLARE
BEGIN
	DBMS_OUTPUT.PUT_LINE('Data inserted into the sniper table!');
END;
/


CREATE OR REPLACE TRIGGER sniperup
AFTER UPDATE 
ON sniper
DECLARE
BEGIN
	DBMS_OUTPUT.PUT_LINE('Data updated in the sniper table!');
END;
/

CREATE OR REPLACE TRIGGER sniperdl
AFTER DELETE
ON sniper
DECLARE
BEGIN
	DBMS_OUTPUT.PUT_LINE('Data row deleted in the sniper table!');
END;
/


--------------Pistol----------------
CREATE OR REPLACE TRIGGER pistolin
AFTER INSERT 
ON pistol
DECLARE
BEGIN
	DBMS_OUTPUT.PUT_LINE('Data inserted into the pistol table!');
END;
/


CREATE OR REPLACE TRIGGER pistolup
AFTER UPDATE 
ON pistol
DECLARE
BEGIN
	DBMS_OUTPUT.PUT_LINE('Data updated in the pistol table!');
END;
/


CREATE OR REPLACE TRIGGER pistoldl
AFTER DELETE 
ON pistol
DECLARE
BEGIN
	DBMS_OUTPUT.PUT_LINE('Data row deleted in the pistol table!');
END;
/


------------Sticker1-----------------
CREATE OR REPLACE TRIGGER stickerin
AFTER INSERT 
ON sticker1
DECLARE
BEGIN
	DBMS_OUTPUT.PUT_LINE('Data inserted into the sticker table!');
END;
/


CREATE OR REPLACE TRIGGER stickerup
AFTER UPDATE 
ON sticker1
DECLARE
BEGIN
	DBMS_OUTPUT.PUT_LINE('Data updated in the sticker table!');
END;
/

CREATE OR REPLACE TRIGGER stickerdl
AFTER DELETE 
ON sticker1
DECLARE
BEGIN
	DBMS_OUTPUT.PUT_LINE('Data row deleted in the sticker table!');
END;
/