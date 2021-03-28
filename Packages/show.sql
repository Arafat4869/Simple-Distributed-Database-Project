SET SERVEROUTPUT ON;
SET linesize 150;

CREATE OR REPLACE PACKAGE showpack AS
	PROCEDURE showgun(searchtype IN NUMBER, na IN varchar2 , md IN varchar2, ex IN varchar2, wr IN varchar2 , col IN varchar2);
	
	FUNCTION guncnt(stype IN NUMBER) RETURN NUMBER;
	
	PROCEDURE stic(st in NUMBER, n IN varchar2,col IN varchar2 ,ext IN varchar2);
	
END showpack;
/

CREATE OR REPLACE PACKAGE BODY showpack AS
	PROCEDURE showgun(searchtype IN NUMBER, na IN varchar2 , md IN varchar2, ex IN varchar2, wr IN varchar2 , col IN varchar2)
	IS
	
	nam varchar2(25);
	models varchar2(15);
	ext varchar2(2);
	wera varchar2(10);
	pr FLOAT;
	coll varchar2(20);
	cnt NUMBER;
	novalue EXCEPTION;
	
	BEGIN
		IF searchtype= 1 THEN
			DBMS_OUTPUT.PUT_LINE(chr(10)||chr(10)||'GunName' || chr(9) ||'Model' || chr(9) || 'Ex' || chr(9) || 'WearRating' || chr(9) || 'Price' || chr(9) || 'Collection');
			DBMS_OUTPUT.PUT_LINE('------------------------------------------------------------' );
			FOR R IN (select * from AllGUN) LOOP
				nam := R.Name;
				models := R.Model;
				ext := R.Exterior;
				wera := R.Wear_Rating;
				pr := R.Price;
				coll := R.Collection;
				DBMS_OUTPUT.PUT_LINE(nam || chr(9) || models || chr(9) || ext || chr(9) || wera || chr(9) || pr || chr(9) || coll);
				DBMS_OUTPUT.PUT_LINE('------------------------------------------------------------');
			END LOOP;
			select count(id) into cnt from ALLGUN;
			DBMS_OUTPUT.PUT_LINE(chr(10)||'Total Search Result: '|| cnt|| chr(10));
		END IF;
		
		IF searchtype = 2 THEN
			DBMS_OUTPUT.PUT_LINE(chr(10)||chr(10)||'GunName' || chr(9) ||'Model' || chr(9) || 'Ex' || chr(9) || 'WearRating' || chr(9) || 'Price' || chr(9) || 'Collection');
			DBMS_OUTPUT.PUT_LINE('------------------------------------------------------------' );
			FOR R IN (select * from ALLGUN where Name = na) LOOP
				nam := R.Name;
				models := R.Model;
				ext := R.Exterior;
				wera := R.Wear_Rating;
				pr := R.Price;
				coll := R.Collection;
				DBMS_OUTPUT.PUT_LINE(nam || chr(9) || models || chr(9) || ext || chr(9) || wera || chr(9) || pr || chr(9) || coll);
				DBMS_OUTPUT.PUT_LINE('------------------------------------------------------------');
			END LOOP;
			select count(id) into cnt from ALLGUN where Name=na;
			DBMS_OUTPUT.PUT_LINE(chr(10)||'Total Search Result: '|| cnt|| chr(10));
		END IF;
		
		IF searchtype = 3 THEN
			DBMS_OUTPUT.PUT_LINE(chr(10)||chr(10)||'GunName' || chr(9) ||'Model' || chr(9) || 'Ex' || chr(9) || 'WearRating' || chr(9) || 'Price' || chr(9) || 'Collection');
			DBMS_OUTPUT.PUT_LINE('------------------------------------------------------------' );
			FOR R IN (select * from ALLGUN where Model=md) LOOP
				nam := R.Name;
				models := R.Model;
				ext := R.Exterior;
				wera := R.Wear_Rating;
				pr := R.Price;
				coll := R.Collection;
				DBMS_OUTPUT.PUT_LINE(nam || chr(9) || models || chr(9) || ext || chr(9) || wera || chr(9) || pr || chr(9) || coll);
				DBMS_OUTPUT.PUT_LINE('------------------------------------------------------------');
			END LOOP;
			select count(id) into cnt from ALLGUN where Model =md;
			DBMS_OUTPUT.PUT_LINE(chr(10)||'Total Search Result: '|| cnt|| chr(10));
		END IF;
		
		IF searchtype = 4 THEN
			DBMS_OUTPUT.PUT_LINE(chr(10)||chr(10)||'GunName' || chr(9) ||'Model' || chr(9) || 'Ex' || chr(9) || 'WearRating' || chr(9) || 'Price' || chr(9) || 'Collection');
			DBMS_OUTPUT.PUT_LINE('------------------------------------------------------------' );
			FOR R IN (select * from ALLGUN where Exterior=ex) LOOP
				nam := R.Name;
				models := R.Model;
				ext := R.Exterior;
				wera := R.Wear_Rating;
				pr := R.Price;
				coll := R.Collection;
				DBMS_OUTPUT.PUT_LINE(nam || chr(9) || models || chr(9) || ext || chr(9) || wera || chr(9) || pr || chr(9) || coll);
				DBMS_OUTPUT.PUT_LINE('------------------------------------------------------------');
			END LOOP;
			select count(id) into cnt from ALLGUN where Exterior=ex;
			DBMS_OUTPUT.PUT_LINE(chr(10)||'Total Search Result: '|| cnt|| chr(10));
		END IF;
		
		IF searchtype = 5 THEN
			DBMS_OUTPUT.PUT_LINE(chr(10)||chr(10)||'GunName' || chr(9) ||'Model' || chr(9) || 'Ex' || chr(9) || 'WearRating' || chr(9) || 'Price' || chr(9) || 'Collection');
			DBMS_OUTPUT.PUT_LINE('------------------------------------------------------------' );
			FOR R IN (select * from ALLGUN where Wear_Rating = wr) LOOP
				nam := R.Name;
				models := R.Model;
				ext := R.Exterior;
				wera := R.Wear_Rating;
				pr := R.Price;
				coll := R.Collection;
				DBMS_OUTPUT.PUT_LINE(nam || chr(9) || models || chr(9) || ext || chr(9) || wera || chr(9) || pr || chr(9) || coll);
				DBMS_OUTPUT.PUT_LINE('------------------------------------------------------------');
			END LOOP;
			select count(id) into cnt from ALLGUN where Wear_Rating = wr;
			DBMS_OUTPUT.PUT_LINE(chr(10)||'Total Search Result: '|| cnt|| chr(10));
		END IF;
		
		IF searchtype = 6 THEN
			DBMS_OUTPUT.PUT_LINE(chr(10)||chr(10)||'GunName' || chr(9) ||'Model' || chr(9) || 'Ex' || chr(9) || 'WearRating' || chr(9) || 'Price' || chr(9) || 'Collection');
			DBMS_OUTPUT.PUT_LINE('------------------------------------------------------------' );
			FOR R IN (select * from ALLGUN where Collection=col ) LOOP
				nam := R.Name;
				models := R.Model;
				ext := R.Exterior;
				wera := R.Wear_Rating;
				pr := R.Price;
				coll := R.Collection;
				DBMS_OUTPUT.PUT_LINE(nam || chr(9) || models || chr(9) || ext || chr(9) || wera || chr(9) || pr || chr(9) || coll);
				DBMS_OUTPUT.PUT_LINE('------------------------------------------------------------');
			END LOOP;
			select count(id) into cnt from ALLGUN where Collection=col;
			DBMS_OUTPUT.PUT_LINE(chr(10)||'Total Search Result: '|| cnt|| chr(10));
		END IF;
		
		IF cnt=0 THEN
			RAISE novalue;
		END IF;
		
		EXCEPTION
			WHEN novalue THEN 
				DBMS_OUTPUT.PUT_LINE('No Data to show.');
			WHEN OTHERS THEN
				DBMS_OUTPUT.PUT_LINE('Others');
	END showgun;
	
	FUNCTION guncnt(stype IN NUMBER) RETURN NUMBER
	IS
		assc NUMBER;
		smgc NUMBER;
		snic NUMBER;
		pisc NUMBER;
		lmgc NUMBER;
		shgc NUMBER;
		ttlc NUMBER;
		
	BEGIN
		select count(id) into assc FROM assault;
		select count(id) into smgc FROM smg;
		select count(id) into snic FROM sniper;
		select count(id) into pisc FROM pistol;
		select count(id) into lmgc FROM lmg@site1;
		select count(id) into shgc FROM shotgun@site1;
		select count(id) into ttlc FROM allgun;
		DBMS_OUTPUT.PUT_LINE(chr(10)||chr(10)||'Assault' || chr(9) || 'SMG' || chr(9) || 'Sniper'|| chr(9) || 'Pistol' || chr(9) || 'LMG' || chr(9) || 'Shotgun' || chr(9) || 'Total');
		DBMS_OUTPUT.PUT_LINE('------------------------------------------------------------');
		DBMS_OUTPUT.PUT_LINE(assc || chr(9) || smgc ||  chr(9) || snic  || chr(9) || pisc || chr(9) || lmgc || chr(9) || shgc || chr(9) || ttlc);
		RETURN 1 ;
	END guncnt;
	
	
	PROCEDURE stic(st in NUMBER, n IN varchar2,col IN varchar2 ,ext IN varchar2)
	IS
		nam varchar2(20);
		coll varchar2(20);
		exte varchar2(15);
		pri float;
		cnt NUMBER;
		novalue EXCEPTION;
	BEGIN
		IF st = 1 THEN
			DBMS_OUTPUT.PUT_LINE(chr(10)||chr(10)||'Name' || chr(9) || 'Collection' || chr(9) || 'Exterior'|| chr(9) || 'Price');
			FOR R IN (select * from sticker) LOOP
				nam  := R.Name;
				coll := R.Collection;
				exte := R.Exterior;
				pri  := R.Price;
				DBMS_OUTPUT.PUT_LINE('-----------------------------------------------------');
				DBMS_OUTPUT.PUT_LINE(nam || chr(9) || coll || chr(9) || exte || chr(9) || pri);
			END LOOP;
			select count(stid) into cnt from sticker;
			DBMS_OUTPUT.PUT_LINE(chr(10)||'Total Search Result: '|| cnt|| chr(10));
		END IF;
		IF st = 2 THEN
			DBMS_OUTPUT.PUT_LINE(chr(10)||chr(10)||'Name' || chr(9) || 'Collection' || chr(9) || 'Exterior'|| chr(9) || 'Price');
			FOR R IN (select * from sticker where Name=n) LOOP
				nam  := R.Name;
				coll := R.Collection;
				exte := R.Exterior;
				pri  := R.Price;
				DBMS_OUTPUT.PUT_LINE('-----------------------------------------------------');
				DBMS_OUTPUT.PUT_LINE(nam || chr(9) || coll || chr(9) || exte || chr(9) || pri);
			END LOOP;
			select count(stid) into cnt from sticker where Name = n;
			DBMS_OUTPUT.PUT_LINE(chr(10)||'Total Search Result: '|| cnt|| chr(10));
		END IF;
		IF st = 3 THEN
			DBMS_OUTPUT.PUT_LINE(chr(10)||chr(10)||'Name' || chr(9) || 'Collection' || chr(9) || 'Exterior'|| chr(9) || 'Price');
			FOR R IN (select * from sticker where Collection=col) LOOP
				nam  := R.Name;
				coll := R.Collection;
				exte := R.Exterior;
				pri  := R.Price;
				DBMS_OUTPUT.PUT_LINE('-----------------------------------------------------');
				DBMS_OUTPUT.PUT_LINE(nam || chr(9) || coll || chr(9) || exte || chr(9) || pri);
			END LOOP;
			select count(stid) into cnt from sticker where Collection=col;
			DBMS_OUTPUT.PUT_LINE(chr(10)||'Total Search Result: '|| cnt|| chr(10));
		END IF;
		IF st = 4 THEN
			DBMS_OUTPUT.PUT_LINE(chr(10)||chr(10)||'Name' || chr(9) || 'Collection' || chr(9) || 'Exterior'|| chr(9) || 'Price');
			FOR R IN (select * from sticker where Exterior=ext) LOOP
				nam  := R.Name;
				coll := R.Collection;
				exte := R.Exterior;
				pri  := R.Price;
				DBMS_OUTPUT.PUT_LINE('-----------------------------------------------------');
				DBMS_OUTPUT.PUT_LINE(nam || chr(9) || coll || chr(9) || exte || chr(9) || pri);
			END LOOP;
			select count(stid) into cnt from sticker where Exterior=ext;
			DBMS_OUTPUT.PUT_LINE(chr(10)||'Total Search Result: '|| cnt|| chr(10));
		END IF;
		
		IF cnt=0 THEN
			RAISE novalue;
		END IF;
		
		EXCEPTION
			WHEN novalue THEN 
				DBMS_OUTPUT.PUT_LINE(chr(10)||chr(10)||'No Data to show.');
			WHEN OTHERS THEN
				DBMS_OUTPUT.PUT_LINE(chr(10)||chr(10)||'Others');
		
	END stic;
END showpack;
/


@"K:\4.1\4126 DDB\Project\Packages\update.sql"