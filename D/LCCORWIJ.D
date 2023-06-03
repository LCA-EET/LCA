//LCCORWIJ
//Daniel Valle
//dan@danielvalle.net

/* Revision History

2022-09-16: Initial Commit

*/ 
BEGIN ~LCCORWIJ~

//{ #region Unused
IF ~~ THEN BEGIN LCA100
	SAY @431 /* ~(She becomes visibly upset.) You bastard! Gods damnit... (She calms down.)~ */
	IF ~~ THEN
	GOTO LCA75
END

IF ~~ THEN BEGIN LCA_ReadLetter
	SAY @1041 /* ~I know we'd be walking into a trap... but Rohma's in danger! We have to go and get her!~ */
	
	IF ~~ THEN REPLY @1043 /* ~Yes, and we will. They won't harm her, so long as she is useful to them in making the exchange.~*/
	GOTO LCA_ReadLetter2
END

IF ~~ THEN BEGIN LCA_ReadLetter2
	SAY @1045 /* ~So what are we to do in the meantime? I can't just sit here while Rohma's being held captive!~*/
	
	IF ~~ THEN REPLY @1046 /* ~Tell me about Beno. Do you think he has it in him to harm his own daughter?~*/
	GOTO LCA_ReadLetter2A
	
	IF ~~ THEN REPLY @1044 /* ~I will rouse the Dukes right away - they may have insight into this 'Illasera'. Let us discuss the matter in the Ducal palace before we make our move.~*/
	GOTO LCA_StartDucalCS
END

IF ~~ THEN BEGIN LCA_ReadLetter2A
	SAY @1047 /* ~He's threatened my father and me for years, but never Rohma...~ */
	
	IF ~~ THEN REPLY @1048 /* ~That's good... we may be able to use that to our advantage.~ */
	GOTO LCA_ReadLetter3
END

IF ~~ THEN BEGIN LCA_ReadLetter3
	SAY @1050 /* ~You mean to turn Beno against Illasera? I doubt that'll work. Beno's only ever cared for himself.~*/
	
	= @1052 /* ~He won't stick his neck out for anyone, not even his own daughter - I'm sure of it.~ */
	
	IF ~~ THEN REPLY @1051 /* ~Still, it may be worth trying. I will rouse the Dukes right away - they may have insight into this 'Illasera'. Let us discuss the matter in the Ducal palace before we make our move.~*/
	GOTO LCA_StartDucalCS
END

IF ~~ THEN BEGIN LCA_StartDucalCS
	SAY @1049 /* ~Fine. But whatever we decide, we need to do it quickly. I'll go after her myself if I have to.~*/
	
	IF ~
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1054 /* ~We're in this together, love. Let's go and convene the meeting with the Dukes.~ */
	DO ~
		SetGlobal("LCA_RohmaKidnapped", "GLOBAL", 4)
		StartCutsceneMode()
		StartCutscene("LCDUCAL")
	~
	EXIT
	
	IF ~
		!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1053 /* ~I'll not abandon you in your hour of need, my friend. We will rescue Rohma, together. Let's go and convene the meeting with the Dukes.~ */
	DO ~
		SetGlobal("LCA_RohmaKidnapped", "GLOBAL", 4)
		StartCutsceneMode()
		StartCutscene("LCDUCAL")
	~
	EXIT
END
//} #endregion

//{ #region Hall of Wonders Cutscene - DLG-0048
IF ~
	Global("LCA_CSHOW_TALK", "GLOBAL", 1)
~ THEN BEGIN LCA_CSHOW_TALK
	SAY @1383 /* ~... ... so you see, even the smallest act of kindness can have a profound impact.~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("LCA_CSHOW_TALK", "GLOBAL", 2)
	~
	EXTERN LCCURATO LCA_CSHOW_TALK_CHAIN
END

IF ~~ THEN BEGIN LCA_WantToTransform 
	SAY @1415 /* ~(She looks at you with a knowing smile.)~  */
	
	= @1416 /* ~Normally I'd be against it, but it might be good to scare some sense into these kids.~ */
	
	IF ~~ THEN REPLY @1419 /* Right. (Transform into the Slayer).~ */
	DO ~
		SetGlobal("LCA_ScaredChildren", "GLOBAL", 1)
		PlaySong(58)
		StartCutScene("LCCSHOW3")
	~	
	EXIT
	
	IF ~~ THEN REPLY @1420 /* ~On second thought, no. Curator Magda — we really must get going.~  */
	DO ~
		StartCutSceneMode()
		StartCutScene("LCCSHOWX")
	~	
	EXIT
END
//} #endregion

//{ #region Corwin Not Chosen for Saradush - DLG-0001
IF ~
	Global("LCA_BGEND3", "GLOBAL", 1)
	Global("LCA_DidNotRequestCorwin", "GLOBAL", 1)
	GlobalGT("LCA_CorwinOpinionOfPlayer", "GLOBAL", 0)
	// play romance song (if in romance)
~ THEN BEGIN LCA_BGEND3_DidNotRequest
	SAY @1223 /* ~I'm coming with you. Don't try and talk me out of it.~ */
	
	IF ~~ THEN REPLY @1225 /* ~Right. I need you by my side.~ */
	DO ~
		SetGlobal("LCA_BGEND3", "GLOBAL", 2)
	~
	GOTO LCA_BGEND3_CorwinSaradushChain //OK
	
	IF ~~ THEN REPLY @1226 /* ~As much as I want you to, your family, and this city, need you to protect them.~ */
	DO ~
		SetGlobal("LCA_BGEND3", "GLOBAL", 2)
	~
	GOTO LCA_BGEND3_DidNotRequest_B //OK
END

IF ~~ THEN BEGIN LCA_BGEND3_DidNotRequest_B
	SAY @1220 /* ~Are you sure? You're going to need my help...~*/
	
	IF ~
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1221 /* ~I'm sure, my love. I can't risk losing you.~ */
	GOTO LCA_BGEND3_DontWantCorwinR //OK
	
	IF ~
		!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1222 /* ~I'm sure. The city can't risk losing the both of us.~ */
	GOTO LCA_BGEND3_DontWantCorwinNR //OK
	
	IF ~~ THEN REPLY @1275 /* ~You're right. The skill and counsel you've provided have proven invaluable, and I require them once again.~*/
	GOTO LCA_BGEND3_CorwinSaradushChain
END

IF ~~ THEN BEGIN LCA_BGEND3_DontWantCorwinNR 
	SAY @1235 /* ~Fine... Just be careful out there, please.~ */
	
	IF ~~ THEN REPLY @1276 /* ~I will - don't worry about me, my friend.~ */
	GOTO LCA_BGEND3_DontWantCorwin2 //OK
END

IF ~~ THEN BEGIN LCA_BGEND3_DontWantCorwinR
	SAY @1236 /* ~Fine... Just be careful out there, please. I can't bear to lose you.~ */
	
	IF ~~ THEN REPLY @1276 /* ~I will. I'll come back to you, my love - I promise.~ */
	GOTO LCA_BGEND3_DontWantCorwin2 //OK
END

IF ~~ THEN BEGIN LCA_BGEND3_DontWantCorwin2
	SAY @1278 /* ~It's late... I need to get Rohma to bed.~ */
	
	IF ~~ THEN REPLY @1279 /* ~I'll come with you.~ */
	DO ~
		SetGlobal("LCA_ByeRohma", "GLOBAL", 1)
	~
	EXIT
END

IF ~~ THEN BEGIN LCA_BGEND3_CorwinSaradushChainEnd
	SAY @1262 /* ~I appreciate that. Thank you, sir.~ */
	
	IF ~~ THEN REPLY @1265 /* ~Schael - I really appreciate you doing this. I know it's not easy for you to be away from your family.~ */
	DO ~
		SetGlobal("LCA_DidRequestCorwin", "GLOBAL", 1)
	~
	GOTO LCA_BGEND4_2
END

//} #endregion

//{ #region Corwin Chosen for Saradush - DLG-0002
IF ~
	Global("LCA_BGEND4", "GLOBAL", 1)
	Global("LCA_DidRequestCorwin", "GLOBAL", 1)
	// play romance song (if in romance)
~ THEN BEGIN LCA_BGEND4_DidRequest
	SAY @1280 /* ~I'm glad that you chose me for this assignment.~*/
	
	IF ~
		!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1282 /* ~I've learned to rely on your skill and counsel, my friend.~ */
	DO ~
		SetGlobal("LCA_BGEND4", "GLOBAL", 2)
	~
	GOTO LCA_NeedEachother_NR //OK
	
	IF ~
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1286 /* ~I need you Schael. You know that.~ */
	DO ~
		SetGlobal("LCA_BGEND4", "GLOBAL", 2)
	~
	GOTO LCA_NeedEachother //OK
	
	IF ~~ THEN REPLY @1283 /* ~It was a difficult decision.~ */
	DO ~
		SetGlobal("LCA_BGEND4", "GLOBAL", 2)
	~
	GOTO LCA_HowSo //OK
	
	IF ~~ THEN REPLY @1288 /* ~Really? I thought you might be upset.~ */
	DO ~
		SetGlobal("LCA_BGEND4", "GLOBAL", 2)
	~
	GOTO LCA_HowSo //OK
END

IF ~~ THEN BEGIN LCA_NeedEachother
	SAY @1292 /* ~And I need you. I'd drive myself crazy if I had to stay here while the <PRO_MANWOMAN> I love was out risking <PRO_HISHER> life in some faraway land.~ */
	
	IF ~~ THEN REPLY @1268 /* ~I imagine that's how Rohma and your father feel about you.~ */
	GOTO LCA_BGEND4_3 //OK
	
	IF ~~ THEN REPLY @1272 /* ~I'd feel the same way if our roles were reversed, love.~ */
	GOTO LCA_BGEND4_3A //OK
END

IF ~~ THEN BEGIN LCA_HowSo
	SAY @1284 /* ~How so?~ */
	
	IF ~~ THEN REPLY @1285 /* ~I know it's not easy for you to be away from your family.~*/
	GOTO LCA_BGEND4_2 //OK
	
	IF ~~ THEN REPLY @1287 /* ~This is going to be dangerous, and I never want to see you get hurt.~  */
	GOTO LCA_HowSo_2 //OK
END

IF ~~ THEN BEGIN LCA_HowSo_2 //OK
	SAY @1290 /* ~It is, but... it's worth the risk.~  */
	=@1291 /* ~You heard Nederlok, and the Dukes. The success of this mission is essential to the safety of this city. And that includes Rohma, and my father.~*/
	
	IF ~
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN GOTO LCA_BGEND4_2R //OK
	
	IF ~
		!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN GOTO LCA_BGEND4_4 //OK
END

IF ~~ THEN BEGIN LCA_NeedEachother_NR
	SAY @1293 /*  ~And all of us here rely on you. I'd drive myself crazy if I had to stay here while the hero of Baldur's Gate was in some faraway land, risking <PRO_HIMHER>self to protect us.~  */
	
	IF ~~ THEN REPLY @1268 /* ~I imagine that's how Rohma and your father feel about you.~ */
	GOTO LCA_BGEND4_3 //OK
END


IF ~~ THEN BEGIN LCA_BGEND4_2
	SAY @1266 /* ~It never is, but... you heard Nederlok, and the Dukes. The success of this mission is essential to the safety of this city. And that includes Rohma, and my father.~ */
	
	IF ~
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN GOTO LCA_BGEND4_2R //OK
	
	IF ~
		!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN GOTO LCA_BGEND4_4 //OK
END

IF ~~ THEN BEGIN LCA_BGEND4_2R
	SAY @1267 /* ~Plus, I'd drive myself crazy if I had to stay here while the <PRO_MANWOMAN> I love was out risking <PRO_HISHER> life in some faraway land.~ */
	
	IF ~~ THEN REPLY @1268 /* ~I imagine that's how Rohma and your father feel about you.~ */
	GOTO LCA_BGEND4_3 //OK
	
	IF ~~ THEN REPLY @1272 /* ~I'd feel the same way if our roles were reversed, love.~ */
	GOTO LCA_BGEND4_3A //OK
END

IF ~~ THEN BEGIN LCA_BGEND4_3 //OK
	SAY @1269 /* ~I know... it's definitely not easy for them, either.~*/
	
	IF ~~ THEN GOTO LCA_BGEND4_4 //OK
END

IF ~~ THEN BEGIN LCA_BGEND4_3A //OK
	SAY @1273 /* ~I know, dear... it's not easy for Rohma or my father either.~*/
	
	IF ~~ THEN GOTO LCA_BGEND4_4 //OK
END

IF ~~ THEN BEGIN LCA_BGEND4_4
	SAY @1270 /* ~Speaking of Rohma, it's late, and I need to put her to bed.~*/
	
	IF ~~ THEN REPLY @1271 /* ~Let's break the news to her together, first.~ */
	GOTO LCA_BGEND4_5 //OK
END

IF ~~ THEN BEGIN LCA_BGEND4_5
	SAY @1274 /* ~Right...~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("LCA_ByeRohma", "GLOBAL", 1)
	~
	EXIT
END

IF ~~ THEN BEGIN LCA_SaradushDiscussion7
	SAY @1252 /* ~Thank you, sir.~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("LCA_DidRequestCorwin", "GLOBAL", 1)
		StartCutscene("LCBGEND4")
	~
	EXIT
END

//} #endregion

//{ #region Rohma Rescued - DLG-0003
IF ~
	Global("LCA_RohmaSaved", "GLOBAL", 1)
~ THEN BEGIN LCA_CorwinRohmaReunite
	SAY @1210 /* ~(They share a warm embrace.)~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("LCA_RohmaSaved", "GLOBAL", 2)
	~
	GOTO LCA_CorwinRohmaReuniteChain
END
//} #endregion

//{ #region Beno Last Words (Soultaker) - DLG-0004
IF ~
	Global("LCA_CorwinBenoST", "GLOBAL", 1)
~ THEN BEGIN LCA_CorwinBenoST
	SAY @1184 /* ~Any last words?~ */
	
	IF ~~ THEN 
	DO ~
		SetGlobal("LCA_CorwinBenoST", "GLOBAL", 2)
		IncrementGlobal("LCA_CorwinOpinionOfPlayer", "GLOBAL", 1)
	~
	EXTERN LCBENO2 LCA_CorwinBenoSTChain
END

IF ~~ THEN LCA_CorwinBenoSTChainEnd
	SAY @1188 /* ~It's over... I hope we've done the right thing.~ */
	
	IF ~
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1189 /* ~It was the only way. He'll never trouble you again. Come - I'm sure Rohma is eager to see you, my love.~ */
	GOTO LCA_CorwinBenoSTChainEndCS
	
	IF ~
		!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1190 /* ~It was the only way. He'll never trouble you again. Come - I'm sure Rohma is eager to see you, my love.~ */
	GOTO LCA_CorwinBenoSTChainEndCS
END

IF ~~ THEN LCA_CorwinBenoSTChainEndCS
	SAY @1191 /* ~Right. Let's go.~ */
	
	IF ~~ THEN
	DO ~
		StartCutsceneMode()
		StartCutscene("LCUCEND1")
	~
	EXIT
END
//} #endregion

//{ #region Beno Last Words (Killed) - DLG-0005
IF ~
	Global("LCA_CorwinKillBeno", "GLOBAL", 1)
~ THEN BEGIN LCA_CorwinKillBenoLastWords
	SAY @1184 /* ~Any last words?~ */
	
	IF ~
		GlobalLT("LCA_CorwinOpinionOfPlayer", "GLOBAL", 6)
	~ THEN 
	DO ~
		IncrementGlobal("LCA_CorwinOpinionOfPlayer", "GLOBAL", 1)
		SetGlobal("LCA_CorwinKillBeno", "GLOBAL", 2)
	~
	EXTERN LCBENO2 LCA_CorwinKillBenoChain
	
	IF ~
		GlobalGT("LCA_CorwinOpinionOfPlayer", "GLOBAL", 5)
	~ THEN 
	DO ~
		IncrementGlobal("LCA_CorwinOpinionOfPlayer", "GLOBAL", 1)
		SetGlobal("LCA_CorwinKillBeno", "GLOBAL", 2)
	~
	EXTERN LCBENO2 LCA_CorwinMercyBenoChain
END

IF ~~ THEN LCA_CorwinKillBenoChainEnd
	SAY @1194 /* ~It's over... ~ */
	
	IF ~
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1195 /* ~Are you alright? That couldn't have been easy for you, love.~ */
	GOTO LCA_CorwinKillBenoChainEndCS //OK
	
	IF ~
		!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1197 /* ~Are you alright? That couldn't have been easy for you.~*/
	GOTO LCA_CorwinKillBenoChainEndCS //OK
END

IF ~~ THEN LCA_CorwinMercyBenoChainEnd
	SAY @1204 /* ~<CHARNAME> - help me get him on his feet. We'll take him into custody together.~  */
	
	IF ~~ THEN REPLY @1205 /* ~Gladly, Schael.~ */
	DO ~
		StartCutsceneMode()
		StartCutscene("LCUCEND1")
	~
	EXIT
END

IF ~~ THEN LCA_CorwinKillBenoChainEndCS
	SAY @1196 /* ~I'll be fine once I see Rohma. Let's go.~ */
	
	IF ~~ THEN
	DO ~
		StartCutsceneMode()
		StartCutscene("LCUCEND1")
	~
	EXIT
END

//} #endregion

//{ #region Illasera Killed - DLG-0006 - Tested
IF ~
	Global("LCA_IllaseraDead", "GLOBAL", 1)
~ THEN BEGIN LCA_IllaseraDead
	SAY @1142 /* ~That was the last of them...~ */
	= @1143 /* ~Rohma... thank Tymora that Skie got her out in time.~ */
	
	IF ~~ THEN 
	DO ~
		SetGlobal("LCA_IllaseraDead", "GLOBAL", 2)
	~
	EXTERN LCBENO2 LCA_IllaseraDead2 //OK
	
END


IF ~~ THEN BEGIN LCA_IllaseraDead3
	SAY @1146 /* ~Not for long.~ */
	
	IF ~~ THEN REPLY @1149 /* ~Do your worst.~ */
	GOTO LCA_CorwinKillBeno //OK
	
	IF ~~ THEN REPLY @1148 /* ~Wait!~ */
	GOTO LCA_IllaseraDead4 //OK
END

IF ~~ THEN BEGIN LCA_IllaseraDead4
	SAY @1150 /* ~What is it?~ */
	
	IF ~
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1147 /* ~What is killing him again going to solve?~ */
	GOTO LCA_IllaseraDead5R //OK
	
	IF ~
		!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1147 /* ~What is killing him again going to solve?~ */
	GOTO LCA_IllaseraDead5NR //OK
	
	IF ~
		HasItem("LCSTDAG", "LCCORWIN")
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1183 /* ~You have the Soultaker dagger. Give it to me, I'll do the deed. It's the only way we'll be free of him for good.~ */
	GOTO LCA_IllaseraDead_ST_Corwin //OK
	
	IF ~
		HasItem("LCSTDAG", "LCCORWIN")
		!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1182 /* ~You have the Soultaker dagger. Give it to me, I'll do the deed. It's the only way you'll be free of him for good.~ */
	GOTO LCA_IllaseraDead_ST_Corwin //OK
	
	IF ~
		HasItem("LCSTDAG", Player1)
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1168 /* ~I have the Soultaker dagger. I'll do the deed. It's the only way you'll be free of him for good.~ */
	GOTO LCA_IllaseraDead_ST_PlayerR //OK
	
	IF ~
		HasItem("LCSTDAG", Player1)
		!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1154 /* ~I have the Soultaker dagger. I'll do the deed. It's the only way you'll be free of him for good.~ */
	GOTO LCA_IllaseraDead_ST_PlayerNR 
	
	IF ~~ THEN REPLY @1151 /* ~Nevermind - do your worst.~ */
	GOTO LCA_CorwinKillBeno
END 

IF ~~ THEN BEGIN LCA_CorwinKillBeno
	SAY @1177 /* ~(Steely-faced, she takes a deep breath and approaches her former lover.)~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("LCA_CorwinKillBeno", "GLOBAL", 1)
	~
	EXIT
END

IF ~~ THEN BEGIN LCA_IllaseraDead5R
	SAY @1180 /* ~Love, you want to me to show him mercy? He nearly got Rohma killed, and what he did to my father...~ */
	
	IF ~~ THEN GOTO LCA_IllaseraDead6 //OK
END 

IF ~~ THEN BEGIN LCA_IllaseraDead5NR
	SAY @1156 /* ~You want to me to show him mercy? He nearly got Rohma killed, and what he did to my father...~*/
	
	IF ~~ THEN GOTO LCA_IllaseraDead6 //OK
END 

IF ~~ THEN BEGIN LCA_IllaseraDead6
	SAY @1181 /* ~No, I'm sorry. No mercy.~ */
	
	IF ~~ THEN REPLY @1157 /* ~Kill him, and his friends will just resurrect him. Before long, he'll do this to you again.~ */
	GOTO LCA_IllaseraDead_Mercy //OK
	
	IF ~
		HasItem("LCSTDAG", "LCCORWIN")
	~ THEN REPLY @1163 /* ~You're right... You have the Soultaker dagger. Give it to me, I'll do the deed. It's the only way you'll be free of him for good.~ */
	GOTO LCA_IllaseraDead_ST_Corwin //OK
	
	IF ~
		HasItem("LCSTDAG", Player1)
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1168 /* ~You're right... I have the Soultaker dagger. I will do the deed. It's the only way we'll be free of him for good.~ */
	GOTO LCA_IllaseraDead_ST_PlayerR //OK
	
	IF ~
		HasItem("LCSTDAG", Player1)
		!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1169 /* ~You're right... I have the Soultaker dagger. I will do the deed. It's the only way you'll be free of him for good.~ */
	GOTO LCA_IllaseraDead_ST_PlayerNR //OK
	
	IF ~~ THEN REPLY @1151 /* ~Nevermind - do your worst.~ */
	GOTO LCA_CorwinKillBeno
END

IF ~~ THEN BEGIN LCA_IllaseraDead_ST_Corwin
	SAY @1164 /* ~The dagger...~ */
	=@1165 /* ~(Her expression turns to one of concern, as she deliberates internally on what to do.)~ */
	IF ~~ THEN
	GOTO LCA_IllaseraDead_BenoSTCorwin2
END

IF ~~ THEN BEGIN LCA_IllaseraDead_ST_PlayerR
	SAY @1170 /* ~My love...~ */
	= @1165 /* ~(Her expression turns to one of concern, as she deliberates internally on what to do.)~ */
	IF ~~ THEN
	GOTO LCA_IllaseraDead_BenoSTCorwin
END

IF ~~ THEN BEGIN LCA_IllaseraDead_ST_PlayerNR
	SAY @1171 /* ~<CHARNAME>...~*/
	= @1165 /* ~(Her expression turns to one of concern, as she deliberates internally on what to do.)~ */
	IF ~~ THEN
	GOTO LCA_IllaseraDead_BenoSTCorwin
END

IF ~~ THEN BEGIN LCA_IllaseraDead_BenoSTCorwin2
	SAY @1179 /* ~No... You've been forced into enough killing already.~ */
	IF ~~ THEN GOTO LCA_IllaseraDead_CorwilKillWithST
END

IF ~~ THEN BEGIN LCA_IllaseraDead_BenoSTCorwin
	SAY @1172 /* ~No... You've been forced into enough killing already. Hand me the dagger.~ */
	= @1174 /* ~(You hand her the dagger.)~ */
	IF ~~ THEN GOTO LCA_IllaseraDead_CorwilKillWithST
END

IF ~~ THEN BEGIN LCA_IllaseraDead_CorwilKillWithST
	SAY @1175 /* ~I appreciate that you're willing to do this for me, but it's my responsibility.~ */
	IF ~~ THEN
	DO ~
		SetGlobal("LCA_CorwinBenoST", "GLOBAL", 1)
	~
	EXIT
END

IF ~~ THEN BEGIN LCA_IllaseraDead_Mercy
	SAY @1158 /* ~But, no! I can't just let him...~ */
	= @1159 /* ~(She lets out a long sigh.)~ */
	= @1160 /* ~You're right. I'm letting my anger cloud my judgement. I'm an officer of the law, and I need to hold myself to a higher standard.~ */
	= @1161 /* ~Come on. Help me get him up. We'll take him into custody together.~ */
	
	IF ~~ THEN REPLY @1162 /* ~Gladly.~ */
	DO ~
		StartCutSceneMode()
		StartCutScene("LCUCEND1")
	~
	EXIT

END
//} #endregion

//{ #region Arrival in Undercity - DLG-0007 - Tested
IF ~
	Global("LCA_ArrivedInUndercity", "GLOBAL", 1)
~ THEN BEGIN LCA_ArrivedInUndercity
	SAY @1118 /* ~The Undercity... They must be nearby.~*/
	
	= @1119 /* ~Look at these tracks. They lead toward the temple.~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("LCA_ArrivedInUndercity", "GLOBAL", 2)
	~
	REPLY @1121 /* ~We should scout around first. Be careful.~ */
	GOTO LCA_ArrivedInUndercity2
	
	IF ~~ THEN
	DO ~
		SetGlobal("LCA_ArrivedInUndercity", "GLOBAL", 2)
	~
	REPLY @1120 /* ~Let's go.~ */
	GOTO LCA_ArrivedInUndercity2
END

IF ~~ THEN LCA_ArrivedInUndercity2
	SAY @1122 /* ~Right.~ */
	
	IF ~~ THEN
	EXIT
END


IF ~~ THEN BEGIN LCA_SkieTakesRing
	SAY @1136 /* ~(Skie takes the ring from Schael.)~ */
	=@1137 /* ~Skie, whatever you do, don't put it on. You'll be teleported. You MUST place it on Rohma's finger.~*/
	IF ~~ THEN EXTERN LCSKIE LCA_SkieTakesRing
END
IF ~~ THEN BEGIN LCA_Thanks3
	SAY @1138 /* ~We won't tell. Just be careful.~*/
	
	IF ~~ THEN EXTERN LCSKIE LCA_SetUp
END
IF ~~ THEN BEGIN LCA_GiveSkieRing
	SAY @1135 /*~One of the city wizards gave us this ring. If you slip it on to Rohma's finger, she'll be teleported to safety.~*/
	
	IF ~~ THEN EXTERN LCSKIE LCA_GiveRing
END

IF ~~ THEN BEGIN LCA_GiveSkieRing2
	SAY @1139 /*~~Skie, do you think you can get to Rohma without being seen?~*/
	
	IF ~~ THEN EXTERN LCSKIE LCA_GiveSkieRing3
END

IF ~~ THEN BEGIN LCA_GiveSkieRing4
	SAY @1141 /*~You wouldn't need to... One of the city wizards gave us this ring. If you slip it on to Rohma's finger, she'll be teleported to safety.~*/
	
	IF ~~ THEN EXTERN LCSKIE LCA_GiveRing
END

IF ~~ THEN BEGIN LCA_SkieUCChainEnd
	SAY @1132 /* ~The man with the scar is Beno.~*/
	
	IF ~~ THEN REPLY @1133 /*~Skie, do you think you can sneak Rohma out of there?~ */
	EXTERN LCSKIE LCA_CanGetRohma
	
	IF ~~ THEN REPLY @1134 /* ~How did you get in there without them detecting you?~ */
	EXTERN LCSKIE LCA_NonDetection
	
	
END
//} #endregion

//{ #region Duke Debrief Break - DLG-0008
IF ~
	Global("LCA_DukesDebriefed", "GLOBAL", 2)
~ THEN BEGIN LCA_DukeDebrief02
	SAY @1066 /* ~I thought that went well. What do you think?~ */
	
	IF ~~ THEN REPLY @1067 /* ~Me too. You did a great job recounting the events.~ */
	GOTO LCA_DukeDebrief02_A1
	
	IF ~~ THEN REPLY @1068 /* ~I don't know... they seemed fearful of 'The Slayer'.~ */
	GOTO LCA_DukeDebrief02_B1
END

IF ~~ THEN BEGIN LCA_DukeDebrief02_A1
	SAY @1076 /* ~Thanks. I keep a journal whenever I'm deployed. It helps a lot when I need to deliver reports to my superiors.~ */

	IF ~
		!OR(5)
			GlobalGT("LCA_TimesHadSex", "GLOBAL", 0)
			Global("LCA_SlappedDelcia", "GLOBAL", 1)
			Global("LCA_CorwinWonTM", "GLOBAL", 1)
			Global("LCA_CorwinCleansed", "GLOBAL", 1)
			Global("LCA_CorwinCleansed", "GLOBAL", 2)
	~ THEN REPLY @1098 /* ~Hm. I wonder what they're discussing...~*/
	GOTO LCA_DukeDebrief_WaitForDukes
	
	IF ~
		OR(5)
			GlobalGT("LCA_TimesHadSex", "GLOBAL", 0)
			Global("LCA_SlappedDelcia", "GLOBAL", 1)
			Global("LCA_CorwinWonTM", "GLOBAL", 1)
			Global("LCA_CorwinCleansed", "GLOBAL", 1)
			Global("LCA_CorwinCleansed", "GLOBAL", 2)
	~ THEN REPLY @1074 /* ~Although... I noticed you did leave *some* things out.~ */
	GOTO LCA_DukeDebrief02_A2
END

IF ~~ THEN BEGIN LCA_DukeDebrief02_A2
	SAY @1079 /* ~Like what?~*/
	
	IF ~~ THEN GOTO LCA_DukeDebrief_ForgotSomething
END

IF ~~ THEN BEGIN LCA_DukeDebrief_ForgotSomething
	SAY @1087 /* ~(She looks at you with a quizzical expression.)~ */
	
	IF ~~ THEN REPLY @1102 /* ~Actually, it's nothing... I wonder what they're discussing...~*/
	GOTO LCA_DukeDebrief_WaitForDukes
	
	IF ~
		Global("LCA_SlappedDelcia", "GLOBAL", 1)
		!Global("LCA_Recall_Delcia", "GLOBAL", 1)
	~ THEN REPLY @1078 /* ~I recall you smacking some sense into Nalia's aunt.~*/
	DO ~
		SetGlobal("LCA_Recall_Delcia", "GLOBAL", 1)
		IncrementGlobal("LCA_CorwinOpinionOfPlayer", "GLOBAL", 1)
	~
	GOTO LCA_DukeDebrief02_Slap
	
	IF ~
		Global("LCA_CorwinWonTM", "GLOBAL", 1)
		!Global("LCA_Recall_TM", "GLOBAL", 1)
	~ THEN REPLY @1083 /* ~You competed in the Trademeet Archery Competition, and you won! You were amazing, Schael.~ */
	DO ~
		SetGlobal("LCA_Recall_TM", "GLOBAL", 1)
		IncrementGlobal("LCA_CorwinOpinionOfPlayer", "GLOBAL", 1)
	~
	GOTO LCA_DukeDebrief02_TM
	
	IF ~
		GlobalGT("LCA_TimesHadSex", "GLOBAL", 0)
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
		!Global("LCA_Recall_Sex", "GLOBAL", 1)
	~ THEN REPLY @1082 /* ~Our, ah, adventures in the bedroom. Especially that one time we kept the entire inn from getting any sleep.~ */
	DO ~
		SetGlobal("LCA_Recall_Sex", "GLOBAL", 1)
		IncrementGlobal("LCA_CorwinOpinionOfPlayer", "GLOBAL", 1)
	~
	GOTO LCA_DukeDebrief02_Sex
	
	IF ~
		!Global("LCA_Recall_Vampire", "GLOBAL", 1)
		OR(2)
			Global("LCA_CorwinCleansed", "GLOBAL", 1)
			Global("LCA_CorwinCleansed", "GLOBAL", 2)
	~ THEN REPLY @1091 /* ~I thought you'd tell them about the time you were nearly transformed into a vampire, by Bodhi.~ */
	DO ~
		SetGlobal("LCA_Recall_Vampire", "GLOBAL", 1)
		IncrementGlobal("LCA_CorwinOpinionOfPlayer", "GLOBAL", 1)
	~
	GOTO LCA_DukeDebrief02_Vampire
END

IF ~~ THEN BEGIN LCA_DukeDebrief02_Vampire
	SAY @1092 /* ~Yes, well... honestly...~ */
	=@1093 /* ~If I'd told them, it would only be a matter of time before my father, and Rohma, would hear about it. I'd rather not trouble them with the knowledge of how close I was to turning into a monster.~*/
	=@1094 /* ~But... I haven't forgotten how you saved me, <CHARNAME>. And I never will.~*/
	
	IF ~~ THEN REPLY @1095 /* ~And I'll never forget what you did for me, Schael. My corpse would still be hanging from the Entar's gallows were it not for you.~ */
	GOTO LCA_DukeDebrief02_Vampire_2
END

IF ~~ THEN BEGIN LCA_DukeDebrief02_Vampire_2
	SAY @1096 /* ~(You share a warm embrace.)~ */
	
	IF ~~ THEN REPLY @1097 /* ~There was one other thing...~ */
	GOTO LCA_DukeDebrief_ForgotSomething
	
	IF ~~ THEN REPLY @1098 /* ~Hm. I wonder what they're discussing...~ */
	GOTO LCA_DukeDebrief_WaitForDukes
END

IF ~~ THEN BEGIN LCA_DukeDebrief_WaitForDukes
	SAY @1099 /* ~It might be a while. As you've learned by now, the Dukes are, ehh, well-known for their long deliberations.~ */
	
	= @1100 /* ~Let's take a seat on the couch over here. Hopefully it's as comfortable as it looks.~*/
	= @1101 /* ~(You and Captain Corwin take a seat, and pass the time with idle chit-chat. Minutes slowly turn to hours...)~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("LCA_DukesDebriefed", "GLOBAL", 3)
		StartCutSceneMode()
		StartCutScene("LCDEBR02")
	~
	EXIT
END

IF ~~ THEN BEGIN LCA_DukeDebrief02_Slap
	SAY @1084 /* ~Oh, right. 'Lady' Delcia, the pretentious bi - ~ */
	= @1085 /* ~(She catches herself.)~ */
	= @1086 /* ~Nevermind. I won't use that kind of language within earshot of the city officials.~ */
	
	IF ~~ THEN
	GOTO LCA_DukeDebrief_ForgotSomething
END

IF ~~ THEN BEGIN LCA_DukeDebrief02_TM
	SAY @1088 /* ~(She smiles.)~ */
	= @1089 /* ~I appreciate that. It just wasn't germane to the discussion.~ */
	
	IF ~~ THEN
	GOTO LCA_DukeDebrief_ForgotSomething
END

IF ~~ THEN BEGIN LCA_DukeDebrief02_Sex
	SAY @1080 /* ~Hahah... no, love, those precious memories are for *our* enjoyment only.~   */
	= @1090 /* ~And... I look forward to making more of those kinds of memories with you, my love.~*/
	
	IF ~~ THEN
	GOTO LCA_DukeDebrief_ForgotSomething
END

IF ~~ THEN BEGIN LCA_DukeDebrief02_B1
	SAY @1069 /* ~You can control that power now, and that's what matters. What happened in Spellhold, when you lost control... it can never happen again.~ */ 
	
	IF ~~ THEN REPLY @1070 /* ~And it won't. I promise you.~ */
	GOTO LCA_DukeDebrief02_B2
	
	IF ~~ THEN REPLY @1071 /* ~You're right. If it did, not even your pleading on my behalf would save me. Not like last time.~ */
	GOTO LCA_DukeDebrief02_B2
END

IF ~~ THEN BEGIN LCA_DukeDebrief02_B2
	SAY @1072 /* ~That's for damn sure.~ */
	
	IF ~~ THEN REPLY @1081 /* ~Besides the mention of my transformation, yes, I thought it went well. You did a great job recounting the events.~  */
	GOTO LCA_DukeDebrief02_A1
END
//} #endregion

//{ #region Corwin Walk Home - DLG-0009
IF ~
	Global("LCA_CorwinWalkHome", "GLOBAL", 1)
~ THEN BEGIN LCA_WalkHome
	SAY @985 /* ~Huh? The front door is open.~ */
	
	IF ~~ THEN REPLY @986 /* ~Were you expecting guests?~ */
	DO ~
		SetGlobal("LCA_CorwinWalkHome", "GLOBAL", 2)
	~
	GOTO LCA_WalkHome2
END

IF ~~ THEN BEGIN LCA_WalkHome2
	SAY @987 /* ~No.. it looks like it was broken into..~*/
	
	IF ~~ THEN 
	GOTO LCA_WalkHome3
END

IF ~~ THEN BEGIN LCA_WalkHome3
	SAY @988 /* ~Oh, Gods! Father! Rohma!~ */
	
	= @989 /* ~(She runs inside, and you follow her in.)~ */
	IF ~~ THEN 
	EXIT
END
//} #endregion

//{ #region Rohma Kidnapped 1316_1 - DLG-0010
IF ~
	Global("LCA_RohmaKidnapped", "GLOBAL", 1)
~ THEN BEGIN LCA_RohmaKidnapped
	SAY @975 /* ~Father!~ */
	
	IF ~~ THEN 
	EXTERN LCAUDAM LCA_AudamarRohmaKidnapChain
END

//} #endregion 

//{ #region Rohma Kidnaped - Ducal Palace - DLG-0011
IF ~
	Global("LCA_RohmaKidnapped", "GLOBAL", 4)
~ THEN BEGIN LCA_NeedToGetRohma
	SAY @1055 /* ~What did the healers say? Is my father going to make it?~ */
	
	IF ~~ THEN EXTERN LCLIIA LCA_NeedToGetRohmaChain
END
//} #endregion

//{ #region Corwin Proposal - DLG-0012
IF ~
	Global("LCA_CorwinProposalCS", "GLOBAL", 1)
~ THEN BEGIN LCA_CorwinProposal
	SAY @954 /* ~The stars are beautiful tonight... */
	= @72 /* ...and look at the reflection of the moonlight on the river...~*/
	
	IF ~~ THEN
	DO ~
		SetGlobal("LCA_CorwinProposalCS", "GLOBAL", 2)
	~	
	GOTO LCA_CorwinProposal2
END

IF ~~ THEN BEGIN LCA_CorwinProposal2
	SAY @955 /* ~<CHARNAME>?~ */
	
	IF ~~ THEN REPLY @956 /* ~I was just remembering when we first met.~*/
	GOTO LCA_CorwinProposal2A
	
	IF ~~ THEN REPLY @957 /* ~It is beautiful... but its beauty pales in comparison to your own, Schael.~ */
	GOTO LCA_CorwinProposal2B
END

IF ~~ THEN BEGIN LCA_CorwinProposal2A
	SAY @958 /* ~I remember... it's only been what, a little over a year? At the same time... I feel like we've known eachother for much, much longer.~*/
	
	IF ~~ THEN REPLY @959 /* ~I feel the same way. We've been through so much together. Schael, I...~*/
	EXIT
END

IF ~~ THEN BEGIN LCA_CorwinProposal2B
	SAY @962 /* ~You're much too kind.~ */
	
	IF ~~ THEN
	EXIT
END

IF ~
	Global("LCA_CorwinProposalCS", "GLOBAL", 2)
~ THEN BEGIN LCA_CorwinProposal2C
	SAY @963 /* ~(As she turns to you, her face is illuminated by the soft, pale moonlight. She has never looked more striking to you, and you're momentarily taken aback.)~ */
	
	= @960 /* ~What is it, love?~ */
	
	IF ~~ THEN REPLY @961 /* ~(Get down on one knee, and present her with the engagement ring.)~ */
	DO ~
		SetGlobal("LCA_MarriageProposal", "GLOBAL", 1)
	~
	GOTO LCA_CorwinProposal3B
END

IF ~~ THEN BEGIN LCA_CorwinProposal3B
	SAY @964 /* ~W-what are you.. oh.. my..~*/
	
	IF ~~ THEN REPLY @965 /* ~Schael, my love. Will you marry me?~ */
	GOTO LCA_CorwinProposal4
END

IF ~~ THEN LCA_CorwinProposal4
	SAY @969 /* ~Yes! Yes of course I will!~ */
	
	= @970 /* ~(You share a long and passionate embrace.)~ */
	
	IF ~
		Global("LCA_RingEnchantment2", "GLOBAL", 1)
		Global("LCA_RingEnchantment3", "GLOBAL", 1)
		Global("LCA_RingEnchantment5", "GLOBAL", 1)
		Global("LCA_RingEnchanted", "GLOBAL", 2)
	~ THEN REPLY @971 /* ~(Place the ring onto her finger.)~ */
	DO ~
		GiveItemCreate("LCRING07","LCCORWIN",1,0,0) //OK
	~
	GOTO LCA_CorwinProposal5

	IF ~
		Global("LCA_RingEnchantment1", "GLOBAL", 1)
		Global("LCA_RingEnchantment3", "GLOBAL", 1)
		Global("LCA_RingEnchantment5", "GLOBAL", 1)
		Global("LCA_RingEnchanted", "GLOBAL", 2)
	~ THEN REPLY @971 /* ~(Place the ring onto her finger.)~ */
	DO ~
		GiveItemCreate("LCRING11","LCCORWIN",1,0,0) //OK
	~
	GOTO LCA_CorwinProposal5
	
	IF ~
		Global("LCA_RingEnchantment1", "GLOBAL", 1)
		Global("LCA_RingEnchantment2", "GLOBAL", 1)
		Global("LCA_RingEnchantment5", "GLOBAL", 1)
		Global("LCA_RingEnchanted", "GLOBAL", 2)
	~ THEN REPLY @971 /* ~(Place the ring onto her finger.)~ */
	DO ~
		GiveItemCreate("LCRING13","LCCORWIN",1,0,0) //OK
	~
	GOTO LCA_CorwinProposal5

	IF ~
		Global("LCA_RingEnchantment1", "GLOBAL", 1)
		Global("LCA_RingEnchantment2", "GLOBAL", 1)
		Global("LCA_RingEnchantment3", "GLOBAL", 1)
		Global("LCA_RingEnchanted", "GLOBAL", 2)
	~ THEN REPLY @971 /* ~(Place the ring onto her finger.)~ */
	DO ~
		GiveItemCreate("LCRING14","LCCORWIN",1,0,0) //OK
	~
	GOTO LCA_CorwinProposal5

	IF ~
		Global("LCA_RingEnchantment4", "GLOBAL", 1)
		Global("LCA_RingEnchantment3", "GLOBAL", 1)
		Global("LCA_RingEnchantment5", "GLOBAL", 1)
		Global("LCA_RingEnchanted", "GLOBAL", 2)
	~ THEN REPLY @971 /* ~(Place the ring onto her finger.)~ */
	DO ~
		GiveItemCreate("LCRING19","LCCORWIN",1,0,0) //OK
	~
	GOTO LCA_CorwinProposal5

	IF ~
		Global("LCA_RingEnchantment4", "GLOBAL", 1)
		Global("LCA_RingEnchantment2", "GLOBAL", 1)
		Global("LCA_RingEnchantment5", "GLOBAL", 1)
		Global("LCA_RingEnchanted", "GLOBAL", 2)
	~ THEN REPLY @971 /* ~(Place the ring onto her finger.)~ */
	DO ~
		GiveItemCreate("LCRING21","LCCORWIN",1,0,0) //OK
	~
	GOTO LCA_CorwinProposal5
	
	IF ~
		Global("LCA_RingEnchantment4", "GLOBAL", 1)
		Global("LCA_RingEnchantment2", "GLOBAL", 1)
		Global("LCA_RingEnchantment3", "GLOBAL", 1)
		Global("LCA_RingEnchanted", "GLOBAL", 2)
	~ THEN REPLY @971 /* ~(Place the ring onto her finger.)~ */
	DO ~
		GiveItemCreate("LCRING22","LCCORWIN",1,0,0) //OK
	~
	GOTO LCA_CorwinProposal5

	IF ~
		Global("LCA_RingEnchantment4", "GLOBAL", 1)
		Global("LCA_RingEnchantment1", "GLOBAL", 1)
		Global("LCA_RingEnchantment5", "GLOBAL", 1)
		Global("LCA_RingEnchanted", "GLOBAL", 2)
	~ THEN REPLY @971 /* ~(Place the ring onto her finger.)~ */
	DO ~
		GiveItemCreate("LCRING25","LCCORWIN",1,0,0) //OK
	~
	GOTO LCA_CorwinProposal5

	IF ~
		Global("LCA_RingEnchantment4", "GLOBAL", 1)
		Global("LCA_RingEnchantment1", "GLOBAL", 1)
		Global("LCA_RingEnchantment3", "GLOBAL", 1)
		Global("LCA_RingEnchanted", "GLOBAL", 2)
	~ THEN REPLY @971 /* ~(Place the ring onto her finger.)~ */
	DO ~
		GiveItemCreate("LCRING26","LCCORWIN",1,0,0) //OK
	~
	GOTO LCA_CorwinProposal5

	IF ~
		Global("LCA_RingEnchantment4", "GLOBAL", 1)
		Global("LCA_RingEnchantment1", "GLOBAL", 1)
		Global("LCA_RingEnchantment2", "GLOBAL", 1)
		Global("LCA_RingEnchanted", "GLOBAL", 2)
	~ THEN REPLY @971 /* ~(Place the ring onto her finger.)~ */
	DO ~
		GiveItemCreate("LCRING28","LCCORWIN",1,0,0) //OK
	~
	GOTO LCA_CorwinProposal5

	//Non-Imbued

	IF ~
		Global("LCA_RingEnchantment2", "GLOBAL", 1)
		Global("LCA_RingEnchantment3", "GLOBAL", 1)
		Global("LCA_RingEnchantment5", "GLOBAL", 1)
		Global("LCA_RingEnchanted", "GLOBAL", 1)
	~ THEN REPLY @971 /* ~(Place the ring onto her finger.)~ */
	DO ~
		GiveItemCreate("LCRNG07A","LCCORWIN",1,0,0) //OK
	~
	GOTO LCA_CorwinProposal5

	IF ~
		Global("LCA_RingEnchantment1", "GLOBAL", 1)
		Global("LCA_RingEnchantment3", "GLOBAL", 1)
		Global("LCA_RingEnchantment5", "GLOBAL", 1)
		Global("LCA_RingEnchanted", "GLOBAL", 1)
	~ THEN REPLY @971 /* ~(Place the ring onto her finger.)~ */
	DO ~
		GiveItemCreate("LCRNG11A","LCCORWIN",1,0,0) //OK
	~
	GOTO LCA_CorwinProposal5
	
	IF ~
		Global("LCA_RingEnchantment1", "GLOBAL", 1)
		Global("LCA_RingEnchantment2", "GLOBAL", 1)
		Global("LCA_RingEnchantment5", "GLOBAL", 1)
		Global("LCA_RingEnchanted", "GLOBAL", 1)
	~ THEN REPLY @971 /* ~(Place the ring onto her finger.)~ */
	DO ~
		GiveItemCreate("LCRNG13A","LCCORWIN",1,0,0) //OK
	~
	GOTO LCA_CorwinProposal5

	IF ~
		Global("LCA_RingEnchantment1", "GLOBAL", 1)
		Global("LCA_RingEnchantment2", "GLOBAL", 1)
		Global("LCA_RingEnchantment3", "GLOBAL", 1)
		Global("LCA_RingEnchanted", "GLOBAL", 1)
	~ THEN REPLY @971 /* ~(Place the ring onto her finger.)~ */
	DO ~
		GiveItemCreate("LCRNG14A","LCCORWIN",1,0,0) //OK
	~
	GOTO LCA_CorwinProposal5

	IF ~
		Global("LCA_RingEnchantment4", "GLOBAL", 1)
		Global("LCA_RingEnchantment3", "GLOBAL", 1)
		Global("LCA_RingEnchantment5", "GLOBAL", 1)
		Global("LCA_RingEnchanted", "GLOBAL", 1)
	~ THEN REPLY @971 /* ~(Place the ring onto her finger.)~ */
	DO ~
		GiveItemCreate("LCRNG19A","LCCORWIN",1,0,0) //OK
	~
	GOTO LCA_CorwinProposal5

	IF ~
		Global("LCA_RingEnchantment4", "GLOBAL", 1)
		Global("LCA_RingEnchantment2", "GLOBAL", 1)
		Global("LCA_RingEnchantment5", "GLOBAL", 1)
		Global("LCA_RingEnchanted", "GLOBAL", 1)
	~ THEN REPLY @971 /* ~(Place the ring onto her finger.)~ */
	DO ~
		GiveItemCreate("LCRNG21A","LCCORWIN",1,0,0) //OK
	~
	GOTO LCA_CorwinProposal5
	
	IF ~
		Global("LCA_RingEnchantment4", "GLOBAL", 1)
		Global("LCA_RingEnchantment2", "GLOBAL", 1)
		Global("LCA_RingEnchantment3", "GLOBAL", 1)
		Global("LCA_RingEnchanted", "GLOBAL", 1)
	~ THEN REPLY @971 /* ~(Place the ring onto her finger.)~ */
	DO ~
		GiveItemCreate("LCRNG22A","LCCORWIN",1,0,0) //OK
	~
	GOTO LCA_CorwinProposal5

	IF ~
		Global("LCA_RingEnchantment4", "GLOBAL", 1)
		Global("LCA_RingEnchantment1", "GLOBAL", 1)
		Global("LCA_RingEnchantment5", "GLOBAL", 1)
		Global("LCA_RingEnchanted", "GLOBAL", 1)
	~ THEN REPLY @971 /* ~(Place the ring onto her finger.)~ */
	DO ~
		GiveItemCreate("LCRNG25A","LCCORWIN",1,0,0) //OK
	~
	GOTO LCA_CorwinProposal5

	IF ~
		Global("LCA_RingEnchantment4", "GLOBAL", 1)
		Global("LCA_RingEnchantment1", "GLOBAL", 1)
		Global("LCA_RingEnchantment3", "GLOBAL", 1)
		Global("LCA_RingEnchanted", "GLOBAL", 1)
	~ THEN REPLY @971 /* ~(Place the ring onto her finger.)~ */
	DO ~
		GiveItemCreate("LCRNG26A","LCCORWIN",1,0,0) //OK
	~
	GOTO LCA_CorwinProposal5

	IF ~
		Global("LCA_RingEnchantment4", "GLOBAL", 1)
		Global("LCA_RingEnchantment1", "GLOBAL", 1)
		Global("LCA_RingEnchantment2", "GLOBAL", 1)
		Global("LCA_RingEnchanted", "GLOBAL", 1)
	~ THEN REPLY @971 /* ~(Place the ring onto her finger.)~ */
	DO ~
		GiveItemCreate("LCRNG28A","LCCORWIN",1,0,0) //OK
	~
	GOTO LCA_CorwinProposal5
END

IF ~~ THEN LCA_CorwinProposal5
	SAY @1022 /* ~<CHARNAME>... it's beautiful...~*/
	
	IF ~~ THEN REPLY @967 /* ~Do you like it?~ */
	GOTO LCA_CorwinProposal6
END

IF ~~ THEN LCA_CorwinProposal6
	SAY @968 /* ~I love it... it's perfect. And I love you. More than you'll ever know.~ */
	
	IF ~~ THEN REPLY @972 /* ~I love you too, Schael.~ */
	GOTO LCA_CorwinProposal7
END

IF ~~ THEN LCA_CorwinProposal7
	SAY @973 /* ~I know it's late, but come with me back home. I want to tell Rohma the good news!~ */
	
	IF ~~ THEN REPLY @974 /* ~Of course, my dear. Let's go.~ */
	DO ~
		StartCutSceneMode()
		StartCutScene("LCWLKHOM")
	~
	EXIT
END
//} #endregion

//{ #region Dinner with Corwin (Romance) - DLG-0013 - Tested
IF ~
	Global("LCA_CorwinDinner", "GLOBAL", 1)
	Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
~ THEN BEGIN LCA_CorwinDinner_Romance
	SAY @920 /* ~Mm. That was delicious.~ */
	
	IF ~~ THEN REPLY @921 /* ~It was. You ready for another drink?~*/
	DO ~
		SetGlobal("LCA_CorwinDinner", "GLOBAL", 2)
	~
	GOTO LCA_CorwinDinner_Romance2
END

IF ~~ THEN BEGIN LCA_CorwinDinner_Romance2
	SAY @922 /* ~No, thanks. Two drinks is enough. Work in the morning, you know?~*/
	
	IF ~~ THEN REPLY @927 /*  ~Right.~ */
	GOTO LCA_CorwinDinner_Romance3
	
	IF ~
		Global("LCA_ValygarJoinFF", "GLOBAL", 1)
	~ THEN REPLY @937 /* ~Speaking of work, how's Valygar? I heard he took Marshal Nederlok up on his offer to join the Flaming Fist.~ */
	GOTO LCA_CorwinDinner_Romance2A
	
	IF ~
		PartyGoldGT(999)
	~ THEN REPLY @1023 /* ~You have enough money that you don't need to work ever again.~*/
	GOTO LCA_CorwinDinner_Work
END

IF ~~ THEN BEGIN LCA_CorwinDinner_Romance2A
	SAY @938 /* ~He's doing well. He got his first arrest a few days ago. Breaking & entering.~ */
	
	IF ~~ THEN REPLY @939 /* ~I'm glad to hear it.~   */
	GOTO LCA_CorwinDinner_Romance3
END

IF ~~ THEN BEGIN LCA_CorwinDinner_Romance3
	SAY @923 /* ~So, love. Tell me - how's life in the Ducal palace?~ */
	
	IF ~~ THEN REPLY @924 /* ~Good... It'l be better though once the three of you move in.~*/
	GOTO LCA_CorwinDinner_Romance4
	
	IF ~~ THEN REPLY @926 /* ~I'm just about settled in.~*/
	GOTO LCA_CorwinDinner_Romance3A
END

IF ~~ THEN BEGIN LCA_CorwinDinner_Romance3A
	SAY @929 /* ~Just about? It's been three months since you moved in. How long does it take?~ */
	
	IF ~~ THEN REPLY @930 /* ~Well.. it's a bit lonely, to be honest. It won't feel like home until the three of you move in.~ */
	GOTO LCA_CorwinDinner_Romance4
END

IF ~~ THEN BEGIN LCA_CorwinDinner_Romance4
	SAY @925 /* ~I don't doubt it. You've been great with Rohma... She's adjusted well to our being together, I think.~ */
	
	IF ~~ THEN REPLY @931 /* ~Would that I could say the same about your father.~*/
	GOTO LCA_CorwinDinner_Romance5
END

IF ~~ THEN BEGIN LCA_CorwinDinner_Romance5
	SAY @932 /*~Oh, don't mind him. He's that way to everyone, though he's warming up to you.~*/
	
	IF ~~ THEN REPLY @933 /* ~You think so?~*/
	GOTO LCA_CorwinDinner_Romance6
END

IF ~~ THEN BEGIN LCA_CorwinDinner_Romance6
	SAY @934 /* ~I do. He told me that he liked your speech the other day at the Hall of Wonders, about your experience in Amn.~ */
	
	IF ~~ THEN REPLY @935 /* ~Oh, really? I'm glad. ~ */
	GOTO LCA_CorwinDinner_Romance7
END

IF ~~ THEN BEGIN LCA_CorwinDinner_Romance7
	SAY @936 /* ~It's getting late, love. I should head home.~ */
	
	IF ~
		GlobalGT("LCA_RingEnchanted", "GLOBAL", 0)
	~ THEN REPLY @916 /* ~Let's take a walk.~ */
	GOTO LCA_CorwinDinner_Romance8
	
	IF ~
		GlobalLT("LCA_RingEnchanted", "GLOBAL", 1)
		Gender(Player1, MALE)
	~ THEN REPLY @940 /* ~I'll walk you home.~ */
	GOTO LCA_CorwinDinner_WalkHome_Male
	
	IF ~
		GlobalLT("LCA_RingEnchanted", "GLOBAL", 1)
		!Gender(Player1, MALE)
	~ THEN REPLY @940 /* ~I'll walk you home.~ */
	GOTO LCA_CorwinDinner_WalkHome_Female
END

IF ~~ THEN BEGIN LCA_CorwinDinner_Romance8
	SAY @917 /* ~At this hour? What do you have in mind?~*/
	
	IF ~~ THEN REPLY @918 /* ~You'll see. Afterwards, I'll walk you home. Let's go.~*/
	DO ~
		StartCutSceneMode()
		StartCutScene("LCPROPOS")
	~
	EXIT
END
//} #endregion

//{ #region Dinner with Corwin (Non-Romance) - DLG-0014 - Tested
IF ~
	Global("LCA_CorwinDinner", "GLOBAL", 1)
	!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
~ THEN BEGIN LCA_CorwinDinner_NonRomance
	SAY @920 /*~Mm. That was delicious.~*/
	
	IF ~~ THEN REPLY @921 /**/
	DO ~
		SetGlobal("LCA_CorwinDinner", "GLOBAL", 2)
	~
	GOTO LCA_CorwinDinner_NonRomance2
END

IF ~~ THEN BEGIN LCA_CorwinDinner_NonRomance2
	SAY @922 /*No, thanks. Two drinks is enough. Work in the morning, you know?~*/
	
	IF ~
		PartyGoldGT(999)
	~ THEN REPLY @1023 /* ~You have enough money that you don't need to work ever again.~*/
	GOTO LCA_CorwinDinner_Work
	
	IF ~~ THEN REPLY @927 /*~Right.~*/
	GOTO LCA_CorwinDinner_NonRomance3
	
	IF ~
		Global("LCA_ValygarJoinFF", "GLOBAL", 1)
	~ THEN REPLY @937 /*~Speaking of work, how's Valygar? I heard he took Marshal Nederlok up on his offer to join the Flaming Fist.~*/
	GOTO LCA_CorwinDinner_NonRomance2A
END

IF ~~ THEN BEGIN LCA_CorwinDinner_NonRomance2A
	SAY @938 /*~He's doing well. He got his first arrest a few days ago. Breaking & entering.~*/
	
	IF ~~ THEN REPLY @939 /*~I'm glad to hear it.~  */
	GOTO LCA_CorwinDinner_NonRomance3
END

IF ~~ THEN BEGIN LCA_CorwinDinner_NonRomance3
	SAY @943 /*~So, my friend. Tell me - how's life in the Ducal palace?~*/
	
	IF ~~ THEN REPLY @945 /* ~I'm just about settled in... it's just a big difference than what I'm used to.~ */
	GOTO LCA_CorwinDinner_NonRomance6
	
	IF ~
		Global("LCA_BackToBG_Anomen", "GLOBAL", 1)
		Global("AnomenRomanceActive", "GLOBAL",2)
	~ THEN 
	GOTO LCA_CorwinDinner_NonRomance_Anomen
	
	IF ~
		Global("LCA_BackToBG_Jaheira", "GLOBAL", 1)
		Global("JaheiraRomanceActive", "GLOBAL",2)
	~ THEN 
	GOTO LCA_CorwinDinner_NonRomance_Jaheira

	IF ~
		Global("LCA_BackToBG_Aerie", "GLOBAL", 1)
		Global("AerieRomanceActive", "GLOBAL",2)
	~ THEN 
	GOTO LCA_CorwinDinner_NonRomance_Aerie
	
	IF ~
		Global("LCA_BackToBG_Neera", "GLOBAL", 1)
		Global("NeeraRomanceActive", "GLOBAL",2)
	~ THEN 
	GOTO LCA_CorwinDinner_NonRomance_Neera
END

IF ~~ THEN BEGIN LCA_CorwinDinner_NonRomance_Anomen
	SAY @946 /* ~Are you and Anomen settled in?~*/
	
	IF ~~ THEN REPLY @944 /*~Just about. It's a big adjustment from what we're used to.~*/
	GOTO LCA_CorwinDinner_NonRomance6
END

IF ~~ THEN BEGIN LCA_CorwinDinner_NonRomance_Jaheira
	SAY @948 /* ~Are you and Jaheira settled in?~*/
	
	IF ~~ THEN REPLY @944 /*~Just about. It's a big adjustment from what we're used to.~*/
	GOTO LCA_CorwinDinner_NonRomance6
END

IF ~~ THEN BEGIN LCA_CorwinDinner_NonRomance_Aerie
	SAY @947 /* ~Are you and Aerie settled in?~*/
	
	IF ~~ THEN REPLY @944 /*~Just about. It's a big adjustment from what we're used to.~*/
	GOTO LCA_CorwinDinner_NonRomance6
END

IF ~~ THEN BEGIN LCA_CorwinDinner_NonRomance_Neera
	SAY @949 /* ~Are you and Neera settled in?~*/
	
	IF ~~ THEN REPLY @944 /*~Just about. It's a big adjustment from what we're used to.~*/
	GOTO LCA_CorwinDinner_NonRomance6
END

IF ~~ THEN BEGIN LCA_CorwinDinner_NonRomance6
	SAY @950 /* ~I don't doubt it.~ */
	
	IF ~~ THEN REPLY @952 /* ~And you, Schael? How are you adjusting to being back home again? I bet Rohma's happy that her mom is home again.~ */
	GOTO LCA_CorwinDinner_NonRomance7
END

IF ~~ THEN BEGIN LCA_CorwinDinner_NonRomance7
	SAY @953 /* ~She is. It's wonderful. Speaking of... look at the time. I should get going.~  */
	
	IF ~
		Gender(Player1, MALE)
	~ THEN REPLY @940 /* ~I'll walk you home.~*/
	GOTO LCA_CorwinDinner_WalkHome_Male
	
	IF ~
		!Gender(Player1, MALE)
	~ THEN REPLY @940 /* ~I'll walk you home.~*/
	GOTO LCA_CorwinDinner_WalkHome_Female
END

IF ~~ THEN BEGIN LCA_CorwinDinner_WalkHome_Male
	SAY @941 /* ~(She smiles.) What a gentleman. Let's go.~ */
	
	IF ~~ THEN
	DO ~
		StartCutSceneMode()
		StartCutScene("LCWLKHOM")
	~
	EXIT
END

IF ~~ THEN BEGIN LCA_CorwinDinner_WalkHome_Female
	SAY @942 /* ~(She smiles.) Let's go.~ */
	
	IF ~~ THEN
	DO ~
		StartCutSceneMode()
		StartCutScene("LCWLKHOM")
	~
	EXIT
END
//} #endregion

//{ #region Dinner with Corwin (Common) DLG-0013 / 14 - Tested
IF ~~ THEN BEGIN LCA_CorwinDinner_Work
	SAY @1024 /* ~That's your money. Consider it compensation for everything you've had to endure.~*/
	
	IF ~
		Global("bd_player_exiled","global",0)
	~ THEN REPLY @1323 /*~It's as much yours, Schael, as it is mine. You could've killed me during my escape. Instead, you showed mercy.~ */
	GOTO LCA_CorwinDinner_Work2
	
	IF ~
		Global("bd_player_exiled","global",1)
	~ THEN REPLY @1025 /* ~It's as much yours, Schael, as it is mine... I wouldn't be here were it not for your efforts in securing my release.~ */
	GOTO LCA_CorwinDinner_Work2
END

IF ~~ THEN BEGIN LCA_CorwinDinner_Work2
	SAY @1026 /* ~Even if it were my money, I'd probably keep working, at least for a while longer. Rohma needs to understand the value of hard work.~ */
	
	= @1027 /* ~Besides, I haven't given up on making colonel one day.~ */
	
	IF ~~ THEN REPLY @1028 /* ~Nor should you. Colonel Corwin... I think I like the sound of that.~*/
	GOTO LCA_CorwinDinner_WorkEnd
	
	IF ~~ THEN REPLY @1035 /* ~Colonel? Seems a bit bureaucratic to me.~*/
	GOTO LCA_CorwinDinner_Work3B
END

IF ~~ THEN BEGIN LCA_CorwinDinner_Work3B
	SAY @1036 /* ~You think so?~ */
	
	IF ~~ THEN REPLY @1037 /* ~You've always struck me as more of a 'hands-on' type of person.~ */
	GOTO LCA_CorwinDinner_Work4B
	
	IF ~~ THEN REPLY @1040 /* ~Sitting in an office all day? You'll get bored.~ */
	GOTO LCA_CorwinDinner_Work4B
END

IF ~~ THEN BEGIN LCA_CorwinDinner_Work4B
	SAY @1038 /* ~Maybe... but being so close to the action for so long has a tendency to shorten one's lifespan...~ */
	
	IF ~~ THEN REPLY @1039 /* ~I've think you've shown that you can handle whatever comes your way, Schael.~*/
	GOTO LCA_CorwinDinner_WorkEnd
END

IF ~~ THEN BEGIN LCA_CorwinDinner_WorkEnd
	SAY @1034 /* ~(She smiles.)~ */
	
	IF ~
		!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN GOTO LCA_CorwinDinner_NonRomance3
	
	IF ~
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN GOTO LCA_CorwinDinner_Romance3
	
	IF ~
		Global("LCA_ValygarJoinFF", "GLOBAL", 1)
	~ THEN REPLY @937 /* ~Speaking of work, how's Valygar? I heard he took Marshal Nederlok up on his offer to join the Flaming Fist.~ */
	GOTO LCA_CorwinDinner_Romance2A
END
//} #endregion

//{ #region Corwin / Tianna DLG-0015 
IF ~
	Global("LCA_ReturnToBG", "GLOBAL", 1)
	Global("LCA_AskCorwinAboutTianna", "GLOBAL", 1)
~ THEN BEGIN LCA_AskCorwinAboutTianna
	SAY @861 /* ~(You hear her muttering under her breath.)~ */
	
	IF ~~ THEN 
	DO ~
		SetGlobal("LCA_AskCorwinAboutTianna", "GLOBAL", 2)
	~
	EXIT
	
	IF ~
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @838 /* ~My love... that name, Tianna - haven't you mentioned her to me before?~ */
	DO ~
		SetGlobal("LCA_AskCorwinAboutTianna", "GLOBAL", 2)
	~
	GOTO LCA_CorwinTianna2
END

IF ~~ THEN BEGIN LCA_CorwinTianna2
	SAY @839 /* ~Yes... Tianna and I were seeing eachother for a time. A very short time.~ */
	
	IF ~~ THEN REPLY @840 /* ~I see... What happened? I mean, why did you two break up?~ */
	GOTO LCA_CorwinTianna3
END

IF ~~ THEN BEGIN LCA_CorwinTianna3
	SAY @841 /* ~Tianna... is a user. She takes advantage of people, and their trust. The last straw was when she stole money from my family.~*/
	
	= @842 /* ~It wasn't much. If she had just asked me, I'd have given it to her. She thought she got away with it, but Rohma saw her.~ */
	= @843 /* ~When she told me what Tianna did, Tianna called Rohma a liar. Like a five year old could even think to lie about something like that.~ */
	
	IF ~~ THEN REPLY @844 /* ~You made the right decision.~ */
	GOTO LCA_CorwinTianna4
	
	IF ~~ THEN REPLY @846 /* ~That's not someone I'd want around my child.~ */
	GOTO LCA_CorwinTianna4
END

IF ~~ THEN BEGIN LCA_CorwinTianna4
	SAY @845 /* ~I just wish I'd seen what she was earlier. ~ */

	IF ~~ THEN REPLY @847 /* ~It worked out in the end. You found someone better.~ */
	DO ~
		IncrementGlobal("LCA_CorwinOpinionOfPlayer", "GLOBAL", 1)
	~
	GOTO LCA_CorwinTianna5
END

IF ~~ THEN BEGIN LCA_CorwinTianna5
	SAY @850 /* ~Much, much better. (She smiles.)~ */
	= @851 /* ~Come here.~ */
	= @848 /* ~(You share a warm embrace and kiss).~ */
	= @849 /* ~Let's go, love.~ */
	
	IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN LCA_CorwinWillHelpTianna
	SAY @862 /* ~Tianna... (sigh)~ */
	=@863 /* ~Fine - we'll help you. <CHARNAME> and I will talk to Jasper about forgiving your debt.~ */
	
	IF ~~ THEN EXTERN LCTIANNA LCA_CorwinHelpTianna
END

IF ~~ THEN BEGIN LCA_CorwinLobarTiannaEnd
	SAY @860 /* ~No, that won't be necessary.~ */

	IF ~~ THEN EXIT
	
	IF ~
		InMyArea(Player1)
	~ THEN
	DO ~
		SetGlobal("LCA_AskCorwinAboutTianna", "GLOBAL", 1)
	~
	EXIT
END

IF ~~ THEN BEGIN LCA_NotYetTianna
	SAY @864 /* ~We're working on it.~ */
	
	IF ~~ THEN EXTERN LCTIANNA LCA_HelpEnd
END
//} #endregion

//{ #region Corwin Slaver Girl Rescue - DLG-0016
IF ~
	Global("LCA_BGSlaverPlot", "GLOBAL", 1)
	Global("LCA_CorwinSlaverPlot", "GLOBAL", 1)
	AreaCheck("AR0405")
	!InMyArea("girl2")
~ THEN BEGIN LCA_CorwinBGSlaverDiscuss
	SAY @753 /* ~I hope those kids can make it to safety. */
	
	IF ~~ THEN REPLY @755 /* ~So do I.~ */
	GOTO LCA_CorwinBGSlaverDiscuss2
	
	IF ~~ THEN REPLY @754 /* ~They will, don't worry.~ */
	GOTO LCA_CorwinBGSlaverDiscuss2
END

IF ~~ THEN BEGIN LCA_CorwinBGSlaverDiscuss2
	SAY @756 /* ~Everytime the Fist thinks that the slaver problem is under control, we find out how wrong we are.~ */
	
	= @757 /* ~I'll launch an investigation as soon as I return to the city... someone needs to make those slaver bastards pay!~ */
	
	IF ~~ THEN 
	DO ~
		SetGlobal("LCA_CorwinSlaverPlot", "GLOBAL", 2)
	~
	EXIT	
END
//} #endregion

//{ #region Corwin Post Neoma Meeting - DLG-0017
IF ~
	Global("LCA_LCCS15Cutscene", "GLOBAL", 6)
	//play romance song
~ THEN BEGIN LCA_CorwinNeoma
	SAY @726 /* ~Oh, Neoma...~ */
	
	IF ~
		Global("LCA_CorwinGaveEarrings", "GLOBAL", 1)
	~ THEN REPLY @1337 /* ~Her name sounds familiar... oh, right — the earrings for Voghiln!~ */
	DO ~
		SetGlobal("LCA_LCCS15Cutscene", "GLOBAL", 7)
		IncrementGlobal("LCA_CorwinOpinionOfPlayer", "GLOBAL", 1)
	~
	GOTO LCA_CorwinNeoma2
	
	IF ~~ THEN REPLY @728 /* ~You two seem very... ah, friendly.~ */
	DO ~
		SetGlobal("LCA_LCCS15Cutscene", "GLOBAL", 7)
	~
	GOTO LCA_CorwinNeoma4
	
END

IF ~~ THEN BEGIN LCA_CorwinNeoma2
	SAY @1338 /* ~Hah, I'm surprised you remember.~ */
	
	IF ~~ THEN REPLY @1339 /* ~As if I didn't hang on your every word, love.~ */
	GOTO LCA_CorwinNeoma3
	
	IF ~~ THEN REPLY @1340 /* ~Beautiful earrings for an even more beautiful woman. I remember.~ */
	GOTO LCA_CorwinNeoma2A
END

IF ~~ THEN BEGIN LCA_CorwinNeoma2A
	SAY @1347 /* ~(She smiles)~ */
	= @1348 /* ~Sweet of you to say.~ */
	
	IF ~~ THEN 
	GOTO LCA_CorwinNeoma3
END

IF ~~ THEN BEGIN LCA_CorwinNeoma3
	SAY @1341 /* ~She was a little upset when I told her I gave them away, but when I explained why, she understood.~ */
	
	IF ~~ THEN REPLY @728 /* ~You two seem very... ah, friendly.~ */
	GOTO LCA_CorwinNeoma4
	
	IF ~~ THEN REPLY @737 /* ~I'm glad you were able to see her again, love. Let's go.~ */
	EXIT
END

IF ~~ THEN LCA_CorwinNeoma4
	SAY @739 /* ~Neoma and I are friends. Sometimes a little more than that, if you know what I mean. But you're the one I love, <CHARNAME>, not her.~ */
	
	IF ~~ THEN REPLY @745 /* ~I... see.~ */
	GOTO LCA_CorwinNeoma5
	
	IF ~~ THEN REPLY @1342 /* ~Well... as long as your flings with her are a thing of the past...~ */
	GOTO LCA_CorwinNeoma6
END

IF ~~ THEN LCA_CorwinNeoma5
	SAY @740 /* ~Is my... friendship with Neoma going to be a problem? If so, I'll stop seeing her. I don't want anything to jeopardize the love that you and I have for oneanother.~*/
	
	IF ~~ THEN REPLY @741 /* ~I don't know, Schael. I've never been in any kind of long term relationship, before meeting you. It's hard for me to know what's healthy for a relationship and what isn't.~ */
	GOTO LCA_CorwinNeoma5A
	
	IF ~~ THEN REPLY @742 /* ~It's not a problem, so long as you don't develop any serious feelings for her.~ */
	GOTO LCA_CorwinNeoma5B
	
	IF ~~ THEN REPLY @743 /* ~Problem? No - in fact, I'm... ah... intrigued by some of the ... possibilities.~ */
	GOTO LCA_CorwinNeoma5C
END

IF ~~ THEN LCA_CorwinNeoma5A
	SAY @744 /* ~I understand. Thank you for being honest about your feelings, love. I'll tell Jessa that from now on, we are to be friends and nothing more. Let's go.~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("LCA_CorwinNeomaRelationship", "GLOBAL", 1)
	~
	EXIT
END

IF ~~ THEN LCA_CorwinNeoma5B
	SAY @746 /* ~And I won't. Thank you for being honest about your feelings, love. Let's go.~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("LCA_CorwinNeomaRelationship", "GLOBAL", 1)
	~
	EXIT
END

IF ~~ THEN LCA_CorwinNeoma5C
	SAY @747 /* ~(A mischievous smile graces her face.)~*/
	= @748 /* ~Somehow, I knew you would be. I'll see if she's interested. Let's go.~ */
	IF ~~ THEN
	DO ~
		SetGlobal("LCA_CorwinNeomaRelationship", "GLOBAL", 2)
	~
	EXIT
END

IF ~~ THEN LCA_CorwinNeoma6
	SAY @1343 /* ~They are. Come here.~ */
	= @1344 /* ~(You kiss and embrace).~ */
	= @1346 /* ~Let's not let any past relationships jeopardize our love for one another.~*/
	
	IF ~~ THEN REPLY @1345 /* ~Right. Thank you, Schael.~*/
	DO ~
		SetGlobal("LCA_CorwinNeomaRelationship", "GLOBAL", 1)
	~
	EXIT
END
//} #endregion

//{ #region Corwin Family Timer - DLG-0018
IF ~
	Global("LCA_CorwinFamilyTimerDialog", "GLOBAL", 1)
	GlobalTimerExpired("LCA_CorwinFamilyTimer", "GLOBAL")
	GlobalLT("LCA_CorwinMetFamily", "GLOBAL", 1)
	!Global("LCA_CorwinComplainFamily", "GLOBAL", 1)
~ THEN BEGIN LCA_CorwinFamilyTimer
	SAY @680 /* ~<CHARNAME> - I really need to see my family. My home is in the southeast part of the city. Let's go.~*/
	
	IF ~~ THEN
	DO ~
		SetGlobalTimer("LCA_CorwinFamilyTimer", "GLOBAL", ONE_HOUR)
		SetGlobal("LCA_CorwinComplainFamily", "GLOBAL", 1)
		SetGlobal("LCA_CorwinFamilyTimerDialog", "GLOBAL", 0)
	~
	EXIT
END
//} #endregion

//{ #region Corwin Family Timer Expired (Non-Romance) - DLG-0019
IF ~
	Global("LCA_CorwinFamilyTimerDialog", "GLOBAL", 1)
	GlobalTimerExpired("LCA_CorwinFamilyTimer", "GLOBAL")
	!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
~ THEN BEGIN LCA_CorwinFamilyTimer_ExpiredNR
	SAY @903 /* ~<CHARNAME>, I'm going home to spend the rest of the day with my family. I'll see you tomorrow morning at the debriefing.~*/
	
	IF ~~ THEN
	DO ~
		SetGlobal("LCA_CorwinFamilyTimerDialog", "GLOBAL", 0)
		SetGlobal("LCA_CorwinWithFamily", "GLOBAL", 1)
		SetGlobal("LCA_CorwinMetFamily", "GLOBAL", 2)
		SetLeavePartyDialogFile()
		ChangeAIScript("",DEFAULT)
		LeaveParty()
		EscapeAreaMove("BG1316",400,250,S) 
	~
	EXIT
END
//} #endregion

//{ #region Corwin Family Timer Expired (Romance) - DLG-0020
IF ~
	Global("LCA_CorwinFamilyTimerDialog", "GLOBAL", 1)
	GlobalTimerExpired("LCA_CorwinFamilyTimer", "GLOBAL")
	Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
~ THEN BEGIN LCA_CorwinFamilyTimer_ExpiredRomance
	SAY @904 /* ~My love, I'm going home to spend the rest of the day with my family. Have you decided where you're staying tonight?~*/
	
	IF ~~ THEN REPLY @786 /* ~I'll stay at the Three Old Kegs tonight.~ */
	DO ~
		SetGlobal("LCA_StayingAtThreeOldKegs", "GLOBAL", 1)
	~
	GOTO LCA_SleepAtHotel
	
	IF ~~ THEN REPLY @789 /* ~I'll stay at the Blade and Stars tonight.~*/
	DO ~
		SetGlobal("LCA_StayingAtBladeAndStars", "GLOBAL", 1)
	~
	GOTO LCA_SleepAtHotel
	
	IF ~
		Global("LCA_SavedElfsong", "GLOBAL", 1)
	~ THEN REPLY @790 /* ~I'll stay at the Elfsong Tavern tonight.~*/
	DO ~
		SetGlobal("LCA_StayingAtElfsongTavern", "GLOBAL", 1)
	~
	GOTO LCA_SleepAtHotel
	
	IF ~~ THEN REPLY @791 /* ~I'll stay at the Blushing Mermaid tonight.~*/
	DO ~
		SetGlobal("LCA_StayingAtBlushingMermaid", "GLOBAL", 1)
	~
	GOTO LCA_SleepAtHotel
	
	IF ~~ THEN REPLY @905 /* ~I was hoping to spend the night at your place.~*/
	GOTO LCA_WantToSpendWithSchael
	
END
IF ~~ THEN BEGIN LCA_WantToSpendWithSchael
	SAY @785 /* ~And I want you to, but first, Rohma's going to need some time to adjust to us being together.~*/
	
	IF ~~ THEN REPLY @793 /* ~I understand.~ */
	GOTO LCA_DecideWhereSleeping
END
IF ~~ THEN BEGIN LCA_DecideWhereSleeping
	SAY @792 /* ~So, what'll it be?~ */
	
	IF ~~ THEN REPLY @786 /* ~I'll stay at the Three Old Kegs tonight.~ */
	DO ~
		SetGlobal("LCA_StayingAtThreeOldKegs", "GLOBAL", 1)
	~
	GOTO LCA_SleepAtHotel
	
	IF ~~ THEN REPLY @789 /* ~I'll stay at the Blade and Stars tonight.~*/
	DO ~
		SetGlobal("LCA_StayingAtBladeAndStars", "GLOBAL", 1)
	~
	GOTO LCA_SleepAtHotel
	
	IF ~
		Global("LCA_SavedElfsong", "GLOBAL", 1)
	~ THEN REPLY @790 /* ~I'll stay at the Elfsong Tavern tonight.~*/
	DO ~
		SetGlobal("LCA_StayingAtElfsongTavern", "GLOBAL", 1)
	~
	GOTO LCA_SleepAtHotel
	
	IF ~~ THEN REPLY @791 /* ~I'll stay at the Blushing Mermaid tonight.~*/
	DO ~
		SetGlobal("LCA_StayingAtBlushingMermaid", "GLOBAL", 1)
	~
	GOTO LCA_SleepAtHotel
END

IF ~~ THEN BEGIN LCA_SleepAtHotel
	SAY @780 /*  ~Good. Come here. ~*/
	
	= @781 /* ~(You share a warm embrace and kiss.)~ */
	= @799 /* ~(She whispers in your ear.) I'll come see you in your room tonight, lover.~ */
	
	IF ~~ THEN REPLY @907 /* ~You'll do more than just see me, I hope.~ */
	DO ~
		SetGlobal("LCA_CorwinFamilyTimerDialog", "GLOBAL", 0)
	~
	GOTO LCA_SexTonight
END

IF ~~ THEN BEGIN LCA_SexTonight
	SAY @908 /* ~(She laughs). Much more. See you later.~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("LCA_CorwinWithFamily", "GLOBAL", 1)
		SetGlobal("LCA_CorwinMetFamily", "GLOBAL", 2)
		SetLeavePartyDialogFile()
		ChangeAIScript("",DEFAULT)
		LeaveParty()
		EscapeAreaMove("BG1316",400,250,S) 
	~
	EXIT
	
	IF ~
		Global("LCA_ExplicitModActive", "GLOBAL", 1)
	~ THEN 
	DO ~
		SetGlobal("LCA_CorwinWithFamily", "GLOBAL", 1)
		SetGlobal("LCA_CorwinMetFamily", "GLOBAL", 2)
		SetGlobal("LCA_Explicit_0001", "GLOBAL", 1)
		StartDialog("LCCORWIJ", Player1)
	~
	EXIT
END

//} #endregion

//{ #region Go Back to BG (Romance) - DLG-0021
IF ~
	Global("LCA_BackToBG", "GLOBAL", 2)
	Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
~ THEN BEGIN LCA_BackToBG_RTL_Romance
	SAY @630 /* ~My love - are you ready to head back to Baldur's Gate?~ */
	
	IF ~~ THEN REPLY @632 /* ~Let's go.~ */
	GOTO LCA_BackToBG_RTL_Leave
	
	IF ~~ THEN REPLY @633 /* ~Not yet.~*/
	GOTO LCA_BackToBG_RTL_NotYet
END
//} #endregion

//{ #region Go Back to BG (Non-Romance) - DLG-0022

IF ~
	Global("LCA_BackToBG", "GLOBAL", 2)
	!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
~ THEN BEGIN LCA_BackToBG_RTL_Romance
	SAY @631 /* ~Are you ready to head back to Baldur's Gate?~ */
	
	IF ~~ THEN REPLY @632 /* ~Let's go.~ */
	GOTO LCA_BackToBG_RTL_Leave
	
	IF ~~ THEN REPLY @633 /* ~Not yet.~*/
	GOTO LCA_BackToBG_RTL_NotYet
END


//} #endregion

//{ #region Corwin End BG2 (Romance) - DLG-0023
IF ~
	Global("LCA_BackToBG", "GLOBAL", 1)
	Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
~ THEN BEGIN LCA_BackToBG_Romance
	SAY @619 /* ~That was some celebration.~ */
	
	IF ~~ THEN REPLY @620 /* ~It definitely was.~ */
	DO ~
		SetGlobal("LCA_BackToBG", "GLOBAL", 2)
	~
	GOTO LCA_BackToBG2
	
	IF ~~ THEN REPLY @621 /* ~A better liquor selection would have been nice...~*/
	DO ~
		SetGlobal("LCA_BackToBG", "GLOBAL", 2)
	~
	GOTO LCA_BackToBG2
END

IF ~~ THEN BEGIN LCA_BackToBG2
	SAY @622 /* ~I think it'll pale in comparison to the one the city will throw for us upon our return. (She smiles.)~ */

	IF ~~ THEN REPLY @623 /* ~Baldur's Gate? Are they expecting us?~ */
	GOTO LCA_BackToBG3
END

IF ~~ THEN BEGIN LCA_BackToBG3
	SAY @624 /* ~They are. While you were recovering, I asked the elves to send word to the Council that Irenicus was dead, and that we would be returning to the city soon. Gods, I can't wait to see Rohma and my father.~ */
	
	IF ~
		NumInPartyGT(2)
	~
	THEN GOTO LCA_BackToBG_Chain
	
	IF ~
		NumInPartyLT(3)
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN GOTO LCA_BackToBG4_Romance
	
	IF ~
		NumInPartyLT(3)
		!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN GOTO LCA_BackToBG4
END

IF ~~ THEN BEGIN LCA_BackToBG4
	SAY @671 /* ~The elves were also gracious enough to provide us a caravan for the trip back. Are you ready to leave?~ */
	
	IF ~~ THEN REPLY @632 /* ~Let's go.~*/
	GOTO LCA_BackToBG_RTL_Leave
	
	
	IF ~~ THEN REPLY @633 /* ~Not yet.~*/
	GOTO LCA_BackToBG_RTL_NotYet
END

IF ~~ THEN BEGIN LCA_BackToBG4_Romance
	SAY @670 /* ~The elves were also gracious enough to provide us a caravan for the trip back. Are you ready to leave, love?~ */
	
	IF ~~ THEN REPLY @632 /* ~Let's go.~*/
	GOTO LCA_BackToBG_RTL_Leave
	
	
	IF ~~ THEN REPLY @633 /* ~Not yet.~*/
	GOTO LCA_BackToBG_RTL_NotYet
END
//} #endregion

//{ #region Go Back to BG (Common) - DLG-0021/22/23
IF ~~ THEN BEGIN LCA_BackToBG_RTL_Leave
	SAY @635 /* ~Rohma... I'll be home soon...~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("LCA_BackToBG", "GLOBAL", 3)
		SetGlobal("LCA_PartyRemovalProcessing", "GLOBAL", 1)
	~
	EXIT
END

IF ~~ THEN BEGIN LCA_BackToBG_RTL_NotYet
	SAY @634 /* ~Take your time. Come and see me when you're ready.~ */
	IF ~~ THEN
	EXIT
END
//} #endregion

//{ #region Corwin Post Drizzt - DLG-0024
IF ~
	GlobalTimerExpired("LCA_CorwinVouchedDrizzTimer", "GLOBAL")
	Global("LCA_CorwinVouchedDrizz", "GLOBAL", 1)
~ THEN BEGIN LCA_CorwinPlayerDrizz
	SAY @488 /* ~That adventurer we encountered, Drizzt, was adamant that you had assaulted him. Was he speaking the truth?~ */
	
	IF ~~ THEN REPLY @489 /* ~I'd rather not talk about it.~ */
	GOTO LCA_CorwinPlayerDrizz1 //OK
	
	IF ~
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @490 /* ~No, you know me, I would never do such a thing.~ */
	GOTO LCA_CorwinPlayerDrizz2A //OK
	
	IF ~
		!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @490 /* ~No, you know me, I would never do such a thing.~ */
	GOTO LCA_CorwinPlayerDrizz2B //OK
	
	IF ~
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @491 /* ~Yes, I did. I'm not proud of it, but I promise you that I'm not the same person that I was.~ */
	GOTO LCA_CorwinPlayerDrizz3A //OK
	
	IF ~
		!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @491 /* ~Yes, I did. I'm not proud of it, but I promise you that I'm not the same person that I was.~ */
	GOTO LCA_CorwinPlayerDrizz3B //OK 
	
	IF ~
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @497 /* ~Yes, I did. I saw he was a drow, and everything I'd heard about his kind convinced me that he'd harm me after killing the gnolls.~*/
	GOTO LCA_CorwinPlayerDrizz4A //OK
	
	IF ~
		!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @497 /* ~Yes, I did. I saw he was a drow, and everything I'd heard about his kind convinced me that he'd harm me after killing the gnolls.~*/
	GOTO LCA_CorwinPlayerDrizz4B //OK 
		
	IF ~~ THEN REPLY @492 /* ~Yes, I did, and I'd do it again. I was struggling to survive and needed his equipment.~ */
	GOTO LCA_CorwinPlayerDrizz1 //OK
END

IF ~~ THEN BEGIN LCA_CorwinPlayerDrizz1
	SAY @493 /* ~I see. Let's go.~ */
	IF ~~ THEN
	DO ~
		SetGlobal("LCA_CorwinVouchedDrizz", "GLOBAL", 2)
		IncrementGlobal("LCA_CorwinOpinionOfPlayer", "GLOBAL", -1)
	~
	EXIT
END

IF ~~ THEN BEGIN LCA_CorwinPlayerDrizz2A
	SAY @496 /* ~Sometimes I feel like I don't know you at all. I'd rather you'd have done it and been honest with me than to lie about it. Let's go.~ */
	IF ~~ THEN
	DO ~
		SetGlobal("LCA_CorwinVouchedDrizz", "GLOBAL", 2)
		IncrementGlobal("LCA_CorwinOpinionOfPlayer", "GLOBAL", -4)
	~
	EXIT
END

IF ~~ THEN BEGIN LCA_CorwinPlayerDrizz2B
	SAY @496 /* ~Sometimes I feel like I don't know you at all. I'd rather you'd have done it and been honest with me than to lie about it. Let's go.~ */
	IF ~~ THEN
	DO ~
		SetGlobal("LCA_CorwinVouchedDrizz", "GLOBAL", 2)
		IncrementGlobal("LCA_CorwinOpinionOfPlayer", "GLOBAL", -2)
	~
	EXIT
END

IF ~~ THEN BEGIN LCA_CorwinPlayerDrizz3A
	SAY @495 /* ~I appreciate your honesty. We've all made bad decisions - it's good though that you've learned from yours. Let's go, love.~ */
	IF ~~ THEN
	DO ~
		SetGlobal("LCA_CorwinVouchedDrizz", "GLOBAL", 2)
		IncrementGlobal("LCA_CorwinOpinionOfPlayer", "GLOBAL", 2)
	~
	EXIT
END

IF ~~ THEN BEGIN LCA_CorwinPlayerDrizz3B
	SAY @494 /* ~I appreciate your honesty. We've all made bad decisions - it's good though that you've learned from yours. Let's go.~ */
	IF ~~ THEN
	DO ~
		SetGlobal("LCA_CorwinVouchedDrizz", "GLOBAL", 2)
		IncrementGlobal("LCA_CorwinOpinionOfPlayer", "GLOBAL", 2)
	~
	EXIT
END

IF ~~ THEN BEGIN LCA_CorwinPlayerDrizz4A
	SAY @499 /* ~I appreciate your honesty. Let's go, love.~*/
	IF ~~ THEN
	DO ~
		SetGlobal("LCA_CorwinVouchedDrizz", "GLOBAL", 2)
		IncrementGlobal("LCA_CorwinOpinionOfPlayer", "GLOBAL", 1)
	~
	EXIT
END

IF ~~ THEN BEGIN LCA_CorwinPlayerDrizz4B
	SAY @498 /* ~I appreciate your honesty. Let's go.~*/
	IF ~~ THEN
	DO ~
		SetGlobal("LCA_CorwinVouchedDrizz", "GLOBAL", 2)
		IncrementGlobal("LCA_CorwinOpinionOfPlayer", "GLOBAL", 1)
	~
	EXIT
END
//} #endregion

//{ #region Corwin Dorn Post Conflict - DLG-0025

IF ~
	Global("OHD_corwinconflict","GLOBAL",3)
~ THEN BEGIN LCA_ChooseDorn
	SAY @442 /* ~To think I even considered the possibility of you and I being together. Madness. Be with Dorn, then. I want nothing more to do with you.~ [BD54533] */
	IF ~~ THEN
	DO ~
		SetGlobal("OHD_corwinconflict","GLOBAL",4)
		SetGlobal("LCA_CorwinRomanceActive", "GLOBAL", 3)
		SetPlayerSound(Myself,268282,SELECT_ACTION6)
	~
	EXIT
END
//} #endregion

//{ #region Corwin Dorn Post Sex - DLG-0026
IF ~
	Global("LCA_ComplainDornSex", "GLOBAL", 1)
~ THEN BEGIN LCA_CorwinSexDorn
	SAY @432 /* ~To think I even considered the possibility of you and I being together. Madness. Be with Dorn, then. I want nothing more to do with you.~ [BD54533] */
	IF ~~ THEN
	DO ~
		SetGlobal("LCA_CorwinRomanceActive", "GLOBAL", 3)
		SetGlobal("OHD_sexreactions","GLOBAL",2)
		SetGlobal("LCA_ComplainDornSex", "GLOBAL", 2)
		SetPlayerSound(Myself,268282,SELECT_ACTION6)
	~
	EXIT
END
//} #endregion

//{ #region Corwin Player Soul Talk - DLG-0027
IF ~
	Global("LCA_PlayerSoulTalk", "GLOBAL", 1)
~ THEN BEGIN LCA_CorwinSoulTalk
	SAY @432 /* ~(She places her hand on your shoulder.)~ */
	=@1349 /* ~Hey — you alright?~ */
	
	IF ~~ THEN REPLY @433 /* ~For just having my soul ripped out of me, yes, I feel fine.~ */
	GOTO LCA_CorwinSoulTalk2
	
	IF ~~ THEN REPLY @434 /* ~I'm not sure. It's hard for me to explain.... I feel... hollow?~ */
	GOTO LCA_CorwinSoulTalk2
END

IF ~~ THEN BEGIN LCA_CorwinSoulTalk2
	SAY @435 /* ~Whatever he did, we'll find a way to restore you and your sister.~ */
	
	IF ~~ THEN REPLY @436 /* ~Right. Let's go.~ */
	EXIT

	IF ~~ THEN REPLY @437 /* ~Right - and you? Are you alright Schael?~ */
	GOTO LCA_CorwinSoulTalk3
END

IF ~~ THEN BEGIN LCA_CorwinSoulTalk3
	SAY @438 /* ~Yes, I - I'm fine... I'm just disappointed that he escaped.~ */
	
	IF ~~ THEN REPLY @439 /* ~You look concerned. What he said about using you to assassinate the Grand Dukes - it will never happen.~ */
	GOTO LCA_CorwinSoulTalk4
END

IF ~~ THEN BEGIN LCA_CorwinSoulTalk4
	SAY @440 /* ~That's for damn sure. Come on - let's go.~ */
	IF ~~ THEN
	DO ~
		IncrementGlobal("LCA_CorwinOpinionOfPlayer", "GLOBAL", 1)
	~
	EXIT
END 

//} #endregion

//{ #region Corwin Rep Warning - DLG-0028
IF ~
	Global("LCA_CorwinRepWarning", "GLOBAL", 2)
~ THEN BEGIN LCA_RepComplain
	SAY @417 /* ~We need to talk.~ */
	IF ~~ THEN REPLY @419 /* ~What's on your mind?~ */
	GOTO LCA_RepComplain2
END

IF ~~ THEN BEGIN LCA_RepComplain2
	SAY @418 /* ~I don't like the way things are going. I didn't come all this way to help you in committing acts of evil. If things get much worse, you'll find yourself on your own. Let's go.~ */
	IF ~~ THEN
	DO ~
		SetGlobal("LCA_CorwinRepWarning", "GLOBAL", 3)
	~
	EXIT
END
//} #endregion

//{ #region Corwin Left - Bad Reputation - DLG-0029
IF ~
	ReputationLT(Player1,7)
	Global("LCA_CorwinLeftPoorRep", "GLOBAL", 1)
~ THEN BEGIN LCA_LeftPoorRep
	SAY @420 /* ~I'm sorry. I can't be a part of this any longer. When you clean up your act, you can find me in the Athkatla magistrate.~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("LCA_CorwinLeftPoorRep", "GLOBAL", 0)
		LeaveParty()
		EscapeAreaMove("AR1002",1033,563, SW)
	~
	EXIT
END  
//} #endregion

//{ #region Dorn Ritual Interject - DLG-0030

IF ~
	Global("OHD_ritual_interjects","GLOBAL",1)
~ THEN BEGIN LCA_RitualInterject
	SAY @401 /* ~That smell, ugh. It reminds me of ... it reminds me of Avernus!~ */
	
	IF ~~ THEN REPLY @402 /* ~We survived that, and we'll survive this. Stand ready.~ */
	DO ~
		SetGlobal("OHD_ritual_interjects","GLOBAL",2)
	~
	GOTO LCA_RitualInterject2
END

IF ~~ THEN BEGIN LCA_RitualInterject2
	SAY @402 /* Right */
	
	IF ~~ THEN
	EXIT
	
	IF ~  
		IsValidForPartyDialogue("imoen2")
	~ THEN 
	EXTERN ~IMOEN2J~ 56
	IF ~  
		IsValidForPartyDialogue("rasaad")
	~ THEN 
	EXTERN ~RASAADJ~ 771
	IF ~  
		IsValidForPartyDialogue("korgan")
	~ THEN 
	EXTERN ~KORGANJ~ 236
END
//} #endregion

//{ #region Gorge Interject - DLG-0031
IF ~
	Global("OHD_GORGE_NTRJEX","OH5100",1)
~ THEN BEGIN LCA_GorgeClimb
	SAY @395 /* ~Let's take this nice and slow. Remember - maintain three points of contact at all times.~ */
	
	IF ~
		Global("LCA_CorwinRomanceActive","GLOBAL",2)
	~ THEN REPLY @397 /* ~Good advice. Climb many trees in your youth, love?~ */
	DO ~
		SetGlobal("OHD_GORGE_NTRJEX","OH5100",2)
	~
	GOTO LCA_GorgeClimb1
	
	IF ~
		!Global("LCA_CorwinRomanceActive","GLOBAL",2)
	~ THEN REPLY @396 /* ~Good advice. Climb many trees in your youth, Corwin?~ */
	DO ~
		SetGlobal("OHD_GORGE_NTRJEX","OH5100",2)
	~
	GOTO LCA_GorgeClimb1
	
	IF ~
		GlobalGT("LCA_TimesHadSex", "GLOBAL", 0)
	~ THEN REPLY @399 /*  ~Good advice. Climb many trees, love? Besides mine, I mean.~ */
	DO ~
		SetGlobal("OHD_GORGE_NTRJEX","OH5100",2)
	~
	GOTO LCA_GorgeClimb1A
END

IF ~~ THEN BEGIN LCA_GorgeClimb1A
	SAY @400 /* ~(She gives you a wry smile, and rolls her eyes.)~ */
	IF ~~ THEN
	GOTO LCA_GorgeClimb1
END

IF ~~ THEN BEGIN LCA_GorgeClimb1
	SAY @398 /* ~No, not really. We practice scaling walls during our training exercises. The principle is the same.~ */
	IF ~~ THEN
	EXIT
	
	IF ~  
		IsValidForPartyDialogue("hexxat")
	~ 
	THEN EXTERN ~HEXXATJ~ 2
	IF ~  
		IsValidForPartyDialogue("neera")
	~ 
	THEN EXTERN ~NEERAJ~ 15
	IF ~  
		IsValidForPartyDialogue("dorn")
	~ 
	THEN EXTERN ~DORNJ~ 502
	IF ~  
		IsValidForPartyDialogue("viconia")
	~ 
	THEN EXTERN ~VICONIJ~ 410
	IF ~  
		IsValidForPartyDialogue("valygar")
	~ 
	THEN EXTERN ~VALYGARJ~ 128
	IF ~  
		IsValidForPartyDialogue("minsc")
	~ 
	THEN EXTERN ~MINSCJ~ 252
	IF ~  
		IsValidForPartyDialogue("mazzy")
	~ 
	THEN EXTERN ~MAZZYJ~ 208
	IF ~  
		IsValidForPartyDialogue("korgan")
	~ 
	THEN EXTERN ~KORGANJ~ 234
	IF ~  
		IsValidForPartyDialogue("keldorn")
	~ 
	THEN EXTERN ~KELDORJ~ 265
	
END
//} #endregion

//{ #region Corwin Bit - First - DLG-0032
IF ~
	Global("LCA_CorwinBit", "GLOBAL", 2)
~
THEN BEGIN LCA_CorwinBitWokeUp
	SAY @297 /* ~Bodhi - she.. she bit me!~ */
	
	IF ~~ THEN REPLY @298 /* ~You're hurt, Schael. Here, let me help you.~*/
	DO ~
		SetGlobal("LCA_CorwinCured", "GLOBAL", 0)
		SetPlayerSound(Myself,-1,MORALE)
		SetPlayerSound(Myself,-1,HAPPY)
		SetPlayerSound(Myself,-1,UNHAPPY_ANNOYED)
		SetPlayerSound(Myself,-1,UNHAPPY_SERIOUS)
		SetPlayerSound(Myself,-1,UNHAPPY_BREAKING_POINT)
		SetPlayerSound(Myself,@451,LEADER)
		SetPlayerSound(Myself,-1,TIRED)
		SetPlayerSound(Myself,-1,BORED)
		SetPlayerSound(Myself,@451,BATTLE_CRY1)
		SetPlayerSound(Myself,@454,BATTLE_CRY2)
		SetPlayerSound(Myself,-1,BATTLE_CRY3)
		SetPlayerSound(Myself,-1,BATTLE_CRY4)
		SetPlayerSound(Myself,-1,BATTLE_CRY5)
		SetPlayerSound(Myself,268273,DAMAGE)
		SetPlayerSound(Myself,268274,DYING)
		SetPlayerSound(Myself,@454,HURT)
		SetPlayerSound(Myself,-1,AREA_FOREST)
		SetPlayerSound(Myself,-1,AREA_CITY)
		SetPlayerSound(Myself,-1,AREA_DUNGEON)
		SetPlayerSound(Myself,-1,AREA_DAY)
		SetPlayerSound(Myself,-1,AREA_NIGHT)
		SetPlayerSound(Myself,@454,SELECT_COMMON1)
		SetPlayerSound(Myself,@451,SELECT_COMMON2)
		SetPlayerSound(Myself,@456,SELECT_COMMON3)
		SetPlayerSound(Myself,-1,SELECT_COMMON4)
		SetPlayerSound(Myself,-1,SELECT_COMMON5)
		SetPlayerSound(Myself,-1,SELECT_COMMON6)
		SetPlayerSound(Myself,@454,SELECT_ACTION1)
		SetPlayerSound(Myself,@451,SELECT_ACTION2)
		SetPlayerSound(Myself,@456,SELECT_ACTION3)
		SetPlayerSound(Myself,-1,SELECT_ACTION4)
		SetPlayerSound(Myself,-1,SELECT_ACTION5)
		SetPlayerSound(Myself,-1,SELECT_ACTION6) 
		SetPlayerSound(Myself,-1,SELECT_ACTION7)
		SetPlayerSound(Myself,-1,REACT_TO_DIE_GENERAL)
		SetPlayerSound(Myself,-1,REACT_TO_DIE_SPECIFIC)
		SetPlayerSound(Myself,-1,SELECT_RARE1)
		SetPlayerSound(Myself,-1,SELECT_RARE2)
		SetPlayerSound(Myself,-1,CRITICAL_HIT)
		SetPlayerSound(Myself,-1,CRITICAL_MISS)
		SetPlayerSound(Myself,-1,TARGET_IMMUNE)
		SetPlayerSound(Myself,@457,INVENTORY_FULL)
		SetPlayerSound(Myself,-1,PICKED_POCKET)
		SetPlayerSound(Myself,268289,HIDDEN_IN_SHADOWS)
		SetPlayerSound(Myself,-1,SPELL_DISRUPTED)
		SetPlayerSound(Myself,-1,SET_A_TRAP)
	~
	GOTO LCA_CorwinBitWokeUp2
END

IF ~~ THEN BEGIN LCA_CorwinBitWokeUp2
	SAY @299 /* ~Thanks... I - I just feel a bit weak...~*/
	
	IF ~~ THEN REPLY @304 /* ~Take a moment to recover, love. When you're ready, we will go after Bodhi and retrieve the Lanthorn.~ */
	GOTO LCA_CorwinBitWokeUp3
	IF ~
		IsValidForPartyDialogue("Aerie")
	~
	THEN REPLY @301 /* ~Aerie? Is there anything you can do to help?~ */
	EXTERN AERIEJ LCA_CorwinBite
	
	IF ~
		IsValidForPartyDialogue("Jaheira")
	~
	THEN REPLY @300 /* ~Jaheira? Is there anything you can do to help?~ */
	EXTERN JAHEIRAJ LCA_CorwinBite 
	
	IF ~
		IsValidForPartyDialogue("Viconia")
	~
	THEN REPLY @302 /* ~Viconia? Is there anything you can do to help?~ */
	EXTERN VICONIJ LCA_CorwinBite

	IF ~
		IsValidForPartyDialogue("Anomen")
	~
	THEN REPLY @303 /* ~Anomen? Is there anything you can do to help?~ */
	EXTERN ANOMENJ LCA_CorwinBite 	
END

IF ~~ THEN BEGIN LCA_CorwinBitWokeUp3
	SAY @305 /* ~Right... come on.. we need to keep moving.~*/
	= @306 /* ~(She's up and about, but still unsteady - you become concerned that her condition may deteriorate over time).~ */
	IF ~~ THEN 
	DO ~
		SetGlobal("LCA_CorwinBit", "GLOBAL", 3)
		SetGlobal("LCA_CorwinJoined","LOCALS",1)
		SetGlobal("LCA_AskedToRejoin", "LOCALS", 0)
		SetGlobal("LCA_ResetBanterTimer", "GLOBAL", 1)
		SetGlobal("LCA_ResetJoinChecks", "GLOBAL", 1)
		ChangeStat(Myself,CON,-1,ADD)
		ChangeStat(Myself,DEX,-1,ADD)
		ChangeStat(Myself,STR,-1,ADD)
		ChangeStat(Myself,CHR,-1,ADD)
		//JoinParty()
	~
	UNSOLVED_JOURNAL @307 /* ~Bodhi appeared in an ambush shortly before I reached her haven, warning me that she was aware of my pursuit and wounding the one person that is dearest to my heart: Schael. Before she vanished and unleashed more of her undead creations upon me, Bodhi warned me that if I continue, I will lose even more than I thought possible. In spite of her threats, I must continue my pursuit of Bodhi and the Rhynn Lanthorn, though I am concerned that Schael's condition will worsen over time.~  */
	EXIT
END
//} #endregion

//{ #region Corwin Bit - Second - DLG-0033
IF ~
	Global("LCA_CorwinBit", "GLOBAL", 4)
	GlobalTimerExpired("LCA_CorwinBitTimer", "GLOBAL")
~ THEN BEGIN LCA_CorwinBitByBodhi2
	SAY @259 /* ~My love, can we... can we s-stop, for just a minute.~ */
	IF ~~ THEN REPLY @260 /* ~Schael? What's wrong?~*/
	DO ~
		SetGlobal("LCA_CorwinBit", "GLOBAL", 5)
		SetGlobalTimer("LCA_CorwinBitTimer", "GLOBAL", SIX_HOURS)
	~
	GOTO LCA86
END
IF ~~ THEN BEGIN LCA86
	SAY @261 /* ~I can't seem to catch my breath.~ */
	IF ~
		!IsValidForPartyDialogue("KORGAN")
	~ THEN REPLY @262 /* ~Come here, love (you put her arm over your shoulder). Take as much time as you need.~ */
	GOTO LCA87
	
	IF ~
		OR(4)
			IsValidForPartyDialogue("KORGAN")
			IsValidForPartyDialogue("AERIE")
			IsValidForPartyDialogue("IMOEN2")
			IsValidForPartyDialogue("JAHEIRA")
	~ THEN REPLY @262 /* ~Come here, love (you put her arm over your shoulder). Take as much time as you need.~ */
	DO ~
		SetGlobalTimer("LCA_CorwinSickPartyTimer", "GLOBAL", TWO_HOURS)
	~
	GOTO LCA87
END

IF ~~ THEN BEGIN LCA87
	SAY @263 /* ~(She takes several long, deep breaths) That's better... come on, we need to get that.. Lanthorn.~ */
	IF ~~ THEN REPLY @264 /* ~(She is clearly unwell and her condition is rapidly deteriorating... you resolve to redouble your efforts to find and kill Bodhi. You hope it will be enough to cure Schael of her affliction.)~ */
	EXIT
END
//} #endregion

//{ #region Corwin Bit - Third - DLG-0034
IF ~
	Global("LCA_CorwinBit", "GLOBAL", 6)
	GlobalTimerExpired("LCA_CorwinBitTimer", "GLOBAL")
~ THEN BEGIN LCA_CorwinBitByBodhi3
	SAY @276 /* ~Ugh... (She stumbles and falls to her hands and knees).~ */
	IF ~~ THEN REPLY @277 /* ~Schael! (You help her back to her feet. She appears to be in very bad shape. Her eyes are bloodshot, she covered in sweat, and her skin is pale and cold to the touch.)~ */
	DO ~
		SetGlobal("LCA_CorwinBit", "GLOBAL", 7)
		SetGlobalTimer("LCA_CorwinBitTimer", "GLOBAL", FOUR_HOURS)
	~
	GOTO LCA88
END
IF ~~ THEN BEGIN LCA88
	SAY @278 /* ~Thanks *cough* come on... we'd better find Bodhi and the Lanthorn soon... before I..~ */
	IF ~
		GlobalGT("bd_drinks_corwin", "GLOBAL", 0) // had a drink with Corwin back in Baldur's Gate 
	~ THEN REPLY @279 /* ~It breaks my heart to see you like this, love.~ */
	GOTO LCA89A
	
	IF ~
		Global("bd_drinks_corwin", "GLOBAL", 0) // didn't have a drink with Corwin back in Baldur's Gate 
	~ THEN REPLY @279 /* ~It breaks my heart to see you like this, love.~ */
	GOTO LCA89B
END

IF ~~ THEN BEGIN LCA89A
	SAY @282 /* ~Hah, I look that bad, eh? You should see *cough* yourself *cough* *cough*.~ */
	= @275 /* ~One day, we'll look back on this and laugh *cough* over a couple of drinks at... at... where was it...~ */ 
	IF ~~ THEN REPLY @274 /* ~The Three Old Kegs, love. You had the Berduskan dark wine, your favorite.~ */
	GOTO LCA98
END

IF ~~ THEN BEGIN LCA89B
	SAY @282 /* ~Hah, I look that bad, eh? You should see *cough* yourself *cough* *cough*.~ */
	IF ~~ THEN REPLY @283 /* ~Hang in there, Schael. We're going to find Bodhi and cure you of this cursed affliction. Can you walk?~ */
	GOTO LCA90
END

IF ~~ THEN BEGIN LCA90
	SAY @284 /* ~Y-yes... come on, love.. let's go.~ */
	= @280 /* ~(It's clear to you that Schael does not have much time left. You need to find and kill Bodhi, and soon, or you will lose the woman you love.)~  */
	IF ~~ THEN 
	EXIT
END

IF ~~ THEN BEGIN LCA98
	SAY @273 /* ~Right *cough* *wheeze* *cough*... just before we *cough*.. left for Dragonspear...~ */
	IF ~~ THEN REPLY @283 /* ~Hang in there, Schael. We're going to find Bodhi and cure you of this cursed affliction. Can you walk?~ */
	GOTO LCA90
END
//} #endregion

//{ #region Corwin Bit - Death - DLG-0035
IF ~
	Global("LCA_CorwinBit", "GLOBAL", 8)
	GlobalTimerExpired("LCA_CorwinBitTimer", "GLOBAL")
~ THEN BEGIN LCA_CorwinBitByBodhi3
	SAY @265 /* ~*Cough* <CHARNAME> *Cough* ... (she retches, and begins vomitting blood).~*/
	IF ~
		GlobalGT("bd_drinks_corwin", "GLOBAL", 0)
	~ THEN REPLY @266 /* ~Schael! (You run over to her and she collapses into your arms). ~*/
	DO ~
		SetGlobal("LCA_CorwinDiedFromBite", "GLOBAL", 1)
		ClearAllActions()
		StartCutSceneMode()
		StartCutSceneEx("LCcs08a", FALSE)
	~
	UNSOLVED_JOURNAL @285 /* ~Schael died in your arms, mere hours after being bit by Bodhi. You believe that the bite was intended to turn Schael into a vampire, but she died before the transition could complete. There may still be a way to revive her. You resolve to find Bodhi and make her pay for the loss of your love with her life.~  */
	EXIT
	
	IF ~
		Global("bd_drinks_corwin", "GLOBAL", 0)
	~ THEN REPLY @266 /* ~Schael! (You run over to her and she collapses into your arms). ~*/
	DO ~
		SetGlobal("LCA_CorwinDiedFromBite", "GLOBAL", 1)
		ClearAllActions()
		StartCutSceneMode()
		StartCutSceneEx("LCcs08c", FALSE)
	~
	UNSOLVED_JOURNAL @285 /* ~Schael died in your arms, mere hours after being bit by Bodhi. You believe that the bite was intended to turn Schael into a vampire, but she died before the transition could complete. There may still be a way to revive her. You resolve to find Bodhi and make her pay for the loss of your love with her life.~  */
	EXIT
	//GOTO LCA91
END
//} #endregion

//{ #region Corwin Firkraag Deal - DLG-0036
IF ~
	InParty(Myself)
	Global("LCA_CorwinFirkraagDeal", "GLOBAL", 1)
~ THEN BEGIN LCA_CorwinFirkraagDeal
	SAY @199 /* ~I've gone as far as I can. When you regain your senses, you can find me at the Athkatla council building.~ */
	
	IF ~~ THEN
	DO ~
		LeaveParty()
		EscapeAreaMove("AR1002",1033,563, SW)
		SetGlobal("LCA_CorwinMeetAthkatlaCouncil", "GLOBAL", 1)
		SetGlobal("LCA_CorwinFirkraagDeal", "GLOBAL", 2)
	~
	EXIT
END
//} #endregion

//{ #region Corwin Phaere Sex - DLG-0037
IF ~
	InParty(Myself)
	Global("LCA_PhaereTalk", "GLOBAL", 1)
	Global("PhaereInnuendo", "GLOBAL", 2)
~ THEN BEGIN LCA_PhaereTalk
	SAY @216 /* ~You were with her for a while...~ */
	
	IF ~~ THEN REPLY @217 /* ~Listen, Schael. She didn't leave me any choice. I had to in order to maintain our cover.~ */
	GOTO LCA69
	
	IF ~~ THEN REPLY @218 /*  ~It meant nothing to me. You are the one that I love.~ */
	GOTO LCA70
	
	IF ~~ THEN REPLY @219 /* ~And? I did what I needed to, nothing more.~ */
	GOTO LCA71
END

IF ~~ THEN BEGIN LCA69
	SAY @221 /* ~I understand. Let's just get out of this hole and forget that it ever happened.~ */
	IF ~~ THEN
	DO ~
		SetGlobal("LCA_PhaereTalk", "GLOBAL", 2)
	~
	EXIT
END

IF ~~ THEN BEGIN LCA70
	SAY @220 /*  ~It means something to me. I understand though why you had to. Let's just get out of this hole and forget that it ever happened.~ */
	IF ~~ THEN
	DO ~
		SetGlobal("LCA_PhaereTalk", "GLOBAL", 2)
	~
	EXIT
END

IF ~~ THEN BEGIN LCA71
	SAY @222 /*  ~I see. And did you enjoy it?~ */
	IF ~~ THEN REPLY @223 /* ~To be perfectly honest, I did.~ */
	GOTO LCA75
	
	IF ~
		GlobalGT("LCA_TimesHadSex", "GLOBAL", 0)
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @428 /* ~Well, she's even better than you, so yes.~ */
	DO ~
		IncrementGlobal("LCA_CorwinOpinionOfPlayer", "GLOBAL", -1)
	~
	GOTO LCA75
	
	IF ~
		GlobalGT("LCA_TimesHadSex", "GLOBAL", 0)
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @429 /* ~She doesn't compare to you, love. No one does.~ */
	DO ~
		IncrementGlobal("LCA_CorwinOpinionOfPlayer", "GLOBAL", 1)
	~
	GOTO LCA99
	
	IF ~~ THEN REPLY @224 /* ~That's none of your concern.~ */
	GOTO LCA75
	
	IF ~~ THEN REPLY @225 /* ~No, I didn't. I feel nothing toward her but disgust.~ */
	GOTO LCA69
END

IF ~~ THEN BEGIN LCA75
	SAY @226 /* ~You've changed, love, and not in a good way. I can only hope that you'll return to normal once we've restored what the wizard stole from you. ~  */
	IF ~~ THEN
	DO ~
		SetGlobal("LCA_PhaereTalk", "GLOBAL", 2)
		IncrementGlobal("LCA_CorwinOpinionOfPlayer", "GLOBAL", -1)
	~
	EXIT
END

IF ~~ THEN BEGIN LCA99
	SAY @430 /* ~(A fleeting smile graces her face.) Let's just get out of this hole and forget that it ever happened.~  */
	IF ~~ THEN
	EXIT
END
//} #endregion

//{ #region Corwin Phaere No Sex - DLG-0038
IF ~
	InParty(Myself)
	Global("LCA_PhaereTalk", "GLOBAL", 1)
	Global("PhaereInnuendo", "GLOBAL", 3)
~ THEN BEGIN LCA_PhaereTalk
	SAY @227 /* ~What'd she want?~ */
	
	IF ~~ THEN REPLY @228 /* ~For me to sleep with her.~ */
	GOTO LCA72
	
	IF ~~ THEN REPLY @229 /*  ~Better not to ask. What matters is that she didn't get it.~*/
	GOTO LCA74

END

IF ~~ THEN BEGIN LCA72
	SAY @230 /* ~Really - how'd you manage to get out of that one?~ */
	IF ~~ THEN REPLY @231 /* ~I told her you'd kill me for cheating on you.~ */
	GOTO LCA73
END

IF ~~ THEN BEGIN LCA73
	SAY @232 /* ~Hah! You lost your soul, but not your sense of humor, it seems. Come love, let's get going.~ */
	IF ~~ THEN
	DO ~
		SetGlobal("LCA_PhaereTalk", "GLOBAL", 2)
		IncrementGlobal("LCA_CorwinOpinionOfPlayer", "GLOBAL", 1)
	~
	EXIT
END

IF ~~ THEN BEGIN LCA74
	SAY @233 /* ~Hm, I didn't see her as the type to be so easily turned away. Let's go love.~ */
	IF ~~ THEN
	DO ~
		SetGlobal("LCA_PhaereTalk", "GLOBAL", 2)
		IncrementGlobal("LCA_CorwinOpinionOfPlayer", "GLOBAL", 1)
	~
	EXIT
END
//} #endregion

//{ #region Corwin Bodhi Deal - DLG-0039
IF ~
	InParty(Myself)
	Global("LCA_CorwinBodhiDeal", "GLOBAL", 1)
~ THEN BEGIN LCA_CorwinBodhiDeal
	SAY @199 /* ~I've gone as far as I can. When you regain your senses, you can find me at the Athkatla council building.~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("LCA_CorwinMeetAthkatlaCouncil", "GLOBAL", 1)
		SetGlobal("LCA_CorwinBodhiDeal", "GLOBAL", 2)
		LeaveParty()
		EscapeAreaMove("AR1002",1033,563, SW)
	~
	EXIT
END
//} #endregion

//{ #region SoD Anxiety - DLG-0040 - Tested 2023-04-17

IF ~
	Global("LCA_SoDAnxiety", "GLOBAL", 2)
	//play romance song
~ THEN BEGIN LCA_SoDAnxiety2
	SAY @1306 /* ~Are you alright?~ */
	= @1307 /* ~You look like you've seen a ghost.~ */
	
	IF ~~ THEN REPLY @1313 /* ~It's nothing... come on, let's go.~ */
	DO ~
		SetGlobal("LCA_SoDAnxiety", "GLOBAL", 3)
	~
	EXIT
	
	IF ~~ THEN REPLY @1309 /* ~I... I'm fine... ~*/
	DO ~
		SetGlobal("LCA_SoDAnxiety", "GLOBAL", 3)
	~
	GOTO LCA_SoDAnxiety3
END

IF ~~ THEN BEGIN LCA_SoDAnxiety3
	SAY @1310 /* ~Honey, what's wrong? You can tell me.~ */
	
	IF ~
		Global("LCA_SoDAnxietyAlatos", "GLOBAL", 1)
	~ THEN REPLY @1311 /* ~When Alatos brought up the tunnels beneath the city... it all came flooding back, Schael.~ */
	GOTO LCA_SoDAnxiety4
	
	IF ~
		Global("LCA_SoDAnxietyCell", "GLOBAL", 1)
	~ THEN REPLY @1340 /* ~Seeing my cell again... it all came flooding back, Schael.~ */
	GOTO LCA_SoDAnxiety4
	
	IF ~~ THEN REPLY @1322 /* ~Really, it's nothing. Let's get moving.~*/
	EXIT
END

IF ~~ THEN BEGIN LCA_SoDAnxiety4
	SAY @1312 /* ~I understand... it was a traumatic experience, for all of us.~ */
	
	IF ~
		Global("bd_player_exiled","global",0)
	~ THEN REPLY @1314 /* ~I think about it, still. Not as much as I used to, but... it's scary to think how close you were to... how close we were to —~ */
	GOTO LCA_SoDAnxiety5
	
	IF ~
		Global("bd_player_exiled","global",1)
	~ THEN REPLY @1341 /* ~I think about it, still. Not just my exile, but how close I was to being —~ */
	GOTO LCA_SoDAnxiety5
END

IF ~~ THEN BEGIN LCA_SoDAnxiety5
	SAY @1316 /* ~I know, love. Come here.~  */
	= @1317 /*  ~(You share a long and tender embrace.)~ */
	
	IF ~~ THEN REPLY @1318 /* ~Thank you, Schael... For believing in me, and for believing in us.~  */
	GOTO LCA_SoDAnxiety6
END

IF ~~ THEN BEGIN LCA_SoDAnxiety6
	SAY @1319 /* ~We have each other... and we have Rohma. The new memories we make together will drown out those dark echoes. You'll see.~*/
	
	IF ~
		Global("bd_player_exiled","global",0)
	~ THEN REPLY @1321 /* ~I look forward to it.~ */
	DO ~
		AddJournalEntry(@1320, INFO)
		IncrementGlobal("LCA_CorwinOpinionOfPlayer", "GLOBAL", 1)
		SetGlobal("LCA_SoDAnxiety", "GLOBAL", 2)
	~
	EXIT
	
	IF ~
		Global("bd_player_exiled","global",1)
	~ THEN REPLY @1321 /* ~I look forward to it.~ */
	DO ~
		AddJournalEntry(@1342, INFO)
		IncrementGlobal("LCA_CorwinOpinionOfPlayer", "GLOBAL", 1)
		SetGlobal("LCA_SoDAnxiety", "GLOBAL", 2)
	~
	EXIT
END
//} #endregion

//{ #region Met Rohma Interaction BG2 (Non-Romance) - DLG-0041

/* Optional Interaction - Met Rohma */
IF ~
	InParty(Myself)
	Global("LCA_Banter_CorwinPlayerOpt1", "GLOBAL", 2)
	See(Player1)
	!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
~
THEN BEGIN LCA_OPT1Friend
	SAY @139 /* ~(You notice Captain Corwin staring into the distance, with sadness in her eyes.)~ */
	
	IF ~~ THEN REPLY @141 /* ~Captain? Are you alright?~ */
	DO ~
		SetGlobal("LCA_Banter_CorwinPlayerOpt1", "GLOBAL", 3)
	~
	GOTO LCA_OPT1Friend2 //OK
END

IF ~~ THEN BEGIN LCA_OPT1Friend2
	SAY @143 /* ~(She snaps to attention) ~ */
	
	= @1351 /* <CHARNAME>, yes. Sorry - I was thinking about home.~ */
	
	IF ~~ THEN REPLY @145 /* ~About your daughter and father. I understand.~ */
	GOTO LCA_OPT1Friend3 //OK
END

IF ~~ THEN BEGIN LCA_OPT1Friend3
	SAY @146 /* ~Yes... You know, Rohma asks about you.~ */
	
	IF ~
		Global("LCA_GaveDoll", "GLOBAL", 1)
	~ THEN REPLY @147 /* ~Really? I didn't think I'd made much of an impression on her.~ */
	GOTO LCA_OPT1Friend4_GaveDoll //OK
	
	IF ~
		!Global("LCA_GaveDoll", "GLOBAL", 1)
	~ THEN REPLY @147 /* ~Really? I didn't think I'd made much of an impression on her.~ */
	GOTO LCA_OPT1Friend4_NoDoll //OK
	
	IF ~~ THEN REPLY @159 /* ~Of course she does. I am the *ahem* hero of Baldur's Gate, after all.~ */
	GOTO LCA_OPT1Friend3C //OK
END

IF ~~ THEN BEGIN LCA_OPT1Friend3C
	SAY @160 /*  ~(She rolls her eyes)  */
	= @1350 /* ~A little humility from time to time wouldn't hurt, you know. But yes, you did leave quite the impression on her.~ */
	
	IF ~
		Global("LCA_GaveDoll", "GLOBAL", 1)
	~ THEN
	GOTO LCA_OPT1Friend4_GaveDoll //OK
	
	IF ~
		!Global("LCA_GaveDoll", "GLOBAL", 1)
	~ THEN
	GOTO LCA_OPT1Friend4_NoDoll //OK
END

IF ~~ THEN BEGIN LCA_OPT1Friend4_GaveDoll
	SAY @148 /* ~She loves the teddy you bought for her. It's her favorite toy.~ */
	
	IF ~~ THEN REPLY @151 /* ~It was a simple gesture.. I didn't think it would mean that much to her.~ */
	GOTO LCA_OPT1Friend5 //OK
END

IF ~~ THEN BEGIN LCA_OPT1Friend4_NoDoll
	SAY @1362 /* ~The kindness that you showed her is more than her father ever did... thank you, <CHARNAME>.~*/
	
	IF ~~ THEN
	GOTO LCA_OPT1END //OK
END

IF ~~ THEN BEGIN LCA_OPT1Friend5
	SAY @157 /* ~That one act of kindness from you is more than her father ever did for her... thank you, <CHARNAME>.~*/

	IF ~~ THEN
	GOTO LCA_OPT1END //OK
END

IF ~~ THEN BEGIN LCA_OPT1END
	SAY  @158 /* ~Let's get moving.~ */
	
	IF ~~ THEN REPLY @1353 /* ~Right.~ */
	EXIT
	
	IF ~
		!Global("AerieRomanceActive","GLOBAL",2)
		!Global("ViconiaRomanceActive","GLOBAL",2)
		!Global("DornRomanceActive","GLOBAL",2)
		!Global("NeeraRomanceActive","GLOBAL",2)
		!Global("AnomenRomanceActive","GLOBAL",2)
		!Global("JaheiraRomanceActive","GLOBAL",2)
		!Global("HexxatRomanceActive","GLOBAL",2)
		!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1354 /* ~Capt — Schael, wait. There's something I need to tell you.~ */
	GOTO LCA_OPT1END_InitRomance //OK
END

IF ~~ THEN BEGIN LCA_OPT1END_InitRomance
	SAY @1356 /* ~Hm?~  */
	
	IF ~~ THEN REPLY @1355 /* ~Ah... nevermind. Let's go.~ */
	GOTO LCA_OPT1END_InitRomance_End //OK
	
	IF ~~ THEN REPLY @1358 /* ~I want you to know that I greatly appreciate your friendship. And I don't want to do anything to jeopardize that. But...~  */
	GOTO LCA_OPT1END_InitRomance2 //OK
END

IF ~~ THEN BEGIN LCA_OPT1END_InitRomance2
	SAY @1361 /* ~What is it? You can tell me.~ */
	
	IF ~~ THEN REPLY @94 /* ~Schael... I... I didn't realize how much I needed you near me, until you were gone. Your being here, now, fills a void in my heart that I didn't know was there. I'd like for us to move past friendship, into a more serious relationship. I... I'm in love with you, Schael.~ */
	DO ~
		SetGlobal("LCA_CorwinLoveBG2", "GLOBAL", 1)
		SetGlobal("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~
	GOTO LCA35
END

IF ~~ THEN BEGIN LCA_OPT1END_InitRomance_End
	SAY @1357 /* ~(A look of disappointment flashes across her face.)~*/
	
	= @1358 /*~Fine. Let's go.~*/
	
	IF ~~ THEN
	EXIT
END
//} #endregion

//{ #region Met Corwin Interaction BG2 (Romance) - DLG-0042
IF ~
	InParty(Myself)
	Global("LCA_Banter_CorwinPlayerOpt1", "GLOBAL", 2)
	See(Player1)
	Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	//play romance song
~
THEN BEGIN LCA_OPT1Romance
	SAY @140 /* ~(You notice Schael staring into the distance, with sadness in her eyes.)~ */
	
	IF ~~ THEN REPLY @142 /*  ~My love, are you alright?~ */
	DO ~
		SetGlobal("LCA_Banter_CorwinPlayerOpt1", "GLOBAL", 3)
	~
	GOTO LCA_OPT1Romance_2 //OK
	
	IF ~~ THEN REPLY @1343 /*   ~What's wrong, dear?~ */
	DO ~
		SetGlobal("LCA_Banter_CorwinPlayerOpt1", "GLOBAL", 3)
	~
	GOTO LCA_OPT1Romance_2 //OK
END
IF ~~ THEN BEGIN LCA_OPT1Romance_2
	SAY @144 /* ~(She snaps to attention)*/

	=@1352 /*	~Yes, sorry. I was thinking about home. I just miss them, that's all.~*/
	
	IF ~~ THEN REPLY @149 /* ~Rohma and your father. I understand.~ */
	GOTO  LCA_OPT1Romance_3 //OK
END

IF ~~ THEN BEGIN LCA_OPT1Romance_3
	SAY @146 /* ~Yes... You know, Rohma asks about you.~ */
	
	IF ~
		Global("LCA_GaveDoll", "GLOBAL", 1)
	~ THEN REPLY @147 /* ~Really? I didn't think I'd made much of an impression on her.~ */
	GOTO LCA_OPT1Romance4_GaveDoll //OK
	
	IF ~
		!Global("LCA_GaveDoll", "GLOBAL", 1)
	~ THEN REPLY @147 /* ~Really? I didn't think I'd made much of an impression on her.~ */
	GOTO LCA_OPT1Romance4_NoDoll //OK
	
	IF ~~ THEN REPLY @159 /* ~Of course she does. I am the *ahem* hero of Baldur's Gate, after all.~ */
	GOTO LCA_OPT1Romance_4 //OK
END

IF ~~ THEN BEGIN LCA_OPT1Romance_4
	SAY @160 /*  ~(She rolls her eyes)  */
	= @1350 /* ~A little humility from time to time wouldn't hurt, you know. But yes, you did leave quite the impression on her.~ */
	
	IF ~
		Global("LCA_GaveDoll", "GLOBAL", 1)
	~ THEN
	GOTO LCA_OPT1Romance4_GaveDoll //OK
	
	IF ~
		!Global("LCA_GaveDoll", "GLOBAL", 1)
	~ THEN
	GOTO LCA_OPT1Romance4_NoDoll //OK
END

IF ~~ THEN BEGIN LCA_OPT1Romance4_NoDoll
	SAY @1344 /* ~I think of the kindness that you showed Rohma, and how good you've been with me... ~ */

	= @1345 /* And then I think of Beno, and how stupid I was to be with scum like that... you must think I'm a fool. */
	
	IF ~~ THEN REPLY @1346 /* ~Schael, stop it. You're more than any <PRO_MANWOMAN> can hope for in this life, and a great mother to Rohma.~ */
	GOTO LCA_OPT1Romance4_NoDoll2 //OK
	
	IF ~~ THEN REPLY @1347 /* ~Schael, I've never met anyone like you. I hope you understand how special you are. I do, and I know Rohma does.~ */
	GOTO LCA_OPT1Romance4_NoDoll2 //OK
	
	IF ~~ THEN REPLY @1348 /*  ~Nonsense. Let go of the past, love. Focus on our future together — you, me, and Rohma.~  */
	GOTO LCA_OPT1Romance4_NoDoll2 //OK
	
END

IF ~~ THEN BEGIN LCA_OPT1Romance4_NoDoll2
	SAY @1349 /* ~The care and interest you've shown for her is more than Beno ever did.~ */
	
	IF ~~ THEN 
	GOTO LCA_OPT1Romance4_NoDoll3 //OK
END

IF ~~ THEN BEGIN LCA_OPT1Romance4_NoDoll3
	SAY @153 /* ~She deserves better.~ */
	
	IF ~~ THEN REPLY @154 /* ~She does. Listen, Schael - I don't know if I'd be a good step parent for Rohma. What I do know is that I'll do my best.~ */
	GOTO LCA_OPT1RomanceEnd //OK
	
	IF ~~ THEN REPLY @155 /* ~She does. Listen, Schael - I'm fully aware of the responsibilities and challenges of being a step parent, and I want you to know that I will welcome them.~ */
	GOTO LCA_OPT1RomanceEnd  //OK
END

IF ~~ THEN BEGIN LCA_OPT1Romance4_GaveDoll
	SAY @148 /* ~She loves the teddy you bought for her. It's her favorite toy.~ */
	
	IF ~~ THEN REPLY @150 /* ~Oh yes, I remember! I bought it at the general store, not long after I met her for the first time.~ */
	GOTO LCA_OPT1Romance4_GaveDoll2 //OK
	
	IF ~~ THEN REPLY @151 /* ~It was a simple gesture.. I didn't think it would mean that much to her.~ */
	GOTO LCA_OPT1Romance4_GaveDoll2 //OK
	
END

IF ~~ THEN BEGIN LCA_OPT1Romance4_GaveDoll2
	SAY @152 /*~That one small act of kindness was more than her father ever did for her.~*/
	
	IF ~~ THEN 
	GOTO LCA_OPT1Romance4_NoDoll3
END

IF ~~ THEN BEGIN LCA_OPT1RomanceEnd 
	SAY @156 /*  ~I know you will. You step up to challenges instead of running from them. That's one of the reasons that I love you, <CHARNAME>. ~ */
	= @158 /* ~Let's get moving.~ */
	IF ~~ THEN
	DO ~
		SetGlobal("LCA_Banter_CorwinPlayerOpt1", "GLOBAL", 3)
	~
	EXIT
END
//} #endregion

//{ #region Neb Dead - DLG-0043
IF ~
	InParty(Myself)
	Global("LCA_NebDead", "GLOBAL", 1)
~ THEN BEGIN LCA_NebDead
	SAY @202 /* ~He's dead. (Her hands tremble in anger) What kind of monster could murder one child, let alone dozens?~ */
	=@210 /*~(Her hands tremble with anger.)~*/
	=@211 /*~What kind of monster could murder one child, let alone dozens?~*/
	IF ~
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ 
	THEN REPLY @203 /* ~The worst kind. (You hold her hands in yours) Are you alright, love?~ */
	GOTO LCA60
	
	IF ~
		!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ 
	THEN REPLY @204 /* ~The worst kind. Are you alright, Schael?~ */
	GOTO LCA60
END

IF ~~ THEN BEGIN LCA60
	SAY @205 /* ~I will be. What he said about Rohma...~ */
	
	IF ~
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ 
	THEN REPLY @206 /* ~I wouldn't worry about it. He was just trying to rattle you.~ */
	GOTO LCA61
	
	IF ~
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ 
	THEN REPLY @207 /* ~Whatever his intentions, it doesn't matter now. He's dead, and the world is a better place for it.~*/
	GOTO LCA61
	
	IF ~
		!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ 
	THEN REPLY @206 /* ~I wouldn't worry about it. He was just trying to rattle you.~ */
	GOTO LCA62
	
	IF ~
		!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ 
	THEN REPLY @207 /* ~Whatever his intentions, it doesn't matter now. He's dead, and the world is a better place for it.~*/
	GOTO LCA62
END

IF ~~ THEN BEGIN LCA61
	SAY @208 /* ~You're right, my love. (She calms down) Let's get going.~ */
	IF ~~ THEN
	DO ~
		SetGlobal("LCA_NebDead", "GLOBAL", 2)
	~
	EXIT
END

IF ~~ THEN BEGIN LCA62
	SAY @209 /* ~You're right. (She calms down) Let's get going.~  */
	IF ~~ THEN
	DO ~
		SetGlobal("LCA_NebDead", "GLOBAL", 2)
	~
	EXIT
END
//} #endregion

//{ #region Corwin Sex 1 - DLG-0044 - Tested 2023-04-17
IF ~
	Global("LCA_CorwinSex_1", "GLOBAL", 1)
	Global("LCA_SleepInn", "GLOBAL", 1)
	Global("LCA_CorwinCanHaveSex", "GLOBAL", 1)
	AreaCheck("LCAcs10")
	//play romance song
	//x mod
~ THEN BEGIN LCA_CorwinSexInnM
	SAY @320 /* ~This room is perfect.~ */
	= @321 /* ~(She turns to you.)~ */
	
	IF ~~ THEN 
	GOTO LCA_CorwinSexInn7
	
	IF ~
		Global("LCA_ExplicitModActive", "GLOBAL", 1)
	~ THEN 
	DO ~
		SetGlobal("LCA_CorwinSex_1", "GLOBAL", 2)
		StartDialog("LCCORWIJ", Player1)
	~
	EXIT
END

IF ~~ THEN BEGIN LCA_CorwinSexInn7
	SAY @322 /* ~(Install the LCA_Explicit mod to see this content.)~ */
	
	= @323 /* ~Mm, <CHARNAME>. That was wonderful.~ */
	
	= @324 /* (She plants a kiss on your forehead.) */
	
	= @325 /* ~You don't know how much I needed that. Thank you, love.~*/
	
	IF ~~ THEN REPLY @326 /* ~Schael, you were incredible, I - I can't even -~ */
	GOTO LCA_CorwinSexInn8
END

IF ~~ THEN BEGIN LCA_CorwinSexInn8
	SAY @251 /* ~(She smiles warmly, and places her finger across your lips.)~ */
	
	= @252 /* ~Shh, lover. It's time for us to get some rest. Just know that this, and more, is what awaits you when we finally return home. I love you, <CHARNAME>.~ */
	
	IF ~~ THEN REPLY @253 /* ~I love you too, Schael.~*/
	GOTO LCA_CorwinSexInnEnd
END

IF ~~ THEN BEGIN LCA_CorwinSexInnEnd
	SAY @254 /* ~(You kiss and embrace, and try to get some sleep. Eventually, you give up, and the two of you make love again, and again, and again. Mercifully, you finally pass out from sheer exhaustion).~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("LCA_CorwinSex_1", "GLOBAL", 3)
		SetGlobal("LCA_SleepInn", "GLOBAL", 0)
		IncrementGlobal("LCA_TimesHadSex", "GLOBAL", 1)
		RestPartyEx(0,0,FALSE)
	~
	EXIT
END

IF ~
	Global("LCA_CorwinSex_1", "GLOBAL", 3)
	NumInPartyGT(2)
	AreaCheck("LCAcs10")
~ THEN BEGIN LCA_CorwinAfterSexAmnGT2
	SAY @364 /* ~The others are waiting. Let's go, love.~ */

	IF ~~ THEN
	DO ~
		SetGlobal("LCA_CorwinSex_1", "GLOBAL", 4)
		SetGlobalTimer("LCA_CorwinSexNoSleep", "GLOBAL", TWO_ROUNDS)
		SetGlobalTimer("LCA_CorwinSexTimer", "GLOBAL", THREE_DAYS)
		ChangeStat(Player1,CON,1,ADD)
		AddXPObject(Player1, 100000)
		ChangeStat(Myself,CON,1,ADD)
		AddXPObject("LCCORWIN", 100000)
		AddJournalEntry(@366, INFO)
		ChangeStat(Player1, FATIGUE, 7, SET)
		ChangeStat(Player2, FATIGUE, 7, SET)
		ChangeStat(Player3, FATIGUE, 7, SET)
		ChangeStat(Player4, FATIGUE, 7, SET)
		ChangeStat(Player5, FATIGUE, 7, SET)
		ChangeStat(Player6, FATIGUE, 7, SET)
		StartCutScene("LCAcsEx")
		
	~ 
	EXIT
	
	IF ~
		OR(5)
			IsValidForPartyDialogue("Aerie")
			IsValidForPartyDialogue("Imoen2")
			IsValidForPartyDialogue("Nalia")
			IsValidForPartyDialogue("Neera")
			IsValidForPartyDialogue("Jaheira")
	~ THEN
	DO ~
		SetGlobal("LCA_CorwinSex_1", "GLOBAL", 4)
		SetGlobalTimer("LCA_CorwinSexNoSleep", "GLOBAL", TWO_ROUNDS)
		SetGlobalTimer("LCA_CorwinSexTimer", "GLOBAL", THREE_DAYS)
		ChangeStat(Player1,CON,1,ADD)
		AddXPObject(Player1, 100000)
		ChangeStat(Myself,CON,1,ADD)
		AddXPObject("LCCORWIN", 100000)
		AddJournalEntry(@366, INFO)
		ChangeStat(Player1, FATIGUE, 7, SET)
		ChangeStat(Player2, FATIGUE, 7, SET)
		ChangeStat(Player3, FATIGUE, 7, SET)
		ChangeStat(Player4, FATIGUE, 7, SET)
		ChangeStat(Player5, FATIGUE, 7, SET)
		ChangeStat(Player6, FATIGUE, 7, SET)
		StartCutScene("LCAcsEx")
	~
	EXIT
END

IF ~
	Global("LCA_CorwinSex_1", "GLOBAL", 3)
	!NumInPartyGT(2)
	AreaCheck("LCAcs10")
~ THEN BEGIN LCA_CorwinAfterSexAmnLT3
	SAY @365 /* ~It's time to head out. Let's go, love.~ */

	IF ~~ THEN
	DO ~
		SetGlobal("LCA_CorwinSex_1", "GLOBAL", 4)
		SetGlobalTimer("LCA_CorwinSexNoSleep", "GLOBAL", TWO_ROUNDS)
		SetGlobalTimer("LCA_CorwinSexTimer", "GLOBAL", THREE_DAYS)
		ChangeStat(Player1,CON,1,ADD)
		AddXPObject(Player1, 100000)
		ChangeStat(Myself,CON,1,ADD)
		AddXPObject("LCCORWIN", 100000)
		AddJournalEntry(@366, INFO)
		ChangeStat(Player1, FATIGUE, 7, SET)
		ChangeStat(Player2, FATIGUE, 7, SET)
		ChangeStat(Player3, FATIGUE, 7, SET)
		ChangeStat(Player4, FATIGUE, 7, SET)
		ChangeStat(Player5, FATIGUE, 7, SET)
		ChangeStat(Player6, FATIGUE, 7, SET)
		StartCutScene("LCAcsEx")
		
	~ 
	EXIT
END
//} #endregion

//{ #region Corwin Sex 2 Timer Initial - DLG-0045 - Tested 2023-04-17
IF ~
	GlobalTimerExpired("LCA_CorwinSex_2_Timer", "GLOBAL")
	Global("LCA_CorwinCanHaveSex", "GLOBAL", 1)
	//play romance song
~ THEN BEGIN LCA_CorwinSexSecond
	SAY @529 /* ~I've been watching you, love, and of late I don't like what I see.~ [LCCORJ10] */
	
	IF ~~ THEN REPLY @530 /* ~What? I don't understand.~ */
	DO ~
		SetGlobal("LCA_CorwinSex_2", "GLOBAL", 2)
	~
	GOTO LCA_CorwinSexSecond2
END

IF ~~ THEN BEGIN LCA_CorwinSexSecond2
	SAY @531 /* ~For all of your power, your fighting skills are suspect. I shouldn't be surprised, based on your upbringing in Candlekeep, but I'm concerned.~ */
	= @536 /* ~You can be beaten by a seemingly lesser opponent if they recognize and exploit your lack of skill.~ */
	
	IF ~~ THEN REPLY @533 /* ~Perhaps you're right. I'm open to any tips you can give me.~ */
	GOTO LCA_CorwinSexSecond3A
	
	IF ~~ THEN REPLY @532 /* ~You're talking to the <PRO_MANWOMAN> who defeated Sarevok and stopped Caelar's crusade. You're clearly mistaken, love.~ */
	GOTO LCA_CorwinSexSecond3B
END

IF ~~ THEN BEGIN LCA_CorwinSexSecond3A
	SAY @535 /* ~Very well. Get us a room and I'll show you what I mean. Let's go.~~ */
	IF ~~ THEN
	EXIT
END

IF ~~ THEN BEGIN LCA_CorwinSexSecond3B
	SAY @534 /* ~You defeated them with raw power, not skill. Get us a room and I'll show you what I mean. Let's go.~*/
	IF ~~ THEN
	EXIT
END
//} #endregion

//{ #region Corwin Sex 2 - DLG-0046 - Tested 2023-04-17
IF ~
	Global("LCA_CorwinSex_2", "GLOBAL", 2)
	Global("LCA_SleepInn", "GLOBAL", 1)
	AreaCheck("LCAcs10")
	// play romance song
~ THEN BEGIN LCA_CorwinSexSecond4
	SAY @537 /* ~Gods, I've been looking forward to this all day. Help me get this armor off, lover.~ */
	
	IF ~~ THEN
	GOTO LCA_CorwinSexSecond15
	
	IF ~
		Global("LCA_ExplicitModActive", "GLOBAL", 1)
	~ THEN 
	DO ~
		SetGlobal("LCA_CorwinSex_2", "GLOBAL", 3)
		StartDialog("LCCORWIJ", Player1)
	~
	EXIT
END

IF ~~ THEN BEGIN LCA_CorwinSexSecond15
	SAY @322 /* ~(Install the LCA_Explicit mod to see this content.)~ */
	
	IF ~~ THEN 
	GOTO LCA_CorwinSexSecond16
END

IF ~~ THEN BEGIN LCA_CorwinSexSecond16
	SAY @602 /* ~You end up making love again before finally falling asleep.~ */
	
	IF ~~ THEN
	DO ~
		RestPartyEx(0,0,FALSE)
		SetGlobal("LCA_CorwinSex_2", "GLOBAL", 4)
		SetGlobal("LCA_SleepInn", "GLOBAL", 0)
		IncrementGlobal("LCA_TimesHadSex", "GLOBAL", 1)
	~
	EXIT
END

IF ~
	Global("LCA_CorwinSex_2", "GLOBAL", 4)
	NumInPartyGT(2)
	AreaCheck("LCAcs10")
~ THEN BEGIN LCA_CorwinSexSecondAfterGT2
	SAY @364 /* ~The others are waiting. Let's go, love.~ */

	IF ~~ THEN
	DO ~
		SetGlobal("LCA_CorwinSex_2", "GLOBAL", 4)
		ChangeStat(Player1,DEX,1,ADD)
		AddJournalEntry(@601, INFO)
		AddXPObject(Player1, 125000)
		AddXPObject("LCCORWIN", 125000)
		StartCutScene("LCAcsEx")
	~
	EXIT
END

IF ~
	Global("LCA_CorwinSex_2", "GLOBAL", 3)
	!NumInPartyGT(2)
	AreaCheck("LCAcs10")
~ THEN BEGIN LCA_CorwinSexSecondAfterLT3
	SAY @365 /* ~It's time to head out. Let's go, love.~ */

	IF ~~ THEN
	DO ~
		SetGlobal("LCA_CorwinSex_2", "GLOBAL", 4)
		ChangeStat(Player1,DEX,1,ADD)
		AddJournalEntry(@601, INFO)
		AddXPObject(Player1, 125000)
		AddXPObject("LCCORWIN", 125000)
		StartCutScene("LCAcsEx")
	~
	EXIT
END
//} #endregion

//{ #region Corwin Arrest - DLG-0047 - Tested 2023-04-18
IF ~
	Global("LCA_CorwinArrest", "GLOBAL", 1)
~ THEN BEGIN LCA_CorwinArrest1
	SAY @553 /* ~The Hall of Wonders...~ */
	
	= @554 /*  ~<CHARNAME>, did I ever tell you how I got arrested?~ */
	
	IF ~~ THEN REPLY @555 /* ~You, arrested?~ */
	GOTO LCA_CorwinArrest2
	
	IF ~
		!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @556 /* ~No, I don't think you did, Captain.~ */
	GOTO LCA_CorwinArrest2
	
	IF ~
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @557 /*  ~No love, I don't think you did.~ */
	GOTO LCA_CorwinArrest2
END

IF ~~ THEN BEGIN LCA_CorwinArrest2
	SAY @558 /* ~Well... it was after my mother died. My father was still a Fist at the time, so when he left for work I'd leave the house to hang out with some ... friends of mine. It's how I met Beno.~ */
	
	= @559 /* ~We got ourselves into a *lot* of trouble.~ */
	
	IF ~~ THEN REPLY @560 /* ~Well? Tell me more.~ */
	GOTO LCA_CorwinArrest3
	
	IF ~~ THEN REPLY @561 /* ~Hah, some things never change. You still get into a lot of trouble, only with me instead!~ */
	GOTO LCA_CorwinArrest3
END

IF ~~ THEN BEGIN LCA_CorwinArrest3
	SAY @562 /* ~One day, we had the brilliant idea to go to the Hall of Wonders and play hot potato with a jeweled egg. It was donated to the museum by an emissary from Tethyr. It must have been worth hundreds, or even thousands of gold.~ */
	
	= @563 /* ~There we were, throwing this very expensive and precious egg around, while the museum guards were frantically chasing us in and around the Hall.~ */
	
	= @564 /* ~Guess who was holding the egg when the music stopped?~ */
	
	IF ~~ THEN REPLY @565 /* ~You.~ */
	GOTO LCA_CorwinArrest4
END

IF ~~ THEN BEGIN LCA_CorwinArrest4
	SAY @566 /* ~That's right. I was arrested... and my 'friends' all ran away. It's a good thing that the egg wasn't damaged, otherwise I might still be in prison, hah.~ */
	
	= @567 /* ~My father could've gotten me out like he did so many times before, but this time, he didn't — and I'm glad. Spending that night in that cold cell was a major wake up call for me.~ */
	
	IF ~~ THEN REPLY @568 /* ~I know what you mean. I never want to see those cells again.~*/
	GOTO LCA_CorwinArrest5A
	
	IF ~~ THEN REPLY @569 /* ~Do you ever think of how your life would have changed had you not been arrested?~ */
	GOTO LCA_CorwinArrest5B
END

IF ~~ THEN BEGIN LCA_CorwinArrest5A
	SAY @573 /* ~You know, sometimes I think how my life would've changed if I hadn't been arrested that day...~*/
	
	= @574 /* ~Would Rohma be here? Would I have joined the Fist? Taken part in the Dragonspear campaign?~ */
	
	IF ~~ THEN 
	GOTO LCA_CorwinArrest6_NoRomance
	
	IF ~
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN GOTO LCA_CorwinArrest6_Romance
END

IF ~~ THEN BEGIN LCA_CorwinArrest5B
	SAY @570 /* ~I do... Would Rohma be here? Would I have joined the Fist? Taken part in the Dragonspear campaign?~ */
	
	IF ~~ THEN 
	GOTO LCA_CorwinArrest6_NoRomance
	
	IF ~
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN GOTO LCA_CorwinArrest6_Romance
END

IF ~~ THEN BEGIN LCA_CorwinArrest6_NoRomance
	SAY @578 /* ~Only the Gods know, I guess...~ */
	
	IF ~~ THEN
	DO ~
		AddJournalEntry(@1363, INFO)
	~
	EXIT
	
	IF ~
		!Global("LCA_VisitedHOW", "GLOBAL", 1)
	~ THEN 
	GOTO LCA_CorwinArrest7	
END

IF ~~ THEN BEGIN LCA_CorwinArrest6_Romance
	SAY @571 /* ~... Would I be in love with the most amazing and heroic <PRO_MANWOMAN> in Faerûn?~ */
	
	IF ~~ THEN REPLY @575 /* ~And would I be in love with such an incredible, beautiful and determined woman?~ */
	GOTO LCA_CorwinArrest6_RomanceEnd
END

IF ~~ THEN BEGIN LCA_CorwinArrest6_RomanceEnd
	SAY @576 /* ~(You share a warm embrace.)~ */
	
	IF ~~ THEN
	DO ~
		AddJournalEntry(@1363, INFO)
	~
	EXIT
	
	IF ~
		!Global("LCA_VisitedHOW", "GLOBAL", 1)
	~ THEN 
	GOTO LCA_CorwinArrest7
END

IF ~~ THEN BEGIN LCA_CorwinArrest7
	SAY @577 /* ~Come on, let's head in. I'm sure they've set up some interesting new exhibits since the last time we were here.~  */
	
	IF ~~ THEN 
	DO ~
		SetGlobal("LCA_CorwinArrest", "GLOBAL", 2)
		AddJournalEntry(@1363, INFO)
	~
	EXIT
END
//} #endregion


//{ #region Corwin Intimate Bodhi - DLG-0049
IF ~
	Global("LCA_CorwinSexAfterBodhi", "GLOBAL", 1)
	GlobalLT("LCA_TimesHadSex", "GLOBAL", 1)
	Global("LCA_CorwinCanHaveSex", "GLOBAL", 1)
	//play romance song
~ THEN BEGIN LCA_CorwinWantsSex
	SAY @374 /* ~My love... do you have a moment?~ */
	
	IF ~~ THEN REPLY @376 /* ~Not right now, Schael.~ */
	DO ~
		SetGlobal("LCA_CorwinSexAfterBodhi", "GLOBAL", 2)
	~
	GOTO LCA_CorwinWantsSex2A //OK
	
	IF ~~ THEN REPLY @375 /* ~Of course, dear. What's on your mind?~ */
	DO ~
		SetGlobal("LCA_CorwinSexAfterBodhi", "GLOBAL", 2)
	~
	GOTO LCA_CorwinWantsSex2B //OK
END

IF ~~ THEN LCA_CorwinWantsSex2A
	SAY @377 /* ~It's important. You'll want to hear this.~ */
	
	IF ~~ THEN REPLY @375 /* ~Of course, dear. What's on your mind?~ */
	GOTO LCA_CorwinWantsSex2B //OK
	
	IF ~~ THEN REPLY @376 /* ~Like I said, I'm in the middle of something.~ */
	GOTO LCA_CorwinWantsSex2D //OK
END

IF ~~ THEN LCA_CorwinWantsSex2B
	SAY @380 /* ~I've been reflecting on recent events... and the dangers we face.~ */
	= @381 /* ~You saved my life, <CHARNAME>. I was finished after Bodhi's bite, but you saved me...~ */
	
	IF ~~ THEN REPLY @382 /* ~Would you have expected any less? I love you Schael - more than anything. You know this.~*/
	GOTO LCA_CorwinWantsSex3 //OK
	
	IF ~~ THEN REPLY @383 /* ~You're a valuable ally. You'd have done the same for me.~*/
	GOTO LCA_CorwinWantsSex3 //OK
END

IF ~~ THEN LCA_CorwinWantsSex2C
	SAY @377 /* ~It's important. You'll want to hear this.~ */
	
	IF ~~ THEN REPLY @375 /* ~Of course, dear. What's on your mind?~ */
	GOTO LCA_CorwinWantsSex2B //OK
	
	IF ~~ THEN REPLY @376 /* ~Like I said, I'm in the middle of something.~ */
	GOTO LCA_CorwinWantsSex2D //OK
END

IF ~~ THEN LCA_CorwinWantsSex2D
	SAY @379 /* ~Fine (sigh), forget it.~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("LCA_CorwinSex_1", "GLOBAL", 5)
	~
	EXIT
END

IF ~~ THEN LCA_CorwinWantsSex3
	SAY @384 /* ~Yes, of course.. what I mean to say is.. Gods, why is this so hard?~ */
	= @385 /* ~Let's not let our mission, our duties, get in the way of (she leans in) ... of our intimacy.~ */
	= @1335
	= @1336
	IF ~
		Global("LCA_CorwinWantsToWait", "GLOBAL", 1)
	~ THEN REPLY @387 /* ~But, I thought you wanted to wait until we returned home, to Baldur's Gate.~ */
	GOTO LCA_CorwinWantsSex4A //OK
	
	IF ~~ THEN REPLY @388 /* ~I agree wholeheartedly. (You smile broadly, and kiss her.)~  */
	GOTO LCA29 //OK
	
	IF ~~ THEN REPLY @391 /* ~Are you saying what I think you're saying?~ */
	GOTO LCA_CorwinWantsSex4C //OK
END

IF ~~ THEN LCA_CorwinWantsSex4A
	SAY @389 /* ~It wasn't that I didn't want to. I do want to. It's just that I've always put my duty ahead of my desires.~ */
	IF ~~ THEN
	GOTO LCA_CorwinWantsSex4C //OK
END

IF ~~ THEN LCA_CorwinWantsSex4C
	SAY @390 /* ~Let me be perfectly clear. I want you, <CHARNAME>. I want you to make love to me.~ */
	
	IF ~
		!IsValidForPartyDialogue("HAERDALIS")
	~ THEN REPLY @392 /* ~That might be the most romantic thing anyone has ever said.~*/
	GOTO LCA_CorwinWantsSex5A //OK
	
	IF ~
		IsValidForPartyDialogue("HAERDALIS")
	~ THEN REPLY @392 /* ~That might be the most romantic thing anyone has ever said.~*/
	EXTERN HAERDAJ LCA_CorwinWantsSex5B //OK
	
	IF ~~ THEN REPLY @393 /* ~Nothing would please me more.~ */
	GOTO LCA29
END

IF ~~ THEN LCA_CorwinWantsSex5A
	SAY @394 /* ~Hardly. (She smiles.) But I appreciate the compliment.~ */

	IF ~~ THEN
	GOTO LCA29 //OK
END
//} #endregion

//{ #region Corwin Cheap Date - DLG-0050

IF ~
	Global("LCA_CorwinSex_1", "GLOBAL", 1)
	Global("LCA_SleepInn", "GLOBAL", 1)
	Global("LCA_CorwinCanHaveSex", "GLOBAL", 1)
	AreaCheck("AR0406")
	!Global("LCA_CorwinSexFirstComplain", "GLOBAL", 1)
~ THEN BEGIN LCA_CorwinSexCC
	SAY @66 /* ~When I said some place more private, I didn't mean this dump. It's filthy. Let's go to one of the better establishments in the city.~ */
	
	IF ~~ THEN REPLY @67 /* ~Right... sorry, love.~ */
	DO ~
		SetGlobal("LCA_CorwinSexFirstComplain", "GLOBAL", 1)
	~
	EXIT

	IF ~~ THEN REPLY @68 /* ~Rats, slavers, thieves, the stench, all of it bothers me. Let's go.~ */
	GOTO LCA_CorwinSexCC2
END

IF ~~ THEN BEGIN LCA_CorwinSexCC2
	SAY @69 /* ~Rats, slavers, thieves, the stench, all of it bothers me. Let's go.~ */
	
	IF ~~ THEN REPLY @67 /* ~Right... sorry, love.~ */
	DO ~
		SetGlobal("LCA_CorwinSexFirstComplain", "GLOBAL", 1)
	~
	EXIT
END

IF ~
	Global("LCA_CorwinSex_1", "GLOBAL", 1)
	Global("LCA_SleepInn", "GLOBAL", 1)
	Global("LCA_CorwinCanHaveSex", "GLOBAL", 1)
	AreaCheck("AR0406")
	Global("LCA_CorwinSexFirstComplain", "GLOBAL", 1)
~ THEN BEGIN LCA_CorwinSexCC3
	SAY @70 /* ~I already told you, we are not making love in this dump.~ */
	= @71 /*  ~You know what? Forget it. I'm not in the mood anymore. Let's go.~ */
	IF ~~ THEN
	DO ~
		SetGlobal("LCA_CorwinSex_1", "GLOBAL", 5)
		SetGlobal("LCA_CorwinSexFirstComplain", "GLOBAL", 2)
	~
	EXIT
END
//}

//{ #region Meeting Illasera - DLG-0051
IF ~~ THEN BEGIN LCA_MeetIllasera
	SAY @1123 /* ~Rohma!~ */
	
	= @1124 /* ~What have you done with my daughter!?~ */
	
	IF ~~ THEN 
	EXTERN LCBENO LCA_MeetIllasera
END

IF ~~ THEN BEGIN LCA_MeetIllasera4
	SAY @1125 /* ~Beno, you fool! I'm going to - ~ */
	
	IF ~~ THEN EXTERN LCBENO LCA_MeetIllasera4
END
//} #endregion

//{ #region Brevlik Arrested - DLG-0052
IF ~
	Global("LCA_BrevlikArrested", "GLOBAL", 1)
	!Global("LCA_GoBackHOW", "GLOBAL", 1)
~ THEN BEGIN LCA_BrevlikArrested
	SAY @538 /* ~Brevlik, your advocate will be with your shortly. <CHARNAME> — we better head back to the Hall of Wonders.~ */
	
	IF ~~ THEN 
	
	EXIT
END
//} #endregion


//{ #region Entered G1 - DLG-0053
IF ~~ THEN BEGIN LCA_TrappedG1
	SAY @1421 /* ~Are we — are we still trapped? ~ */
	
	IF ~
		!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1425 /* ~I think so, Captain. Look — it seems to be a recreation of the siege.~*/
	GOTO LCA_TrappedG1_2
	
	IF ~
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1422 /* ~I think so. Look — it seems to be a recreation of the siege.~ */
	GOTO LCA_TrappedG1_2
END

IF ~~ THEN BEGIN LCA_TrappedG1_2
	SAY @1423 /* ~This seems so real... it's just how I remember it...~ */
	
	= @1424 /*~Come on — let's head in.~*/
	IF ~~ THEN
	EXIT
END

//} #endregion

IF ~~ THEN BEGIN LCA_SAREV_10
	SAY @38 /* ~You've got to be kidding me. A deal? With you?~*/
	
	IF ~~ THEN EXTERN SAREV25A 14
END


IF ~~ THEN BEGIN LCA_DontNeedRing
	SAY @1130 /* ~That won't be necessary. We only need the one.~ */
	
	IF ~~ THEN REPLY @1131 /* ~Schael is right. Once Rohma is safe, we'll put an end to Illasera, Beno, and anyone else that had a part in the kidnapping.~ */
	EXTERN LCNEDERL LCA_DontNeedRing

END

IF ~~ THEN LCA_MeetSkie3A
	SAY @910 /* ~Skie, listen to me - put the dagger down, slowly.~ [LCCORJ19]*/ 
	
	IF ~~ THEN REPLY @912 /* ~Do as she says, Skie.~ */
	EXTERN LCSKIE LCA_MeetSkie4
	
	IF ~~ THEN REPLY @911 /* ~Put that damned dagger away Skie. It's gotten me into enough trouble already!~  */
	EXTERN LCSKIE LCA_MeetSkie4
END

IF ~
	!Global("LCA_CorwinCanHaveSex", "GLOBAL", 1)
	Global("LCA_TryToSleep", "GLOBAL", 1)
	OR(5)
		Global("LCA_CorwinSex_1", "GLOBAL", 1)
		Global("LCA_CorwinSex_2", "GLOBAL", 1)
		Global("LCA_CorwinSex_3", "GLOBAL", 1)
		Global("LCA_CorwinSex_4", "GLOBAL", 1)
		Global("LCA_CorwinSex_5", "GLOBAL", 1)
~ THEN BEGIN LCA_CorwinCantHaveSex
	SAY @367 /* ~My dear... as much as I want you to make love to me...~ */
	IF ~
		GlobalGT("LCA_CorwinBit", "GLOBAL", 0)
	~ THEN
	DO ~
		SetGlobal("LCA_TryToSleep", "GLOBAL", 0)
	~
	GOTO LCA_CorwinCantHaveSex1
	
	IF ~
		HPPercentLT(Myself, 50)
	~ THEN
	DO ~
		SetGlobal("LCA_TryToSleep", "GLOBAL", 0)
	~
	GOTO LCA_CorwinCantHaveSex2
	
	IF ~
		HPPercentLT(Player1, 50)
	~ THEN
	DO ~
		SetGlobal("LCA_TryToSleep", "GLOBAL", 0)
	~
	GOTO LCA_CorwinCantHaveSex3
END

IF ~~ THEN BEGIN LCA_CorwinCantHaveSex1
	SAY @370 /* ~This bite... I'm not feeling well *cough* at all.~ */
	IF ~~ THEN REPLY @371 /* ~I understand, love.~ */
	EXIT
END

IF ~~ THEN BEGIN LCA_CorwinCantHaveSex2
	SAY @369 /* ~I really need to have these wounds looked at first.~ */
	IF ~~ THEN REPLY @371 /* ~I understand, love.~ */
	EXIT
END

IF ~~ THEN BEGIN LCA_CorwinCantHaveSex3
	SAY @368 /* ~You really need to have those wounds looked at first.~ */
	IF ~~ THEN REPLY @371 /* ~I understand, love.~ */
	EXIT
END



IF ~
	InParty(Myself)
	Global("LCA_Banter_CorwinHexxat", "GLOBAL", 6)
	IsValidForPartyDialogue("Hexxat")
	OR(4)
		IsValidForPartyDialogue("Mazzy")
		IsValidForPartyDialogue("Anomen")
		IsValidForPartyDialogue("Aerie")
		IsValidForPartyDialogue("Keldorn")
~ THEN BEGIN LCA_CorwinHexxat3
	SAY @137 /* ~Your time has come, vampire. Allies, to me! Let's rid ourselves of this beast once and for all! ~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("LCA_Banter_CorwinHexxat", "GLOBAL", 7)
	~
	EXIT
END

IF ~
	InParty(Myself)
	Global("LCA_Banter_CorwinHexxat", "GLOBAL", 6)
	IsValidForPartyDialogue("Hexxat")
	!IsValidForPartyDialogue("Mazzy")
	!IsValidForPartyDialogue("Anomen")
	!IsValidForPartyDialogue("Aerie")
	!IsValidForPartyDialogue("Keldorn")
~ THEN BEGIN LCA_CorwinHexxat3
	SAY @138 /* ~Your time has come, vampire. Draw steel! ~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("LCA_Banter_CorwinHexxat", "GLOBAL", 7)
	~
	EXIT
END

IF ~
	InParty(Myself)
	Global("LCA_Banter_CorwinHexxat", "GLOBAL", 2)
	IsValidForPartyDialogue("Hexxat")
~ THEN BEGIN LCA_CorwinHexxat1
	SAY @130 /* ~<CHARNAME>. We need to talk.~ */
	
	IF ~
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @132 /* ~Of course love, what's on your mind? */
	GOTO LCA38
	
	IF ~
		!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @131 /*  ~What is it, Captain?~*/
	GOTO LCA38
END

IF ~
	InParty(Myself)
	Global("LCA_Banter_CorwinPlayer", "GLOBAL", 4)
	See(Player1)
	Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	// play romance song
~
THEN BEGIN LCA_CorwinPlayerBant2A
	SAY @162 /* ~My love, are you alright? You have a look of concern about you.~ */
	
	IF ~~ THEN REPLY @163 /* ~Yes love, I am fine. I was just thinking about some of the places and people we've seen...~ */
	GOTO LCA48 //OK
END

IF ~
	InParty(Myself)
	Global("LCA_Banter_CorwinPlayer", "GLOBAL", 4)
	See(Player1)
	!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
~
THEN BEGIN LCA_CorwinPlayerBant2B
	SAY @188 /* ~<CHARNAME>, are you alright? You have a look of concern about you.~ */
	
	IF ~~ THEN REPLY @167 /* ~Yes Schael, I am fine. I was just thinking about some of the places and people we've seen...~ */ 
	GOTO LCA48 //OK
END



IF ~
	InParty(Myself)
	Global("LCA_Banter_CorwinPlayer", "GLOBAL", 2)
	Global("LCA_CorwinContinue", "GLOBAL", 1) //Friend
	//play romance song
~
THEN BEGIN LCA_SkieMessageDelivered_Friend
	SAY @84 /* ~<CHARNAME>, do you have a moment?~ */
	IF ~~ THEN REPLY @85 /* ~Of course Schael, what's on your mind?~ */
	GOTO LCA31
END

IF ~
	InParty(Myself)
	Global("LCA_Banter_CorwinPlayer", "GLOBAL", 2)
	Global("LCA_CorwinContinue", "GLOBAL", 2) //Romance
	//play romance song
~
THEN BEGIN LCA_SkieMessageDelivered_Romance
	SAY @100 /* ~My love, do you have a moment?~ */
	IF ~~ THEN REPLY @101 /* ~Of course dear, what's on your mind?~ */
	GOTO LCA31
END

IF ~~ THEN BEGIN LCA_NotPaying
	SAY @1370 /* ~We're not paying for stolen merchandise, gnome. Hand it over, or I'll have you arrested.~*/
	
	IF ~~ THEN 
	EXTERN LCBREVLK LCA_GiveItToMe
END

IF ~~ THEN BEGIN LCA_ArrestBrevlik
	SAY @1371 /* ~Not so fast. You're under arrest for grand larceny.~ */
	
	IF ~~ THEN
	DO ~
		StartCutSceneMode()
		SetGlobal("LCA_BrevlikArrested", "GLOBAL", 1)
		StartCutScene("LCARREST")
	~
	EXIT
	
	IF ~
		Global("HelpBrevlik", "GLOBAL", 2)
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1372 /* ~If you arrest him, you'll have to arrest me too, love.~*/
	DO ~
		IncrementGlobal("LCA_CorwinOpinionOfPlayer", "GLOBAL", -1)
	~
	GOTO LCA_ArrestBrevlik_Mad
	
	IF ~
		Global("HelpBrevlik", "GLOBAL", 2)
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @583 /* ~(Keep quiet.)~*/
	DO ~
		StartCutSceneMode()
		SetGlobal("LCA_BrevlikArrested", "GLOBAL", 1)
		StartCutScene("LCARREST")
	~
	EXIT
	
	IF ~
		Global("HelpBrevlik", "GLOBAL", 2)
		!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @689 /* ~If you arrest him, you'll have to arrest me too, Captain.~*/
	DO ~
		IncrementGlobal("LCA_CorwinOpinionOfPlayer", "GLOBAL", -1)
	~
	GOTO LCA_ArrestBrevlik_Mad
	
	IF ~
		Global("HelpBrevlik", "GLOBAL", 2)
		!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @583 /* ~(Keep quiet.)~*/
	DO ~
		StartCutSceneMode()
		SetGlobal("LCA_BrevlikArrested", "GLOBAL", 1)
		StartCutScene("LCARREST")
	~
	EXIT
END

IF ~~ THEN BEGIN LCA_ArrestBrevlik_Mad
	SAY @580 /*  ~(She turns, and looks at you with disappointment.)~*/
	
	= @579 /* ~Fine. But you and I are going to have a long talk about this.~ */
	
	= @581 /* ~You — gnome! Get out of here before I change my mind!~ */
	
	= @582 /* ~(She delivers a swift kick to his behind.)~ */
	
	IF ~~ THEN EXTERN 
	LCBREVLK LCA_GetOut
END

IF ~~ THEN BEGIN LCA4 // from player1 3
	SAY @10 /* ~Are you alright? It looked for a moment like you were about to keel over.~ */
	
	IF ~
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @11 /* ~I felt some dizziness... it's nothing, I'll be fine.~ */
	GOTO LCA6 //OK
	
	IF ~~ THEN REPLY @11 /* ~I felt some dizziness... it's nothing, I'll be fine.~ */
	GOTO LCA5 //OK
	
	IF ~~ THEN REPLY @12 /* ~Let's just focus on getting out of here. I'll feel better once I am out of this hole.~ */
	GOTO LCA7 //OK
	
END

IF ~~ THEN BEGIN LCA_TakeFarseer
	SAY @703 /* ~The individual responsible has been arrested.~ */
	
	IF ~~ THEN
	EXTERN LCBELAND LCA_TakeFarseer2
END

IF ~~ THEN BEGIN LCA5 // LCA4
	SAY @13 /* ~Here, put your arm around my shoulder. I'll help to keep you steady. Just take it easy, <CHARNAME>.~ */
	IF ~~ THEN
	EXIT
END

IF ~~ THEN BEGIN LCA6 // LCA4
	SAY @14 /* ~Here, put your arm around my shoulder. I'll help to keep you steady. Just take it easy, love.~ */
	IF ~~ THEN
	EXIT
END

IF ~~ THEN BEGIN LCA7 // LCA4
	SAY @15 /* ~Right. Let me know if you need anything.~ */
	IF ~~ THEN
	EXIT
END

IF ~~ THEN BEGIN LCA8 // player1, 5
	SAY @16 /* ~Gods, what was that <CHARNAME>? You turned into a monster!~ */
	IF ~~ THEN
	GOTO LCA9
END

IF ~~ THEN BEGIN LCA9 // player1, 5
	SAY @17 /* ~What in the hells did Irenicus do to you?~ */
	IF ~~ THEN REPLY @18 /* ~I... I don't know Schael. I felt an uncontrollable rage, and I blacked out.~ */
	GOTO LCA10 // OK
	
	IF ~~ THEN REPLY @19 /* ~I turned into WHAT?~ */
	GOTO LCA11 // OK
END

IF ~~ THEN BEGIN LCA10 // LCA9
	SAY @21 /* ~I've never seen anything like that before, and I hope to never again.~ */
	IF ~~ THEN REPLY @22 /* ~I - I am sorry that you had to see that. Please, just keep your distance, in case it happens again.~ */
	EXIT
END

IF ~~ THEN BEGIN LCA11 //LCA9
	SAY @20 /* ~I don't know how else to describe it... <CHARNAME>, it was terrifying. ~ */
	IF ~~ THEN REPLY @22 /* ~I - I am sorry that you had to see that. Please, just keep your distance, in case it happens again.~ */
	EXIT
END

IF ~~ THEN BEGIN LCA12 // from:
	SAY @23 /* ~My love, are you feeling any better? Let me help get you on your feet - we need to keep moving.~ */
	IF ~~ THEN REPLY @24 /* ~Schael, please stay away, for your own safety.~ */ 
	DO ~
		SetGlobal("EndangerLovedOne","GLOBAL",80)
	~ 
	GOTO LCA13
	
	IF ~~ THEN REPLY @25 /* ~Keep back, I think - I think it's happening again!~ */ 
	DO ~
		SetGlobal("EndangerLovedOne","GLOBAL",80)
	~ 
	GOTO LCA13
	
	IF ~~ THEN REPLY @26 /* ~Get as far away from me as possible, now!~ */ 
	DO ~
		SetGlobal("EndangerLovedOne","GLOBAL",80)
	~ 
	GOTO LCA13

END

IF ~~ THEN BEGIN LCA13 //LCA12
	SAY @27 /* ~What's wrong <CHARNAME>... your lips are moving but I can't hear you.. no... not again... NO!~ */
	IF ~~ THEN 
	DO ~
		ActionOverride(Player1,ReallyForceSpell(Myself,SLAYER_CHANGE))
	~
	EXIT
END

IF ~~ THEN BEGIN LCA14 //LCA12
	SAY @28 /* ~<CHARNAME>, you could have killed me. I can't risk... we can't be together if you can't get this under control.~ */
	IF ~~ THEN REPLY @29 /* ~Schael, if I lose control again and put you in danger, kill me. I couldn't bear to know that I harmed the woman I love.~ */
	GOTO LCA15 //OK
	
	IF ~~ THEN REPLY @30 /* ~I don't know how to control it, or even if I can. Keep your distance, please.~ */
	GOTO LCA16 //OK
	
	IF ~~ THEN REPLY @31 /* ~I know that whatever this is, I will get it under control. ~ */
	GOTO LCA17 //OK
END

IF ~~ THEN BEGIN LCA15 // LCA14
	SAY @32 /* ~And I couldn't bear to know that I killed you. Let's just hope it doesn't come to that.~ */
	IF ~~ THEN REPLY @35 /* ~ ~Agreed. Let's go.~ */
	EXIT
END

IF ~~ THEN BEGIN LCA16 // LCA14
	SAY @33 /* ~You need me by your side, now more than ever. Don't worry - I'll stay clear if it looks like it's about to happen again.~ */
	IF ~~ THEN REPLY @36 /* ~ Thank you Schael... let's go.~*/
	EXIT
END

IF ~~ THEN BEGIN LCA17 //LCA14
	SAY @34 /* ~Good. We'll get through this together, whatever it takes. Let me know if there is anything I can do to help.~ */
	IF ~~ THEN REPLY @36 /* ~ Thank you Schael... let's go.~*/
	EXIT
END

IF ~~ THEN BEGIN LCA18 // player1, 15
	SAY @37 /* ~Quickly, we had better give these lunatics some direction, or they may turn on us.~ */
	IF ~~ THEN DO ~SetGlobal("playerTalk","AR1515",2)
		SetGlobal("AsylumPlot","GLOBAL",54)
		StartCutSceneMode()
		StartCutSceneEx("Cut41m",FALSE)
	~ 
	EXIT
END

IF ~~ THEN BEGIN LCA19
	SAY @446 /* ~The bastard is finally dead. The Council will be pleased. I know I am.~ */
	IF ~
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN
	GOTO LCA19A

	IF ~
		!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN
	GOTO LCA19B
END

IF ~~ THEN BEGIN LCA19A
	SAY @447 /* ~And your soul, my love - are you feeling any differently?~ */
	IF ~~ THEN
	EXTERN ~PLAYER1~ 17
END

IF ~~ THEN BEGIN LCA19B
	SAY @448 /* ~And your soul, <CHARNAME> - are you feeling any differently?~ */
	IF ~~ THEN
	EXTERN ~PLAYER1~ 17
END

IF ~~ THEN BEGIN LCA20
	SAY @39 /* ~<CHARNAME>, I am going with you. We've come this far together, and my love for you is too strong for me to turn back now.~ */
	IF ~~ THEN REPLY @40 /* ~I love you too, Schael, more than you know. Thank you... for everything.~ */
	GOTO LCA_P33Transitions
	
	IF ~~ THEN REPLY @41 /* ~I love you too Schael. You need not risk yourself any further. Think of your father. Think of Rohma.~ */
	GOTO LCA21
END

IF ~~ THEN BEGIN LCA21
	SAY @42 /* ~Irenicus needs to be stopped. While he is alive no one is safe, and that includes Rohma. Being at your side, love, is the best way I can protect her, and Baldur's Gate.~ */
	IF ~~ THEN REPLY @43 /* ~Thank you, my love.*/
	GOTO LCA_P33Transitions
END

IF ~~ THEN BEGIN LCA22
	SAY @47 /* ~No, <CHARNAME>. I am coming with you. Irenicus needs to be stopped. While he is alive no one is safe, and that includes Rohma. Being at your side, my friend, is the best way I can protect her, and Baldur's Gate.~ */
	IF ~~ THEN REPLY @48 /* ~Thank you Schael... for everything.~ */
	GOTO LCA_P33Transitions
END

IF ~~ THEN BEGIN LCA23
	SAY @49 /* ~And you shall have it, my friend. Irenicus must be stopped, whatever it takes.~ */
	IF ~~ THEN REPLY @48 /* ~Thank you Schael... for everything.~ */
	GOTO LCA_P33Transitions
END

IF ~~ THEN BEGIN LCA24
	SAY @50 /* ~I'm with you, <CHARNAME>. Irenicus must be stopped, before he can destroy any more innocent lives.~ */
	IF ~~ THEN REPLY @48 /* ~Thank you Schael... for everything.~ */
	GOTO LCA_P33Transitions
END

IF ~~ THEN BEGIN LCA_P33Transitions
	SAY @445 /* ~(You share a warm embrace, and steel yourself for the battle ahead.)~ */
	
	COPY_TRANS PLAYER1 33
END

IF ~~ THEN BEGIN LCA_CorwinMadam2
	SAY @51 /* ~No, Madame, <PRO_HESHE> doesn't need anything from this whorehouse.~ */
	IF ~~ THEN
	EXTERN ~MADAM~ LCA_CorwinMadam3
END

IF ~~ THEN BEGIN LCA_P1_25A
	SAY @248 /* ~My love, we... died? I felt you, pulling me with you to this place. Very well - we were together in life and will remain so, in death.~ */
	COPY_TRANS PLAYER1 25
END

IF ~~ THEN BEGIN LCA_P1_25B
	SAY @57 /* ~<CHARNAME>, we... died? I felt you, pulling me with you to this place. Very well - we stood at each other's side in life and will continue to do so, in death.~ */
	COPY_TRANS PLAYER1 25
END

IF ~~ THEN BEGIN LCA27A
	SAY @421 /* ~~Don't look so disappointed, love. We'll have plenty of time for those... activities (she smiles)... once we're back home. (She leans in for a kiss.)~~ */
	IF ~~ THEN REPLY @58 /* ~(Kiss her) I look forward to that day.~ */
	GOTO LCA28 //OK
END

IF ~~ THEN BEGIN LCA27
	SAY @52 /*  ~(She laughs) Don't look so disappointed, love. When we return to Baldur's Gate I'll be sure to give you the... (she glances down, then back up again) attention... you so clearly need. (She leans in for a kiss)~ */
	IF ~~ THEN REPLY @58 /* ~(Kiss her) I look forward to that day.~ */
	GOTO LCA28 //OK
	
	IF ~
		CheckStatGT(Player1, 15, CHR)
	~ THEN REPLY @59 /* ~(Kiss her) Why wait?~ */
	GOTO LCA30A //OK
	
	IF ~
		!CheckStatGT(Player1, 15, CHR)
	~ THEN REPLY @59 /* ~(Kiss her) Why wait?~ */
	GOTO LCA30B //OK
END

IF ~~ THEN BEGIN LCA28
	SAY @55 /* ~As do I. Let's go love. We have work to do.~ */
	IF ~~ THEN
	DO ~
		SetGlobal("LCA_CorwinWantsToWait", "GLOBAL", 1)
	~
	EXIT
END

IF ~~ THEN BEGIN LCA29
	SAY @62 /* ~Let's find some place more private, shall we?  ~ */
	IF ~~ THEN REPLY @63 /* ~What did you have in mind?~ */
	GOTO LCA30C
	
	IF ~~ THEN REPLY @65 /* ~Come with me love, I know just the place. (You resolve to pay for a room at one of the nearby inns.)~ */
	GOTO LCA31C
END

IF ~~ THEN BEGIN LCA30A
	SAY @61 /* ~Mm, is that an order, hero? (She smiles, and places her arms around your shoulders) Gods know it's been too long already. ~ */
	IF ~~ THEN
	GOTO LCA29
	
	
END

IF ~~ THEN BEGIN LCA30B
	SAY @60 /* ~Mm. As much as I want to, this is hardly the time or place, and duty must come before pleasure. Let's go love. We have work to do.~ */
	IF ~~ THEN
	DO ~
		SetGlobal("LCA_CorwinWantsToWait", "GLOBAL", 1)
	~
	EXIT
END

IF ~~ THEN BEGIN LCA30C
	SAY @64 /* ~The street in mid-day, or perhaps the amphitheater. Gods, what do you think? There are plenty of inns in the city, pick one!~ */
	IF ~~ THEN REPLY @65 /* ~Come with me, I know just the place (You resolve to pay for a room at one of the nearby inns).~ */
	GOTO LCA31C
END

IF ~~ THEN BEGIN LCA31C
	SAY @308 /* ~Gladly, my dear.~ */
	IF ~~ THEN
	DO ~
		SetGlobal("LCA_CorwinSex_1", "GLOBAL", 1)
	~
	EXIT
END

IF ~~ THEN BEGIN LCA31
	SAY @86 /* ~Before I left Baldur's Gate, Skie approached me and asked that I give you a message.~ */
	= @87 /* ~She said that she wanted to thank you for releasing her from the dagger, and to apologize for her father's behaviour. You deserved far better than what happened to you.~ */
	
	IF ~~ THEN REPLY @88 /* ~There is no need for her to apologize for her father. She was not the one who tried to have me executed. I do appreciate the gesture, however. ~ */
	GOTO LCA32

	IF ~~ THEN REPLY @89 /* ~Thank you Schael, though I doubt I would have acted any differently if I were in Entar's shoes. That scoundrel Irenicus made sure that all of the evidence pointed to my guilt.~  */
	GOTO LCA33
END

IF ~~ THEN BEGIN LCA32
	SAY @90 /* ~Entar was completely convinced of your guilt, as were many others.~  */
	
	IF ~
		Global("LCA_CorwinContinue", "GLOBAL", 1) //friend
	~ 
	THEN REPLY @92 /* ~But not you. Schael, your belief in my innocence was what kept me going. I want you to know that. I also want you to know that I appreciate dearly your being here. It must not have been easy for you to leave Rohma.~ */
	GOTO LCA34A
	
	IF ~
		Global("LCA_CorwinContinue", "GLOBAL", 2) //romance
	~ 
	THEN REPLY @102 /* ~But not you. My love, your belief in my innocence was what kept me going. I want you to know that. I also want you to know that I appreciate dearly your being here. It must not have been easy for you to leave Rohma.~ */
	GOTO LCA34B	
END

IF ~~ THEN BEGIN LCA33
	SAY @91 /* ~Indeed. He had much of the city convinced of your guilt.~ */
	
	IF ~
		Global("LCA_CorwinContinue", "GLOBAL", 1) //friend
	~ 
	THEN REPLY @92 /* ~But not you. Schael, your belief in my innocence was what kept me going. I want you to know that. I also want you to know that I appreciate dearly your being here. It must not have been easy for you to leave Rohma.~ */
	GOTO LCA34A
	
	IF ~
		Global("LCA_CorwinContinue", "GLOBAL", 2) //romance
	~ 
	THEN REPLY @102 /* ~But not you. My love, your belief in my innocence was what kept me going. I want you to know that. I also want you to know that I appreciate dearly your being here. It must not have been easy for you to leave Rohma.~ */
	GOTO LCA34B	
END

IF ~~ THEN BEGIN LCA34A // friend
	SAY @93 /* ~It wasn't. I miss her everyday. But I need to be here, with you. Irenicus must be punished for the crimes he has committed.~ */
	
	IF ~~ THEN REPLY @83 /*  ~With your help, he will be, my friend. Let's go.~ */
	DO ~
		SetGlobal("LCA_Banter_CorwinPlayer", "GLOBAL", 3)
		SetGlobal("LCA_CorwinRomanceActive", "GLOBAL", 3)
		SetPlayerSound(Myself,268282,SELECT_ACTION6)
	~
	EXIT
	
	IF ~~ THEN REPLY @94 /*  ~Schael... I... I didn't realize how much I needed you near me, until you were gone. Your being here, now, fills a void in my heart that I did not know was there. I would like for us to move past friendship, into a more serious relationship. I... am in love with you, Schael.~*/
	DO ~
		SetGlobal("LCA_Banter_CorwinPlayer", "GLOBAL", 3)
		SetGlobal("LCA_CorwinRomanceActive", "GLOBAL", 2)
		SetGlobal("LCA_CorwinLoveBG2", "GLOBAL", 1)
	~
	GOTO LCA35
END

IF ~~ THEN BEGIN LCA34B // romance
	SAY @103 /* ~It wasn't. I miss her everyday. But I need to be here, with you, dear. Irenicus must be punished for the crimes he has committed.~ */
	
	IF ~~ THEN REPLY @104 /*  ~He will be, my love. And when this is done, we will go back to Baldur's Gate and start our new life together, with Rohma.~ */
	DO ~
		SetGlobal("LCA_Banter_CorwinPlayer", "GLOBAL", 3)
	~
	GOTO LCA36
END

IF ~~ THEN BEGIN LCA35
	SAY @95 /* ~<CHARNAME>, I missed you too, dearly... I also want us to be more to eachother than what we are now. My heart broke when I read your letter. I keep thinking that if I had left with you, you wouldn't have been captured, maybe Khalid and Dynaheir would still be alive, maybe - ~*/
	
	IF ~~ THEN REPLY @96 /* ~Stop it, Schael. Do not blame yourself. There is nothing that you could have done to stop what happened; Irenicus set his trap perfectly. It's better that you were not with me when we were captured - I shudder to think what Irenicus would have done to you, had you been captured as well. ~ */
	EXTERN ~LCCORWIN~ LCAKiss
	
	IF ~~ THEN REPLY @97 /* ~Schael, what matters is that we are here, together, now.~ */
	EXTERN ~LCCORWIN~ LCAKiss
END

IF ~~ THEN BEGIN LCA36
	SAY @105 /* ~I've been looking forward to that day... more than you know. Let's go, love.~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("LCA_CorwinRomanceActive", "GLOBAL", 2)
		SetGlobal("ViconiaRomanceActive", "GLOBAL", 3)
		SetGlobal("AerieRomanceActive", "GLOBAL", 3)
		SetGlobal("JaheiraRomanceActive", "GLOBAL", 3)
		SetGlobal("AnomenRomanceActive", "GLOBAL", 3)
		SetGlobal("DornRomanceActive", "GLOBAL", 3)
		SetGlobal("NeeraRomanceActive", "GLOBAL", 3)
		SetGlobal("HexxatRomanceActive", "GLOBAL", 3)
		SetPlayerSound(Myself,@452,SELECT_ACTION6)
	~
	EXIT
END

IF ~~ THEN BEGIN LCA37
	SAY @99 /* ~Gladly, my dear.~ */
	
	IF ~~ THEN
	EXIT
END

IF ~~ THEN BEGIN LCA38
	SAY @133 /* ~The vampire. Hexxat. You allow this beast to travel with us?~ */
	
	IF ~~ THEN REPLY @134 /* ~We need her, Schael.~ */
	GOTO LCA39
	
	IF ~~ THEN REPLY @135 /* ~And what of it?~ */
	GOTO LCA39
	
END

IF ~~ THEN BEGIN LCA39
	SAY @136 /* ~You're going to have to make a decision, and soon, or I will make it for you. I trust that I've made myself clear.~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("LCA_Banter_CorwinHexxat", "GLOBAL", 3)
	~
	EXIT
END


IF ~~ THEN BEGIN LCA48
	SAY @189 /* ~What's on your mind?~ */
	
	IF ~~ THEN REPLY @164 /* ~Before I was exiled, I remember the city was still struggling with the refugee crisis. Have the Dukes had any success in resettling the refugees?~ */
	DO ~
		SetGlobal("LCA_AskedAboutRefugees", "LOCALS", 1)
	~
	GOTO LCA49
	
	IF ~~ THEN REPLY @168 /* ~We met some interesting people during the Dragonspear campaign. Remember that gnome, Glint? The goblin shaman, M'Khlin? The others, as well.~ */
	DO ~
		SetGlobal("LCA_AskedAboutDSFriends", "LOCALS", 1)
	~
	GOTO LCA50
	
	IF ~~ THEN REPLY @172 /* ~I've thought from time to time about the terror of what we experienced in Avernus. Do you think about that place?~ */
	DO ~
		SetGlobal("LCA_AskedAboutAvernus", "LOCALS", 1)
	~
	GOTO LCA51
	
	IF ~
		!Global("LCA_AskedAboutFirstMeeting", "LOCALS", 1)
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
		Global("LCA_CorwinEET", "GLOBAL", 1)
	~ THEN REPLY @180 /* ~I was thinking about the first time we met. Do you remember, love?~ */
	DO ~
		SetGlobal("LCA_AskedAboutFirstMeeting", "LOCALS", 1)
	~
	GOTO LCA54_CorwinEET
	
	IF ~
		!Global("LCA_AskedAboutFirstMeeting", "LOCALS", 1)
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
		Global("LCA_CorwinEET", "GLOBAL", 0)
	~ THEN REPLY @180 /* ~I was thinking about the first time we met. Do you remember, love?~ */
	DO ~
		SetGlobal("LCA_AskedAboutFirstMeeting", "LOCALS", 1)
	~
	GOTO LCA54_NoCorwinEET
	
	IF ~
		!Global("LCA_AskedAboutFirstMeeting", "LOCALS", 1)
		!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
		Global("LCA_CorwinEET", "GLOBAL", 1)
	~ THEN REPLY @193 /* ~I was thinking about the first time we met. Do you remember?~ */
	DO ~
		SetGlobal("LCA_AskedAboutFirstMeeting", "LOCALS", 1)
	~
	GOTO LCA54_CorwinEET
	
	IF ~
		!Global("LCA_AskedAboutFirstMeeting", "LOCALS", 1)
		!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
		Global("LCA_CorwinEET", "GLOBAL", 0)
	~ THEN REPLY @193 /* ~I was thinking about the first time we met. Do you remember?~ */
	DO ~
		SetGlobal("LCA_AskedAboutFirstMeeting", "LOCALS", 1)
	~
	GOTO LCA54_NoCorwinEET
END

IF ~~ THEN BEGIN LCA48A
	SAY @190 /* ~Anything else you'd like to discuss?~ */
	
	IF ~
		!Global("LCA_AskedAboutRefugees", "LOCALS", 1)
	~ THEN REPLY @164 /* ~Before I was exiled, I remember the city was still struggling with the refugee crisis. Have the 
	Dukes had any success in resettling the refugees?~ */
	DO ~
		SetGlobal("LCA_AskedAboutRefugees", "LOCALS", 1)
	~
	GOTO LCA49 //OK
	
	IF ~
		!Global("LCA_AskedAboutDSFriends", "LOCALS", 1)
	~ THEN REPLY @168 /* ~We met some interesting people during the Dragonspear campaign. Remember that gnome, Glint? The goblin shaman, M'Khlin? The others, as well.~ */
	DO ~
		SetGlobal("LCA_AskedAboutDSFriends", "LOCALS", 1)
	~
	GOTO LCA50 //OK
	
	IF ~
		!Global("LCA_AskedAboutAvernus", "LOCALS", 1)
		!Global("BD_Sacrifice_Corwin","bd4500",3)
	~ THEN REPLY @172 /* ~I've thought from time to time about the terror of what we experienced in Avernus. Do you think about that place?~ */
	DO ~
		SetGlobal("LCA_AskedAboutAvernus", "LOCALS", 1)
	~
	GOTO LCA51 //OK
	
	IF ~
		!Global("LCA_AskedAboutAvernus", "LOCALS", 1)
		Global("BD_Sacrifice_Corwin","bd4500",3)
	~ THEN REPLY @172 /* ~I've thought from time to time about the terror of what we experienced in Avernus. Do you think about that place?~ */
	DO ~
		SetGlobal("LCA_AskedAboutAvernus", "LOCALS", 1)
	~
	GOTO LCA57 //OK
	
	IF ~
		!Global("LCA_AskedAboutFirstMeeting", "LOCALS", 1)
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
		Global("LCA_CorwinEET", "GLOBAL", 1)
	~ THEN REPLY @180 /* ~I was thinking about the first time we met. Do you remember, love?~ */
	DO ~
		SetGlobal("LCA_AskedAboutFirstMeeting", "LOCALS", 1)
	~
	GOTO LCA54_CorwinEET
	
	IF ~
		!Global("LCA_AskedAboutFirstMeeting", "LOCALS", 1)
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
		Global("LCA_CorwinEET", "GLOBAL", 0)
	~ THEN REPLY @180 /* ~I was thinking about the first time we met. Do you remember, love?~ */
	DO ~
		SetGlobal("LCA_AskedAboutFirstMeeting", "LOCALS", 1)
	~
	GOTO LCA54_NoCorwinEET
	
	IF ~
		!Global("LCA_AskedAboutFirstMeeting", "LOCALS", 1)
		!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
		Global("LCA_CorwinEET", "GLOBAL", 1)
	~ THEN REPLY @193 /* ~I was thinking about the first time we met. Do you remember?~ */
	DO ~
		SetGlobal("LCA_AskedAboutFirstMeeting", "LOCALS", 1)
	~
	GOTO LCA54_CorwinEET
	
	IF ~
		!Global("LCA_AskedAboutFirstMeeting", "LOCALS", 1)
		!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
		Global("LCA_CorwinEET", "GLOBAL", 0)
	~ THEN REPLY @193 /* ~I was thinking about the first time we met. Do you remember?~ */
	DO ~
		SetGlobal("LCA_AskedAboutFirstMeeting", "LOCALS", 1)
	~
	GOTO LCA54_NoCorwinEET
	
	IF ~
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
		OR(4)
			Global("LCA_AskedAboutFirstMeeting", "LOCALS", 1)
			Global("LCA_AskedAboutAvernus", "LOCALS", 1)
			Global("LCA_AskedAboutDSFriends", "LOCALS", 1)
			Global("LCA_AskedAboutRefugees", "LOCALS", 1)
	~ THEN REPLY @171 /* ~That's enough reminiscing, for now. Let's get going, love.~ */
	DO ~
		SetGlobal("LCA_Banter_CorwinPlayer", "GLOBAL", 5)
	~
	EXIT
	
	IF ~
		!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
		OR(4)
			Global("LCA_AskedAboutFirstMeeting", "LOCALS", 1)
			Global("LCA_AskedAboutAvernus", "LOCALS", 1)
			Global("LCA_AskedAboutDSFriends", "LOCALS", 1)
			Global("LCA_AskedAboutRefugees", "LOCALS", 1)
	~ 
	THEN REPLY @171 /* ~That's enough reminiscing, for now. Let's get going, Schael.~ */
	DO ~
		SetGlobal("LCA_Banter_CorwinPlayer", "GLOBAL", 5)
	~
	EXIT
END

IF ~~ THEN BEGIN LCA49
	SAY @165 /* ~Yes, at least those whose homes were not completely destroyed by the crusade. There are still many that need to be resettled.~ */
	= @166 /* ~There are plans to settle them just east of the city. Some ankheg nests will need to be cleared, but the city planners think it's a workable solution.~ */		
	IF ~
		OR(3)
			!Global("LCA_AskedAboutFirstMeeting", "LOCALS", 1)
			!Global("LCA_AskedAboutAvernus", "LOCALS", 1)
			!Global("LCA_AskedAboutDSFriends", "LOCALS", 1)
	~ THEN REPLY @191 /* ~It's good that at least some progress was made.~ */
	GOTO LCA48A //OK
	
	IF ~
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
		OR(3)
			Global("LCA_AskedAboutFirstMeeting", "LOCALS", 1)
			Global("LCA_AskedAboutAvernus", "LOCALS", 1)
			Global("LCA_AskedAboutDSFriends", "LOCALS", 1)
	~ THEN REPLY @171 /* ~That's enough reminiscing, for now. Let's get going, love.~ */
	EXIT
	
	IF ~
		!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
		OR(3)
			Global("LCA_AskedAboutFirstMeeting", "LOCALS", 1)
			Global("LCA_AskedAboutAvernus", "LOCALS", 1)
			Global("LCA_AskedAboutDSFriends", "LOCALS", 1)
	~ THEN REPLY @171 /* ~That's enough reminiscing, for now. Let's get going, Schael.~ */
	EXIT
END 

IF ~~ THEN BEGIN LCA_SlaveGirl
	SAY @749 /* ~Little girl, what's your name? You said you were sent here from Baldur's Gate? ~ */
	
	IF ~~ THEN 
	DO ~
		IncrementGlobal("LCA_CorwinOpinionOfPlayer", "GLOBAL", 1)
		SetGlobal("LCA_CorwinSlaverPlot", "GLOBAL", 1)
		SetGlobal("LCA_LearnedSlaveGirlsName", "GLOBAL", 1)
	~
	EXTERN LCGIRL2 LCA_SlaveGirl2
END

IF ~~ THEN BEGIN LCA_SlaveGirl3
	SAY @751 /* ~Here, take this gold.~ */
	
	IF ~~ THEN 
	EXTERN LCGIRL2 LCA_SlaveGirl4
END

IF ~~ THEN BEGIN LCA_SlaveGirl5
	SAY @752 /* ~Listen to me. Take the others and get out of here, then head to the Government District. Speak to Inspector Brega, and tell him everything that happened. Go, now!~   */
	
	IF ~~ THEN EXTERN LCGIRL2 4
END

IF ~~ THEN BEGIN LCA50
	SAY @169  /* ~Hah, how could anyone forget. Hopefully they are doing well.~ */
	
	IF ~
		OR(3)
			!Global("LCA_AskedAboutFirstMeeting", "LOCALS", 1)
			!Global("LCA_AskedAboutAvernus", "LOCALS", 1)
			!Global("LCA_AskedAboutRefugees", "LOCALS", 1)
	~ THEN REPLY @170 /* ~Yes, I hope so too. I have a feeling we'll run into them again, sooner or later.~ */
	GOTO LCA48A //OK
	
	IF ~
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
		OR(3)
			Global("LCA_AskedAboutFirstMeeting", "LOCALS", 1)
			Global("LCA_AskedAboutAvernus", "LOCALS", 1)
			Global("LCA_AskedAboutRefugees", "LOCALS", 1)
		
	~ THEN REPLY @171 /* ~That's enough reminiscing, for now. Let's get going, love.~ */
	EXIT
	
	IF ~
		!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
		OR(3)
			Global("LCA_AskedAboutFirstMeeting", "LOCALS", 1)
			Global("LCA_AskedAboutAvernus", "LOCALS", 1)
			Global("LCA_AskedAboutRefugees", "LOCALS", 1)
	~ THEN REPLY @171 /* ~That's enough reminiscing, for now. Let's get going, Schael.~ */
	EXIT
END

IF ~~ THEN BEGIN LCA51
	SAY @173 /* ~I do, too. It's only natural, I suppose. It was a traumatic experience for all of us.~ */
	
	IF ~
		Dead("bdcaelar")
	~ THEN REPLY @174 /* ~Yes. I often wonder about Aun, Caelar's uncle. Do you think he is still alive, in Avernus?~ */
	GOTO LCA52 //OK
	
	IF ~
		!Dead("bdcaelar")
	~ THEN REPLY @175 /* ~Yes. I often wonder about Caelar, and whether she is still alive, in Avernus.~ */
	GOTO LCA53 //OK
END

IF ~~ THEN BEGIN LCA52
	SAY @177 /* ~Perhaps he is. I'm grateful for his sacrifice. I can't imagine the heartbreak he felt watching his niece pledge her soul to a demon.~ */
	
	IF ~
		OR(3)
			!Global("LCA_AskedAboutFirstMeeting", "LOCALS", 1)
			!Global("LCA_AskedAboutDSFriends", "LOCALS", 1)
			!Global("LCA_AskedAboutRefugees", "LOCALS", 1)
	~ THEN REPLY @192  /* ~Indeed. I too am grateful.~ */
	GOTO LCA48A //OK
	
	IF ~
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
		OR(3)
			Global("LCA_AskedAboutFirstMeeting", "LOCALS", 1)
			Global("LCA_AskedAboutDSFriends", "LOCALS", 1)
			Global("LCA_AskedAboutRefugees", "LOCALS", 1)
	~ THEN REPLY @171 /* ~That's enough reminiscing, for now. Let's get going, love.~ */
	DO ~
		SetGlobal("LCA_Banter_CorwinPlayer", "GLOBAL", 5)
	~
	EXIT
	
	IF ~
		!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
		OR(3)
			Global("LCA_AskedAboutFirstMeeting", "LOCALS", 1)
			Global("LCA_AskedAboutDSFriends", "LOCALS", 1)
			Global("LCA_AskedAboutRefugees", "LOCALS", 1)
	~ THEN REPLY @171 /* ~That's enough reminiscing, for now. Let's get going, Schael.~ */
	DO ~
		SetGlobal("LCA_Banter_CorwinPlayer", "GLOBAL", 5)
	~
	EXIT
END

IF ~~ THEN BEGIN LCA53
	SAY @176 /* ~Perhaps she is. But it doesn't matter. I don't think we'll need to worry about her ever again.~ */
	IF ~
		OR(3)
			!Global("LCA_AskedAboutFirstMeeting", "LOCALS", 1)
			!Global("LCA_AskedAboutDSFriends", "LOCALS", 1)
			!Global("LCA_AskedAboutRefugees", "LOCALS", 1)
	~ THEN REPLY @186 /* ~I hope you're right.~ */
	GOTO LCA48A //OK
	
	IF ~
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
		OR(3)
			Global("LCA_AskedAboutFirstMeeting", "LOCALS", 1)
			Global("LCA_AskedAboutDSFriends", "LOCALS", 1)
			Global("LCA_AskedAboutRefugees", "LOCALS", 1)
	~ THEN REPLY @171 /* ~That's enough reminiscing, for now. Let's get going, love.~ */
	DO ~
		SetGlobal("LCA_Banter_CorwinPlayer", "GLOBAL", 5)
	~
	EXIT
	
	IF ~
		!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
		OR(3)
			Global("LCA_AskedAboutFirstMeeting", "LOCALS", 1)
			Global("LCA_AskedAboutDSFriends", "LOCALS", 1)
			Global("LCA_AskedAboutRefugees", "LOCALS", 1)
	~ THEN REPLY @171 /* ~That's enough reminiscing, for now. Let's get going, Schael.~ */
	DO ~
		SetGlobal("LCA_Banter_CorwinPlayer", "GLOBAL", 5)
	~
	EXIT
END

IF ~~ THEN BEGIN LCA54_NoCorwinEET
	SAY @1300 /*  ~Of course. It was at the Ducal palace... we were under attack by assassins sent by the crusade.~ */
	
	IF ~
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1301 /* ~Even amidst the chaos of that night, I remember being capitvated by your beauty. I still am.~ */
	GOTO LCA55 //OK
	
	IF ~
		!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1302 /* ~We defeated the assassins and left for Dragonspear the next morning.~ */
	GOTO LCA56 //OK
END

IF ~~ THEN BEGIN LCA54_CorwinEET
	SAY @181 /* ~Of course. It was at Wyrm's Crossing. Scar, rest his soul, introduced us. <CHARNAME>, the intrepid adventurer who had been battling bandits up and down the Sword Coast.~ */
	
	IF ~
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @182 /* ~And Captain Schael Corwin of the Flaming Fist, who was investigating the Iron Throne within the city. I remember being captivated by your beauty. I still am.~ */
	GOTO LCA55 //OK
	
	IF ~
		!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @184 /* ~And Captain Schael Corwin of the Flaming Fist, who was investigating the Iron Throne within the city.~ */
	GOTO LCA56 //OK
END

IF ~~ THEN BEGIN LCA55
	SAY @183 /* ~I'll take your words over roses, any day.~ */
	
	IF ~
		OR(3)
			!Global("LCA_AskedAboutAvernus", "LOCALS", 1)
			!Global("LCA_AskedAboutDSFriends", "LOCALS", 1)
			!Global("LCA_AskedAboutRefugees", "LOCALS", 1)
	~ THEN REPLY @195 /* ~(You share a warm embrace)~ */
	GOTO LCA48A	//OK
	
	IF ~
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
		OR(3)
			Global("LCA_AskedAboutAvernus", "LOCALS", 1)
			Global("LCA_AskedAboutDSFriends", "LOCALS", 1)
			Global("LCA_AskedAboutRefugees", "LOCALS", 1)
	~ THEN REPLY @171 /* ~That's enough reminiscing, for now. Let's get going, love.~ */
	DO ~
		SetGlobal("LCA_Banter_CorwinPlayer", "GLOBAL", 5)
	~
	EXIT
	
	IF ~
		!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
		OR(3)
			Global("LCA_AskedAboutAvernus", "LOCALS", 1)
			Global("LCA_AskedAboutDSFriends", "LOCALS", 1)
			Global("LCA_AskedAboutRefugees", "LOCALS", 1)
	~ THEN REPLY @171 /* ~That's enough reminiscing, for now. Let's get going, Schael.~ */
	DO ~
		SetGlobal("LCA_Banter_CorwinPlayer", "GLOBAL", 5)
	~
	EXIT
END

IF ~~ THEN BEGIN LCA56
	SAY @183 /* ~The beginnings of a long and fruitful friendship, one that I hope will last well into the future.~ */
	
	IF ~
		OR(3)
			!Global("LCA_AskedAboutAvernus", "LOCALS", 1)
			!Global("LCA_AskedAboutDSFriends", "LOCALS", 1)
			!Global("LCA_AskedAboutRefugees", "LOCALS", 1)
	~ THEN REPLY @187 /* ~As do I, my friend.~ */
	GOTO LCA48A	//OK
	
	IF ~
		OR(3)
			Global("LCA_AskedAboutAvernus", "LOCALS", 1)
			Global("LCA_AskedAboutDSFriends", "LOCALS", 1)
			Global("LCA_AskedAboutRefugees", "LOCALS", 1)
	~ THEN REPLY @171 /* ~That's enough reminiscing, for now. Let's get going, Schael.~ */
	DO ~
		SetGlobal("LCA_Banter_CorwinPlayer", "GLOBAL", 5)
	~
	EXIT
END

IF ~~ THEN BEGIN LCA_Congratulations1
	SAY @1103 /* ~Thank you, Skie! <CHARNAME>, you must be thrilled!~ */
	
	IF ~~ THEN REPLY @1104 /* ~I'm still at a loss for words.~ */
	GOTO LCA_Congratulations2
	
	IF ~~ THEN REPLY @1105 /* ~This turned out far better than I could have dreamed..~ */
	GOTO LCA_Congratulations2
END

IF ~~ THEN BEGIN LCA_Congratulations2
	SAY @1106 /* ~I can hardly believe it myself.~ */
	
	IF ~
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN GOTO LCA_Congratulations2A
	
	IF ~
		!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN GOTO LCA_Congratulations2B
END

IF ~~ THEN BEGIN LCA_Congratulations2A
	SAY @1111 /* ~Defender of Baldur's Gate. Well done, my love.~ */
	= @1108 /* ~(You kiss and embrace.)~ */
	= @1107 /* ~Come on love! Let's go and celebrate!~ */
	
	IF ~~ THEN REPLY @1109 /* ~Drinks are on me, Capt - I mean, Major!~ */
	DO ~
		StartCutSceneMode()
		StartCutScene("CHDINROM")
	~
	EXIT 
	
	IF ~
		Global("LCA_RingEnchanted", "GLOBAL", 2)
	~ THEN REPLY @1109 /* ~Drinks are on me, Capt - I mean, Major!~ */ 
	DO ~
		ChangeStat(Player1, MAXHITPOINTS, -4, ADD)
		StartCutSceneMode()
		StartCutScene("CHDINROM")
	~
	EXIT
	
	IF ~
		CheckStatGT(Player1, 49, MAXHITPOINTS)
		Global("LCA_RingEnchanted", "GLOBAL", 2)
	~ THEN REPLY @1109 /* ~Drinks are on me, Capt - I mean, Major!~ */ 
	DO ~
		ChangeStat(Player1, MAXHITPOINTS, -5, ADD)
		StartCutSceneMode()
		StartCutScene("CHDINROM")
	~
	EXIT
	
	IF ~
		CheckStatGT(Player1, 59, MAXHITPOINTS)
		Global("LCA_RingEnchanted", "GLOBAL", 2)
	~ THEN REPLY @1109 /* ~Drinks are on me, Capt - I mean, Major!~ */ 
	DO ~
		ChangeStat(Player1, MAXHITPOINTS, -6, ADD)
		StartCutSceneMode()
		StartCutScene("CHDINROM")
	~
	EXIT
	
	IF ~
		CheckStatGT(Player1, 69, MAXHITPOINTS)
		Global("LCA_RingEnchanted", "GLOBAL", 2)
	~ THEN REPLY @1109 /* ~Drinks are on me, Capt - I mean, Major!~ */ 
	DO ~
		ChangeStat(Player1, MAXHITPOINTS, -7, ADD)
		StartCutSceneMode()
		StartCutScene("CHDINROM")
	~
	EXIT
	
	IF ~
		CheckStatGT(Player1, 79, MAXHITPOINTS)
		Global("LCA_RingEnchanted", "GLOBAL", 2)
	~ THEN REPLY @1109 /* ~Drinks are on me, Capt - I mean, Major!~ */ 
	DO ~
		ChangeStat(Player1, MAXHITPOINTS, -8, ADD)
		StartCutSceneMode()
		StartCutScene("CHDINROM")
	~
	EXIT
	
	IF ~
		CheckStatGT(Player1, 89, MAXHITPOINTS)
		Global("LCA_RingEnchanted", "GLOBAL", 2)
	~ THEN REPLY @1109 /* ~Drinks are on me, Capt - I mean, Major!~ */ 
	DO ~
		ChangeStat(Player1, MAXHITPOINTS, -9, ADD)
		StartCutSceneMode()
		StartCutScene("CHDINROM")
	~
	EXIT
	
	IF ~
		CheckStatGT(Player1, 99, MAXHITPOINTS)
		Global("LCA_RingEnchanted", "GLOBAL", 2)
	~ THEN REPLY @1109 /* ~Drinks are on me, Capt - I mean, Major!~ */ 
	DO ~
		ChangeStat(Player1, MAXHITPOINTS, -10, ADD)
		StartCutSceneMode()
		StartCutScene("CHDINROM")
	~
	EXIT
	
	IF ~
		CheckStatGT(Player1, 109, MAXHITPOINTS)
		Global("LCA_RingEnchanted", "GLOBAL", 2)
	~ THEN REPLY @1109 /* ~Drinks are on me, Capt - I mean, Major!~ */ 
	DO ~
		ChangeStat(Player1, MAXHITPOINTS, -11, ADD)
		StartCutSceneMode()
		StartCutScene("CHDINROM")
	~
	EXIT
	
	IF ~
		CheckStatGT(Player1, 119, MAXHITPOINTS)
		Global("LCA_RingEnchanted", "GLOBAL", 2)
	~ THEN REPLY @1109 /* ~Drinks are on me, Capt - I mean, Major!~ */ 
	DO ~
		ChangeStat(Player1, MAXHITPOINTS, -12, ADD)
		StartCutSceneMode()
		StartCutScene("CHDINROM")
	~
	EXIT
	
	
	IF ~
		CheckStatGT(Player1, 129, MAXHITPOINTS)
		Global("LCA_RingEnchanted", "GLOBAL", 2)
	~ THEN REPLY @1109 /* ~Drinks are on me, Capt - I mean, Major!~ */ 
	DO ~
		ChangeStat(Player1, MAXHITPOINTS, -13, ADD)
		StartCutSceneMode()
		StartCutScene("CHDINROM")
	~
	EXIT
	
	IF ~
		CheckStatGT(Player1, 139, MAXHITPOINTS)
		Global("LCA_RingEnchanted", "GLOBAL", 2)
	~ THEN REPLY @1109 /* ~Drinks are on me, Capt - I mean, Major!~ */ 
	DO ~
		ChangeStat(Player1, MAXHITPOINTS, -14, ADD)
		StartCutSceneMode()
		StartCutScene("CHDINROM")
	~
	EXIT
	
	IF ~
		CheckStatGT(Player1, 149, MAXHITPOINTS)
		Global("LCA_RingEnchanted", "GLOBAL", 2)
	~ THEN REPLY @1109 /* ~Drinks are on me, Capt - I mean, Major!~ */ 
	DO ~
		ChangeStat(Player1, MAXHITPOINTS, -15, ADD)
		StartCutSceneMode()
		StartCutScene("CHDINROM")
	~
	EXIT
END

IF ~~ THEN BEGIN LCA_Congratulations2B
	SAY @1110 /* ~Defender of Baldur's Gate. Well done, my friend.~ */
	
	IF ~~ THEN 
	GOTO LCA_Congratulations3
	
	IF ~
		Global("AerieRomanceActive", "GLOBAL", 2)
	~ THEN GOTO LCA_Congratulations3_Aerie
	
	IF ~
		Global("JaheiraRomanceActive", "GLOBAL", 2)
	~ THEN GOTO LCA_Congratulations3_Jaheira
	
	IF ~
		Global("NeeraRomanceActive", "GLOBAL", 2)
	~ THEN GOTO LCA_Congratulations3_Neera
	
	IF ~
		Global("ValygarRomanceActive", "GLOBAL", 2)
	~ THEN GOTO LCA_Congratulations3_Valygar
	
	IF ~
		Global("AnomenRomanceActive", "GLOBAL", 2)
	~ THEN GOTO LCA_Congratulations3_Anomen
END


IF ~~ THEN BEGIN LCA_Congratulations3
	SAY @1117 /* ~Come on! Let's go and celebrate!~ */
	
	IF ~~ THEN REPLY @1109 /* ~Drinks are on me, Capt - I mean, Major!~*/
	DO ~
		StartCutSceneMode()
		StartCutScene("CHDINNER")
	~
	EXIT
END

IF ~~ THEN BEGIN LCA_Congratulations3_Aerie
	SAY @1112 /* ~Come on! Let's go and celebrate!~ */
	
	IF ~~ THEN REPLY @1109 /* ~Drinks are on me, Capt - I mean, Major!~*/
	DO ~
		StartCutSceneMode()
		StartCutScene("CHDINNER")
	~
	EXIT
END

IF ~~ THEN BEGIN LCA_Congratulations3_Jaheira
	SAY @1113 /* ~Come on! Let's go and celebrate!~ */
	
	IF ~~ THEN REPLY @1109 /* ~Drinks are on me, Capt - I mean, Major!~*/
	DO ~
		StartCutSceneMode()
		StartCutScene("CHDINNER")
	~
	EXIT
END

IF ~~ THEN BEGIN LCA_Congratulations3_Neera
	SAY @1114 /* ~Come on! Let's go and celebrate!~ */
	
	IF ~~ THEN REPLY @1109 /* ~Drinks are on me, Capt - I mean, Major!~*/
	DO ~
		StartCutSceneMode()
		StartCutScene("CHDINNER")
	~
	EXIT
END

IF ~~ THEN BEGIN LCA_Congratulations3_Valygar
	SAY @1115 /* ~Come on! Let's go and celebrate!~ */
	
	IF ~~ THEN REPLY @1109 /* ~Drinks are on me, Capt - I mean, Major!~*/
	DO ~
		StartCutSceneMode()
		StartCutScene("CHDINNER")
	~
	EXIT
END

IF ~~ THEN BEGIN LCA_Congratulations3_Anomen
	SAY @1116 /* ~Come on! Let's go and celebrate!~ */
	
	IF ~~ THEN REPLY @1109 /* ~Drinks are on me, Capt - I mean, Major!~*/
	DO ~
		StartCutSceneMode()
		StartCutScene("CHDINNER")
	~
	EXIT
END

IF ~~ THEN BEGIN LCA57
	SAY @173 /* ~I do, too. It's only natural, I suppose. It was a traumatic experience for all of us.~ */
	= @196  /* ~You nearly sacrificed my soul to that damned demon.. what was its name? Thrax?~ */
	
	IF ~~ THEN REPLY @197 /* ~Thrix the Profane, if I remember correctly. Your soul was never in danger - I'd never let a demon like that outsmart me.~ */
	GOTO LCA58 //OK
END

IF ~~ THEN BEGIN LCA58
	SAY @198 /* ~Still, it was quite a gamble. Next time risk your own damned soul, or better yet, don't play such high stakes games with demons, got it?~ */
	
	IF ~
		Dead("bdcaelar")
	~ THEN REPLY @174 /* ~Yes. I often wonder about Aun, Caelar's uncle. Do you think he is still alive, in Avernus?~ */
	GOTO LCA52 //OK
	
	IF ~
		!Dead("bdcaelar")
	~ THEN REPLY @175 /* ~Yes. I often wonder about Caelar, and whether she is still alive, in Avernus.~ */
	GOTO LCA53 //OK
END

IF ~~ THEN BEGIN LCA_NEB_2
	SAY @201 /* ~I don't believe it! <CHARNAME>, this is Neb, the fugitive who murdered more than two dozen children in Baldur's Gate! Your time has come, monster!~ */
	IF ~~ THEN
	EXTERN ~NEB~ LCA0
END




IF ~~ THEN BEGIN LCA67
	SAY @214 /* ~Thank you.~*/
	IF ~~ THEN
	EXIT
END

IF ~~ THEN BEGIN LCA68
	SAY @215 /* ~What does Irenicus gain from a war between the surface elves and the drow? There must be a reason.~ */
	IF ~~ THEN 
	EXTERN ~UDPHAE01~ 138
END

IF ~~ THEN BEGIN LCA77
	SAY @238 /* ~You know, I heard you cheering for me, love. It meant a lot.~ */
	
	IF ~~ THEN REPLY @239 /* ~(You share a warm embrace) Let me see that trophy.~ */
	GOTO LCA78
END

IF ~~ THEN BEGIN LCA78
	SAY @240 /* ~(She hands it over.) So, what do you think?~ */
	
	IF ~~ THEN REPLY @241 /* ~I think that you'll never cease to amaze me.~ */
	GOTO LCA79
	
	IF ~~ THEN REPLY @243 /* @243 = ~Hm... (You examine the trophy - it's a figurine of an archer cast in gold, with a plaque beneath that states 'Schael Corwin - Winner - Trademeet Archery Competition'.) Very nice. Your father will be proud.~ */
	GOTO LCA80
END

IF ~~ THEN BEGIN LCA79
	SAY @242 /* ~Hah, that much is obvious. What do you think about the *trophy*.~ */
	
	IF ~~ THEN REPLY @243 /* @243 = ~Hm... (You examine the trophy - it's a figurine of an archer cast in gold, with a plaque beneath that states 'Schael Corwin - Winner - Trademeet Archery Competition'.) Very nice. Your father will be proud.~ */
	GOTO LCA80
END

IF ~~ THEN BEGIN LCA80
	SAY @244 /* ~Thanks. I think Rohma might appreciate it more... I can't wait to see them again. Let's get going, love.~ */
	
	IF ~~ THEN 
	DO ~
		GiveGoldForce(2500)
		AddExperienceParty(35000)
		SetGlobal("LCA_TM_ArcheryChallenge", "GLOBAL", 3)
	~
	EXIT
END

IF ~~ THEN BEGIN LCA_HELLJON_7A
	SAY @245 /* ~You... you monster! What you did to Skie, to Imoen, to <CHARNAME>, and the others... it can never be forgiven. You nearly destroyed my hope of a future with the <PRO_MANWOMAN> I love. Prepare to meet your end, Irenicus!~ */
	COPY_TRANS HELLJON 7
END

IF ~~ THEN BEGIN LCA_HELLJON_7B
	SAY @245 /* ~You... you monster! What you did to Skie, to Imoen, to <CHARNAME>, and the others... it can never be forgiven. Prepare to meet your end, Irenicus!~  */	
	COPY_TRANS HELLJON 7
END

IF ~~ THEN BEGIN LCA_HELLJON_8A
	SAY @245 /* ~You... you monster! What you did to Skie, to Imoen, to <CHARNAME>, and the others... it can never be forgiven. You nearly destroyed my hope of a future with the <PRO_MANWOMAN> I love. Prepare to meet your end, Irenicus!~ */
	COPY_TRANS HELLJON 8
END

IF ~~ THEN BEGIN LCA_HELLJON_8B
	SAY @245 /* ~You... you monster! What you did to Skie, to Imoen, to <CHARNAME>, and the others... it can never be forgiven. Prepare to meet your end, Irenicus!~  */	
	COPY_TRANS HELLJON 8
END

IF ~~ THEN BEGIN LCA_HELLJON_9A
	SAY @245 /* ~You... you monster! What you did to Skie, to Imoen, to <CHARNAME>, and the others... it can never be forgiven. You nearly destroyed my hope of a future with the <PRO_MANWOMAN> I love. Prepare to meet your end, Irenicus!~ */
	COPY_TRANS HELLJON 9
END

IF ~~ THEN BEGIN LCA_HELLJON_9B
	SAY @245 /* ~You... you monster! What you did to Skie, to Imoen, to <CHARNAME>, and the others... it can never be forgiven. Prepare to meet your end, Irenicus!~  */	
	COPY_TRANS HELLJON 9
END

IF ~~ THEN BEGIN LCA_HELLJON_10A
	SAY @245 /* ~You... you monster! What you did to Skie, to Imoen, to <CHARNAME>, and the others... it can never be forgiven. You nearly destroyed my hope of a future with the <PRO_MANWOMAN> I love. Prepare to meet your end, Irenicus!~ */
	COPY_TRANS HELLJON 10
END

IF ~~ THEN BEGIN LCA_HELLJON_10B
	SAY @245 /* ~You... you monster! What you did to Skie, to Imoen, to <CHARNAME>, and the others... it can never be forgiven. Prepare to meet your end, Irenicus!~  */	
	COPY_TRANS HELLJON 10
END

IF ~~ THEN BEGIN LCA83
	SAY @247 /* ~Irenicus already tried to force us apart, and failed. You will do no better. Our love is stronger than your evil.~ */
	
	IF ~~ THEN
	EXTERN BODHIAMB LCA2
END

IF ~~ THEN BEGIN LCA97
	SAY @295 /* ~No! That will n-never happen! You will die ... f-for threatening ...my family...~ */
	IF ~~ THEN
	EXTERN C6BODHI LCA3

END

IF ~~ THEN BEGIN LCA_MeetMelkor5B6
	SAY @913 /* ~<CHARNAME>... the caves beneath Dragonspear, remember? We encountered a rift into the Fugue plane. Hephernaan's acolytes were performing some sort of ritual there.~*/
	
	IF ~~ THEN EXTERN LCMELKOR LCA_MeetMelkor5B7
END

IF ~~ THEN BEGIN LCA_MeetMelkor5C2
	SAY @914 /* ~Catatonia? But... we were told she'd made a full recovery.~ */
	
	IF ~~ THEN EXTERN LCMELKOR LCA_MeetMelkor5C3
END

IF ~~ THEN BEGIN LCA_Demin
	SAY @404 /* ~<CHARNAME>! That's enough - I know that they are largely responsible for what has happened to you, but control yourself! Our fight is with Irenicus, not them!~ */
	
	IF ~
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN REPLY @405 /* ~You're right. Sorry, love, I don't know what came over me.~ */
	GOTO LCA_Demin2A
	
	IF ~
		!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN REPLY @406 /* ~You're right. Sorry, Captain, I don't know what came over me.~ */
	GOTO LCA_Demin2B
	
	IF ~
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN REPLY @407 /* ~Fine. We'll do it your way. Self-righteous morons like the priestess here make me sick.~ */
	GOTO LCA_Demin2A
	
	IF ~
		!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN REPLY @407 /* ~Fine. We'll do it your way. Self-righteous morons like the priestess here make me sick.~ */
	GOTO LCA_Demin2B
END

IF ~~ THEN BEGIN LCA_Demin2A
	SAY @409 /* ~Just keep it together, my love. We are so close to victory. Priestess - what do we need to do to gain entry to the palace?~ */
	IF ~~ THEN
	DO ~
		SetGlobal("LCA_CorwinStopDeminFight", "GLOBAL", 1)
	~
	EXTERN SUDEMIN LCA_Demin3
END

IF ~~ THEN BEGIN LCA_Demin2B
	SAY @408 /* ~Just keep it together, <CHARNAME>. We are so close to victory. Priestess - what do we need to do to gain entry to the palace?~  */
	IF ~~ THEN
	DO ~
		SetGlobal("LCA_CorwinStopDeminFight", "GLOBAL", 1)
	~
	EXTERN SUDEMIN LCA_Demin3
END

IF ~~ THEN BEGIN LCA_Svir
	SAY @410 /* ~Have you lost your mind!? How does killing the gnomes help us in the hunt for Irenicus?~ */
	
	IF ~
		!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN REPLY @411 /* ~I give the orders here, Captain, not you. Follow them, or step aside!~ */
	GOTO LCA_Svir1C
	
	IF ~
		!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN REPLY @412 /* ~You're right, Captain. I'm sorry - I have not been myself since my soul was stolen from me.~ */
	GOTO LCA_Svir1A
	
	IF ~
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN REPLY @413 /* ~You're right, love. I'm sorry - I have not been myself since my soul was stolen from me.~ */
	GOTO LCA_Svir1B
END

IF ~~ THEN BEGIN LCA_Svir1A
	SAY @415 /* ~My friend, I wish there was some way for me to help you... just keep it together. We'll find a way through this. Goldander - we will help you.~ */
	IF ~~ THEN
	EXTERN UDSVIR03 26
END

IF ~~ THEN BEGIN LCA_Svir1B
	SAY @415 /* ~My love, I wish there was some way for me to help you... just keep it together. We'll find a way through this. Goldander - we will help you.~ */
	IF ~~ THEN
	EXTERN UDSVIR03 26
END

IF ~~ THEN BEGIN LCA_Svir1C
	SAY @414 /* @414 = ~You have no idea how much this hurts. Allies, to me!~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("SvirHostile","GLOBAL",1)
		SetGlobal("LCA_CorwinHostile","GLOBAL",1)
	~
	EXIT
END

IF ~~ THEN BEGIN LCA_Daleson
	SAY @422 /* ~Hahah, wait... you *are* joking, right?~*/
	IF ~~ THEN
	EXTERN DALESON 13
END

IF ~~ THEN BEGIN LCA_FFCUST04A
	SAY @422 /* ~Thanks, but (she nods in your direction) <PRO_HESHE>'s got me covered.~ */
	IF ~~ THEN
	EXIT
END

IF ~~ THEN BEGIN LCA_FFCUST04B
	SAY @423 /* ~I'm here on duty, not to pick up men... and certainly not to spend my evening with a drunkard.~ */
	IF ~~ THEN
	EXIT
END

IF ~~ THEN BEGIN LCA_DHARLOT2A
	SAY @425 /* ~Girl - where are your parents? Do they know that you're out here turning tricks?~ */
	IF ~~ THEN
	EXTERN DHARLOT2 5
END

IF ~~ THEN BEGIN LCA_DHARLOT2B
	SAY @426 /* ~Really, <CHARNAME>? Very funny. (She punches you in the shoulder.)~ */
	IF ~~ THEN REPLY @427 /* Ow! */
	GOTO LCA_DHARLOT2A
END

IF ~~ THEN BEGIN LCA_HAEGAN_0_5
	SAY @441 /* ~It's very simple. You're trading slaves, and we're here to shut you down. Do me a favor and resist - please.~ */
	IF ~~ THEN
	EXTERN HAEGAN 2
END

IF ~~ THEN BEGIN LCA_ProstCorwin2
	SAY @443 /* ~H-huh? No, I'm not interested.~ */
	IF ~~ THEN
	EXTERN BPROST2 LCA_ProstCorwin3
END

IF ~~ THEN BEGIN LCA_InteractCorwin2
	SAY @444 /* ~As a matter of fact, I am.~ */
	IF ~~ THEN
	EXTERN DELTOW01 LCA_InteractCorwin3
END

IF ~~ THEN BEGIN LCA_PIRMUR01_2
	SAY @449 /* ~They're as dead as your soul, slaver scum. Hand over Claire, now!~ */
	IF ~~ THEN 
	EXTERN ~PIRMUR01~ 4
END

IF ~~ THEN BEGIN LCA_KORGANJ_151
	SAY @450 /* ~Now is not the time for petty bickering. If we don't work together, none of us are making it out of here alive. Goldander - you said you knew of someone who could help us get into the city?~ */
	
	IF ~~ THEN
	EXTERN UDSVIR03 18
END

IF ~~ THEN BEGIN LCA_EdwinFF2
	SAY @458 /* ~What was that? (She gives him a dirty look.)~ */
	IF ~~ THEN
	EXTERN EDWINJ LCA_EdwinFF3
END

IF ~~ THEN BEGIN LCA_DelciaLeft
	SAY @513 /* ~Gods. I think she needed that as much as I did.~ */
	
	IF ~
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN REPLY @515 /* ~I can't believe you did that, love.~ */
	GOTO LCA_DelciaLeft2
	
	IF ~
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN REPLY @517 /*  ~She definitely deserved it. Well done, love.~ */
	GOTO LCA_DelciaLeft2
	
	IF ~
		!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN REPLY @516 /* ~I can't believe you did that, Corwin.~ */
	GOTO LCA_DelciaLeft2
	
	IF ~
		!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN REPLY @518 /* ~She definitely deserved it. Well done, Captain.~ */
	GOTO LCA_DelciaLeft2
		
	IF ~
		IsValidForPartyDialogue("Keldorn")
	~
	EXTERN KELDORJ LCA_CorwinStruckDelcia
	
	IF ~
		IsValidForPartyDialogue("Nalia")
	~
	EXTERN KELDORJ LCA_CorwinStruckDelcia
END

IF ~~ THEN BEGIN LCA_DelciaLeft2
	SAY @514 /* ~It was for her own good. Anyone who runs their mouth like that to the wrong person risks an untimely death. Hopefully she learned her lesson.~ */
	
	
	IF ~~ THEN REPLY @519 /* ~Well said - let's get moving.~ */
	EXTERN KELDORJ LCA_CorwinStruckDelcia
	
	IF ~
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN GOTO LCA_DelciaLeft3
END

IF ~~ THEN BEGIN LCA_DelciaLeft3
	SAY @521 /* ~I've just been so stressed lately... I wouldn't normally do something like that.~ */
	
	
	IF ~~ THEN REPLY @522 /* ~I know it's tough being away from your family. I'm glad you're here though. (You share a warm embrace, and kiss.) Let's get moving, love.~ */
	EXIT
	
	IF ~
		GlobalLT("LCA_TimesHadSex", "GLOBAL", 1)
	~
	THEN REPLY @523 /* ~You and I both... my love, I know of a couple of activities that can help us to relieve some of that stress...~ */
	GOTO LCA_DelciaLeft4
END

IF ~~ THEN BEGIN LCA_DelciaLeft4
	SAY @524 /* ~(She smiles.) I think I know what you have in mind. (She walks up to you, leans in and whispers.) It's on my mind, all the time.~   */
	= @525 /* ~Let's finish up here. Afterward, I want you to find a nice place for the two of us to relieve ... some of that stress.~ */
	
	IF ~~ THEN REPLY @527 /* ~What do you suggest?~ */
	GOTO LCA_DelciaLeft5
	
	IF ~~ THEN REPLY @526 /* ~I know just the place. (You resolve to pay for a room at one of the nearby inns.)~ */
	GOTO LCA_DelciaLeft6
END

IF ~~ THEN BEGIN LCA_DelciaLeft5
	SAY @64 /* ~The street in mid-day, or perhaps the amphitheater. Gods, what do you think? There are plenty of inns in the city, pick one!~ */
	IF ~~ THEN REPLY @526 /* ~I know just the place. (You resolve to pay for a room at one of the nearby inns.)~ */
	GOTO LCA_DelciaLeft6
END

IF ~~ THEN BEGIN LCA_DelciaLeft6
	SAY @528 /* ~Good. (She gives you a kiss on the cheek.) Let's go.~ */
	IF ~~ THEN
	DO ~
		SetGlobal("LCA_CorwinSex_1", "GLOBAL", 1)
	~
	EXIT
END

IF ~~ THEN BEGIN LCA_GORODR1_17_18
	SAY @604 /*  ~What manner of creature is imprisoned here?~   */
	IF ~~ THEN
	EXTERN GORODR1 19
END

IF ~~ THEN BEGIN LCA_GORODR1_34_44
	SAY @605 /*  ~Bastard! You lied to us! You knew it was Demigorgon that was imprisoned the entire time!~  */
	IF ~~ THEN
	EXTERN GORODR1 35
END

IF ~~ THEN BEGIN LCA_SUJON_14
	SAY @606 /* ~Justice has finally come for you, wizard. Prepare to die!~ */
	COPY_TRANS SUJON 14
END

IF ~~ THEN BEGIN LCA_SUELLE2_0
	SAY @607 /* ~<CHARNAME>! Oh... thank goodness... (You notice tears forming in her eyes.)~ */
	
	IF ~~ THEN REPLY @608 /* ~S-Schael...? How long was I...?  */
	GOTO LCA_SUELLE2_0_A
END

IF ~~ THEN BEGIN LCA_SUELLE2_0_A
	SAY @609 /* ~Two days... *sob* ... h-how are you feeling?~ */
	
	IF ~~ THEN REPLY @610 /* ~Good, just ... tired. A-are you crying?~  */
	GOTO LCA_SUELLE2_0_B
END

IF ~~ THEN BEGIN LCA_SUELLE2_0_B
	SAY @611 /* ~(Her voice cracks.) I thought I *sob* lost you...~ */
	
	IF ~~ THEN REPLY @612 /* ~Come here, love. (She lays her head down on your chest, and you hold her in your arms.)~  */
	GOTO LCA_SUELLE2_0_C
END

IF ~~ THEN BEGIN LCA_SUELLE2_0_C
	SAY @613 /* ~(She finally loses her composure and begins to weep in earnest.)~ */
	
	IF ~~ THEN REPLY @614 /* ~It's alright Schael, let it out. I'm here. (You gently caress her head as you feel her tears touch your skin.)~ */
	EXTERN SUELLE2 LCA_SUELLE2_0_D
END

IF ~~ THEN BEGIN LCA_SUELLE2_5
	SAY @616 /* ~Get some rest love. (She plants a kiss on your forehead.) I'll check in with the others.~ */
	
	IF ~~ THEN REPLY @617 /* ~Thank you Schael. For everything.~ */
	DO ~
		SetGlobal("LCA_59AOverride", "GLOBAL", 1)
		ClearAllActions()
		StartCutSceneMode()
		StartCutSceneEx("LC59atob",FALSE)
	~
	EXIT
	
	IF ~~ THEN REPLY @618 /* ~Please, stay with me, love.~ */
	GOTO LCA_SUELLE2_5_8
END

IF ~~ THEN BEGIN LCA_GiveMedal2A
	SAY @690 /* As am I, sir. */
	
	IF ~~ THEN REPLY @767 /* ~And so am I. Thank you, both.~ */
	EXTERN LCNEDERL LCA_GiveMedal3
END

IF ~~ THEN BEGIN LCA_SUELLE2_5_8
	SAY @115 /* ~Gladly, dear. 
	(You slide over so there is enough room on the bed for the two of you. When she climbs in, you share a passionate kiss, and fall asleep in eachother's embrace.)~  */

	IF ~~ THEN
	DO ~
		SetGlobal("LCA_59AOverride", "GLOBAL", 1)
		ClearAllActions()
		StartCutSceneMode()
		StartCutSceneEx("LC59atob",FALSE)
	~
	EXIT
END

IF ~~ THEN BEGIN LCA_SUELLE2_8
	SAY @616 /* ~Get some rest love. (She plants a kiss on your forehead.) I'll check in with the others.~ */
	
	IF ~~ THEN REPLY @617 /* ~Thank you Schael. For everything.~ */
	DO ~
		SetGlobal("LCA_59AOverride", "GLOBAL", 1)
		ClearAllActions()
		StartCutSceneMode()
		StartCutSceneEx("LC59atob",FALSE)
	~
	EXIT
	
	IF ~~ THEN REPLY @618 /* ~Please, stay with me, love.~ */
	GOTO LCA_SUELLE2_5_8
END

IF ~~ THEN BEGIN LCA_SUELLE2_8A
	SAY @619 /* ~Gladly, dear. 
	(You slide over so there is enough room on the bed for the two of you. When she climbs in, you share a passionate kiss, and fall asleep in eachother's embrace.)~  */

	IF ~~ THEN
	DO ~
		SetGlobal("LCA_59AOverride", "GLOBAL", 1)
		ClearAllActions()
		StartCutSceneMode()
		StartCutSceneEx("LC59atob",FALSE)
	~
	EXIT
END

IF ~~ THEN BEGIN LCA_WYRM_1
	SAY @674 /* ~Thank you, sir.~ */
	
	IF ~~ THEN
	EXTERN LCNEDERL LCA_WYRM_2
END


IF ~~ THEN BEGIN LCA_WYRM_7 //OK
	SAY @675 /* ~Yes, sir.~*/
	
	IF ~~ THEN REPLY @762 /* ~Thank you, Marshal Nederlok.~ */
	EXTERN LCNEDERL LCA_WYRM_8
	
	IF ~
		Global("LCA_BGSlaverPlot", "GLOBAL", 1)
	~ THEN REPLY @763 /* ~Thank you - before you leave, I found some evidence of slaver activity in Baldur's Gate while we were in Athkatla.~ */
	EXTERN LCNEDERL LCA_NEDERL_SlaverPlot2
	
END

IF ~~ THEN BEGIN LCA_NEDERL_SlaverPlot //OK
	SAY @675 /* ~Yes, sir.~*/
	
	= @758 /* Sir, before you leave - while <CHARNAME> and I were in Athkatla, we found evidence of slaver activity in Baldur's Gate.~ */
	
	IF ~~ THEN
	EXTERN LCNEDERL LCA_NEDERL_SlaverPlot2
END

IF ~~ THEN BEGIN LCA_NEDERL_SlaverPlot3
	SAY @759 /* ~We encountered a large number of refugees from Caelar's crusade who were shipped out of Baldur's Gate to Athkatla.~ */
	
	= @760 /* ~They were told that they were being moved to new homes in other cities. Instead, when they arrived in Athkatla, the children were separated from their parents and sold to slavers. We weren't able to find the parents, though we did free the children from their captors.~ */
	
	IF ~~ THEN
	EXTERN LCNEDERL LCA_NEDERL_SlaverPlot4
END

IF ~~ THEN BEGIN LCA_WYRM_NEDERL_END
	SAY @675 /* Yes, sir. */
	
	IF ~~ THEN 
	EXTERN LCNEDERL LCA_WYRM_8
END

IF ~~ THEN BEGIN LCA_BenceWyrm_2
	SAY @676 /* ~Corporal, I trust all is well with you? How is Skie?~*/
	
	IF ~~ THEN
	EXTERN LCBENCE LCA_BenceWyrm_3 //OK
END

IF ~~ THEN BEGIN LCA_BenceWyrm_4
	SAY @677 /* ~Changed? In what way?~*/
	
	IF ~~ THEN
	EXTERN LCBENCE LCA_BenceWyrm_5 //OK
END

IF ~~ THEN BEGIN LCA_BenceWyrm_6
	SAY @678 /* ~Understood. <CHARNAME>, let's head in. We'll stop at my place first. It's in the southeast part of the city.~ */
	
	IF ~~ THEN
	DO ~
		SetGlobalTimer("LCA_CorwinFamilyTimer", "GLOBAL", ONE_HOUR)
		SetGlobal("LCA_BenceWyrm", "GLOBAL", 2)
		SetGlobal("LCA_ReturnToBG", "GLOBAL", 1)
		SetGlobal("LCA_AddCorwinMapNote", "GLOBAL", 1)
		ActionOverride("LCBENCE", MoveToPoint([3.827])
		ActionOverride("LCBENCE", EscapeArea())
		EndCutSceneMode()
	~
	EXIT
	
	IF ~
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
		!Global("LCA_GaveDoll", "GLOBAL", 2)
		!Global("LCA_GaveDoll", "GLOBAL", 1)
	~
	THEN 
	DO ~
		ActionOverride("LCBENCE", MoveToPoint([3.827])
		ActionOverride("LCBENCE", EscapeArea())
	~
	GOTO LCA_GetRohmaGift
	
	IF ~
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
		!Global("LCA_MetRohma", "GLOBAL", 1)
	~ 
	THEN 
	DO ~
		ActionOverride("LCBENCE", MoveToPoint([3.827])
		ActionOverride("LCBENCE", EscapeArea())
	~
	GOTO LCA_FirstMeetingRohma
END

IF ~~ THEN BEGIN LCA_GetRohmaGift
	SAY @715 /* ~(You think to yourself that it's been a while since you've seen Schael's family. It may be worthwhile stopping at one of the General Stores and getting a gift for her daughter.)~ */
	
	IF ~~ THEN
	DO ~
		AddJournalEntry(@1303, QUEST)
		SetGlobalTimer("LCA_CorwinFamilyTimer", "GLOBAL", ONE_HOUR)
		SetGlobal("LCA_BenceWyrm", "GLOBAL", 2)
		SetGlobal("LCA_ReturnToBG", "GLOBAL", 1)
		EndCutSceneMode()
	~
	EXIT
END

IF ~~ THEN BEGIN LCA_FirstMeetingRohma
	SAY @713 /* ~(You think to yourself that this is the first time you'll have met Schael's family. You want to make a good impression. It may be worthwhile stopping at one of the General Stores in the city to see if you can find a gift for her daughter.)~ */
	
	IF ~~ THEN
	DO ~
		AddJournalEntry(@1304, QUEST)
		SetGlobalTimer("LCA_CorwinFamilyTimer", "GLOBAL", ONE_HOUR)
		SetGlobal("LCA_BenceWyrm", "GLOBAL", 2)
		SetGlobal("LCA_ReturnToBG", "GLOBAL", 1)
		EndCutSceneMode()
	~
	EXIT
END

IF ~~ THEN BEGIN LCA_NotMetFamily
	SAY @679 /* ~No - I still need to see my family.~ */
	
	IF ~~ THEN
	EXIT
END

IF ~~ THEN BEGIN LCA_CorwinFamilyReunite4
	SAY @693 /* ~Gods, where does the time go?~ */
	
	IF ~~ THEN
	GOTO LCA_CorwinFamilyReuniteSwitch
	
	IF ~
		Global("LCA_CorwinWonTM", "GLOBAL", 1)
	~
	GOTO LCA_CorwinFamilyReuniteTM
END

IF ~~ THEN BEGIN LCA_WYRM_VALYGAR
	SAY @710 /* ~Sir, allow me to introduce you to Valygar. He's a ranger from Amn who has expressed interest in joining the Flaming Fist. I know that he'd make a great addition to our team.~ */
	
	IF ~~ THEN
	EXTERN LCNEDERL LCA_WYRM_VALYGAR2
END

IF ~~ THEN BEGIN LCA_WYRM_6A
	SAY @711 /* Yes, sir. */
	
	IF ~~ THEN
	EXTERN LCNEDERL LCA_WYRM_6B
END

IF ~~ THEN BEGIN LCA_CorwinFamilyReunite3A3
	SAY @712 /* ~Rohma!~ */
	
	IF ~~ THEN
	EXTERN LCROHMA LCA_CorwinFamilyReunite3A4A1
	
	IF ~
		!PartyHasItem("RDOLL")
	~ THEN
	EXTERN LCROHMA LCA_CorwinFamilyReunite3A4B
END

IF ~~ THEN BEGIN LCA_CorwinFamilyReunite3A4A3
	SAY @714 /* ~What do you say, Rohma?~*/
	
	IF ~~ THEN
	EXTERN LCROHMA LCA_CorwinFamilyReunite3A4A4
END

IF ~~ THEN BEGIN LCA_CorwinFamilyReuniteSwitch
	SAY @769 /* ~(She turns to you.)~ */
	
	IF ~
		!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN GOTO LCA_Depart_NonRomance
	
	IF ~
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN GOTO LCA_Depart_Romance

END

IF ~~ THEN BEGIN LCA_Depart_NonRomance
	SAY @770 /* ~<CHARNAME>, I'm going to spend the rest of the day with my family. Take some time for yourself - I'm sure you have a lot of faces that you want to see. I'll see you tomorrow morning at the debriefing.~ */
	
	IF ~~ THEN REPLY @782 /* ~You definitely deserve some quality time with them.~*/
	GOTO LCA_Depart_NonRomance2
	
	IF ~~ THEN REPLY @788 /* ~Sounds good. You certainly have a lot of catching up to do.~*/
	GOTO LCA_Depart_NonRomance2
END

IF ~~ THEN BEGIN LCA_Depart_NonRomance2
	SAY @798 /* Sweetie, come and say bye to <CHARNAME>.~ */
	
	IF ~~ THEN 
	DO ~
		SetLeavePartyDialogFile()
		ChangeAIScript("",DEFAULT)
	~
	EXTERN LCROHMA LCA_SayBye
END

IF ~~ THEN BEGIN LCA_Depart_Romance
	SAY @868 /* ~My love - I imagine you have some people and places that you want to see. Do you want me to come with you?~ */

	IF ~~ THEN REPLY @870 /* ~I'd rather you stay here and enjoy some quality time with your family. You've earned it.~ */
	EXTERN LCROHMA LCA_RohmaTaunt1A
	
	IF ~~ THEN REPLY @869 /* ~Of course, but just for a couple of hours. You and your family deserve to spend some time with eachother.~ */
	EXTERN LCROHMA LCA_RohmaTaunt1B	
END

IF ~~ THEN BEGIN LCA_RohmaTaunt2A
	SAY @794 /* ~Rohma, honey - ~ */
	IF ~~ THEN
	EXTERN LCROHMA LCA_RohmaTaunt3A
END

IF ~~ THEN BEGIN LCA_RohmaTaunt2B
	SAY @794 /* ~Rohma, honey - ~ */
	IF ~~ THEN
	EXTERN LCROHMA LCA_RohmaTaunt3B
END

IF ~~ THEN BEGIN LCA_RohmaTaunt4A
	SAY @777 /* ~Rohma! That's enough!~ */
	
	= @795 /* ~I'm sorry, she's not normaly this excited.~ */
	
	IF ~~ THEN REPLY @796 /* ~Hahah, no need to apologize.~ */
	GOTO LCA_Depart_Romance2
	
	IF ~~ THEN REPLY @797 /* ~She's just glad to see her mommy again.~*/
	GOTO LCA_Depart_Romance2
END

IF ~~ THEN BEGIN LCA_RohmaTaunt4B
	SAY @777 /* ~Rohma! That's enough!~ */
	
	= @795 /* ~I'm sorry, she's not normaly this excited.~ */
	
	IF ~~ THEN REPLY @796 /* ~Hahah, no need to apologize.~ */
	GOTO LCA_Depart_RohmaChain
	
	IF ~~ THEN REPLY @797 /* ~She's just glad to see her mommy again.~*/
	GOTO LCA_Depart_RohmaChain
END

IF ~~ THEN BEGIN LCA_Depart_Romance2
	SAY @778 /*  ~So, where are you planning to stay tonight?~ */
	
	IF ~~ THEN REPLY @786 /* ~I'll stay at the Three Old Kegs tonight.~ */
	DO ~
		SetGlobal("LCA_StayingAtThreeOldKegs", "GLOBAL", 1)
	~
	GOTO LCA_Depart_Romance5
	
	IF ~~ THEN REPLY @789 /* ~I'll stay at the Blade and Stars tonight.~*/
	DO ~
		SetGlobal("LCA_StayingAtBladeAndStars", "GLOBAL", 1)
	~
	GOTO LCA_Depart_Romance5
	
	IF ~
		Global("LCA_SavedElfsong", "GLOBAL", 1)
	~ THEN REPLY @790 /* ~I'll stay at the Elfsong Tavern tonight.~*/
	DO ~
		SetGlobal("LCA_StayingAtElfsongTavern", "GLOBAL", 1)
	~
	GOTO LCA_Depart_Romance5
	
	IF ~~ THEN REPLY @791 /* ~I'll stay at the Blushing Mermaid tonight.~*/
	DO ~
		SetGlobal("LCA_StayingAtBlushingMermaid", "GLOBAL", 1)
	~
	GOTO LCA_Depart_Romance5
	
	IF ~~ THEN REPLY @783 /* ~I was hoping to spend the night here, with you.~*/
	GOTO LCA_Depart_Romance3
END

IF ~~ THEN BEGIN LCA_Depart_Romance3
	SAY @785 /* ~And I want you to, but first, Rohma's going to need some time to adjust to us being together.~*/
	
	IF ~~ THEN REPLY @793 /* ~I understand.~ */
	GOTO LCA_Depart_Romance4
END

IF ~~ THEN BEGIN LCA_Depart_Romance4
	SAY @792 /* ~So, what'll it be?~*/
	
	IF ~~ THEN REPLY @786 /* ~I'll stay at the Three Old Kegs tonight.~ */
	DO ~
		SetGlobal("LCA_StayingAtThreeOldKegs", "GLOBAL", 1)
	~
	GOTO LCA_Depart_Romance5
	
	IF ~~ THEN REPLY @789 /* ~I'll stay at the Blade and Stars tonight.~*/
	DO ~
		SetGlobal("LCA_StayingAtBladeAndStars", "GLOBAL", 1)
	~
	GOTO LCA_Depart_Romance5
	
	IF ~
		Global("LCA_SavedElfsong", "GLOBAL", 1)
	~ THEN REPLY @790 /* ~I'll stay at the Elfsong Tavern tonight.~*/
	DO ~
		SetGlobal("LCA_StayingAtElfsongTavern", "GLOBAL", 1)
	~
	GOTO LCA_Depart_Romance5
	
	IF ~~ THEN REPLY @791 /* ~I'll stay at the Blushing Mermaid tonight.~*/
	DO ~
		SetGlobal("LCA_StayingAtBlushingMermaid", "GLOBAL", 1)
	~
	GOTO LCA_Depart_Romance5
END

IF ~~ THEN BEGIN LCA_Depart_Romance5
	SAY @780 /*  ~Good. Come here. ~*/
	
	= @781 /* ~(You share a warm embrace and kiss.)~ */
	= @799 /* ~(She whispers in your ear.) I'll come see you in your room tonight, lover.~ */
	
	= @798 /* ~Sweetie, come and say bye to <CHARNAME>.~ */
	IF ~~ THEN
	DO ~
		SetLeavePartyDialogFile()
		ChangeAIScript("",DEFAULT)
	~
	EXTERN LCROHMA LCA_SayBye
END

IF ~~ THEN BEGIN LCA_CorwinMadLCNOBLW1
	SAY @819 /* ~I see. Come with me to the Flaming Fist headquarters. I'm sure Duke Eltan would appreciate hearing how much of a fool he is for allowing <CHARNAME> back into the city.~ */
	
	IF ~
		RandomNum(2,1)
	~ THEN
	EXTERN LCNOBLW LCA_CorwinMadLCNOBLW1
	
	IF ~
		RandomNum(2,2)
	~ THEN
	EXTERN LCNOBLW LCA_CorwinMadLCNOBLW2
END

IF ~~ THEN BEGIN LCA_CorwinMadLCNOBLW2
	SAY @820 /* ~Is that so? Duke Entar would love to hear more of your wisdom, citizen. Come with me. Now.~ */
	
	IF ~
		RandomNum(2,1)
	~ THEN
	EXTERN LCNOBLW LCA_CorwinMadLCNOBLW1
	
	IF ~
		RandomNum(2,2)
	~ THEN
	EXTERN LCNOBLW LCA_CorwinMadLCNOBLW2
END

IF ~~ THEN BEGIN LCA_CorwinMadLCNOBLW3
	SAY @821 /* ~Mind your tone, citizen! In disparaging <CHARNAME>, you disrespect the Council who has exonerated <PRO_HIMHER>!~*/
	
	IF ~
		RandomNum(2,1)
	~ THEN 
	EXTERN LCNOBLW LCA_CorwinMadLCNOBLW1
	
	IF ~
		RandomNum(2,2)
	~ THEN 
	EXTERN LCNOBLW LCA_CorwinMadLCNOBLW2
END

IF ~~ THEN BEGIN LCA_CorwinMadLCNOBLW4
	SAY @822 /* ~The Dukes have proclaimed <CHARNAME>'s innocence. Do you mean to imply that they're mistaken?~*/
	
	IF ~
		RandomNum(2,1)
	~ THEN
	EXTERN LCNOBLW LCA_CorwinMadLCNOBLW1
	
	IF ~
		RandomNum(2,2)
	~ THEN
	EXTERN LCNOBLW LCA_CorwinMadLCNOBLW2
END

IF ~~ THEN BEGIN LCA_CorwinMadLCNOBLM1
	SAY @819 /* ~I see. Come with me to the Flaming Fist headquarters. I'm sure Duke Eltan would appreciate hearing how much of a fool he is for allowing <CHARNAME> back into the city.~ */
	
	IF ~
		RandomNum(2,1)
	~ THEN 
	EXTERN LCNOBLM LCA_CorwinMadLCNOBLM1
	
	IF ~
		RandomNum(2,2)
	~ THEN 
	EXTERN LCNOBLM LCA_CorwinMadLCNOBLM2
END

IF ~~ THEN BEGIN LCA_CorwinMadLCNOBLM2
	SAY @820 /* ~Is that so? Duke Entar would love to hear more of your wisdom, citizen. Come with me. Now.~ */
	
	IF ~
		RandomNum(2,1)
	~ THEN 
	EXTERN LCNOBLM LCA_CorwinMadLCNOBLM1
	
	IF ~
		RandomNum(2,2)
	~ THEN 
	EXTERN LCNOBLM LCA_CorwinMadLCNOBLM2
END

IF ~~ THEN BEGIN LCA_CorwinMadLCNOBLM3
	SAY @821 /* ~Mind your tone, citizen! In disparaging <CHARNAME>, you disrespect the Council who has exonerated <PRO_HIMHER>!~*/
	
	IF ~
		RandomNum(2,1)
	~ THEN 
	EXTERN LCNOBLM LCA_CorwinMadLCNOBLM1
	
	IF ~
		RandomNum(2,2)
	~ THEN 
	EXTERN LCNOBLM LCA_CorwinMadLCNOBLM2
END

IF ~~ THEN BEGIN LCA_CorwinMadLCNOBLM4
	SAY @822 /* ~The Dukes have proclaimed <CHARNAME>'s innocence. Do you mean to imply that they're mistaken?~*/
	
	IF ~
		RandomNum(2,1)
	~ THEN 
	EXTERN LCNOBLM LCA_CorwinMadLCNOBLM1
	
	IF ~
		RandomNum(2,2)
	~ THEN 
	EXTERN LCNOBLM LCA_CorwinMadLCNOBLM2
END

IF ~~ THEN BEGIN LCA_CorwinMadEnd1
	SAY @817 /* ~Good. I better not that hear that foolishness from you again.~ */
	
	IF ~~ THEN 
	DO ~
		SetGlobal("LCA_CorwinScoldTownsperson", "LOCALS", 1)
	~	
	EXIT
END

IF ~~ THEN BEGIN LCA_SeeRohmaLater
	SAY @876 /* ~I'll see you soon, sweetie.~ */
	
	IF ~~ THEN
	EXIT
	
	IF ~
		OR(2)
			IsValidForPartyDialogue("Aerie")
			IsValidForPartyDialogue("Valygar")
	~ THEN
	DO ~
		SetGlobal("LCA_AVComplimentFamily", "GLOBAL", 1)
	~
	EXIT
END

IF ~~ THEN BEGIN LCA_CorwinMadEnd2
	SAY @818 /* ~Good. That's what I thought.~ */
	
	IF ~~ THEN 
	DO ~
		SetGlobal("LCA_CorwinScoldTownsperson", "LOCALS", 1)
	~	
	EXIT
END

IF ~~ THEN BEGIN LCA_CorwinMadEnd3
	SAY @815 /* ~Good. You'd be well served to keep your tongue on a short leash.~ */
	
	IF ~~ THEN 
	DO ~
		SetGlobal("LCA_CorwinScoldTownsperson", "LOCALS", 1)
	~	
	EXIT
END

IF ~~ THEN BEGIN LCA_HarborCorwinChainEnd
	SAY @812 /* ~Hmm.. <CHARNAME>, look. The manifests identify the company as Winston Ventures, but the contents are encoded.~ */	
	
	IF ~
		!Dead("Alatos")
	~ THEN GOTO LCA_HarborCorwinTG
	
	IF ~
		Dead("Alatos")
	~ THEN GOTO LCA_HarborCorwinWV	
END

IF ~~ THEN BEGIN LCA_HarborCorwinTG
	SAY @813 /* ~We should pay a visit to the Thieves' Guild. They may know how to decode them.~ */

	IF ~~ THEN REPLY @814 /* ~Right. Let's go.~*/
	DO ~
		AddJournalEntry(@823, INFO)
	~
	EXIT
END

IF ~~ THEN BEGIN LCA_HarborCorwinWV
	SAY @833 /* ~Let's pay this company Winston Ventures a visit. We might be able to find a way to decode the manifests.~ */

	IF ~~ THEN REPLY @814 /* ~Right. Let's go.~*/
	DO ~
		AddJournalEntry(@834, INFO)
	~
	EXIT
END

IF ~~ THEN BEGIN LCA_ThiefGuildEntry
	SAY @835 /* ~We're here on Flaming Fist business. Let us through.~ */
	IF ~~ THEN EXTERN THIEFG LCA2B
END

IF ~~ THEN BEGIN LCA_KerracQuestioning
	SAY @836 /* ~Tina Bennett - <CHARNAME>, that's the name of the child that we rescued in Athkatla.~ */
	
	IF ~~ THEN REPLY @837 /* ~That's right - Kerrachus, do you know anything else that might help?~ */
	EXTERN LCKERRAC LCA_KerracQuestioningEnd
END

IF ~~ THEN BEGIN LCA_JasperCorwin
	SAY @853 /* ~We're here on behalf of Tianna.~ */
	
	IF ~~ THEN EXTERN LCJASPER LCA_TiannaDebt3 //OK
END

IF ~~ THEN BEGIN LCA_AlatosNothing
	SAY @867 /* ~Nothing, at least for now.~*/
	
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LCA_ThankAlatos1
	SAY @865 /* ~Makes sense. Thanks for the help.~*/
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LCA_ThankAlatos2
	SAY @866 /* ~Thanks for the help.~*/
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LCA_ThankAlatos3
	SAY @915 /* ~Very good. This is exactly what we need to prove Winston's guilt. <CHARNAME>, let's take this to Marshal Nederlok.~*/
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LCA_CorwinLobar
	SAY @859 /* ~Is Tianna working?~  */
	
	IF ~~ THEN EXTERN LOBAR LCA_LobarTianna
END

IF ~~ THEN BEGIN LCA_GreetMommyA2
	SAY @878 /* ~I love you too honey. I'll be back soon, I promise.~ */
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LCA_GreetMommyB2
	SAY @879 /* ~Oh, Rohma... I hope so. We'll see.~ */
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LCA_RohmaKidnapped2B
	SAY @984/* ~Oh, Gods! <CHARNAME>, I can't pull the spike or he'll bleed out!~*/
	
	IF ~~ THEN REPLY @995 /* ~Stay with your father. I'll get help. Hang in there, Audamar!~*/
	DO ~
		SetGlobal("LCA_RohmaKidnapped", "GLOBAL", 3)
		StartCutsceneMode()
		StartCutscene("LCKIDN01")
	~
	EXIT
END

IF ~~ THEN BEGIN LCA_RohmaKidnapped5ChainEnd
	SAY @1010 /* ~No! Forgive me sir, but you saw the letter. I can't risk my daughter being harmed.~ */
	
	IF ~~ THEN REPLY @1013 /* ~Schael is right. We need to go after them, alone.~ */
	GOTO LCA_GoWithSchael
	
	IF ~~ THEN REPLY @1014 /* ~I'll go after them, alone.~ */
	GOTO LCA_GoAlone
END

IF ~~ THEN BEGIN LCA_GoWithSchael
	SAY @1033 /* ~What are we waiting for, then!? Let's go!~*/
	
	IF ~
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1031 /* ~Schael, I want you by my side, but not if you're emotionally compromised. The risk would be too great.~ */
	GOTO LCA_CalmDown
	
	IF ~
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1032 /* ~Schael, if you're to come with me, I need you calm, cool and collected - for Rohma's sake. Can I count on you?~ */
	GOTO LCA_CalmDown
	
	IF ~
		!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1016 /* ~Schael, I want you by my side, but not if you're emotionally compromised. The risk would be too great.~ */
	GOTO LCA_CalmDown
	
	IF ~
		!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1017 /* ~Schael, if you're to come with me, I need you calm, cool and collected - for Rohma's sake. Can I count on you?~ */
	GOTO LCA_CalmDown
END
IF ~~ THEN BEGIN LCA_PPIRENI2_3_CHAIN_2_END
	SAY @551 /* ~Let.. me.. GO!~ */
	
	IF ~~ THEN REPLY #44251 /* ~What are you doing, Irenicus?! What is all of this?~ */ 
	EXTERN PPIRENI2 5

	IF ~~ THEN REPLY @552 /* ~Release us! I will kill you, I swear it!~ */ 
	EXTERN PPIRENI2 4

	IF ~~ THEN REPLY #44253 /* ~Where is Imoen?! What have you done to her?!~ */ 
	EXTERN PPIRENI2 6 
END
IF ~~ THEN BEGIN LCA_GoAlone
	SAY @1015 /* ~I can't let you do that!~ */
	
	IF ~
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1031 /* ~My love, I want you by my side, but not if you're emotionally compromised. The risk to Rohma would be too great.~*/
	GOTO LCA_CalmDown
	
	IF ~
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1032 /* ~Schael, if you're to come with me, I need you calm, cool and collected - for Rohma's sake. Can I count on you?~ */
	GOTO LCA_CalmDown
	
	IF ~
		!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1016 /* ~Schael, I want you by my side, but not if you're emotionally compromised. The risk would be too great.~ */
	GOTO LCA_CalmDown
	
	IF ~
		!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1017 /* ~Schael, if you're to come with me, I need you calm, cool and collected - for Rohma's sake. Can I count on you?~ */
	GOTO LCA_CalmDown
END

IF ~~ THEN BEGIN LCA_CalmDown
	SAY @1018 /* ~You're right... I'm letting my emotions get the better of me. I need to focus. For Rohma.~ */
	
	IF ~~ THEN 
	GOTO LCA_ReadyToGetRohma
	
	IF ~
		Global("LCA_BreathingExercise", "GLOBAL", 1)
	~ THEN GOTO LCA_CalmDown_Rasaad
END

IF ~~ THEN BEGIN LCA_CalmDown_Rasaad
	SAY @1030 /* ~(She begins to slowly breathe in, and out. You recognize this as the breathing exercise that Rasaad taught her.)~  */
	IF ~~ THEN GOTO LCA_ReadyToGetRohma
END

IF ~~ THEN BEGIN LCA_ReadyToGetRohma
	SAY @1020 /* ~I'm ready, <CHARNAME>. You can count on me, I promise you.~ */
	
	IF ~~ THEN REPLY @1021 /* ~Good. Let's go get Rohma.~ */
	DO ~
		SetGlobal("LCA_RohmaKidnapped", "GLOBAL", 5)
	~
	EXTERN LCNEDERL LCA_ReadyToGetRohmaEnd
END

IF ~~ THEN BEGIN LCA_PPIRENI2_3_CHAIN_END
	SAY @546 /* ~You won't get away with this, wizard!~ */
	
	IF ~~ THEN
	EXTERN PPIRENI2 LCA_PPIRENI2_3_CHAIN_2
	
	IF ~
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN EXTERN PLAYER1 LCA_CORWIN_PPIRENI2_3
END

IF ~~ THEN BEGIN LCA_CorwinDelciaA_End
	SAY @505 /* ~Now, listen to me. I didn't travel all this way and risk my life only to be spoken down to by a pretentious, insufferable bitch. We are not your servants, and you are no better than the dirt on my heel. Get up.~  */
	
	IF ~
		!IsValidForPartyDialogue(Player1)
	~ THEN
	DO ~
		SetGlobal("LCA_SlappedDelcia", "GLOBAL", 1)
	~
	EXTERN DELCIA LCA_CorwinLeave
	
	IF ~
		IsValidForPartyDialogue(Player1)
	~ THEN
	DO ~
		SetGlobal("LCA_SlappedDelcia", "GLOBAL", 1)
		SetGlobal("LCA_DelciaEnd", "GLOBAL", 1)
		StartDialog("LCCORWIJ", Player1)
	~
	EXIT
END

IF ~~ THEN BEGIN LCA_CorwinDrizz_End
	SAY @1297 /* ~<CHARNAME>?~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("LCA_CorwinDrizz_End", "GLOBAL", 1)
		StartDialog("LCCORWIJ", Player1)
	~
	EXIT
END

IF ~
	Global("LCA_CorwinDrizz_End", "GLOBAL", 1)
~ THEN BEGIN LCA_CorwinDrizz_Transition
	SAY @1298 /* ~We could use their help.~ */
	
	IF ~~ THEN REPLY @1299 /* ~Thank you for the offer, Drizzt, but we aren't in need of any assistance.~ */
	DO ~
		SetGlobal("LCA_CorwinDrizz_End", "GLOBAL", 2)
	~
	EXTERN C6DRIZZ1 54
	
	IF ~~ THEN REPLY @483 /* ~I have a proposal for you, Drizzt, if you will wait for a moment.~  */
	DO ~
		SetGlobal("LCA_CorwinDrizz_End", "GLOBAL", 2)
	~
	EXTERN C6DRIZZ1 LCA_CorwinDrizz2 
END
IF ~
	Global("LCA_SlappedDelcia", "GLOBAL", 1)
	Global("LCA_DelciaEnd", "GLOBAL", 1)
~ THEN BEGIN LCA_CorwinDelciaA_Transition
	SAY @506 /* ~Now get the hells out of here!~ */
	IF ~~ THEN REPLY @511 /* ~(Remain silent.)~ */
	EXTERN DELCIA LCA_CorwinLeave
	
	IF ~~ THEN REPLY @512 /* ~Are you deaf, woman? Get out!~ */
	EXTERN DELCIA LCA_CorwinLeave
	
	IF ~~ THEN REPLY @1295 /* ~Better do what she says, lady.~    */
	EXTERN DELCIA LCA_CorwinLeave
END

IF ~~ THEN BEGIN LCA_HOW_WhyNot
	SAY @1377 /* ~Excuse us, ma'am.~ */
	
	= @1378 /* ~(She pulls you aside.)~ */
	
	= @1379 /* ~What's the problem? They're orphans — they have nothing. A few words from you could at least give them some inspiration.~ */
	
	IF ~
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1380 /* ~Public speaking isn't my forte... but I'll do it for you, dear.~ */
	GOTO LCA_StartHOWCutscene2 
	
	IF ~~ THEN REPLY @1381 /* ~If it's just a few words, then fine.~ */
	GOTO LCA_StartHOWCutscene2
	
END
IF ~~ THEN BEGIN LCA_StartHOWCutscene
	SAY @1376 /* ~Lead the way, Curator Magda.~ */
	
	IF ~~ THEN
	DO ~
		StartCutsceneMode()
		StartCutscene("LCCSHOW")
		EndCutSceneMode()
	~
	EXIT
END
IF ~~ THEN BEGIN LCA_StartHOWCutscene2
	SAY @1382 /* ~That's better. Lead the way, Curator Magda.~*/
	
	IF ~~ THEN
	DO ~
		StartCutsceneMode()
		StartCutscene("LCCSHOW")
		EndCutSceneMode()
	~
	EXIT
END

IF ~~ THEN BEGIN LCA_AlythReport
	SAY @1426 /* ~Ma'am, did you report these disappearances to the Flaming Fist?~ */
	
	IF ~~ THEN
	EXTERN LCALYTH LCA_ReportToFF
END
CHAIN 
	IF ~~ THEN LCCORWIJ LCA_CorwinTiannaGoodbyeChain
		@854 /* ~I hope you learned something from this Tianna. Next time, you might not be so lucky.~*/
		== LCTIANNA
		@858 /* ~I've been doing a lot of thinking and... I don't think this city is a good fit for me. I'm going to take my mom south to Beregost, and try for a fresh start over there.~ */
		== LCCORWIJ
		@855 /* ~That's a good decision. Take care of yourself, Tianna.~ */
		== LCTIANNA
		@857 /* ~You too, Schael.~ */
		= @856 /* ~(They share an embrace.)~ */ 
END LCTIANNA LCA_GoodBye

CHAIN 
	IF ~
		Global("LCA_LCCS15Cutscene", "GLOBAL", 3)
	~ THEN LCCORWIJ LCA_CorwinNeomaReunite
		@716 /* ~(They share a close embrace.)~ */
		DO ~
			SetGlobal("LCA_LCCS15Cutscene", "GLOBAL", 4)
		~
		== LCNEOMA
		@717 /* ~I heard you'd be coming home! How are you?~ */
		== LCCORWIJ
		@723 /* ~I'm just glad to be home. How are things with you?~ */
		== LCNEOMA
		@721 /* ~(They speak amongst themselves for a time. You can't make out what they are saying.)~ */
		== LCNEOMA
		IF ~
			Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
		~
		@722 /* ~Really? You and ... (she looks at you, smiles.)~ */
		== LCCORWIJ
		IF ~
			Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
		~
		@718 /* ~(They break into laughter.)~*/
		== LCNEOMA
		@719 /* ~Listen, I have to start my shift soon. Let's get caught up later, over a drink or two.~*/
		== LCCORWIJ
		@724 /* ~Sounds good. I'll see you later.~*/
		== LCNEOMA
		@725 /* ~(They embrace, and Neoma leaves after giving Schael a kiss on her cheek.)~ */
EXIT

CHAIN
	IF ~
		Global("LCA_LCCS14Cutscene", "GLOBAL", 1)
	~ THEN LCCORWIJ LCA_CorwinFamilyReunite
		@681 /* ~(They share a long embrace, and Schael gives her daughter a big kiss.)~ */
		= @683 /* ~Oh, I've missed you so much!~*/
		DO ~
			SetGlobal("LCA_LCCS14Cutscene", "GLOBAL", 2)
			SetGlobal("LCA_CorwinFamilyTalk", "GLOBAL", 1)
			SetGlobal("LCA_CorwinMetFamily", "GLOBAL", 1)
		~
		== LCROHMA
		@684 /* ~I missed you too mommy!~ */
EXIT
CHAIN IF ~~ THEN LCCORWIJ LCA_CorwinFamilyReunite2
	@686 /* ~Me too, father.~ */
	= @687 /* ~(They share a warm embrace.)~ */
	== LCAUDAM
	@691 /* ~Corporal Duncan told us you'd be home soon. I can't tell you how much of a relief it is to have you back.~ */
	= @688 /* ~I see you've brought company.~ */
END LCROHMA LCA_CorwinFamilyReunite3

CHAIN
	IF ~~ THEN LCCORWIJ LCA_CorwinFamilyReuniteTM
		@695 /* ~Oh - look what I got for you Rohma.~ */
		= @696 /* ~(She hands her the trophy she won at the Trademeet Archery Competition.)~ */
		= @697 /* ~Can you read me what it says?~ */
		== LCROHMA
		@698 /* ~Winner.. eighth an-annu...~ */
		== LCCORWIJ
		@699 /* ~Annual.~ */
		== LCROHMA
		@700 /* ~Annual... trade..meet... ar..chery.. c-com-comp...~*/
		== LCCORWIJ
		@701 /* ~Competition. Good job honey. Your reading has improved quite a bit.~ */	
END LCCORWIJ LCA_CorwinFamilyReuniteSwitch

CHAIN 
	IF ~~ THEN LCCORWIJ LCA_CorwinDelciaA
		@507 /* ~I've heard enough. */
		== LCCORWIJ
		IF ~
			IsValidForPartyDialogue("Nalia")
		~
		@1296 /* Forgive me, Nalia.~ */
		= 
		@504 /* ~(Captain Corwin walks up to Lady Delcia and delivers a powerful, open-handed slap to her face that sends her crashing to the floor. Delcia looks up at Corwin, and is left quivering and speechless.)~ */
		==NALIAJ
		IF ~
			IsValidForPartyDialogue("Nalia")
		~
		@508 /* ~(She stands in shock.)~ */
END LCCORWIJ LCA_CorwinDelciaA_End
		
CHAIN 
	IF ~~ THEN IMOEN2 LCA_CorwinImoenReunite
		@500 /* ~It's good to see you again, Captain, but I'm surprised that you're here.~ */
		== LCCORWIJ
		@459 /* ~It's good to see you too, Imoen. As for why I'm here, <CHARNAME> found evidence proving that Irenicus was behind what happened to Skie. I was assigned to assist <PRO_HIMHER> in the hunt for the wizard.~ */
		== IMOEN2
		@501 /* ~Skie, is she ...~ */
		== LCCORWIJ
		@460 /* ~She's alive and well, thanks to <CHARNAME>. I'll fill you in on the details later. We need to get moving.~ */
		== IMOEN2
		@502 /* ~Good. Right, let's get moving.~*/
		DO ~
			IncrementGlobal("LCA_CorwinOpinionOfPlayer", "GLOBAL", 1)
			JoinParty()
		~
EXIT




CHAIN
	IF ~~ THEN LCCORWIJ LCA_CorwinDrizz
		@479 /* ~Hold your tongue, drow. I've never known <CHARNAME> to resort to banditry. I suggest that you and your companions move along - now.~*/
		DO ~
			SetGlobal("LCA_CorwinVouchedDrizz", "GLOBAL", 1)
			SetGlobalTimer("LCA_CorwinVouchedDrizzTimer", "GLOBAL", THREE_ROUNDS)
		~ 
		== C6WULF1
		@480 /* ~Eh? Is she threatening us? Do you think she's serious?~ */
		== C6BRUEN1
		@461 /* ~Aye Drizzt, I recognize that insignia on her armor. Yer far from home, aren't ye girl?~ */
		== C6REGIS1
		@462 /* ~She must be some kind of imposter. The Flaming Fist puts bandits to the sword - they do not fight alongside them!~ */
		== C6CATTI1
		@463 /* ~He's right, Drizzt. We can't be allowin' these bandits to run free... knows what horrid acts they've committed upon others?~*/
		== C6DRIZZ1
		@464 /* ~That's enough, all of you. You (he points at Corwin) - who are you, and what is your business here?~ */
		== LCCORWIJ
		@465 /* ~I am Captain Schael Corwin of the Flaming Fist. I'm travelling with <CHARNAME> on a special assignment to apprehend a wizard, Jon Irenicus.~ */
		== C6DRIZZ1
		@466 /* ~How do I know you aren't an impostor, as my friend suggests? I know a bit of the Flaming Fist and its reporting structure. Tell me, who are your commanding officers? Answer carefully.~ */
		== LCCORWIJ
		@467 /* ~Marshall Nederlok, and Duke Eltan.~ */
		== C6DRIZZ1
		@468 /* ~I know of another in the Flaming Fist. Based on your claimed rank, you should be reporting to them.~ */
		== LCCORWIJ
		@469 /* ~If you're referring to Scar, he was assassinated several months ago, as part of a plot to usurp control over the city. <CHARNAME> brought both the assassin and the usurper to justice. Scar was a good friend and I miss him dearly.~ */
		== C6DRIZZ1
		@470 /* ~You say you were a friend to Scar. If you were truly his friend, you would know his real name.~ */
		== LCCORWIJ
		@471 /* ~His name was Harold Loggerson.~ */
		== C6DRIZZ1
		@472 /* ~(His expression changes from one of suspicion to one of surprise.) Very well. Lower your weapons, friends. This woman is telling us the truth.~ */
		=
		@473 /* ~Scar was a good man. I am sorry to hear that he has passed. You said you were after a wizard? What has this person done to warrant the attention of the Flaming Fist?~ */
		== LCCORWIJ
		@474 /* ~Yes. The wizard nearly murdered Skie Silvershield, the daughter of one of the Grand Dukes, and framed <CHARNAME> for the crime. <CHARNAME> found evidence proving his innocence and is responsible for Skie's restoration.~ */
		=
		@475 /* ~Once <PRO_HISHER>'s innocence was established, I was assigned to them to assist in the hunt for the wizard.~ */
		== C6DRIZZ1
		@476 /* ~I ... see. If <CHARNAME> was framed for that crime by the wizard then... perhaps... it may also be the case that it was not <PRO_HESHE> that attacked me while I was beset by gnolls...~ */
		== C6WULF1
		@477 /* ~You don't seriously believe them, do you?~ */
		== C6DRIZZ1
		@478 /* ~I do. I sense no deception from this woman, and her account of <CHARNAME>'s actions lead me to believe that <PRO_HESHE> is a force for good, not evil.~  */
		=
		@481 /* ~If you are in need of assistance, I will be glad to offer it. If not, I will wish you well and we shall be on our way back to the far north.~ */
END LCCORWIJ LCA_CorwinDrizz_End



CHAIN
	IF ~~ THEN LCCORWIJ LCA_BackToBG_Chain
		@629 /* ~Before we go, let's check with the rest of the team to see if they want to come with us. I imagine some will want to stay here and help the elves with their wounded.~*/
		
		== LCCORWIJ 
		IF ~
			IsValidForPartyDialogue("Hexxat")
		~
		@646 /* ~(She points at Hexxat.) She will not be joining us. I'll not allow the monster to feed on the citizens I've sworn to protect.~*/
		DO ~
			ActionOverride("Hexxat", SetLeavePartyDialogFile())
			ActionOverride("Hexxat", ChangeAIScript("", DEFAULT))
		~
		
		== IMOEN2J
		IF ~
			IsValidForPartyDialogue("Imoen2")
		~
		@636 /* ~You can count me in. Oh, I can't wait to see Liia again! There are so many stories I'll share with her.~ */
		DO ~
			SetGlobal("LCA_BackToBG_Imoen", "GLOBAL", 1)
		~
		
		== JAHEIRAJ 
		IF ~
			IsValidForPartyDialogue("Jaheira")
			GlobalGT("JaheiraRomanceActive", "GLOBAL",0)
			GlobalLT("JaheiraRomanceActive", "GLOBAL",3)
		~
		@639 /* ~I will be joining you, my dear.~ */
		DO ~
			SetGlobal("LCA_BackToBG_Jaheira", "GLOBAL", 1)
		~
		
		== JAHEIRAJ
		IF ~
			IsValidForPartyDialogue("Jaheira")
			ReputationGT(Player1,9)
			OR(2)
				Global("JaheiraRomanceActive", "GLOBAL",0)
				Global("JaheiraRomanceActive", "GLOBAL",3)
		~
		@637 /* ~This is where we part ways, at least for now, <CHARNAME>. Gorion would be proud of the <PRO_MANWOMAN> you've become. I will remain here to help undo the damage that Irenicus inflicted on the Tree of Life.~ */
		= @638 /* ~(You share a warm embrace.)~ */
		DO ~
			ActionOverride("Jaheira", SetLeavePartyDialogFile())
			ActionOverride("Jaheira", ChangeAIScript("", DEFAULT))
		~
		== JAHEIRAJ
		IF ~
			IsValidForPartyDialogue("Jaheira")
			ReputationLT(Player1,10)
			OR(2)
				Global("JaheiraRomanceActive", "GLOBAL",0)
				Global("JaheiraRomanceActive", "GLOBAL",3)
		~
		@640 /* ~This is where we part ways, at least for now, <CHARNAME>. I urge you to become the type of <PRO_MANWOMAN> that Gorion would be proud of. I will remain here to help undo the damage that Irenicus inflicted on the Tree of Life.~ */
		DO ~
			ActionOverride("Jaheira", SetLeavePartyDialogFile())
			ActionOverride("Jaheira", ChangeAIScript("", DEFAULT))
		~
		== VICONIJ 
		IF ~
			IsValidForPartyDialogue("Viconia")
		~
		@641 /* ~I will join you. The sooner we can leave, the better - the surface elves are looking for an excuse to murder me, I know it.~ */
		DO ~
			SetGlobal("LCA_BackToBG_Viconia", "GLOBAL", 1)
		~
		
		== JANJ
		IF ~
			IsValidForPartyDialogue("Jan")
			Global("LCA_BackToBG_Jan", "GLOBAL", 1)
		~
		@642 /* ~Oh, yes, this is a wonderful opportunity to expand my turnip business! I will go with you.~ */
		
		== JANJ
		IF ~
			IsValidForPartyDialogue("Jan")
			!Global("LCA_BackToBG_Jan", "GLOBAL", 1)
		~
		@643 /* ~Back to Athkatla for me, I'm afraid. The turnips need tending to. Safe travels, my friends.~ */
		DO ~
			ActionOverride("Jan", SetLeavePartyDialogFile())
			ActionOverride("Jan", ChangeAIScript("", DEFAULT))
		~
		== EDWINJ 
		IF ~
			IsValidForPartyDialogue("Edwin")
		~
		@644 /* ~We are in a city of magical knowledge that few humans have set foot in, and you want me to go back to that diseased backwater of a city? Bah! I will remain here and learn the secrets of the elves. (That is, until they throw me out.)~ */
		DO ~
			ActionOverride("Edwin", SetLeavePartyDialogFile())
			ActionOverride("Edwin", ChangeAIScript("", DEFAULT))
		~
		== MINSCJ 
		IF ~
			IsValidForPartyDialogue("Minsc")
		~
		@645 /* ~I would go with you, but Boo has become intensely infatuated with a squirrel that he saw on the Tree of Life. I must find this squirrel and determine if she is a worthy mate for Boo.~ */
		DO ~
			ActionOverride("Minsc", SetLeavePartyDialogFile())
			ActionOverride("Minsc", ChangeAIScript("", DEFAULT))
		~
		== AERIEJ
		IF ~
			IsValidForPartyDialogue("Aerie")
			GlobalGT("AerieRomanceActive", "GLOBAL",0)
			GlobalLT("AerieRomanceActive", "GLOBAL",3)
		~
		@647 /* ~Oh, of course I will go with you! M-maybe we can also see Candlekeep? It will be fun to see where you g-grew up.~ */
		DO ~
			SetGlobal("LCA_BackToBG_Aerie", "GLOBAL", 1)
		~
		
		== AERIEJ
		IF ~
			IsValidForPartyDialogue("Aerie")
			ReputationGT(Player1,9)
			OR(2)
				Global("AerieRomanceActive", "GLOBAL",0)
				Global("AerieRomanceActive", "GLOBAL",3)
		~
		@648 /* ~O-oh, I think it will be better for me to stay here. There are still many injured, and the elves can use my help. */
		= @649 /* ~T-thank you, <CHARNAME> for everything. For freeing me from the circus, and for taking me on this grand adventure. I've learned so much about the world, and.. and about m-myself. I h-hope to see you again soon.~ */
		= @650 /* ~(You share a warm embrace.)~ */
		DO ~
			ActionOverride("Aerie", SetLeavePartyDialogFile())
			ActionOverride("Aerie", ChangeAIScript("", DEFAULT))
		~
		== AERIEJ
		IF ~
			IsValidForPartyDialogue("Aerie")
			ReputationLT(Player1,10)
			OR(2)
				Global("AerieRomanceActive", "GLOBAL",0)
				Global("AerieRomanceActive", "GLOBAL",3)
		~
		@648 /* ~O-oh, I think it will be better for me to stay here. There are still many injured, and the elves can use my help.~ */
		DO ~
			ActionOverride("Aerie", SetLeavePartyDialogFile())
			ActionOverride("Aerie", ChangeAIScript("", DEFAULT))
		~
		== NALIAJ
		IF ~
			IsValidForPartyDialogue("Nalia")
		~
		@651 /* ~This is an opportunity to understand the plight of the poor from a broader perspective. I will go with you. ~ */
		DO ~
			SetGlobal("LCA_BackToBG_Nalia", "GLOBAL", 1)
		~
		
		== HAERDAJ
		IF ~
			IsValidForPartyDialogue("HaerDalis")
		~
		@652 /* ~I will remain here for a time, my sparrow. I wish to see this place restored to its former beauty. May our paths cross again in the near future.~ */
		DO ~
			ActionOverride("HaerDalis", SetLeavePartyDialogFile())
			ActionOverride("HaerDalis", ChangeAIScript("", DEFAULT))
		~
		== KORGANJ
		IF ~
			IsValidForPartyDialogue("Korgan")
		~
		@653 /* ~Aye, I'll go with ye. It hath been many a year since I travelled the Sword Coast, plus I be sick of these queers already. I'll stop at Beregost on the way and pay an old friend of mine a visit.~ */
		DO ~
			SetGlobal("LCA_BackToBG_Korgan", "GLOBAL", 1)
		~
		
		== KELDORJ
		IF ~
			IsValidForPartyDialogue("Keldorn")
			Global("LadyMaria","GLOBAL",5)
		~
		@654 /* ~I promised my wife that I would return home after putting an end to Irenicus, and I will do so. Good-bye, my friend. May Torm guide your path.~*/
		DO ~
			ActionOverride("Keldorn", SetLeavePartyDialogFile())
			ActionOverride("Keldorn", ChangeAIScript("", DEFAULT))
		~
		== KELDORJ
		IF ~
			IsValidForPartyDialogue("Keldorn")
			!Global("LadyMaria","GLOBAL",5)
		~
		@655 /* ~Now that Irenicus has been dealt with, I must return to my order and my duty. Good-bye, my friend. May Torm guide your path.~ */
		DO ~
			ActionOverride("Keldorn", SetLeavePartyDialogFile())
			ActionOverride("Keldorn", ChangeAIScript("", DEFAULT))
		~
		== ANOMENJ
		IF ~
			Alignment("Anomen",LAWFUL_GOOD)
			IsValidForPartyDialogue("Keldorn")
			!Global("LadyMaria","GLOBAL",5)
			IsValidForPartyDialogue("Anomen")
			OR(2)
				Global("AnomenRomanceActive", "GLOBAL",0)
				Global("AnomenRomanceActive", "GLOBAL",3)
		~
		@662 /* ~I'm afraid I too must return to my order. Safe travels <CHARNAME>, and you as well Captain.~ */
		DO ~
			ActionOverride("Anomen", SetLeavePartyDialogFile())
			ActionOverride("Anomen", ChangeAIScript("", DEFAULT))
		~
		== ANOMENJ
		IF ~
			Alignment("Anomen",LAWFUL_GOOD)
			IsValidForPartyDialogue("Keldorn")
			Global("LadyMaria","GLOBAL",5)
			IsValidForPartyDialogue("Anomen")
			OR(2)
				Global("AnomenRomanceActive", "GLOBAL",0)
				Global("AnomenRomanceActive", "GLOBAL",3)
		~
		@663 /* ~I'm afraid I must decline, and return to my order. Safe travels <CHARNAME>, and you as well Captain.~ */
		DO ~
			ActionOverride("Anomen", SetLeavePartyDialogFile())
			ActionOverride("Anomen", ChangeAIScript("", DEFAULT))
		~
		== ANOMENJ
		IF ~
			Alignment("Anomen",LAWFUL_GOOD)
			!IsValidForPartyDialogue("Keldorn")
			IsValidForPartyDialogue("Anomen")
			OR(2)
				Global("AnomenRomanceActive", "GLOBAL",0)
				Global("AnomenRomanceActive", "GLOBAL",3)
		~
		@663 /* ~I'm afraid I must decline, and return to my order. Safe travels <CHARNAME>, and you as well Captain.~ */
		DO ~
			ActionOverride("Anomen", SetLeavePartyDialogFile())
			ActionOverride("Anomen", ChangeAIScript("", DEFAULT))
		~
		== ANOMENJ
		IF ~
			IsValidForPartyDialogue("Anomen")
			!Alignment("Anomen",LAWFUL_GOOD)
			OR(2)
				Global("AnomenRomanceActive", "GLOBAL",0)
				Global("AnomenRomanceActive", "GLOBAL",3)
		~
		@664 /* ~I will join you. There is little left for me in Amn, and I am eager for a fresh start.~ */
		DO ~
			SetGlobal("LCA_BackToBG_Anomen", "GLOBAL", 1)
		~
		
		== ANOMENJ
		IF ~
			IsValidForPartyDialogue("Anomen")
			OR(2)
				Global("AnomenRomanceActive", "GLOBAL",1)
				Global("AnomenRomanceActive", "GLOBAL",2)
		~
		@665 /* ~I will remain by your side my love, now and always.~ */
		DO ~
			SetGlobal("LCA_BackToBG_Anomen", "GLOBAL", 1)
		~
		
		== DORNJ
		IF ~
			IsValidForPartyDialogue("Dorn")
			OR(2)
				!Dead("ohdazoth")  // Azothet
				!Dead("ohdugoth")  // Ur-Gothoz
		~
		@656 /* ~I sense that my patron wishes for us to part ways, at least for now. I have a feeling that our paths will cross again, and soon. Until then, <CHARNAME>.~ */
		DO ~
			ActionOverride("Dorn", SetLeavePartyDialogFile())
			ActionOverride("Dorn", ChangeAIScript("", DEFAULT))
		~
		== DORNJ
		IF ~
			IsValidForPartyDialogue("Dorn")
			Dead("ohdazoth")  // Azothet
			Dead("ohdugoth")  // Ur-Gothoz
		~
		@657 /* ~Yes, I will go with you. Anywhere, even Baldur's Gate, would be better than staying here.~ */
		DO ~
			SetGlobal("LCA_BackToBG_Dorn", "GLOBAL", 1)
		~
		
		== VALYGARJ
		IF ~
			IsValidForPartyDialogue("Valygar")
			!Global("LCA_Banter_CorwinValygar", "GLOBAL", 7)
		~
		@660 /* ~No, I won't be joining you. I'm going back to my cabin in the woods. I'll use the time and seclusion to decide what to do with my life.~ */
		DO ~
			ActionOverride("Valygar", SetLeavePartyDialogFile())
			ActionOverride("Valygar", ChangeAIScript("", DEFAULT))
		~
		== VALYGARJ
		IF ~
			IsValidForPartyDialogue("Valygar")
			Global("LCA_Banter_CorwinValygar", "GLOBAL", 7)
		~
		@658 /* ~There is nothing left for me in Amn. Captain, I'd like to take you up on your offer and join the Flaming Fist, at least on an interim basis.~ */
		DO ~
			SetGlobal("LCA_BackToBG_Valygar", "GLOBAL", 1)
		~
		
		== LCCORWIB
		IF ~
			IsValidForPartyDialogue("Valygar")
			Global("LCA_Banter_CorwinValygar", "GLOBAL", 7)
		~
		@659 /* ~Excellent - you'll make a fine addition to the team.~ */
		
		== NEERAJ
		IF ~
			IsValidForPartyDialogue("Neera")
		~
		@661 /* ~Of course I'll join you silly! It'll be nice to see the Sword Coast again!~ */
		DO ~
			SetGlobal("LCA_BackToBG_Neera", "GLOBAL", 1)
		~
		
		== CERNDJ
		IF ~
			IsValidForPartyDialogue("Cernd")
			Global("CerndBaby","GLOBAL",1)
		~
		@667 /* ~I will remain here for a time and help the elves repair the damage to the Tree of Life, then, I will return home to raise my son. Good-bye and safe travels, friends.~ */
		DO ~
			ActionOverride("Cernd", SetLeavePartyDialogFile())
			ActionOverride("Cernd", ChangeAIScript("", DEFAULT))
		~
		== CERNDJ
		IF ~
			IsValidForPartyDialogue("Cernd")
			!Global("CerndBaby","GLOBAL",1)
		~
		@666 /* ~I will remain here for a time and help the elves repair the damage to the Tree of Life. Good-bye and safe travels, friends.~ */
		DO ~
			ActionOverride("Cernd", SetLeavePartyDialogFile())
			ActionOverride("Cernd", ChangeAIScript("", DEFAULT))
		~
		== RASAADJ
		IF ~
			IsValidForPartyDialogue("Rasaad")
			OR(2)
				Global("RasaadRomanceActive", "GLOBAL",0)
				Global("RasaadRomanceActive", "GLOBAL",3)
		~
		@668 /* ~Yes my friend, I will return with you. I am interested to see what progress has been made in dealing with the refugee crisis. My help may still be needed.~ */
		DO ~
			SetGlobal("LCA_BackToBG_Rasaad", "GLOBAL", 1)
		~
		
		== RASAADJ
		IF ~
			IsValidForPartyDialogue("Rasaad")
			OR(2)
				Global("RasaadRomanceActive", "GLOBAL",1)
				Global("RasaadRomanceActive", "GLOBAL",2)
		~
		@665 /* ~I will remain by your side my love, now and always.~ */
		DO ~
			SetGlobal("LCA_BackToBG_Rasaad", "GLOBAL", 1)
		~
		
		== LCCORWIJ
		@672 /* ~Take a few minutes to gather your belongings. When you are ready to leave, come and talk to me.~*/
EXIT

CHAIN
	IF ~~ THEN LCCORWIJ LCA_HarborCorwin
		@800 /* ~It has. Listen, this is not a social visit. We're investigating reports of slaver activity in these docks, specifically, allegations that refugees are being shipped from here and sold into slavery. What do you know about these activities?~ */
		== LCHARBOR
		@801 /* ~Shipped from Baldur's Gate, you say? No, I don't know anything about it. We do periodic inspections of cargo on behalf of the city authorities, but we haven't come across any children.~*/
		= @802 /* ~Now, wait a minute... A couple months back, there was a program started by some upstart noble to resettle refugees. He claimed to have connections in other cities that he used to find families willing to host them.~ */
		= @803 /* ~He chartered a number of ships from this dock to places like Athkatla, Calimport, Waterdeep, and others.~ */
		== LCCORWIJ
		@804 /* What is his name? Where is he now?~ */
		DO ~
			SetGlobal("LCA_AskedAboutName", "GLOBAL", 1)
		~
		== LCHARBOR
		@805 /*  ~I don't remember his name, but I know he and his company have set up shop in the old Iron Throne headquarters.~ */
		== LCCORWIJ
		@806 /* ~Give me all of the shipping manifests from his company for his company since the start of the refugee crisis, until now.~ */
		DO ~
			SetGlobal("LCA_AskedAboutManifests", "GLOBAL", 1)
		~
		== LCHARBOR
		@807 /* ~I need some more time for those manifests. Give me an hour, I should have them ready for you by then.~*/
		== LCCORWIJ
		@808 /* ~Not in an hour, now. Unless you want the Flaming Fist to turn these docks inside out.~*/
		== LCHARBOR 
		@809 /*  ~Right... one moment.~*/
		= @810 /* ~Here they are. The shipping manifests for Winston Ventures for the period you mentioned.~*/
		DO ~
			SetGlobal("LCA_HandedOverManifests", "GLOBAL", 1)
			GiveItemCreate("LCMANFST",LastTalkedToBy(Myself),1,0,0)
			AddJournalEntry(@1305, QUEST)
		~
		== LCCORWIJ
		@811 /* ~Thank you for your cooperation.~ */
END LCCORWIJ LCA_HarborCorwinChainEnd

CHAIN 
	IF ~~ THEN LCCORWIJ LCA_Depart_RohmaChain
		@872 /* ~Rohma, father, <CHARNAME> and I have some business to attend to in the city. I'll be back in a couple of hours.~ */
		DO ~
			SetGlobalTimer("LCA_CorwinFamilyTimer", "GLOBAL", FOUR_HOURS)
		~
		== LCAUDAM
		@877 /*  ~Good. Don't take too long. Rohma, say bye to mommy.~ */
		== LCROHMA
		@873 /* ~I love you mommy.~ */
		== LCCORWIJ
		@874 /* ~I love you too, Rohma. Give mama a hug.~*/
		== LCROHMA
		@875 /* ~(They share a warm embrace.)~*/
		
END LCCORWIJ LCA_SeeRohmaLater

CHAIN
	IF ~~ THEN LCCORWIJ LCA_AudamCorwinPlayerChain
		@890 /* ~Thanks, father. How were things while I was away?~ */
		== LCAUDAM
		@891 /* ~Quiet, thankfully. I've been teaching Rohma some basic addition and subtraction. She's picks things up fast, like you did at her age.~ */
		== LCCORWIJ
		@892 /* ~I'm not surprised. She has a great teacher.~*/
		== LCAUDAM
		@893 /* ~Hardly. Your mother, rest her soul, was much better than I am.~*/
		= @894 /* ~Listen, Schael. I know your feelings for <CHARNAME> are strong.~*/
		= @895 /* ~Someone of <PRO_HISHER> notoriety being around Rohma has me worried, though.~*/
		== LCCORWIJ
		@896 /* ~What do you mean? <PRO_HESHE> would never hurt her.~*/
		== LCAUDAM
		@897 /* ~No, of course not. What I mean is that someone might use Rohma, or you for that matter, to get to <PRO_HIMHER>.~*/
		== LCCORWIJ
		@898 /* ~<CHARNAME> and I discussed this on the way here... it might get complicated at times, but we're both committed to finding a way to make our relationship work. <PRO_HESHE> is a good <PRO_MANWOMAN> father - I trust <PRO_HIMHER> with my life.~*/
		== LCAUDAM
		@899 /* ~It's good that you've had those discussions... You know, I can't remember the last time I saw you so happy and full of energy. <PRO_HESHE> must really love you.~*/
		== LCCORWIJ
		@900 /*  ~<PRO_HESHE> does father. And I love <PRO_HIMHER>.~*/
		== LCAUDAM
		@901 /* ~I'm glad. Well, you better get a move on then. I'll see you later.~*/
		== LCCORWIJ
		@902 /* ~Right. See you in a couple of hours.~ */
EXIT

CHAIN
	IF ~~ THEN LCCORWIJ LCA_PlayerNewDadChain
		@879 /* ~Oh, Rohma... I hope so. It's a big committment.~ */
		== LCROHMA
		@882 /* ~What's a com-it-mint?~ */
		== LCCORWIJ
		@880 /* ~You know how mommy has a duty to the Flaming Fist? Well, I also have a duty to you and grandpa. A committment is like a duty.~*/
		== LCROHMA
		@883 /* ~So being a daddy is a big duty for <CHARNAME>?~*/
		== LCCORWIJ
		@881 /* ~It's a big duty for anyone, sweetie, but it's very rewarding at the same time.~*/
		== LCROHMA
		@886 /*~Tell <CHARNAME> he can play with my dolly if he will be my daddy.~ */
		== LCCORWIJ
		@887  /* ~I will, honey. I'm sure he'd appreciate that. We'll talk some more about this when I come back.~*/
		= @888 /* ~Be a good girl while I'm gone.~*/
		== LCROHMA
		@889 /* ~I will, mommy.~*/
EXIT

CHAIN
	IF ~~ THEN LCCORWIJ LCA_CorwinNederlok
		@824 /* ~It's good to be back, sir. How have the Fist and the city fared in my absence?~ */
		DO ~
			SetGlobal("LCA_NederlokCorwin", "GLOBAL", 1)
		~
		== LCNEDERL 
		@825 /* ~Both have fared well, thankfully. We've gained some promising new recruits, and the refugee situation has been brought under control. Between the Iron Crisis, Sarevok, Caelar, and the situation with <CHARNAME> and Skie, it's been a rough couple of years. It's good that things have finally settled down.~ */
		= @826 /* ~Have the townspeople given you or <CHARNAME> any problems?~ */
		== LCCORWIJ
		IF ~
			Global("LCA_CorwinScoldTownsperson", "LOCALS", 1)
		~
		@827 /* ~Most have been accepting, even welcoming. There were just a few loudmouths, but they've been straightened out.~ */
		== LCCORWIJ
		IF ~
			!Global("LCA_CorwinScoldTownsperson", "LOCALS", 1)
		~
		@831 /*  ~Most have been accepting, even welcoming, of our hero here. (She smiles at you.)~ */
		== LCNEDERL
		@828 /* ~That's good to hear. Before I forget - Duke Eltan is tied up with some unrelated business, but he wanted me to tell you that he's glad that you and <CHARNAME> are back, and that he'll see you in the debriefing.~ */
		== LCCORWIJ
		@829 /* ~Thank you sir. I'll leave you to your work.~ */
		== LCNEDERL
		@832 /* ~Very good, Captain. I'll see you at the debriefing.~ */	
EXIT

CHAIN LCAUDAM LCA_AudamarRohmaKidnapChain
	@990 /* ~(Audamar lies on the floor, bloodied and severely beaten.)~ */
	= @976 /* ~...uhnnn... S-Schael...~ */
	== LCCORWIJ
	@977 /* ~Oh, thank Tymora you're alive! What happened! Where's Rohma!?~ */
	== LCAUDAM
	@978 /* ~They t-took her... said they w-would trade her for.. ...~ */
	== LCCORWIJ
	@979 /* ~For what? Who took her?~ */
	== LCAUDAM
	@980 /* ~For ... <CHARNAME> ... it was B-Beno and.. a woman..~ */
	DO ~
		SetGlobal("LCA_RohmaKidnapped", "GLOBAL", 2)
	~
EXIT

CHAIN LCLIIA LCA_NeedToGetRohmaChain
	@996 /* ~Captain, your father is going to be fine. I believe he will make a full recovery.~*/
	== LCCORWIJ
	@997 /* ~Oh, thank goodness.~*/
	== LCELTAN
	@998 /* ~Let us now discuss the matter at hand...~*/
	== LCNEDERL
	@999 /* ~Kent - read for us again the letter recovered from Audamar.~*/
	== LCKENT
	@1000 /* ~Yes sir. It reads as follows:~*/
	== LCKENT
	IF ~
		Gender(Player1, MALE)
	~ THEN
	@1001 /* ~'<CHARNAME>, son of Bhaal. Illasera of the Five requests your presence in the Undercity, in the temple of the father. You and Captain Corwin are to come, alone. If anyone else follows you, the child will die. Do not keep us waiting for long.'~*/
	== LCKENT
	IF ~
		Gender(Player1, FEMALE)
	~ THEN
	@1002 /* ~'<CHARNAME>, daughter of Bhaal. Illasera of the Five requests your presence in the Undercity, in the temple of the father. You and Captain Corwin are to come, alone. If anyone else follows you, the child will die. Do not keep us waiting for long.'~*/
	== LCELTAN
	@1003 /* ~The Five... I've heard rumors of a such a group causing havoc in the vicinity of Saradush.~*/
END LCNEDERL LCA_NeedToGetRohmaEnd

CHAIN LCCORWIJ LCA_RohmaKidnapped5Chain
	@1007 /* ~Yes. He's Rohma's father, as distasteful as it sounds.~ */
	== LCLIIA
	@1011 /* ~That bodes well for your daughter, then. I doubt that he would wish to see her harmed.~ */
	== LCBELT
	@1333 /* ~We could use that to our advantage.~ */
	== LCCORWIJ
	@1050 /* ~You mean to turn Beno against Illasera? I won't work. Beno's only ever cared for himself.~ */
	= @1052 /* ~He won't stick his neck out for anyone, not even his own daughter — I'm sure of it.~ [LCA00011] */
	== LCBELT
	@1334  /* ~I see...~ */
	== LCNEDERL
	@1009 /* ~You'll almost certainly be walking into a trap. It would be better to send some additional support, perhaps a platoon of Valiants -~ */
END LCCORWIJ LCA_RohmaKidnapped5ChainEnd

CHAIN LCBENO2 LCA_CorwinBenoSTChain
	@1185 /* ~To hells with you, and your father!~ */
	== LCCORWIJ
	@1186 /* ~(She plunges the dagger into his heart. His mouth opens as if to cry in pain, but strangely, no sound is heard. A mist rises out of the gaping wound in his chest, and coalesces into the form of a man; it's Beno, you're sure of it.)~ */
	=@1187 /* ~(For a brief moment, the spirit gazes at its physical body, with a look of wonder and confusion. That confusion turns to terror as the spirit is slowly drawn into the blade of the dagger. The spirit turns as if to flee, but it is no use. You hear a piercing scream in your mind as the last remnants of the spirit are swallowed up by the dagger.)~   */
	DO ~
		AddJournalEntry(@1206, INFO)
	~
END LCCORWIJ LCA_CorwinBenoSTChainEnd

CHAIN LCBENO2 LCA_CorwinKillBenoChain
	@1185 /* ~To hells with you, and your father!~ */
	== LCCORWIJ
	@1192 /* ~(She picks up Beno's rusted scimitar, and, after a moment of hesitation, brings it down sharply upon his neck. The first blow did not fully detach the head from the body, and you hear a grotesque, gurgling sound as Beno struggles to breathe. The second blow mercifully finishes the job. Beno's head hits the ground with a satisfying thud, then rolls a couple of feet away from his body.)~*/
	=@1193 /* ~(Schael walks over to the now detached head, picks it up, and places it into her pack.)~  */
	DO ~
		GiveItemCreate("LCBENOHD", "LCCORWIN", 0,0,0)
		AddJournalEntry(@1207, INFO)
	~
END LCCORWIJ LCA_CorwinKillBenoChainEnd

CHAIN LCBENO2 LCA_CorwinMercyBenoChain
	@1198 /* ~To hells with you, and your father!~ */
	== LCCORWIJ
	@1199 /* ~What?~ */
	== LCBENO2
	@1193 /* ~For everything... not just for today, but... for everything...~ */
	== LCCORWIJ
	@1201 /* ~(Sigh.)~*/
	=@1202 /* ~No. This is wrong. Killing you, again, isn't going to solve anything. I've at least learned that much.~*/
	=@1203 /* ~Beno, you're under arrest for the crimes of kidnapping and attempted murder.~*/
	DO ~
		AddJournalEntry(@1208, INFO)
	~
END LCCORWIJ LCA_CorwinMercyBenoChainEnd

CHAIN LCCORWIJ LCA_CorwinRohmaReuniteChain
	@1211 /* ~Are you alright?~ */
	== LCROHMA
	@1237 /* ~Yes mommy.~*/
	== LCCORWIJ
	@1254 /* ~What did they do to you? Did they hurt you?~*/
	== LCSKIE
	@1255 /* ~The healers said that she was put into a deep sleep, but that she wasn't harmed.~ */
	=@1256 /* ~Once they woke her up, she went to see her grandpa right away.~*/
	== LCCORWIJ
	@1212 /* ~How's grandpa doing?~ */
	== LCROHMA
	@1257 /* ~Good, he's taking a nap. Why does he snore so loud?~*/
	== LCSKIE
	@1250 /* ~He's going to be fine - the healers said that he'll be up and about in the morning.~*/
	= @1251 /* ~Rohma's been doing a great job looking after him, haven't you, dear?~ */
	== LCROHMA
	@1253 /* ~Yep!~ */
	== LCCORWIJ
	@1215 /* ~Oh, where are my manners. Thank you for looking after her, Skie.~*/
	== LCCORWIJ
	IF ~
		Global("LCA_DontTellEntar", "GLOBAL", 1)
	~
	@1294 /* And for that thing that ah.. we won't talk about.~  */
	== LCSKIE
	@1239 /* ~I'm glad to have been able to help.~ */
	== LCROHMA
	@1238 /* ~Mommy?~  */
	== LCCORWIJ
	@1214 /* ~Yes, honey?~  */
END LCROHMA LCA_CorwinRohmaReuniteChainEnd

CHAIN LCCORWIJ LCA_BGEND3_CorwinSaradushChain
	@1228 /* ~Marshal Nederlok, sir.~ */
	== LCNEDERL
	@1258 /* ~What is it, Major?~ */
	== LCCORWIJ
	@1259 /* ~Request permission to accompany <CHARNAME> to Saradush.~ */
	== LCNEDERL
	@1229 /* ~Granted. Do whatever is necessary to ensure the success of this mission. The fate of the city, and perhaps the entire Sword Coast, may depend on it.~*/
	== LCCORWIJ
	@1260 /* ~Yes, sir.~ */
	== LCNEDERL 
	@1261 /* ~And Major - don't worry about your family while you're gone. We'll make sure they are well-protected here in the palace, just in case the Five try anything again. Good hunting.~ */
END LCCORWIJ LCA_BGEND3_CorwinSaradushChainEnd

CHAIN PPIRENI2 LCA_PPIRENI2_3_CHAIN
	@541 /* ~And you, young lady.~ */
	= @542 /*~(He looks at Corwin, and the Flaming Fist insignia on her armor.)~*/
	= @543 /*~I trust you are here to effect some appropriate punishment for what I did to Skie Silvershield?~*/
	
	== LCCORWIJ
	@544 /* ~Ugh...~ */
	= @545 /*~(She struggles mightily against her restraints.)~*/
END LCCORWIJ LCA_PPIRENI2_3_CHAIN_END

CHAIN PPIRENI2 LCA_PPIRENI2_3_CHAIN_2
	@547 /* ~Worry not, my dear. Unlike the others, you will live past these next few minutes. Once I am done with <CHARNAME>, you'll soon be returned home, where you will assassinate the Council of Four on my behalf.~ */
	
	== LCCORWIJ
	@548 /* ~What..? No, never!~ */
	
	== PPIRENI2
	IF ~
		See("Yoshimo")
	~
	@549 /* ~It's a trivial matter. You'll be enslaved just as easily as Yoshimo was. Enjoy your last moments of autonomy, child.~ */
	
	== PPIRENI2
	IF ~
		!See("Yoshimo")
	~
	@550 /* ~It's a trivial matter. You'll be enslaved through the use of a geas. Enjoy your last moments of autonomy, child.~ */
END LCCORWIJ LCA_PPIRENI2_3_CHAIN_2_END

CHAIN LCCORWIJ LCA_MagdaChain
	@1364 /* ~Curator Magda! It's good to see you, too.~*/
	
	== LCCURATO 
	@1365 /* ~How is Rohma? And your father?~ */
	
	==LCCORWIJ
	IF ~
		Global("LCA_CorwinMetFamily", "GLOBAL", 1)
	~
	@1366 /* ~They are well ma'am, thank you.~ */
	
	== LCCORWIJ
	IF ~
		!Global("LCA_CorwinMetFamily", "GLOBAL", 1)
	~
	@1367 /* ~We're going to see them shortly.~*/
	
	== LCCURATO
	@1368 /* ~Ah, good. And who're you? I don't believe we've met.~ */
	
	== LCCORWIJ
	@1369 /* ~Curator Magda, allow me to introduce you to <CHARNAME>, the hero of Baldur's Gate.~ */
END LCCURATO LCA_Introduction

CHAIN LCCURATO LCA_MagdaChain2
	@1373 /* ~For many years... enough time to watch the Captain here grow from a rapscallious child into the fine young woman she is today.~ */
	
	== LCCORWIJ
	@1374 /* ~(She blushes.)~ */
	
	== LCCURATO
	@1375 /* ~Oh! <CHARNAME>, Captain — a number of troubled youths from the orphanage are visiting the High Hall of Wonders, as we speak. It would mean the world to them if you can take some time out of your day to give them some words of encouragement.~ */
END LCCURATO LCA_AskToTalk

CHAIN LCCURATO LCA_CSHOW_TALK_CHAIN
	@1406 /* ~That was wonderful, Captain. Thank you for sharing your experience with us today.~ */
	= @1407 /* ~Children? Do you have any questions for Captain Corwin?~ */
	= @1410 /* ~Ah, yes Hans, go ahead.~ */
	== LCORPH01
	IF ~
		Gender(Player1, MALE)
	~
	@1408 /* ~Who's the guy standing next to you?~ */
	== LCORPH01
	IF ~
		Gender(Player1, FEMALE)
	~
	@1413 /* ~Who's the lady standing next to you?~ */
	== LCCORWIJ
	@1409 /* ~This is <CHARNAME>, hero of Baldur's Gate and the Sword Coast!~ */
	== LCCURATO
	IF ~
		Gender(Player1, MALE)
	~
	@1411 /* ~He's gracefully agreed to share with you some words of encouragement.~ */
	== LCCURATO
	IF ~
		Gender(Player1, FEMALE)
	~
	@1412 /* ~She's gracefully agreed to share with you some words of encouragement.~ */
END LCORPH02 LCA_CSHOW_TALK_CHAIN_END

CHAIN LCORPH03 LCA_CSHOW_TALK_CHAIN_2
	@1387 /* ~<CHARNAME> has horns, you dummy.~ */
	== LCORPH04
	@1388 /* ~Yeah! And a tail!~ */
	== LCORPH05
	@1389 /*  ~With spikes!~ */
	== LCORPH06
	@1390 /* ~And <PRO_HESHE>'s so ugly, that if <PRO_HESHE> looks at you, you turn to stone! */
	== LCCURATO
	@1402 /* ~<CHARNAME>, Captain, I'm so sorry about thi—~ */
	== LCORPH01
	@1396 /* ~And <PRO_HESHE>'s so ugly, that if <PRO_HESHE> looks at you, you turn to stone!~ */
	== LCCORWIJ
	@1391 /* ~That's enough, all of you. Whatever rumors you've heard are untrue. This ...~ */
	= @1392 /* ~(She gestures to you.)~ */
	= @1393 /* ~... is *definitely* <CHARNAME>, hero of Baldur's Gate!~ */
	== LCORPH01
	@1394 /* ~Prove it!~ */
	
END LCORPH02 LCA_CSHOW_TALK_CHAIN_2_END