SET SERVEROUTPUT ON;

CREATE OR REPLACE PACKAGE insertpack AS
	
	PROCEDURE gun(gunType IN NUMBER, name IN varchar2, model IN varchar2, ex IN varchar2, wr IN varchar2, price IN float, col IN varchar2);
	
	PROCEDURE stk(name IN varchar2, ext IN varchar2 , price IN float , col IN varchar2);
	
END insertpack;
/

CREATE OR REPLACE PACKAGE BODY insertpack AS
	
	PROCEDURE gun(gunType IN NUMBER, name IN varchar2, model IN varchar2, ex IN varchar2, wr IN varchar2, price IN float, col IN varchar2)
	IS
	
	gid NUMBER;
	BEGIN
		IF  gunType = 1 THEN
			FOR R in (Select id from assault)LOOP
				gid := R.id+1;
			END LOOP;
			insert into assault(ID,Name,Model,Exterior,Wear_Rating,Price,Collection) values(gid,name,model,ex,wr,price,col);
		END IF;
		IF  gunType = 2 THEN
			FOR R in (Select id from smg)LOOP
				gid := R.id+1;
			END LOOP;
			insert into smg(ID,Name,Model,Exterior,Wear_Rating,Price,Collection) values(gid,name,model,ex,wr,price,col);
		END IF;
		IF  gunType = 3 THEN
			FOR R in (Select id from sniper)LOOP
				gid := R.id+1;
			END LOOP;
			insert into sniper(ID,Name,Model,Exterior,Wear_Rating,Price,Collection) values(gid,name,model,ex,wr,price,col);
		END IF;
		IF  gunType = 4 THEN
			FOR R in (Select id from pistol)LOOP
				gid := R.id+1;
			END LOOP;
			insert into pistol(ID,Name,Model,Exterior,Wear_Rating,Price,Collection) values(gid,name,model,ex,wr,price,col);
		END IF;
		IF  gunType = 5 THEN
			FOR R in (Select id from lmg@site1)LOOP
				gid := R.id+1;
			END LOOP;
			insert into lmg@site1(ID,Name,Model,Exterior,Wear_Rating,Price,Collection) values(gid,name,model,ex,wr,price,col);
		END IF;
		IF  gunType = 6 THEN
			FOR R in (Select id from shotgun@site1)LOOP
				gid := R.id+1;
			END LOOP;
			insert into shotgun@site1(ID,Name,Model,Exterior,Wear_Rating,Price,Collection) values(gid,name,model,ex,wr,price,col);
		END IF;
		commit;
	END gun;
	
	
	PROCEDURE stk(name IN varchar2, ext IN varchar2 , price IN float , col IN varchar2)
	IS
	sid NUMBER;
	BEGIN
		FOR R IN (Select stid from sticker1) LOOP
			sid := R.stid+1;
		END LOOP;
		insert into sticker1 values(sid, name, col);
		insert into sticker2@site1 values(sid,ext,price);
		commit;
	END stk;
	
END insertpack;
/


@"K:\4.1\4126 DDB\Project\Packages\view.sql"