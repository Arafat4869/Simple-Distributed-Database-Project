SET SERVEROUTPUT ON;
SET VERIFY OFF;

BEGIN
	DBMS_OUTPUT.PUT_LINE(chr(10)||chr(10)||'Please Enter The Info');
END;
/

DECLARE
	name varchar2(20) := '&Name';
	ex varchar2(15) := '&Exterior';
	price float := &Price;
	col varchar2(20) := '&Collection';
BEGIN
	insertpack.stk(name,ex,price,col);
END;
/