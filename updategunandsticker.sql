SET SERVEROUTPUT ON;
SET VERIFY OFF;
DECLARE
	gid NUMBER;
	nam varchar2(25);
	pri float;
BEGIN
	
	DBMS_OUTPUT.PUT_LINE('Gun Info');
	DBMS_OUTPUT.PUT_LINE('GID'|| chr(9) || 'GUNNAME' || chr(9) || 'PRICE');
	DBMS_OUTPUT.PUT_LINE('--------------------------------------------------');
	FOR R in (Select * from ALLGUN) LOOP
		gid:= R.ID;
		nam := R.Name;
		pri := R.Price;
		DBMS_OUTPUT.PUT_LINE(gid|| chr(9) || nam || chr(9) || pri);
	END LOOP;
	DBMS_OUTPUT.PUT_LINE(chr(10)||chr(10)|| 'Sticker Info');
	DBMS_OUTPUT.PUT_LINE('STID'|| chr(9) || 'STICKERNAME' || chr(9) || 'PRICE');
	DBMS_OUTPUT.PUT_LINE('--------------------------------------------------');
	FOR R in (Select * from sticker) LOOP
		gid:= R.STID;
		nam := R.Name;
		pri := R.Price;
		DBMS_OUTPUT.PUT_LINE(gid|| chr(9) || nam || chr(9) || pri);
	END LOOP;
	
	DBMS_OUTPUT.PUT_LINE(chr(10)||chr(10)||'Enter the Gun Type Or Sticker To Update their Price:');
	DBMS_OUTPUT.PUT_LINE('1. Assault');
	DBMS_OUTPUT.PUT_LINE('2. SMG');
	DBMS_OUTPUT.PUT_LINE('3. Sniper');
	DBMS_OUTPUT.PUT_LINE('4. Pistol');
	DBMS_OUTPUT.PUT_LINE('5. LMG');
	DBMS_OUTPUT.PUT_LINE('6. Shotgun');
	DBMS_OUTPUT.PUT_LINE('7. Sticker'|| chr(10)||chr(10));
END;
/

DECLARE

	Ty NUMBER := &Gun_or_Sticker;
	GSID NUMBER := &ID;
	PR NUMBER := &New_Price;
	invalid EXCEPTION;
	
BEGIN
	IF Ty <= 6 THEN
		updatepack.gun(GSID,Ty,PR);
	ELSIF TY = 7 THEN
		updatepack.stk(GSID,PR);
	END IF;
	IF TY >7 OR TY<0 THEN 
		RAISE invalid;
	END IF;
	
	EXCEPTION
		WHEN invalid THEN
			DBMS_OUTPUT.PUT_LINE(chr(10)||chr(10)||'Invalid input! Please enter valid inputs');
		WHEN OTHERS THEN
			DBMS_OUTPUT.PUT_LINE(chr(10)||chr(10)||'Other Error!');
 END;
/