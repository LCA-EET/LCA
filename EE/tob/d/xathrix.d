BEGIN ~XATHRIX~

IF ~
	Global("XA_LC_ThrixSpawn","MYAREA",3)
~ THEN BEGIN XA_ThrixIntro
	SAY @0 /*~Hah, you've returned! My master bids you welcome, <CHARNAME>.~*/
	
	IF ~~ THEN REPLY @1 /*~I destroyed your master, and I'll destroy you if you don't get out of my way!~*/
	DO ~
		SetGlobal("XA_LC_ThrixSpawn","MYAREA",4)
	~
	GOTO XA_OutOfWay
	
	IF ~~ THEN REPLY @2 /*~Your master? Belhifet is long dead. Who is 
	now in charge of this place?~*/
	DO ~
		SetGlobal("XA_LC_ThrixSpawn","MYAREA",4)
	~
	GOTO XA_NewMaster
	
	IF ~~ THEN REPLY @3 /*~I thought you would have taken the throne, 
	after I dispatched your former master.~*/
	DO ~
		SetGlobal("XA_LC_ThrixSpawn","MYAREA",4)
	~
	GOTO XA_AssumeThrone
	
	IF ~~ THEN REPLY @6 /* ~I've come for Caelar Argent. Where is she?~ */
	DO ~
		SetGlobal("XA_LC_ThrixSpawn","MYAREA",4)
	~
	GOTO XA_Caelar
END

IF ~~ THEN BEGIN XA_AssumeThrone
	SAY @12 /*~Had it not been for that so called 'Shining Lady' *hiss*, I would have ... She warded the tower and turned it into her own fortress! It wasn't until the master arrived that she was put in her place.~*/
	
	IF ~~ THEN REPLY @2 /*~Your master? Belhifet is long dead. Who is 
	now in charge of this place?~*/
	GOTO XA_NewMaster
END

IF ~~ THEN BEGIN XA_Caelar
	SAY @7 /*~Oh yes, the 'Shining Lady' *hiss* ...~*/
	
	= @8 /*~She is with the master, in his tower.~*/
	
	IF ~~ THEN REPLY @1 /*~I destroyed your master, and I'll destroy you if you don't get out of my way!~*/
	GOTO XA_OutOfWay
	
	IF ~~ THEN REPLY @2 /*~Your master? Belhifet is long dead. Who is 
	now in charge of this place?~*/
	GOTO XA_NewMaster
END

IF ~~ THEN BEGIN XA_OutOfWay
	SAY @4 /* ~Hahah... there was once a time when Thrix would've ripped out your throat for such insolence. But you've grown proud and mighty, child of Bhaal. Thrix will not stand in your way.~  */
	
	IF ~~ THEN
	GOTO XA_EnterTower
END

IF ~~ THEN BEGIN XA_EnterTower
	SAY @5 /*~The master awaits. Enter freely and of your own will.~*/
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_LC_TowerUnlock", "GLOBAL", 1)
	~
	EXIT
END

IF ~~ THEN BEGIN XA_NewMaster
	SAY @9 /*~You'll find out soon enough. He awaits at the top of the tower. Enter freely and of your own will.~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_LC_TowerUnlock", "GLOBAL", 1)
	~
	EXIT
END