BEGIN ~XACOR25P~

IF ~
	Race(Player1, LICH)
~ THEN BEGIN XA_CorwinLeaveLich
	SAY @104 /*~I can't bear to fight at your side any longer. Listen, lich — set foot in Baldur's Gate again and I'll crush your bones to dust. Goodbye.~*/
	
	IF ~~ THEN
	DO ~
		EscapeArea()
	~
	EXIT
END

//{ Pocket Plane - Dialog P-7
IF ~
	Global("XA_CorwinSpawnPlane", "GLOBAL", 1)
	GlobalLT("XA_CorwinSpawnComplain", "GLOBAL", 1)
	!Race(Player1, LICH)
~ THEN BEGIN XA_JoinToB
	SAY @7 /* ~Wh... where... what the hells is this place? <CHARNAME>!? There better be a DAMN good explanation for this!~*/
	
	IF ~
		!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @8 /* ~Did I catch you at a bad time?~ */
	DO ~
		SetGlobal("XA_CorwinPromoted", "GLOBAL", 1)
		SetGlobal("XA_CorwinSpawnComplain", "GLOBAL", 1)
	~ 
	GOTO XA_JoinToB_BadTime_NR
	
	IF ~
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @8 /* ~Did I catch you at a bad time?~ */
	DO ~
		SetGlobal("XA_CorwinPromoted", "GLOBAL", 1)
		SetGlobal("XA_CorwinSpawnComplain", "GLOBAL", 1)
	~ 
	GOTO XA_JoinToB_BadTime_R
	
	IF ~
		!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @9 /* ~Hi, Captain.~ */
	DO ~
		SetGlobal("XA_CorwinPromoted", "GLOBAL", 1)
		SetGlobal("XA_CorwinSpawnComplain", "GLOBAL", 1)
	~ 
	GOTO XA_JoinToB_Promoted
	
	IF ~
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @10 /* Hi, Schael.*/
	DO ~
		SetGlobal("XA_CorwinPromoted", "GLOBAL", 1)
		SetGlobal("XA_CorwinSpawnComplain", "GLOBAL", 1)
	~ 
	GOTO XA_JoinToB_HiMad
END

IF ~~ THEN BEGIN XA_JoinToB_BadTime_NR
	SAY @12 /* ~A *very* bad time. Now, are you going tell me what's going on, or do I need to beat it out of you?~ */
	
	IF ~~ THEN REPLY @45 /* ~(Explain the situation with the Five, and that you need her help.)~ */
	GOTO XA_JoinToB_NeedHelp
END

IF ~~ THEN BEGIN XA_JoinToB_BadTime_R
	SAY @51 /* ~A *very* bad time... Bastard! You left me behind, then went off and killed Irenicus without me! Don't you know how worried I was!~~  */
	
	IF ~~ THEN REPLY @43 /* ~I'm sorry, I didn't want to risk losi—~ */
	GOTO XA_JoinToB_HiMad2
END

IF ~~ THEN BEGIN XA_JoinToB_HiMad
	SAY @42 /* ~Hi yourself. You left me behind, then went off and killed Irenicus without me! Don't you know how worried I was!~ */
	
	IF ~~ THEN REPLY @43 /* ~I'm sorry, I didn't want to risk losi—~ */
	GOTO XA_JoinToB_HiMad2
END

IF ~~ THEN XA_JoinToB_HiMad2
	SAY @44  /* ~I don't want to hear it! You didn't even come back to the city after it was over with! You couldn't even send a gods damn letter to let me know you were alright!~ */
	
	IF ~~ THEN REPLY @14 /*  ~I was wrong. I'm sorry, love.~ */
	GOTO XA_JoinToB_HiMad3
END

IF ~~ THEN XA_JoinToB_HiMad3
	SAY @36 /* ~(She calms herself down.)~*/
	
	= @35 /* ~Enough... that's in the past. Tell me why you've brought me here. Right. Now.~ */
	
	IF ~~ THEN REPLY @45 /* ~(Explain the situation with the Five, and that you need her help.)~ */
	GOTO XA_JoinToB_NeedHelp
END

IF ~~ THEN BEGIN XA_JoinToB_Promoted
	SAY @11 /* ~That's *Major*. Now, are you going tell me what's going on, or do I need to beat it out of you?~*/
	
	IF ~~ THEN REPLY @45 /* ~(Explain the situation with the Five, and that you need her help.)~ */
	GOTO XA_JoinToB_NeedHelp
END

IF ~~ THEN BEGIN XA_JoinToB_NeedHelp
	SAY @46 /*  ~I see. And did you think for one second to, I don't know, send for help, instead of abducting me? I can't just leave my family and the Fist without an explanation.~ */
	
	IF ~~ THEN REPLY @48 /* ~Good point. Let me clear it with your commander. (Bring Marshal Nederlok in through the gate.)~ */
	GOTO XA_GetNederlok
	
	IF ~~ THEN REPLY @49  /* ~You're right. This was a mistake. I'll send you back through the gate.~*/
	GOTO XA_SendHome
END

IF ~~ THEN BEGIN XA_GetNederlok
	SAY @52 /* ~N-no! Gods damnit!~ */
	
	IF ~~ THEN
	DO ~
		StartCutSceneMode()
		StartCutScene("XATOBNED")
	~
	EXIT
END

IF ~~ THEN BEGIN XA_SendHome
	SAY @50 /* ~You're unbelievable, do you know that? Send me home. Now.~ */
	
	IF ~~ THEN REPLY @71
	DO ~
		StartCutSceneMode()
		StartCutScene("XACOREX")
	~
	EXIT
END

IF ~~ THEN BEGIN XA_NedToB2
	SAY @53 /* ~I'm sorry, sir. <CHARNAME> brought us here to discuss what <PRO_HESHE> believes is a significant threat to the Baldur's Gate, and the Sword Coast.~ */
	
	IF ~~ THEN REPLY @54 /*  ~(Explain the threat posed by the Five) */
	EXTERN XATOBNED XA_Threat
END

IF ~~ THEN BEGIN XA_Threat2
	SAY @59 /*~I understand, sir.~*/
	
	IF ~
		!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @60 /* ~So, Capt — excuse me, Major. What is your decision?~ */
	GOTO XA_Threat3
	
	IF ~
		Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @61 /* ~So, Schael. What is your decision?~ */
	GOTO XA_Threat3
END

IF ~~ THEN BEGIN XA_Threat3
	SAY @64 /*~...~*/
	
	IF ~~ THEN REPLY @66 /*~Well?~*/
	GOTO XA_Threat4
END

IF ~~ THEN BEGIN XA_Threat4
	SAY @65 /* ~I'm thinking.~ */
	
	IF ~
		!ReputationLT(Player1,7)
	~ THEN REPLY @67 /*~Listen, Schael. I was wrong to cast you aside, and I need your help. I can't do this without you. If not for me, do it for your city. The Five won't stop until the entire continent is in flames!~*/
	GOTO XA_Threat4_Join
	
	IF ~
		ReputationLT(Player1,7)
	~ THEN REPLY @67 /*~Listen, Schael. I was wrong to cast you aside, and I need your help. I can't do this without you. If not for me, do it for your city. The Five won't stop until the entire continent is in flames!~*/
	GOTO XA_Threat4_NoJoin
END

IF ~~ THEN BEGIN XA_Threat4_Join
	SAY @68 /* ~(Sigh.)~ */
	
	= @62 /* ~Sir, I'll accompany <CHARNAME>. We'll put an end to the Five. Please inform the Dukes... and please... let my family know that I'll be home as soon as I can.~ */
	
	IF ~~ THEN
	EXTERN XATOBNED XA_CorwinJoin
END

IF ~~ THEN BEGIN XA_Threat4_NoJoin
	SAY @69 /* ~You know... you almost had me convinced, <CHARNAME>. But I've been keeping tabs on you. You want me to help you defeat the Five? You're just as bad as they are, possibly worse. No. This is where we part ways, for the last time. Send us home.~ */
	
	IF ~~ THEN
	DO ~
		AddJournalEntry(@70, INFO)
		StartCutSceneMode()
		StartCutScene("XATWOHOM")
	~
	EXIT
END

//}
