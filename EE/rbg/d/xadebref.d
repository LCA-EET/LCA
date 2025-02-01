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
		EXTERN XABELT XA_DebriefChain1_4
		
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
	
	IF ~~ THEN BEGIN XA_ShowTransformation
		SAY @45 /* ~Could... we see it? The transformation, I mean.~ */
		
		IF ~~ THEN REPLY @48 /* ~I'd rather not. It'd be as horrifying for me as it would be to you.~ */
		EXTERN XACORWIJ XA_DontShow
		
		IF ~~ THEN REPLY @49 /* ~Be careful what you ask for.~ */
		EXTERN XACORWIJ XA_DontShow
		
		IF ~~ THEN REPLY @50 /* ~Certainly, though I hope you have a change of trousers at the ready.~ */
		EXTERN XACORWIJ XA_DontShow
	END
	
	IF ~~ THEN BEGIN XA_RejectedOffer
		SAY @62 /* ~I understand your concern. I, too, enjoyed a life of adventure before embracing a new role as a leader of the city. Give it some time. You'll find that it may suit you, and open up new opportunities for advancement. There will still be adventures along the way; of that I can assure you.~*/
	
		IF ~~ THEN REPLY @63 /*~Perhaps you're right. Very well, I accept.~ */
		GOTO XA_AcceptedOfferChain
		
		IF ~
			Gender(Player1, MALE)
		~ THEN REPLY @64 /* ~Opportunities for advancement... you mean...~*/
		EXTERN XAELTAN XA_GrandDuke
		
		IF ~
			Gender(Player1, FEMALE)
		~ THEN REPLY @64 /*~Opportunities for advancement... you mean...~ */
		EXTERN XAELTAN XA_GrandDuchess
		
		IF ~
			GlobalGT("KeepPlot", "GLOBAL", 0)
			Global("RoenalControl","GLOBAL",0)
			GlobalLT("XA_LC_AskedAboutKeep", "GLOBAL", 1)
		~ THEN REPLY @75 /*~And what of my keep, and my lands? Will I need to relinquish them?~*/
		DO ~
			SetGlobal("XA_LC_AskedAboutKeep", "GLOBAL", 1)
		~
		GOTO XA_KeepTalk 
	END
	
	IF ~~ THEN BEGIN XA_KeepTalk
		SAY @76 /*=~You are of course referring to the those formerly held by the late Lord de'Arnise, yes? Word of his passing reached us a fortnight ago.~*/
		
		IF ~~ THEN
		EXTERN XALIIA XA_KeepTalk2
	END
END
	
APPEND XALIIA
	
	IF ~~ THEN BEGIN XA_DebriefChain1_1_B
		SAY @3 /*~Your brother Sarevok, that is.~*/
		
		IF ~~ THEN
		EXTERN XAENTAR XA_DebriefChain1_2
	END
	
	IF ~~ THEN BEGIN XA_BrotherContrast
		SAY @66 /* ~You'll achieve in grace what your brother sought through bloodshed and treachery.~ */
		
		IF ~~ THEN REPLY @68 /* ~Very well. I accept your offer.~*/
		EXTERN XAENTAR XA_AcceptedOfferChain
		
		IF ~~ THEN REPLY @69 /* ~I appreciate your transparency. You've given me much to consider; I'll accept your offer on the condition that I can back out at any time.~*/
		EXTERN XAENTAR XA_AcceptedOfferChain
		
		IF ~
			GlobalGT("KeepPlot", "GLOBAL", 0)
			Global("RoenalControl","GLOBAL",0)
			GlobalLT("XA_LC_AskedAboutKeep", "GLOBAL", 1)
		~ THEN REPLY @75 /*~And what of my keep, and my lands? Will I need to relinquish them?~*/
		DO ~
			SetGlobal("XA_LC_AskedAboutKeep", "GLOBAL", 1)
		~
		EXTERN XAENTAR XA_KeepTalk 
	END
	
	IF ~~ THEN BEGIN XA_KeepTalk2
		SAY @77 /*~To answer your question, no, you will not need to relinquish your holdings. It wouldn't be unusual for someone of your stature to have a summer estate, after all. We only request that you refrain from any extended excursions.~*/
		
		IF ~~ THEN REPLY @68 /* ~Very well. I accept your offer.~*/
		EXTERN XAENTAR XA_AcceptedOfferChain
		
		IF ~
			GlobalLT("XA_LC_RejectedOffer", "GLOBAL", 1)
		~ THEN REPLY @59 /* ~I appreciate your generosity, but the palace life isn't for me.~ */
		DO ~
			SetGlobal("XA_LC_RejectedOffer", "GLOBAL", 1)
		~
		EXTERN XAENTAR XA_RejectedOffer
		
		IF ~
			GlobalLT("XA_LC_RejectedOffer", "GLOBAL", 1)
		~ THEN REPLY @78 /*~I see. Is there anything else you can offer besides a stipend and this stodgy old 'palace'?~*/
		DO ~
			SetGlobal("XA_LC_RejectedOffer", "GLOBAL", 1)
		~
		EXTERN XAENTAR XA_RejectedOffer
	END
END

APPEND XASKIE

	IF ~~ THEN BEGIN XA_DebriefChain1_2_B
		SAY @7 /*~It was as though you could hear them, in your mind... right? I feel the same when I hold it...~*/
		
		IF ~~ THEN 
		EXTERN XAENTAR XA_DebriefChain1_3
	END
END

APPEND XABELT
	IF ~~ THEN BEGIN XA_DebriefChain1_4
		SAY @11 /*~You were wise to act on your suspicion and have the dagger delivered to us.~*/
		
		IF ~~ THEN
		EXTERN XAENTAR XA_DebriefChain1_5
	END

	IF ~~ THEN BEGIN XA_Slayer
		SAY @41 /*~Forgive me, but I must ask. You, <CHARNAME>... you are in control of this transformative power you possess? This 'Slayer' that the Captain had referred to?~ */
		
		= @42 /* ~(You notice how the expression on the faces of the Dukes has changed from one of admiration, to one of concern — and fear.)~*/
		
		IF ~~ THEN REPLY @43 /* ~I assure you that I'm in complete control, Duke Belt.~ */
		EXTERN XAELTAN XA_SilenceChain
		
		IF ~~ THEN REPLY @46 /* ~You've nothing to fear from the Slayer... that is, so long as no one pisses me off.~ */
		EXTERN XAELTAN XA_SilenceChain
	END
	
	IF ~~ THEN BEGIN XA_DebriefAcceptOffer
		SAY @57 /* ~What say you? Do you accept our offer?~ */
		
		IF ~~ THEN REPLY @58 /* ~Yes, of course! I — I don't know what to say... thank you!~*/
		EXTERN XAENTAR XA_AcceptedOfferChain
		
		IF ~
			GlobalLT("XA_LC_RejectedOffer", "GLOBAL", 1)
		~ THEN REPLY @59 /* ~I appreciate your generosity, but the palace life isn't for me.~ */
		DO ~
			SetGlobal("XA_LC_RejectedOffer", "GLOBAL", 1)
		~
		EXTERN XAENTAR XA_RejectedOffer
		
		IF ~
			GlobalLT("XA_LC_RejectedOffer", "GLOBAL", 1)
		~ THEN REPLY @60 /* That's all? A stipend and a stodgy old estate?~ */
		DO ~
			SetGlobal("XA_LC_RejectedOffer", "GLOBAL", 1)
		~
		EXTERN XAENTAR XA_RejectedOffer
		
		IF ~
			GlobalGT("KeepPlot", "GLOBAL", 0)
			Global("RoenalControl","GLOBAL",0)
			GlobalLT("XA_LC_AskedAboutKeep", "GLOBAL", 1)
		~ THEN REPLY @75 /*~And what of my keep, and my lands? Will I need to relinquish them?~*/
		DO ~
			SetGlobal("XA_LC_AskedAboutKeep", "GLOBAL", 1)
		~
		EXTERN XAENTAR XA_KeepTalk 
	END
END
		
APPEND XAELTAN
	IF ~~ THEN BEGIN XA_DebriefChain3_2
		SAY @27 /* ~Ah, Captain, <CHARNAME> — please forgive us for the delay. We needed time to make the appropriate arrangements.~*/
		
		IF ~~ THEN REPLY @28 /* ~Arrangements?~*/
		EXTERN XALIIA XA_DebriefChain4
		
		IF ~~ THEN REPLY @29 /* ~This had better be worth the wait.~*/
		EXTERN XALIIA XA_DebriefChain4
	END
	
	IF ~~ THEN BEGIN XA_GrandDuke
		SAY @65 /* ~Yes. You'll be the front-runner for Grand Duke, when the time comes.~ */
		
		IF ~~ THEN
		EXTERN XALIIA XA_BrotherContrast
	END
	
	IF ~~ THEN BEGIN XA_GrandDuchess
		SAY @67 /* ~Yes. You'll be the front-runner for Grand Duchess, when the time comes.~ */
		
		IF ~~ THEN
		EXTERN XALIIA XA_BrotherContrast
	END
END
	
APPEND PLAYER1
	IF ~
		Global("XA_LC_DukesDebriefed", "GLOBAL", 3)
	~ THEN BEGIN XA_DebriefChain3_1
		SAY @26 /*~(Again, you and Captain Corwin step into the meeting chamber. While you are inwardly annoyed at having been kept waiting for so long, you do a good job of concealing this from the Council. You briefly glance at the faces of the Dukes. They are expressionless, and yield no indication of what they discussed, or what is about to take place.)~ [xalc1159] */
		
		IF ~~ THEN
		EXTERN XAELTAN XA_DebriefChain3_2
	END
END

CHAIN IF ~~ THEN XAENTAR XA_AcceptedOfferChain
	@61 /*~Excellent. Our adjutants will contact you in the coming days to finalize the arrangements. For now, you are welcome to use the palace as you see fit.~ */
	
	== XANEDERL
	@70/* ~And Captain.~*/
	
	== XACORWIJ
	@71/*~Sir?~ */
	
	== XANEDERL
	@72/*~For your role in bringing Irenicus to justice, and for your fine work in supporting the coalition in defeating Caelar and her crusade, you are hereby promoted to the rank of Major. Congratulations, and keep up the good work!~ */
	DO ~
		SetGlobal("XA_LC_CorwinPromoted", "GLOBAL", 1)
	~
	== XACORWIJ
	@73/*~Thank you, sir!~ */
	
	== XABELT
	IF ~
		!Global("XA_LC_SkieModActive", "GLOBAL", 1)
	~
	@74 /* ~Being that there is no other business to discuss, this meeting is adjourned.~ */
	DO ~
		SetGlobal("XA_LC_DukesDebriefed", "GLOBAL", 4)
		StartCutSceneMode()
		StartCutScene("XADEBR03")
	~
	== XABELT
	IF ~
		Global("XA_LC_SkieModActive", "GLOBAL", 1)
	~
	@74 /* ~Being that there is no other business to discuss, this meeting is adjourned.~ */
	DO ~
		SetGlobal("XA_LC_DukesDebriefed", "GLOBAL", 4)
		StartCutSceneMode()
		StartCutScene("XADEBR04")
	~
EXIT

CHAIN IF ~~ THEN XACORWIJ XA_DontShow
	@51 /* ~Sirs, maam, if I may; I have seen the transformation, and trust me — it is NOT something that you want to witness.~ */
	
	== XAELTAN
	@52 /* ~I see. I'm inclined to trust the Captain's judgment on this matter.~*/
	
	== XALIIA
	@53 /* ~As am I, but tell me, Captain — has <CHARNAME> been able to maintain <PRO_HISHER> control over this new power?~*/
	
	== XACORWIJ 
	@54 /* ~Yes, ma'am. I'd trust <PRO_HIMHER> with my life, any day.~ */
	
	== XABELT
	@55 /*~Good. We need a few moments to discuss in private the testimony that you and <CHARNAME> have provided us this morning. We won't take long.~*/
	
	== XAENTAR
	@56 /* ~Corporal Duncan, please escort <CHARNAME> and Captain Corwin to the study.~ */
END XABENCE XA_StartDebrief01

CHAIN IF ~~ THEN XALIIA XA_DebriefChain2
	@13 /* ~Sufficeth to say, we are all glad that they were successful.~*/
	
	= @14 /*~Captain, it was at this time that you joined <CHARNAME> in <PRO_HISHER> hunt for the wizard, yes?~*/
	
	== XACORWIJ
	@15 /*~Yes ma'am, that is correct.~*/
	
	= @16 /*~(Captain Corwin goes on to explain in painstaking detail the events that transpired after she arrived in Athkatla. The Council was equal parts stunned and amazed to hear of the rescue of Imoen from Spellhold, your transformation after your soul was stolen from you, and your epic battles with the drow on your way back to the surface.)~*/
	
	= @17 /*~(Throughout her telling of what transpired, she spoke highly of you, and your companions. She concludes by telling the Council of how Irenicus was made to pay for his crimes with his life, and how your soul was restored.)~*/
	
	== XAELTAN
	@18 /*~Remarkable. Captain, if it were anyone else giving us this account, I may not have believed it... Simply, remarkable.~*/
	
	= @19 /*~(The other Council members nod in agreement.)~*/
END XABELT XA_Slayer

CHAIN IF ~~ THEN XALIIA XA_DebriefChain4
	@30 /* ~Yes. You see, we've decided that you were never properly rewarded for your deeds in defeating Caelar and her crusade. What should have been a hero's welcome turned into a nightmare, when you were framed for Skie's murder.~*/
	
	== XAENTAR
	@31 /* ~You also deserve a great deal of praise for your actions in restoring my daughter... which you did, in spite of the hostility that I showed you.~*/
	
	== XAELTAN
	@32 /* ~Not only that, but you — and Captain Corwin — delivered swift justice to the perpetrator of that crime, the wizard known as Irenicus.~*/
	
	== XABELT
	@33 /* ~The fact that an officer of the Flaming Fist assisted in this effort is bound to improve not only our relations with Amn, but also, the elves of Suldanessellaar.~*/
	
	== XAELTAN
	@34 /*~Any one of these feats is worthy of the highest honor that we can confer... but for one person to have accomplished so much...~ */
	
	== XALIIA
	@35 /* ~It's unprecedented.~*/
	
	= @36 /* ~(The other Dukes nod in agreement.)~*/
	
	== XAENTAR
	@37 /*~We have decided, <CHARNAME>, to bestow upon you the title of 'Defender of Baldur's Gate'. The title comes with a generous stipend.~ */
	
	== XABELT
	@38 /*~You will need to take part in some civil activities, speeches, community events, and so forth. You will also need to work with Duke Eltan, Marshal Nederlok, and the Flaming Fist to protect the city from those who threaten it.~ */
	
	== XAELTAN
	@39 /*~Furthermore, we are awarding you the Ducal Palace as your personal residence, on a permanent basis.~ */
	
	== XALIIA
	@40 /* ~Lastly, we understand that a small number of citizens are still wary of you, and your ... nature. To that end, we will organize a week long, city-wide festival in honor of your many achievements. It is our hope that this will convince any hold-outs that you are indeed a powerful force for good, in spite of your father.~*/
END XABELT XA_DebriefAcceptOffer

CHAIN IF ~
	Global("XA_LC_DukesDebriefed", "GLOBAL", 1)
	Global("XA_LC_SkieModActive", "GLOBAL", 1)
~ THEN PLAYER1 XA_DebriefChainIntro_SkieMod
	@20 /*~(Unsure of what to expect, you enter the Ducal Palace for the debriefing. Captain Corwin is already there, and you can tell that she's eager to begin. Several minutes pass before you and the Captain are escorted into the meeting chamber on the second floor. The Council is seated behind a long, mahogany table, as are their adjutants.)~ [xalc1159]*/
	
	= @23 /* ~(After exchanging some pleasantries with the Council, you and the Captain take a seat at the table. Duke Eltan begins the debriefing by asking you to explain the series of events that followed your exile from the city.)~ */
	
	= @24 /* ~(You tell how you and your companions were captured by the mad wizard Irenicus, and how you ended up in Athkatla. Their faces remain stoic as you recall finding the bodies of Khalid and Dynaheir. What piques their interest is your explanation of how you came to be in the possession of the Soultaker dagger, and the steps you took to release Skie's soul.)~ */
	
	== XAENTAR
	@25 /*~Skie, once resurrected, was able to corroborate your story... I feel I must apologize once again to you, <CHARNAME>. You were very nearly executed at my behest. If it weren't for the efforts of the Captain and your sister —~*/
END XALIIA XA_DebriefChain2

CHAIN IF ~
	Global("XA_LC_DukesDebriefed", "GLOBAL", 1)
	!Global("XA_LC_SkieModActive", "GLOBAL", 1)
~ THEN PLAYER1 XA_DebriefChainIntro
	@20 /*~(Unsure of what to expect, you enter the Ducal Palace for the debriefing. Captain Corwin is already there, and you can tell that she's eager to begin. Several minutes pass before you and the Captain are escorted into the meeting chamber on the second floor. The Council is seated behind a long, mahogany table, as are their adjutants.)~ [xalc1159]*/
	
	= @21 /* ~(Skie Silvershield is also present, and greets you and the Captain with a warm embrace. After exchanging some pleasantries with the Council, you and the Captain take a seat at the table. Duke Eltan begins the debriefing by asking you to explain the series of events that followed your exile from the city.)~*/
	
	= @22 /* ~(You tell how you and your companions were captured by the mad wizard Irenicus, and how you ended up in Athkatla. Their faces remain stoic as you recall finding the bodies of Khalid and Dynaheir. What piques their interest is your explanation of how you came to be in the possession of the Soultaker dagger.)~*/
END XAENTAR XA_DebriefChain1_1

CHAIN IF ~~ THEN XAELTAN XA_SilenceChain
	@47 /* ... */
	
	== XALIIA
	@47	/*... */
	
	== XABELT
	@47	/* ...*/
	
END XAENTAR XA_ShowTransformation