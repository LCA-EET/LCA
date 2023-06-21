//Modifications to BDCORWIN.D
//Daniel Valle
//dan@danielvalle.net
/* Revision History

2022-08-25: Initial Commit
2022-11-17: Modified to remove the use of REPLACE_SAY
*/

ADD_TRANS_TRIGGER BDCORWIN 6
~
	!Global("XA_Override", "Global", 1)
~
DO 5

ADD_TRANS_TRIGGER BDCORWIN 60
~
	!Global("XA_Override", "Global", 1)
~

EXTEND_BOTTOM BDCORWIN 6
	IF ~ 
		Global("EECorwinBG1", "Global", 1)
	~
	THEN REPLY @0 /* ~We've worked well together in the past, Corwin. I am eager to continue our partnership.~ */
	GOTO 13
END

EXTEND_BOTTOM BDCORWIN 60
	IF ~~ THEN REPLY @13/* ~Ahem, I have not much reason to trust a Flaming Fist officer, honestly, I have already killed some of your men.~ */ 
	DO ~
		SetGlobal("EECorwinScar","Global",2)
	~ 
	GOTO XAA62
  
	IF ~~ THEN REPLY @14 /* ~These are strange times, Captain Corwin. I have learned to listen first and judge afterwards.~*/ 
	DO ~
		SetGlobal("EECorwinScar","Global",2)
	~ 
	GOTO XAA62
  
	IF ~~ THEN REPLY @1 /* ~I always have time to listen to an attractive woman, in her uniform or out of it.~ */ 
	GOTO XAA61
END

APPEND BDCORWIN
	IF ~~ THEN BEGIN XAA61
		SAY @7 /* ~I don't care for your glib motifs as long as you listen...~ */
		
		IF ~~ THEN GOTO XAA62
	END
	
	IF ~~ THEN BEGIN XAA62 // from: 61.0 60.2 60.0
		SAY @2 /* ~It's not easy for me to admit, but these are troubled times, and Commander Scar and I have reason to suspect that we cannot trust certain individuals within our ranks.~ */
		IF ~~ THEN GOTO XAA63
	END
	
	IF ~~ THEN BEGIN XAA63 // from: 62.0
		SAY @3/* ~I'm not referring only to the Iron Crisis. There are greater things afoot. Duke Eltan trusts Scar, and he trusts me. It was his idea to seek the assistance of trustworthy and competent candidates who can venture where we cannot, at least officially.~ */
  
		IF ~~ THEN REPLY @8 /* ~Our situations are similar - for some reason, assassins have been sent after me, I believe by the same people that are behind the Iron Crisis. Some assistance would be welcome.~ */ 
		GOTO XAA64
  
		IF ~~ THEN REPLY @9 /* ~I have my own reasons to pursue the issues of Baldur's Gate. The less people I hardly know are involved, the better.~ */ 
		GOTO XAA64
		
		IF ~~ THEN REPLY @10 /* ~Scar was right to trust us, and to provide us with someone who has some knowledge of what has been going on in the city.~ */ 
		GOTO XAA64
	END
	
	IF ~~ THEN BEGIN XAA64 // from: 63.3 63.2 63.1 63.0
		SAY @5 /* ~Listen, <CHARNAME>. My loyalty to this city and its people is my highest goal. It's why joined the Flaming Fist and confide in Duke Eltan. The people threatening the city are more than likely the same group that you have been battling up and down the Sword Coast. We would be well served to work together against this threat.~ */

		IF ~~ THEN REPLY @11 /* ~I am open to us working together, though I must warn you. If you betray me, Corwin, the consequences will be severe.~   */ 
		GOTO 65
		
		IF ~~ THEN REPLY @12 /* ~My party is full of trusted companions. I think, we can manage that situation without your help.~ */ 
		GOTO 66
		
		IF ~~ THEN REPLY @6 /* ~I agree. The city and its people will be best served if we were to work together. Join me, Captain.~ */ 
		GOTO 65
	END
END