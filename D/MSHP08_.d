//Modifications to SHOP08_.D (Baldur's Gate General Store 1 of 2)
//Daniel Valle
//dan@danielvalle.net
/* Revision History

2022-08-28: Initial Commit

*/

EXTEND_BOTTOM SHOP08_ 0
	IF ~
		OR(2)
			GlobalGT("EEMetRohma", "Global", 0)
			Global("LCA_MetRohma", "GLOBAL", 1)
		!Global("BoughtDoll08", "Global", 2)
		!Global("LCA_GaveDoll", "Global", 1)
		!PartyHasItem("RDOLL")
		InPartySlot(LastTalkedToBy, 0)
	~
	THEN REPLY @0 /* ~I'm looking for a gift for a young child, perhaps a doll of some sort. Do you have anything like that in your store?~ */
	GOTO M0
END

APPEND SHOP08_
	IF ~~ THEN BEGIN M0
		SAY @1 /* ~As a matter of fact, I do. Are you interested in this doll? I'll sell it to you for three gold.~ */
		IF ~
			PartyGoldGT(2)
		~
		THEN REPLY @2 /* ~Yes, that is perfect, thank you. (Pay three gold for the doll). ~ */
		GOTO M1
		
		IF ~
			PartyGoldLT(3)
		~
		THEN REPLY @3 /* ~Yes, that is perfect. I'm a bit short on funds at the moment, however. I will return later to buy the doll.~ */
		GOTO M2
		
		IF ~~ THEN REPLY @4 /* ~No thanks. Another time, perhaps.~ */
		GOTO M3
	END
	
	IF ~~ THEN BEGIN M1
		SAY @5 /* ~A pleasure doing business with you.~ */
		IF ~~ THEN
		DO ~
			GiveItem("RDOLL", LastTalkedToBy)
			SetGlobal("BoughtDoll08", "Global", 2)
			TakePartyGold(3)
			AddJournalEntry(@8, INFO)
		~
		EXIT
	END
	
	IF ~~ THEN BEGIN M2
		SAY @6 /* ~No worries. I'll hold on to the doll until you come up with the money.~ */
		IF ~~ THEN
		EXIT
	END
	
	IF ~~ THEN BEGIN M3
		SAY @9 /* ~OK. I'll hold on to it in case you change your mind. ~ */
		IF ~~ THEN
		EXIT
	END
END