BEGIN ~XACAELAR~

IF ~
	Global("XA_SparedCaelar", "GLOBAL", 1)
	Global("XA_CrusadersGone", "GLOBAL", 1)
	GlobalLT("XA_CaelarChoice", "GLOBAL", 1)
~ THEN BEGIN XA_Choice
	SAY @44 /*~They're free... <CHARNAME>, you spared my life, but for what purpose? What do you intend to do with me?~*/
	
	IF ~~ THEN REPLY @45 /* ~I'm going to send you to the Flaming Fist, so that you can be tried for your crimes.~*/
	DO ~
		SetGlobal("XA_CaelarChoice", "GLOBAL", 1)
	~
	GOTO XA_GoToJail
	
	IF ~~ THEN REPLY @46 /* ~You've suffered enough. I'm going to send you to live with your uncle.~ */
	DO ~
		SetGlobal("XA_CaelarChoice", "GLOBAL", 1)
	~
	GOTO XA_LiveWithAun
	
	IF ~~ THEN REPLY @47 /*~I want you to fight at my side.~ */
	DO ~
		SetGlobal("XA_CaelarChoice", "GLOBAL", 1)
	~
	GOTO XA_Join
END

IF ~~ THEN BEGIN XA_LiveWithAun
	SAY @53 /*~My... my uncle Aun? To see him again... thank you, <CHARNAME>, for your mercy.~*/
	
	IF ~~ THEN
	DO ~
		StartCutSceneMode()
		StartCutScene("XACAHOME")
	~
	EXIT
END

IF ~~ THEN BEGIN XA_GoToJail
	SAY @52 /*~I understand. Justice must be served.~*/
	
	IF ~~ THEN
	DO ~
		StartCutSceneMode()
		StartCutScene("XACAJAIL")
	~
	EXIT
END

IF ~~ THEN BEGIN XA_Join
	SAY @48 /*~I... I don't know if I still have the will to fight.~*/
	
	IF ~~ THEN REPLY @49 /*~You must. The fate of the world may be at stake. (Explain the threat posed by the Five.)~*/
	GOTO XA_Join2
	
	IF ~~ THEN REPLY @50 /*~You're right. You've suffered enough. I'm going to send you to live with your uncle.~*/
	GOTO XA_LiveWithAun
	
	IF ~~ THEN REPLY @54 /* ~You're right. I'm going to send you to the Flaming Fist, so that you can be tried for your crimes.~ */
	GOTO XA_GoToJail
END

IF ~~ THEN BEGIN XA_Join2
	SAY @51 /* ~I had no idea... Very well. I will support you in any way that I can. If nothing else, it will help to make amends for the harm caused by the crusade. Lead the way.~ */
	
	IF ~~ THEN
	DO ~
		AddJournalEntry(@55, INFO)
		JoinParty()
	~
	EXIT
END

IF ~
	GlobalLT("XA_AshaCaelar", "GLOBAL", 1)
	AreaCheck("XA5300")
~ THEN BEGIN XA_CaelarAsha
	SAY @20 /*  ~My loyal Adras... forgive me. Why are you confined to this place?~*/
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_AshaCaelar", "GLOBAL", 1)
	~
	EXTERN XAASHASP XA_CaelarAshaChain
END

IF ~~ THEN BEGIN XA_CaelarAshaChain_END
	SAY @29  /* ~I see. Then it is clear what must be done. <CHARNAME> — you saved the life of my uncle, and rescued me from Avernus. Do me one last favor, and end my life.~*/
	
	IF ~~ THEN REPLY @30 /* ~With pleasure.~ */
	DO ~
		SetGlobal("XA_KilledCaelar", "GLOBAL", 1)
		SetGlobal("XA_OathRelease", "GLOBAL", 1)
		Kill(Myself)
	~
	EXIT
	
	IF ~~ THEN REPLY @31 /* ~Caelar, wait —~ */
	GOTO XA_CaelarWait
END

IF ~~ THEN BEGIN XA_CaelarWait
	SAY @32  /* ~No! Don't you see!? I don't deserve to live!~ */
	
	= @33  /* ~(She falls to her hands and knees.)~*/
	
	= @34 /* ~Please... end this. End this suffering...~ */
	
	IF ~~ THEN REPLY @35  /* ~Caelar, you may have given up on yourself, but I haven't given up on you. There's still a path forward, and you'll come out of this stronger, and wiser, if you give yourself the chance.~ */
	GOTO XA_CaelarWait2
	
	IF ~~ THEN REPLY @38  /* ~Very well. (Kill her.)~ */
	DO ~
		SetGlobal("XA_KilledCaelar", "GLOBAL", 1)
		SetGlobal("XA_OathRelease", "GLOBAL", 1)
		Kill(Myself)
	~
	EXIT
END

IF ~~ THEN BEGIN XA_CaelarWait2
	SAY @36 /* ~What do you mean?~ */
	
	IF ~~ THEN REPLY @37  /* ~Release these spirits from their oath to you.~ */
	GOTO XA_CaelarWait3
END

IF ~~ THEN BEGIN XA_CaelarWait3
	SAY @39 /* ~Right...~*/
	
	= @41  /* ~(She rises to her feet.)~ */
	= @40 /*  ~Crusaders, hear me! Long ago, you swore to serve me in our battle against the forces of evil. I tell you now, that the battle is over! You are released from your servitude. Go, and be at peace!~*/
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_SparedCaelar", "GLOBAL", 1)
		SetGlobal("XA_OathRelease", "GLOBAL", 1)
	~
	EXIT
END

IF ~
	GlobalGT("XA_AVBossFled", "GLOBAL", 1)
	!AreaCheck("XA5300")
~ THEN BEGIN XA_WonBattle
	SAY @16 /* ~You defeated him? Praise be ... I can't believe it.~*/
	
	IF ~~ THEN REPLY @15  /* ~Caelar... your ordeal is over. Come with me. (Take her hand.)~*/
	GOTO XA_WonBattle2
END

IF ~~ THEN BEGIN XA_WonBattle2
	SAY @17  /*  ~Where? Where can I go? No one would have me, after what I've done, and what he did to me...~ */
	
	IF ~~ THEN REPLY @18 /* ~I know at least one person who'd be happy to see you. But first, we need to go to Kanaglym.~*/
	GOTO XA_WonBattle3
END

IF ~~ THEN BEGIN XA_WonBattle3
	SAY @19 /* ~Thank you, <CHARNAME>. Let's go.~ */
	
	IF ~~ THEN
	DO ~
		ActionOverride(Player1,AddSpecialAbility("SPIN649"))
		CopyGroundPilesTo("AR4500", [1985.1250])
		StartCutSceneMode()
		StartCutScene("XAGO5300")
	~
	EXIT
END

IF ~
	GlobalLT("XA_CaelarRescue", "GLOBAL", 1)
~ THEN BEGIN XA_CaelarRescue
	SAY @4 /* ~(Caelar... she's been bloodied and brutalized beyond words, but you're sure it's her. Pieces of her shattered armor and sword lie strewn about the roof of the tower.)~*/
	
	IF ~~ THEN REPLY @5 /*  ~Caelar!~*/
	DO ~
		SetGlobal("XA_CaelarRescue", "GLOBAL", 1)
	~
	GOTO XA_CaelarRescue2
	
	IF ~~ THEN REPLY @6  /* ~By the gods, what happened to you?~ */
	DO ~
		SetGlobal("XA_CaelarRescue", "GLOBAL", 1)
	~
	GOTO XA_CaelarRescue2
	
	IF ~~ THEN REPLY @7 /* ~It looks like you received your just punishment.~*/
	DO ~
		SetGlobal("XA_CaelarRescue", "GLOBAL", 1)
	~
	GOTO XA_CaelarRescue2
END

IF ~~ THEN BEGIN XA_CaelarRescue2
	SAY @2  /* ~... Wh..what? <CHARNAME>... but, how?~ */
	
	IF ~~ THEN REPLY @1 /* ~Who did this to you?~ */
	GOTO XA_CaelarRescue3
	
	IF ~~ THEN REPLY @0 /* ~You're safe now. I'm going to get you out of here.~ */
	GOTO XA_CaelarRescue3
END

IF ~~ THEN BEGIN XA_CaelarRescue3
	SAY @3  /* ~No... he will return...run... RUN!~ */
	
	IF ~~ THEN
	DO ~
		StartCutSceneMode()
		StartCutScene("XA470001")
	~
	EXIT
	
	IF ~
		GlobalGT("DemoGorgonIsDead","GLOBAL",0)
	~ THEN
	DO ~
		StartCutSceneMode()
		StartCutScene("XA470002")
	~
	EXIT
END

IF ~~ THEN BEGIN XA_OffToJail
	SAY @42 /* ~Before I go. <CHARNAME>, thank you for rescuing me from Avernus, and for allowing me to release the spirits of my fallen crusaders. Farewell.~ */
	
	IF ~~ THEN REPLY @43 /*~Corporal, the gate will bring you to the Flaming Fist Headquarters.~*/
	EXTERN XABENCE2 XA_OffToJail2
END

CHAIN XAASHASP XA_CaelarAshaChain
	@21 /* ~Caelar! Blessed be, our Shining Lady has returned to us!~*/
	= @22 /* ~But... oh my... your injuries. What happened?~*/
	== XACAELAR
	@23 /* ~... It's what I deserved, in many ways. I led all of you to your deaths. The destruction that we wrought across the Sword Coast...~*/
	== XAASHASP
	@24 /* ~It was Hephernaaan, not you. He —~*/
	== XACAELAR
	@25 /* ~No! He betrayed me, yes, but it was I who was willing to throw your lives away, all so that I could see my uncle again... I deserve your scorn, not your pity.~*/
	== XAASHASP
	@26 /* ~I... I see.~*/
	== XACAELAR
	@27 /* ~Now. Tell me, spirit, why you haven't moved on.~*/
	== XAASHASP
	@28 /* ~We, your most loyal followers, swore an oath to serve you in life, and in death. The oath cannot be broken. You must either release us from your servitude, or... you must die.~*/
END XACAELAR XA_CaelarAshaChain_END