APPEND XAENTAR

	IF ~~ THEN BEGIN XA_DebriefChain1_1
		SAY @0 /*~I see — so you encountered a djinn that was guarding the dagger on behalf of its master, this Irenicus, yes?~*/
		
		IF ~~ THEN REPLY @1 /*~Yes. The djinn was also in possession of my brother's sword.~*/
		EXTERN XALIIA XA_DebriefChain1_1_B
		
		IF ~~ THEN REPLY @2 /*~That's correct.~*/
		GOTO XA_DebriefChain1_2
	END
	
	IF ~~ THEN BEGIN XA_DebriefChain1_2
		SAY @4 /*~How did you know that it was the dagger used to imprison my daughter?~*/
		
		IF ~~ THEN REPLY @5 /*~I didn't, but I had a strong suspicion that it was. The djinn stated that it was a prison of souls that was of great consequence to me.~*/
		GOTO XA_DebriefChain1_4
		
		IF ~~ THEN REPLY @6 /*~I knew as soon as I held the dagger in my hand. I could feel its power, and...~*/
		EXTERN XASKIE XA_DebriefChain1_2_B
	END
	
	IF ~~ THEN BEGIN XA_DebriefChain1_3
		SAY @8 /*~Skie, my dear — that's enough.~*/ 
		
		IF ~~ THEN REPLY @9 /*~Your daughter is right. That's exactly how it felt.~*/
		EXTERN XABELT XA_DebriefChain1_4
		
		IF ~~ THEN REPLY @10 /*~My hope is that one day, the souls still trapped within can be freed.~*/
		EXTERN XABELT XA_DebriefChain1_4
		
	END
	
	IF ~~ THEN BEGIN XA_DebriefChain1_5
		SAY @12 /*~Indeed. Skie, once resurrected, was able to corroborate your story... I feel I must apologize once again to you, <CHARNAME>. You were very nearly executed at my behest. Were it not for the efforts of the Captain and your sister —~*/
		
		IF ~~ THEN
		EXTERN XALIIA XA_DebriefChain2
	END
	
	
APPEND XALIIA
	
	IF ~~ THEN BEGIN XA_DebriefChain1_1_B
		SAY @3 /*~Your brother Sarevok, that is.~*/
		
		IF ~~ THEN
		EXTERN XAENTAR XA_DebriefChain1_2
	END

APPEND XASKIE

	IF ~~ THEN BEGIN XA_DebriefChain1_2_B
		SAY @7 /*~It was as though you could hear them, in your mind... right? I feel the same when I hold it...~*/
		
		IF ~~ THEN 
		EXTERN XAENTAR XA_DebriefChain1_3
	END

APPEND XABELT
	IF ~~ THEN BEGIN XA_DebriefChain1_4
		SAY @11 /*~You were wise to act on your suspicion and have the dagger delivered to us.~*/
		
		IF ~~ THEN
		EXTERN XAENTAR XA_DebriefChain1_5
	END
	
CHAIN IF ~~ THEN XALIIA XA_DebriefChain2
	@13 /* ~Sufficeth to say, we are all glad that they were successful.~*/
	
	= @14 /*~Captain, it was at this time that you joined <CHARNAME> in <PRO_HISHER> hunt for the wizard, yes?~*/
	
	== XACORWIN
	@15 /*~Yes ma'am, that is correct.~*/
	
	= @16 /*~(Captain Corwin goes on to explain in painstaking detail the events that transpired after she arrived in Athkatla. The Council was equal parts stunned and amazed to hear of the rescue of Imoen from Spellhold, your transformation after your soul was stolen from you, and your epic battles with the drow on your way back to the surface.)~*/
	
	= @17 /*~(Throughout her telling of what transpired, she spoke highly of you, and your companions. She concludes by telling the Council of how Irenicus was made to pay for his crimes with his life, and how your soul was restored.)~*/
	
	== XAELTAN
	@18 /*~Remarkable. Captain, if it were anyone else giving us this account, I may not have believed it... Simply, remarkable.~*/
	
	= @19 /*~(The other Council members nod in agreement.)~*/
	
END XABENCE XA_StartDebrief01