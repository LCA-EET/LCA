//BCOFFIN

EXTEND_BOTTOM WARSAGE 0
	IF ~
		PartyHasItem("XACORBOD")
	~
	THEN REPLY @33 /* ~Someone I care about has fallen to a vampire. Is there any way to save them?~ */
	GOTO 5
END

ADD_STATE_TRIGGER OGHMONK1 0 
~
	!PartyHasItem("XACORBOD")
~

ADD_STATE_TRIGGER OGHMONK1 1 
~
	!PartyHasItem("XACORBOD")
~

ADD_STATE_TRIGGER OGHMONK1 2 
~
	!PartyHasItem("XACORBOD")
~

ADD_STATE_TRIGGER OGHMONK1 3 
~
	!PartyHasItem("XACORBOD")
~

APPEND ~OGHMONK1~
	IF ~  
		Global("RevealUmar","GLOBAL",1)
		PartyHasItem("XACORBOD")
	~ 
	THEN BEGIN XAA0 
		SAY @30 /* ~Have you come seeking wisdom from the Binder of What is Known? The Wise God stands ready.~ */
		IF ~~ THEN REPLY @31 /* ~No, thank you, I have no need of help at the moment.~ */ 
		GOTO 5
		IF ~~ THEN REPLY @32 /* ~A friend is afflicted by vampirism. An old book suggested that followers of Oghma might know something about that.~ */ 
		GOTO 6
	END
END

EXTEND_BOTTOM IMNBOOK1 0
	IF ~
		Global("RevealUmar","GLOBAL",1)
		PartyHasItem("XACORBOD")
	~
	THEN REPLY @29 /* ~I'm looking for information about a tome that details the curing of vampirism.~*/
	GOTO 4
END

EXTEND_BOTTOM DOGHMA 0
	IF ~  
		Global("RevealUmar","GLOBAL",1)
		PartyHasItem("XACORBOD")
	~ 
	THEN REPLY @28 /* ~A friend is afflicted by vampirism. An old book suggested that followers of Oghma might know something about that.~ */ 
	GOTO 10
END

EXTEND_BOTTOM C6ELHAN2 70
	IF ~  
		PartyHasItem("XACORBOD")
	~ THEN REPLY @26 /* ~Elhan! I've the half-vampire body of Anomen here because of you! You'll tell me now!~ */ 
	GOTO 76
END

EXTEND_BOTTOM SUDEMIN 2
	IF ~  
		PartyHasItem("XACORBOD")
	~ THEN REPLY @27 /* ~I lost a loved one in a battle with his sister, Bodhi. I seek a means of curing her.~ */ 
	DO ~
		SetGlobal("CDreplies","LOCALS",1)
	~
	GOTO 3
END

ADD_TRANS_TRIGGER C6BODHI 5
~
	Global("XA_LC_CorwinBit", "GLOBAL", 0)
~

EXTEND_BOTTOM C6BODHI 5
	IF ~
		!Global("XA_LC_CorwinBit", "GLOBAL", 0)
	~ 
	THEN DO ~
		SetGlobal("Death","LOCALS",1)
		EraseJournalEntry(16351)
		EraseJournalEntry(7002)
		EraseJournalEntry(3716)
		EraseJournalEntry(5814)
		EraseJournalEntry(16331)
		EraseJournalEntry(15710)
		EraseJournalEntry(15784)
		EraseJournalEntry(7090)
		EraseJournalEntry(7236)
		EraseJournalEntry(7683)
		EraseJournalEntry(7737)
		EraseJournalEntry(8302)
		EraseJournalEntry(10269)
		EraseJournalEntry(11771)
		EraseJournalEntry(@24)
		DestroyItem("MINHP1")
		SetGlobal("udMind","GLOBAL",41)
	~ 
	SOLVED_JOURNAL @25
	EXIT
END

ADD_TRANS_TRIGGER C6BODHI 20
~
	!GlobalGT("XA_LC_CorwinBit", "GLOBAL", 0)
~

EXTEND_BOTTOM C6BODHI 20
	IF ~
		GlobalGT("XA_LC_CorwinBit", "GLOBAL", 0)
	~
	THEN GOTO XAA4
END

ADD_TRANS_TRIGGER C6BODHI 4
~
	Global("XA_LC_CorwinBit", "GLOBAL", 0)
~

EXTEND_BOTTOM C6BODHI 4
	IF ~
		GlobalGT("XA_LC_CorwinBit", "GLOBAL", 0)
	~
	THEN GOTO XAA0
END

ADD_TRANS_TRIGGER C6BODHI 14
~
	Global("XA_LC_CorwinBit", "GLOBAL", 0)
~

EXTEND_BOTTOM C6BODHI 14
	IF ~
		GlobalGT("XA_LC_CorwinBit", "GLOBAL", 0)
	~
	THEN GOTO XAA0
END

APPEND ~C6BODHI~
	IF ~~ THEN BEGIN XAA0
		SAY @5 /* ~I'm sure your reasons for coming are all very important to you. Do spare me the boredom of hearing them.~ */
		
		IF ~~ THEN REPLY @6 /* ~I have come for the Rhynn Lanthorn, Bodhi. You will not escape me this time.~ */
		GOTO 15
		
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~ THEN REPLY @7 /* ~I will avenge what you have done to me, Schael and Imoen. You will pay for your crimes.~ */
		GOTO XAA1 //Schael is still alive
		
		IF ~
			GlobalGT("XA_LC_CorwinDiedFromBite", "GLOBAL", 0)
		~ THEN REPLY @7 /* ~I will avenge what you have done to me, Schael and Imoen. You will pay for your crimes.~ */
		GOTO XAA2 //Schael is dead due to Bodhi's bite
		
		IF ~
			!IsValidForPartyDialogue("XACORWIN")
		~ THEN REPLY @7 /* ~I will avenge what you have done to me, Schael and Imoen. You will pay for your crimes.~ */
		GOTO 3 //Schael was bit but is either dead or not in the party
		
		IF ~~ THEN REPLY @8 /* ~As if your crimes against me weren't enough, you've endangered an entire elven city!~  */
		GOTO 15
		
		IF ~~ THEN REPLY @9 /* ~There is no escape for you now, vampire! I'll have your black heart on a pike!~ */
		GOTO 2
		
	END
	
	IF ~~ THEN BEGIN XAA1
		SAY @10 /* ~And how is your beloved Captain Corwin? Not well, I see. I planned to turn her and use her to kill you, but it seems she's resisted the transformation, at least to some extent.~ */
		= @11 /* ~No matter. I will kill you, and once her transformation is complete, I'll send her to feast on her own family. That seems an appropriate punishment for having the audacity to resist me, don't you agree?~ */
		IF ~~ THEN
		EXTERN XACORWIJ XAA97
	END

	IF ~~ THEN BEGIN XAA2
		SAY @12 /* ~And how is your beloved Captain Corwin? Not well at all, I see. It seems that she expired just as the transformation had completed. How unfortunate for you.~ */
		= @13 /* ~I will revive her, then send her to feast on her own family. That seems an appropriate punishment her incessant meddling in my affairs, don't you think?~ */
		IF ~~ THEN REPLY @16 /* ~The only thing you will do is die by my hand, here. I will find a way to restore Schael and undo this wretched transformation you have inflicted on her.~ */
		GOTO XAA3
	END

	IF ~~ THEN BEGIN XAA3
		SAY @14 /* ~Your continued defiance reminds me of those pitiful elves.~ */
		= @15 /* ~They deserve all they receive, and more! They will not even approach us while we destroy them, such is their arrogance!~ */
		IF ~~ THEN GOTO 16
	END
	
	IF ~~ THEN BEGIN XAA4
		SAY @17 /* ~I should almost let you live so that he could have the shame of an outsider questioning him about this whole matter! Almost!~  */
		= @18 /* ~But... no, I have already prepared much for this meeting, <CHARNAME>. I did warn you that you would suffer great loss if you continued your push towards me. I did not lie.~ */
		
		IF ~~ THEN REPLY @19 /* ~You have taken too much already! You will return Imoen's soul and restore Schael!~   */
		GOTO XAA5
		
		IF ~~ THEN REPLY @20 /* ~And you have delivered on that promise. Restore Schael and perhaps I will be merciful.~ */
		GOTO XAA5
		
		IF ~~ THEN REPLY @21 /* ~I would have hunted you for what you did to Schael alone. She is very important to me.~ */
		GOTO XAA5
		
	END
	IF ~~ THEN BEGIN XAA5
		SAY @22 /* ~She is lost to you, <CHARNAME>. Corwin's transformation cannot be undone so long as I live. You won't even be reunited in death!~   */
		IF ~~ THEN GOTO XAA6
	END
	IF ~~ THEN BEGIN XAA6
		SAY @23 /* ~Your part in this ends here, <CHARNAME>. I shall feast on the blood of the gods while you enter death knowing that you failed to save the woman you love!~ */
		IF ~~ THEN
		DO ~
			SetGlobal("C6BodhiFight","AR0809",1)
			OpenDoor("DOOR01")
			OpenDoor("DOOR02")
			CreateCreature("BODFGT01",[1107.281],S)
			CreateCreature("BODFGT01",[1667.220],SW)
			Enemy()
		~
		UNSOLVED_JOURNAL @24 /* ~The final battle with Bodhi

I have finally encountered Bodhi within her lair! I must be careful to use every advantage I have at my disposal, including the holy water that Elhan gave me. I doubt it will do much to her personally... but perhaps there is some way to pollute the power she draws from this place, use the holy water to dim the blood she draws...

And if I survive, I will have to find a way to undo Schael's vampire transformation. Bodhi said that as long as she was alive, that Schael couldn't be restored to her former self.~  */
		EXIT
	END
END

APPEND ~AERIEJ~
	IF ~~ THEN BEGIN XA_CorwinBite
		SAY @0 /* ~Let me see. Hm... vampires bite to feed, but also to t-turn others into vampires. I believe this is an example of the latter.~ */
		IF ~~ THEN REPLY @3 /* ~Is there anything we can do to stop it?~ */
		GOTO XA_CorwinBite2
	END
	
	IF ~~ THEN BEGIN XA_CorwinBite2
		SAY @2 /* ~It is said that killing the vampire before the transformation is complete will cure the victim. We need to act quickly - Bodhi is an exceptionally powerful vampire. I suspect that we have a day, maybe less, before Schael is turned.~  */
		IF ~~ THEN REPLY @4 /* ~Schael, try and remain calm, love. We'll find Bodhi and heal you before things get worse.~ */
		EXTERN XACORWIJ XA_CorwinBitWokeUp3
		
	END
END

APPEND ~VICONIJ~
	IF ~~ THEN BEGIN XA_CorwinBite
		SAY @1 /* ~Let me see. Hm... vampires bite to feed, but also to turn others into vampires. I believe this is an example of the latter.~ */
		IF ~~ THEN REPLY @3 /* ~Is there anything we can do to stop it?~ */
		GOTO XA_CorwinBite2
	END
	
	IF ~~ THEN BEGIN XA_CorwinBite2
		SAY @2 /* ~It is said that killing the vampire before the transformation is complete will cure the victim. We need to act quickly - Bodhi is an exceptionally powerful vampire. I suspect that we have a day, maybe less, before Schael is turned.~  */
		IF ~~ THEN REPLY @4 /* ~Schael, try and remain calm, love. We'll find Bodhi and heal you before things get worse.~ */
		EXTERN XACORWIJ XA_CorwinBitWokeUp3
		
	END
END

APPEND ~JAHEIRAJ~
	IF ~~ THEN BEGIN XA_CorwinBite
		SAY @1 /* ~Let me see. Hm... vampires bite to feed, but also to turn others into vampires. I believe this is an example of the latter.~ */
		IF ~~ THEN REPLY @3 /* ~Is there anything we can do to stop it?~ */
		GOTO XA_CorwinBite2
	END
	
	IF ~~ THEN BEGIN XA_CorwinBite2
		SAY @2 /* ~It is said that killing the vampire before the transformation is complete will cure the victim. We need to act quickly - Bodhi is an exceptionally powerful vampire. I suspect that we have a day, maybe less, before Schael is turned.~  */
		IF ~~ THEN REPLY @4 /* ~Schael, try and remain calm, love. We'll find Bodhi and heal you before things get worse.~ */
		EXTERN XACORWIJ XA_CorwinBitWokeUp3
		
	END
END

APPEND ~ANOMENJ~
	IF ~~ THEN BEGIN XA_CorwinBite
		SAY @1 /* ~Let me see. Hm... vampires bite to feed, but also to turn others into vampires. I believe this is an example of the latter.~ */
		IF ~~ THEN REPLY @3 /* ~Is there anything we can do to stop it?~ */
		GOTO XA_CorwinBite2
	END
	
	IF ~~ THEN BEGIN XA_CorwinBite2
		SAY @2 /* ~It is said that killing the vampire before the transformation is complete will cure the victim. We need to act quickly - Bodhi is an exceptionally powerful vampire. I suspect that we have a day, maybe less, before Schael is turned.~  */
		IF ~~ THEN REPLY @4 /* ~Schael, try and remain calm, love. We'll find Bodhi and heal you before things get worse.~ */
		EXTERN XACORWIJ XA_CorwinBitWokeUp3
	END
END