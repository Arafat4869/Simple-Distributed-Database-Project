SET SERVEROUTPUT ON;
SET VERIFY OFF;

BEGIN
	DBMS_OUTPUT.PUT_LINE(chr(10)||chr(10)||'Please Enter a Choice:');
	DBMS_OUTPUT.PUT_LINE('1.Show all the Guns');
	DBMS_OUTPUT.PUT_LINE('2.Search By Name');
	DBMS_OUTPUT.PUT_LINE('3.Search By Model');
	DBMS_OUTPUT.PUT_LINE('4.Search By Exterior');
	DBMS_OUTPUT.PUT_LINE('5.Search By Wear Rating');
	DBMS_OUTPUT.PUT_LINE('6.Search By Collection');
	DBMS_OUTPUT.PUT_LINE('7.Show Total Gun Count');
	DBMS_OUTPUT.PUT_LINE('--Note: Please enter * in empty fields--');
END;
/

DECLARE
	typ NUMBER := &Choice;
	name varchar2(25) := '&Name';
	md varchar(15) := '&Model';
	ex varchar2(2) := '&Exterior';
	wr varchar2(10) := '&WearRating';
	col varchar2(20) := '&Collection';
	hud NUMBER;
	invalid EXCEPTION;
	
BEGIN
	IF typ <=6 THEN
		showpack.showgun(typ,name,md,ex,wr,col);
	END IF;
	IF typ = 7 THEN
		hud:=showpack.guncnt(typ);
	END IF;
	IF typ <1 OR typ>7 THEN
		RAISE invalid;
	END IF;
	
	EXCEPTION
		WHEN invalid THEN
			DBMS_OUTPUT.PUT_LINE(chr(10)||chr(10)||'Invalid input! Please enter valid inputs');
		WHEN OTHERS THEN
			DBMS_OUTPUT.PUT_LINE(chr(10)||chr(10)||'Other Error!');
END;
/