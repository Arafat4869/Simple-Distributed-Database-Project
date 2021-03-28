SET SERVEROUTPUT ON;
SET VERIFY OFF;

BEGIN
	DBMS_OUTPUT.PUT_LINE(chr(10)||chr(10)||'Please Enter a Choice:');
	DBMS_OUTPUT.PUT_LINE('1.Show all the Stickers');
	DBMS_OUTPUT.PUT_LINE('2.Search By Name');
	DBMS_OUTPUT.PUT_LINE('3.Search By Collection');
	DBMS_OUTPUT.PUT_LINE('4.Search By Exterior');
	DBMS_OUTPUT.PUT_LINE('--Note: Please enter * in empty fields--'||chr(10)||chr(10));
END;
/

DECLARE
	typ NUMBER := &Choice;
	name varchar2(20) := '&Name';
	col varchar2(20) := '&Collection';
	ex varchar2(15) := '&Exterior';
	invalid EXCEPTION;
	
BEGIN
	IF typ <1 OR typ>4 THEN
		RAISE invalid;
	END IF;
	showpack.stic(typ,name,col,ex);
	
	EXCEPTION
		WHEN invalid THEN
			DBMS_OUTPUT.PUT_LINE(chr(10)||chr(10)||'Invalid input! Please enter valid inputs');
		WHEN OTHERS THEN
			DBMS_OUTPUT.PUT_LINE(chr(10)||chr(10)||'Other Error!');
	
END;
/