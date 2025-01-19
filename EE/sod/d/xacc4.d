BEGIN ~XACC4~

IF ~
	Global("XA_LC_TentCS", "GLOBAL", 1)
~ THEN BEGIN XA_TentCSStart
	SAY @0 /* ~(You wake to the sound of rustling papers. It's Captain Corwin reviewing some paperwork at a makeshift desk. She hears you stirring, and turns to you.)~*/
	
	= @1 /*  ~Oh, I'm sorry. I didn't mean to wake you.~ */
	
	IF ~~ THEN REPLY @2 /* ~It's fine. I wasn't getting much sleep, anyway. What are you working on?~ */
	DO ~
		SetGlobal("XA_LC_TentCS", "GLOBAL", 2)
	~
	GOTO XA_TentCS_DutyRoster
END

IF ~~ THEN BEGIN XA_TentCS_DutyRoster
	SAY @3 /* ~Duty rosters. If you need help falling asleep, reviewing these should do the trick.~ */
	
	IF ~~ THEN REPLY @4 /* ~Heh. Mind if I take a look?~ */
	GOTO XA_TentCS_DutyRoster2
	
	IF ~~ THEN REPLY @35  /*~I'll pass. Back to bed for me. See you tomorrow, Captain.~ */
	DO ~
		SetGlobal("XA_LC_TentCS", "GLOBAL", 3)
	~
	GOTO XA_Skipped
END

IF ~~ THEN BEGIN XA_TentCS_DutyRoster2
	SAY @5 /* ~Not at all. Have a seat.~ */
	
	IF ~~ THEN
	DO ~
		StartCutSceneMode()
		StartCutScene("XATNTCS2")
	~
	EXIT
	
	IF ~
		Global("XA_LC_XACC4_Debug","GLOBAL", 1)
	~ THEN
	EXIT
	
END

IF ~
	Global("XA_LC_TentCS", "GLOBAL", 2)
~ THEN BEGIN XA_TestCS2Start
	SAY @6 /* ~Have you ever seen one of these before? They cover everything from site logistics, to sentry duty, scouting parties, and everything in between.~ */
	
	IF ~~ THEN REPLY @7 /* ~No, I haven't. Can you walk me through it?~ */
	DO ~
		SetGlobal("XA_LC_TentCS", "GLOBAL", 3)
	~
	GOTO XA_TentCS_Sentry
END

IF ~~ THEN BEGIN XA_TentCS_Sentry
	SAY @8 /* ~Sure. Let's start with sentry duty, since that's the easiest to explain. Each corner of the camp has two sentries, and they each work a 12-hour shift. When the shift ends, the new rotation relieves them and ...~ */
	
	= @9 /* ~(As she continues with her explanation of the duty roster, you realize that this is the first time you've seen Corwin without her armor and other equipment. She really is quite attractive, you think to yourself.)~*/
	
	= @33 /* ~...two scouts, six in the vanguard, three on either side and behind. Eight-hour rotations...~ */
	
	= @34 /* ~(Moreover, being this close to her affords you a much better view of her impressive physique, which you'd never truly appreciated until now...)~ */
	
	= @10 /* ~<CHARNAME>?~ */
	
	IF ~~ THEN REPLY @31 /* ~.....~ */
	GOTO XA_Charname
END

IF ~~ THEN BEGIN XA_Charname
	SAY @32 /*  ~<CHARNAME>!~ */

	IF ~~ THEN REPLY @11 /*  ~Sorry, what was that? I was, uh, distracted.~*/
	GOTO XA_TentCS_Beautiful
END

IF ~~ THEN BEGIN XA_TentCS_Beautiful
	SAY @12 /* ~I asked if you had any questions.~ */
	
	IF ~~ THEN REPLY @13 /* ~No, your explanation was sufficient. Thank you, Captain.~ */
	GOTO XA_TentCS_END
	
	IF ~
		GlobalLT("XA_LC_DeserterTalk", "LOCALS", 1)
	~ THEN REPLY @36 /*~I imagine these rosters are helpful in identifying deserters, as well.~*/
	DO ~
		SetGlobal("XA_LC_DeserterTalk", "LOCALS", 1)
	~
	GOTO XA_Deserters
	
	IF ~
		GlobalLT("CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @19 /* ~Are you single, by any chance?~ */
	GOTO XA_Single
	
	IF ~
		GlobalLT("CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @16 /* ~Why don't you take a break from those papers and join me in bed, Captain.~*/
	GOTO XA_TakeBreak
	
	IF ~
		Global("CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @30 /* ~Why don't you take a break from those papers and join me in bed, Schael.~*/
	GOTO XA_Single3
END

IF ~~ THEN BEGIN XA_Tempting
	SAY @29 /* ~Tempting. But this isn't time, or the place.~ */
	
	IF ~~ THEN 
	GOTO XA_Single3
END

IF ~~ THEN BEGIN XA_Single
	SAY @20 /* ~<CHARNAME>, I don't know what you think is going on here, but there's a very good chance that we won't make it back home. This really isn't the time.~*/
	
	IF ~~ THEN REPLY @21 /* ~You didn't answer my question.~*/
	GOTO XA_Single2
	
	IF ~~ THEN REPLY @22 /* ~You're right. I'm just trying to lighten up the mood. Thank you for explaining those rosters to me.~*/
	GOTO XA_TentCS_END
END

IF ~~ THEN BEGIN XA_Single2
	SAY @23 /* ~That's right ... and what if I am single? Are you going to sweep me off my feet? Show me things that I've never dreamed of, and love me like no other? Let's just focus on surviving the next week or two, alright?~ */
	
	IF ~~ THEN REPLY @25 /*~Fair enough.~*/
	GOTO XA_Single3
	
	IF ~~ THEN REPLY @26 /*~You know, you're right. We could be dead tomorrow. I can't think of a better way to spend my last night among the living than in the arms of a woman as beautiful as you.~*/
	GOTO XA_Flattering
END

IF ~~ THEN BEGIN XA_Flattering
	SAY @27 /* ~Very flattering... you know, you're not too hard on the eyes yourself... Gods, what am I saying?~ */
	
	= @28 /*  ~Enough. Get some rest. I'll see you in the morning.~ */
	
	IF ~~ THEN 
	DO ~
		SetGlobal("XA_LC_Journal_TentCutscene", "GLOBAL", 1)
	~
	EXIT
	
	IF ~
		Global("XA_LC_XACC4_Debug","GLOBAL", 1)
	~ THEN
	DO ~
		SetGlobal("XA_LC_Journal_TentCutscene", "GLOBAL", 1)
	~
	EXIT
END

IF ~~ THEN BEGIN XA_Skipped
	SAY @24 /* ~Get some rest, hero. I'll see you tomorrow.~*/
	
	IF ~~ THEN
	EXIT
END

IF ~~ THEN BEGIN XA_Single3
	SAY @24 /* ~Get some rest, hero. I'll see you tomorrow.~*/
	
	IF ~~ THEN 
	DO ~
		SetGlobal("XA_LC_Journal_TentCutscene", "GLOBAL", 1)
	~
	EXIT
	
	IF ~
		Global("XA_LC_XACC4_Debug","GLOBAL", 1)
	~ THEN
	DO ~
		SetGlobal("XA_LC_Journal_TentCutscene", "GLOBAL", 1)
	~
	EXIT
END

IF ~~ THEN BEGIN XA_TakeBreak
	SAY @17 /* ~Gods, that's the best you could come up with? I've heard better propositions from sailors that were too drunk to stand.~ */
	
	= @18 /* ~All kidding aside, I need to get through this roster. Get some rest. I'll see you tomorrow.~ */
	
	IF ~~ THEN 
	DO ~
		SetGlobal("XA_LC_Journal_TentCutscene", "GLOBAL", 1)
		//RestParty()
	~
	EXIT
	
	IF ~
		Global("XA_LC_XACC4_Debug","GLOBAL", 1)
	~ THEN
	DO ~
		SetGlobal("XA_LC_Journal_TentCutscene", "GLOBAL", 1)
	~
	EXIT
END

IF ~~ THEN BEGIN XA_TentCS_END
	SAY @14 /* ~Anytime. Get some rest, hero. I'll wrap up this review shortly.~ */
	
	IF ~~ THEN 
	DO ~
		SetGlobal("XA_LC_Journal_TentCutscene", "GLOBAL", 1)
		//RestParty()
	~
	EXIT
	
	IF ~
		Global("XA_LC_XACC4_Debug","GLOBAL", 1)
	~ THEN
	DO ~
		SetGlobal("XA_LC_Journal_TentCutscene", "GLOBAL", 1)
	~
	EXIT
END

IF ~~ THEN BEGIN XA_Deserters
	SAY @37 /*~Deserters? Odd you'd mention that... we did have a new recruit abandon their post shortly after we made camp. He'll be executed at dawn.~*/
	
	IF ~~ THEN REPLY @38 /*~Executed! That seems severe, don't you think?~*/
	GOTO XA_Deserters_1_A
	
	IF ~~ THEN REPLY @39 /*~Can you tell me more about him?~*/
	GOTO XA_Deserters_1_B
	
	IF ~~ THEN REPLY @40 /*~That's unfortunate, but he knew what he was signing up for.~*/
	GOTO XA_Deserters_1_C
END

IF ~~ THEN BEGIN XA_Deserters_1_A
	SAY @41 /*~He swore the same oath that I and those under my command did. The punishment fits the crime, and it will serve as a warning to others to keep them from making the same mistake.~*/
	
	IF ~~ THEN REPLY @44 /*~I hadn't considered that... perhaps you're right, Captain.~*/
	GOTO XA_Deserters_2
	
	IF ~~ THEN REPLY @42 /*~We'll need all the soldiers we can get if we're to success against Caelar. Execution seems like a mistake.~*/
	GOTO XA_Deserters_1_A2
END

IF ~~ THEN BEGIN XA_Deserters_1_A2
	SAY @43 /*~Don't you understand? That's the exact reason why he needs to be punished! If I were to let this slide, dozens, maybe hundreds more would follow in his footsteps! By the time we'd reach Caelar, the battle will have already been lost.~*/
	
	IF ~~ THEN REPLY @51 /*~It seems then that he's earned his fate.~*/
	GOTO XA_Deserters_1_C
	
	IF ~~ THEN REPLY @45 /*~Then by all means, punish him! But don't *kill* him!~*/
	GOTO XA_Deserters_1_A_End
END

IF ~~ THEN BEGIN XA_Deserters_1_A_End
	SAY @46 /*~You aren't going to let this go, are you?~*/
	
	= @47 /*~If it were anyone else asking for this... fine. In lieu of the gallows, he'll be flogged — severely. But the next time he or anyone tries something like this again, I'll have their head.~*/
	
	IF ~~ THEN REPLY @48 /*~Thank you, Captain. I think in time you'll see you've made the right decision.~*/
	DO ~
		SetGlobal("XA_LC_Journal_Deserter", "GLOBAL", 1)
		SetGlobal("XA_LC_DeserterSpared", "GLOBAL", 1)
	~
	GOTO XA_Deserters_End
END

IF ~~ THEN BEGIN XA_Deserters_1_B
	SAY @50 /*~He betrayed his oath, his comrades, and his city by deserting. He confessed to his crime shortly after he was caught.~ */
	
	IF ~~ THEN REPLY @51 /*~It seems then that he's earned his fate.~*/
	GOTO XA_Deserters_1_C
	
	IF ~~ THEN REPLY @52 /*~We've all had moments of fear and doubt. Execution isn't the answer, in this case.~*/
	GOTO XA_Deserters_1_A
END

IF ~~ THEN BEGIN XA_Deserters_1_C
	SAY @54 /*~Indeed. His death, at least, will serve as a warning to keep others from making the same mistake.~*/

	IF ~~ THEN
	DO ~
		SetGlobal("XA_LC_Journal_Deserter", "GLOBAL", 2)
	~
	GOTO XA_Deserters_End
END

IF ~~ THEN BEGIN XA_Deserters_2
	SAY @53 /*~Being right doesn't make it any easier, unfortunately. But it must be done.~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_LC_Journal_Deserter", "GLOBAL", 2)
	~
	GOTO XA_Deserters_End
END

IF ~~ THEN BEGIN XA_Deserters_End
	SAY @55 /*~Was there anything else you wanted to discuss?~*/
	
	IF ~~ THEN REPLY @56 /*~Many things... but I've kept you from your work for too long, already. Thank you for indulging me.~*/
	GOTO XA_TentCS_END
	
	IF ~
		GlobalLT("CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @19 /* ~Are you single, by any chance?~ */
	GOTO XA_Single
	
	IF ~
		GlobalLT("CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @16 /* ~Why don't you take a break from those papers and join me in bed, Captain.~*/
	GOTO XA_TakeBreak
	
	IF ~
		Global("CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @30 /* ~Why don't you take a break from those papers and join me in bed, Schael.~*/
	GOTO XA_Single3
END