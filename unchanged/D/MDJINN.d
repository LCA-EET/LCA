//Modifications to IDJINNI.D
//Daniel Valle
//dan@danielvalle.net
/* Revision History

2022-08-25: Initial Commit

*/

ADD_STATE_TRIGGER IDJINNI 0
~
	!Global("LCA_Override", "Global", 1)
~

ADD_STATE_TRIGGER IDJINNI 11
~
	!Global("LCA_Override", "Global", 1)
~

ADD_STATE_TRIGGER IDJINNI 12
~
	!Global("LCA_Override", "Global", 1)
~

ADD_STATE_TRIGGER IDJINNI 20
~
	!Global("LCA_Override", "Global", 1)
~

APPEND IDJINNI
	IF ~  
		NumTimesTalkedTo(0)
	~ 
	THEN BEGIN M0 // from:
		SAY @34 /* ~I am bound. What do—who are you? Ah, I see... the master is gone, and you've managed to get yourselves in trouble.~ [OGREM01] */
	  
		IF ~~ THEN REPLY @0 /* ~Who are you that you've been bound in this flask?~ */
		DO ~
			SetGlobal("TalkedToDjinni","LOCALS",1)
		~ 	
		GOTO M21
	  
		IF ~~ THEN REPLY @1 /* ~I'm not sure that I understand what is going on here. Did you come out of this bottle?~ */ 
		DO ~
			SetGlobal("TalkedToDjinni","LOCALS",1)
		~ 	
		GOTO M14
	  
		IF ~~ THEN REPLY @2 /* ~You would be the proverbial djinni in a bottle?~ */ 
		DO ~
			SetGlobal("TalkedToDjinni","LOCALS",1)
		~ 	
		GOTO M23
	END
	
	IF ~~ THEN BEGIN M13 // from: 35.0 19.0
		SAY @37 /* ~He will torture you for escaping and kill you for freeing his djinni slave. Escape from his lair quickly if you value your life. Farewell!~ */
		IF ~~ THEN 
		DO ~
			SetGlobal("HelpDjinni","GLOBAL",2)
			PlaySound("EFF_M01")
			CreateVisualEffectObject("SPPLANAR",Myself)
			Wait(2)
			PlaySound("EFF_M38")
			DestroySelf()
		~ 
		EXIT
	END
	
	IF ~~ THEN BEGIN M14 // from: 0.4 0.1
		SAY @35 /* ~It is no wonder that the master was able to take you so easily despite all of your magical equipment. Even for a fleshling, you don't catch on very quickly.~ */
		IF ~~ THEN GOTO M22
	END

	IF ~~ THEN BEGIN M16 // from: 29.0 11.0 8.0 5.0
		SAY @25 /* ~This flask that I am bound in is a creation of magic. It is unbreakable as long as it remains apart from its twin, the real flask.~ */
		IF~~ THEN GOTO M33
	END

	IF ~~ THEN BEGIN M18 // from: 33.2 7.2
		SAY @36 /* ~He will keep the flask close to himself. The master would not risk it falling into other hands. Perhaps he keeps it in his chambers, or with his dryad concubines. Perhaps the golems have it.~ */
		IF ~~ THEN GOTO M34
	END

	IF ~~ THEN BEGIN M21 // from: 0.3
		SAY @3 /* ~Enslaved would be a more accurate word. I was captured in my home, on this Plane of Air, by some wizard. He bound me to this flask that I might guard a powerful dagger of his—and something of yours.~ */
		
		IF ~~ THEN REPLY @4 /* ~You have an item of mine? What is this about a dagger?~ */ 
		GOTO M24
		
		IF ~~ THEN REPLY @5 /* ~It is not my concern. Give me what you have.~ */ 
		GOTO M26
		
		IF ~~ THEN REPLY @6 /* ~I've no time to spare talking to you. I must find a way out of this madman's dungeon.~ */ 
		GOTO M25
	END
	
	IF ~~ THEN BEGIN M22 // from: 14.1
		SAY @7 /* ~I am a djinni, and I have been bound by a wizard to guard his dagger, and your item it seems. I can sense that both of these items are tied to you, in some way.~ */
		
		IF ~~ THEN REPLY @4 /* ~You have an item of mine? What is this about a dagger?~ */ 
		GOTO M24
		
		IF ~~ THEN REPLY @5 /* ~It is not my concern. Give me what you have.~ */ 
		GOTO M26
		
		IF ~~ THEN REPLY @6 /* ~I've no time to spare talking to you. I must find a way out of this madman's dungeon.~ */ 
		GOTO M25
	END
	
	IF ~~ THEN BEGIN M23 // from: 0.5
		SAY @8 /* ~That I would, manling. I assume that, now that you have escaped, you have come seeking the magical item that has been stripped from you by our collective captor? Perhaps his dagger as well?~ */
		
		IF ~~ THEN REPLY @4 /* ~You have an item of mine? What is this about a dagger?~ */ 
		GOTO M24
		
		IF ~~ THEN REPLY @5 /* ~It is not my concern. Give me what you have.~ */ 
		GOTO M26
		
		IF ~~ THEN REPLY @6 /* ~I've no time to spare talking to you. I must find a way out of this madman's dungeon.~ */ 
		GOTO M25
	END
	
	IF ~~ THEN BEGIN M24 // from: 23.0 22.0 21.0
		SAY @9 /* ~I do. A thing of power that still carries a hint of your essence. There is something odd about the signature that you leave on this item. I am also in possession of my master's dagger, a prison of souls, that I sense is of great importance to you.~ */
		IF ~~ THEN REPLY @10 /* ~Can you give them to me?~ */ 
		GOTO M26
		
		IF ~~ THEN REPLY @11 /* ~I regret that I have no more time to speak with you. I must get back to escaping this madman's dungeon.~ */ 
		GOTO M25
	END

	IF ~~ THEN BEGIN M25 // from: 24.1 23.2 22.2 21.2
		SAY @12 /* ~Not so quickly. I have a powerful item that belongs to you. A thing that was stripped from you by our collective captor. I am also in possession of a dagger, a prison of souls, that I sense is of great interest to you.~ */
		IF ~~ THEN GOTO M26
	END

	IF ~~ THEN BEGIN M26 // from: 25.0 24.0 23.1 22.1 21.1
		SAY @13 /* ~If I had the power to give these items, I would, but the force that binds me is strong. As long as I am trapped within this flask, I am within the mage's power.~ */
		IF ~~ THEN GOTO M27
	END
	
	IF ~~ THEN BEGIN M27 // from: 26.0
		SAY @14 /* ~If you can secure the means of my release, I will give you your weapon and my master's dagger.~ */
		
		IF ~~ THEN REPLY @15 /* ~That sounds like a fair trade. How do I secure the means of your release?~ */ 
		GOTO M32
		
		IF ~~ THEN REPLY @16 /* ~Why should I deal with you when I can merely kill you?~ */ 
		GOTO M28
		
		IF ~~ THEN REPLY @17 /* ~I will think about it.~ */ 
		GOTO M30
	END
	
	IF ~~ THEN BEGIN M28 // from: 33.1 27.1
		SAY @18 /* ~You are welcome to try. While I am bound, neither myself nor the flask can be damaged. While I am bound, I can give you neither your weapon nor my master's dagger.~ */
		IF ~~ THEN GOTO M29
	END
	
	IF ~~ THEN BEGIN M29 // from: 28.0
		SAY @19 /* ~You must help me. There is no other way for you to obtain these powerful items I possess.~ */
		
		IF ~~ THEN REPLY @20 /* ~Very well, I shall help you. What do I need to do?~ */ 
		GOTO M16
		
		IF ~~ THEN REPLY @21 /* ~That sounds like more trouble than it's worth. I don't think that I'm interested.~ */ 
		GOTO M30
	END

	IF ~~ THEN BEGIN M30 // from: 33.0 31.1 29.1 27.2
		SAY @22 /* ~In your place, I would not be so quick to give up such powerful equipment. Free me, I beg you, and I shall give these items to you.~ */
		IF ~~ THEN EXIT
	END
	
	IF ~  
		Global("TalkedToDjinni","LOCALS",1)
		!Global("HelpDjinni","GLOBAL",1)
	~ 
	THEN BEGIN M31 // from:
		SAY @23 /* ~Will you now help me to be free in exchange for your magical weapon, and my master's dagger? ~ */
		
		IF ~~ THEN REPLY @24 /* ~Yes, I am willing to make a deal.~ */ 
		GOTO M32
		
		IF ~~ THEN REPLY @17 /* ~I will think about it.~ */ 
		GOTO M30
	END
	
	
	
	IF ~~ THEN BEGIN M32 // from: 31.0 27.0
		SAY @25 /* ~This flask that I am bound in is a creation of magic. It is unbreakable as long as it remains apart from its twin, the real flask.~ */
		IF ~~ THEN GOTO M33
	END
	
	IF ~~ THEN BEGIN M33 // from: 32.0 16.1
		SAY @26 /* ~You must find the original flask and bring it back to me. Once it is within my grasp, I can break the enchantment and be freed.~ */
		
		IF ~~ THEN REPLY @21 /* ~That sounds like more trouble than it's worth. I don't think that I'm interested.~ */ 
		GOTO M30
		
		IF ~~ THEN REPLY @16 /* ~Why should I deal with you when I can merely kill you?~ */ 
		GOTO M28
		
		IF ~~ THEN REPLY @27 /* ~Where can I find this flask?~ */ 
		GOTO M18
	END
	
	IF ~~ THEN BEGIN M34 // from: 18.1
		SAY @28 /* ~I cannot pinpoint its location from another plane. You shall have to search for it. Return to me when you have found it, and we shall exchange my freedom for the dagger, and your weapon.~ */
		IF ~~ THEN 
		DO ~
			SetGlobal("HelpDjinni","GLOBAL",1)
			AddJournalEntry(@29,INFO)
		~ 
		EXIT
	END

	IF ~~ THEN BEGIN M35 // from: 36.0
		SAY @32 /* ~At last! I am free! Here are your items, fleshling. You are an honorable person, and I feel that I must warn you. Keep away from the master!~ */
		IF ~~ THEN GOTO M13
	END

	IF ~  
		PartyHasItem("misc4d")
		Global("TalkedToDjinni","LOCALS",1)
	~ 
	THEN BEGIN M36 // from:
		SAY @33 /* ~I sense that you have the flask. Let us make the exchange.~ */
		IF ~~ THEN 
		DO ~
			AddexperienceParty(20000)
			GivePartyAllEquipment()
			GiveItemCreate("LCSTDAG",LastTalkedToBy(Myself),1,0,0)
			TakePartyItem("misc4d")
			AddJournalEntry(@31,INFO)
		~ 
		GOTO M35
	END

	IF ~~ THEN BEGIN M37
		SAY @36 /* ~He will keep the flask close to himself. The master would not risk it falling into other hands. Perhaps he keeps it in his chambers, or with his dryad concubines. Perhaps the golems have it.~ */
		IF ~~ THEN
		EXIT
	END
	
	IF ~  
		Global("TalkedToDjinni","LOCALS",1)
		Global("HelpDjinni","GLOBAL",1)
		!PartyHasItem("misc4d")
	~ 
	THEN BEGIN M38 // from:
		SAY @38 /* ~Return when you have the flask, fleshling, and you will be rewarded.~*/
		IF ~~ THEN REPLY @27 /* ~Where can I find this flask?~ */
		GOTO M37
		
		IF ~~ THEN REPLY @39 /* ~I am still searching for it. I will return once I have it.~ */
		EXIT
	END
END

