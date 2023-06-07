BEGIN ~LCLARZE~

IF ~
	!Global("LCA_LarzeIntro", "LOCALS", 1)
~ THEN BEGIN LCA_Intro
	SAY @0 /* ~Hah. Larze found you. You are <CHARNAME>.~ */
	
	IF ~~ THEN REPLY @1 /* ~Sorry? Do I know you?~ */
	DO ~
		SetGlobal("LCA_LarzeIntro", "LOCALS", 1)
	~
	GOTO LCA2
	
	IF ~~ THEN REPLY @13 /* ~Get lost, beast.~ */
	DO ~
		SetGlobal("LCA_LarzeIntro", "LOCALS", 1)
	~
	GOTO LCA_Fight
END

IF ~~ THEN BEGIN LCA2
	SAY @2 /* ~I Larze. You told Larze you not you. Told Larze to look closer at picture of <CHARNAME>, that <CHARNAME> had red eyes and big voice. But you is <CHARNAME> and you no have red eyes or big voice. You lie to Larze to try to save life.~*/
	
	IF ~~ THEN REPLY @3 /* ~Oh, right. Wait — you mean to tell me you've been looking for me this whole time? Larze, that was what, a year ago!?~*/
	GOTO LCA3
	
	IF ~~ THEN REPLY @14 /* ~Larze, if you know what's good for you, you'll leave right this instant.~ */
	GOTO LCA_Fight

END

IF ~~ THEN BEGIN LCA3
	SAY @6 /* ~Larze look for long time, but Larze found you now. Now you die and Larze collect bounty.~ */
	
	IF ~~ THEN REPLY @7 /* ~Larze, listen. The people that put that bounty on me are all dead. Every last one of them.~ */
	GOTO LCA4
	
	IF ~~ THEN REPLY @15
	GOTO LCA_Fight
END

IF ~~ THEN BEGIN LCA4
	SAY @8 /* ~How you know. Tell you what. Give me your head, and I go and collect bounty. Then Larze give back your head and you go away.~ */
	
	IF ~~ THEN REPLY @9 /* ~Larze, I'm afraid that won't work. How about I just pay you the bounty? How much were they offering for my head?~ */
	GOTO LCA5
	
	IF ~~ THEN REPLY @16 /* ~That's a lousy idea, you pea-brained oaf. Try and take my head and see what happens.~ */
	GOTO LCA_Fight
	
END

IF ~~ THEN BEGIN LCA5
	SAY @10 /* ~Good idea. But Larze forget bounty. It was on paper but I no remember. Was long time ago.~ */
	
	IF ~~ THEN REPLY @11 /* ~How does 300 gold sound?~ */
	GOTO LCA6
	
	IF ~~ THEN REPLY @18
	GOTO LCA_Cheapskate
END

IF ~~ THEN BEGIN LCA6
	SAY @12 /* ~Yes that is good. Good. Give gold and Larze will let you live.~ */
	
	IF ~~ THEN REPLY @17 /* ~~Larze, I'm a bit short on gold at the moment. Tell you what. Come back here tomorrow, and I'll have the money for you.~*/
	GOTO LCA_ComeBack
	
	IF ~
		PartyGoldGT(299)
	~ THEN REPLY @20 /* ~Here.~ */
	DO ~
		EscapeArea()
	~
	EXIT
END

IF ~~ THEN BEGIN LCA_ComeBack
	SAY @21 /* ~Fine. But if you no come Larze find your head and turn it to jelly.~ */
	
	IF ~~ THEN
	DO ~
		EscapeArea()
	~
	EXIT
END

IF ~~ THEN BEGIN LCA_Cheapskate
	SAY @19 /* ~100 gold not enough. Larze change mind. You die, Larze take head, and find person that give bounty. Stay still now so Large can crush you good.~ */
	
	IF ~~ THEN 
	GOTO LCA_Fight
END

IF ~~ THEN BEGIN LCA_Fight
	SAY @5 /* ~Stay still so Larze crush you into red paste.~ */
	
	IF ~~ THEN
	DO ~
		Enemy()
	~
	EXIT
END