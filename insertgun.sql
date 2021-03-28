SET SERVEROUTPUT ON;
SET VERIFY OFF;

BEGIN
	DBMS_OUTPUT.PUT_LINE(chr(10)||chr(10)||'Select the gun type to enter the info:' || chr(10) || '1.Assault' || chr(10) || '2.SMG' || chr(10) || '3.Sniper' || chr(10) || '4.Pistol'|| chr(10) || '5.LMG'|| chr(10) || '6.Shotgun');
END;
/

DECLARE
	gTYPE NUMBER := &gType;
	name assault.name%TYPE := '&Name';
	model assault.model%TYPE := '&Model';
	ex assault.exterior%TYPE := '&Exterior';
	wr assault.wear_rating%TYPE := '&Wear_Rating';
	price assault.price%TYPE := &Price;
	col assault.collection%TYPE := '&Collection';
	invalid EXCEPTION;
BEGIN
	IF gType<0 or gType>6 THEN
		RAISE invalid;
	END IF;
	
	insertpack.gun(gType,name,model,ex,wr,price,col);
	
	EXCEPTION
		WHEN invalid THEN 
			DBMS_OUTPUT.PUT_LINE(chr(10)||chr(10)||'Invalid Input!Please enter valid input.');
		WHEN OTHERS THEN
			DBMS_OUTPUT.PUT_LINE(chr(10)||chr(10)||'Others');
	
END;
/