BEGIN ~XASKIE~

IF ~
	Global("XA_LC_ByeRohma", "GLOBAL", 1)
	RandomNum(2,1)
~ THEN BEGIN XA_EndBGQuest_CorwinRequested
	SAY @77 /* ~Rohma's just too sweet - I love her!~*/
	IF ~~ THEN EXIT
END

IF ~
	Global("XA_LC_ByeRohma", "GLOBAL", 1)
	RandomNum(2,2)
~ THEN BEGIN XA_EndBGQuest_CorwinRequested
	SAY @78 /* ~Thanks for keeping your word. My father would have locked up in my room if he knew I had any part in the rescue.~*/
	IF ~~ THEN EXIT
END

IF ~
	Global("XA_LC_ArrivedInUndercity", "GLOBAL", 3)
~ THEN BEGIN XA_SkieUC
	SAY @48 /* Psst. */
	IF ~~ THEN
	DO ~
		SetGlobal("XA_LC_ArrivedInUndercity", "GLOBAL", 4)
	~
	GOTO XA_SkieUCChain
END 

IF ~~ THEN BEGIN XA_SkieTakesRing
	SAY @69 /* ~Got it, Schael.~ */
	
	= @62 /* ~All I need from the two of you then is to create a distraction. I'll lower myself down from the ceiling with this rope, then place the ring on her finger. I'll climb back up afterward.~ */
	
	= @75 /* ~I'd like to stay and fight, but to tell you the truth, that Illasera seems a bit out of my league. The two of you should be able to handle her and her crew just fine.~ */
	
	IF ~~ THEN REPLY @65 /* ~Sounds like a plan.~ */
	GOTO XA_SetUp
	
	IF ~~ THEN REPLY @70 /* ~Thanks for doing this, Skie.~ */
	GOTO XA_Thanks
END

IF ~~ THEN BEGIN XA_GiveRing
	SAY @61 /* ~That's good! Hold out your hand. I'll take the ring.~ */
	
	IF ~~ THEN 
	EXTERN XACORWIJ XA_SkieTakesRing
END


IF ~~ THEN BEGIN XA_Thanks
	SAY @71 /* ~For what you've done for me, it's the least I can do. Just do me a favor.~ */
	
	IF ~~ THEN REPLY @72 /* ~What is it?~*/
	GOTO XA_Thanks2
END

IF ~~ THEN BEGIN XA_Thanks2
	SAY @73 /* ~Don't tell my father about this! He thinks I'm asleep at home.~ */
	IF ~~ THEN 
	DO ~
		SetGlobal("XA_LC_DontTellEntar", "GLOBAL", 1)
	~
	EXTERN XACORWIJ XA_Thanks3
END
IF ~~ THEN BEGIN XA_SetUp
	SAY @68 /* ~I'll go and get set up on the roof. Good luck.~*/
	
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XA_NonDetection
	SAY @58 /* ~They're only watching the front door. They haven't realized that there's an entry through the roof.~ */
	
	IF ~~ THEN EXTERN XACORWIJ XA_GiveSkieRing2
END

IF ~~ THEN BEGIN XA_GiveSkieRing3
	SAY @76 /* ~Yes, but I wouldn't be able to move her without them noticing.~*/
	
	IF ~~ THEN EXTERN XACORWIJ XA_GiveSkieRing4
END

IF ~~ THEN BEGIN XA_CanGetRohma
	SAY @59 /* ~I can get to her undetected, but as soon as I try move her they'll see me.~*/
	
	IF ~~ THEN EXTERN XACORWIJ XA_GiveSkieRing
END
IF ~
	Global("XA_LC_DukesDebriefed", "GLOBAL", 4)
~ THEN BEGIN XA_Congratulations
	SAY @46 /* ~Congratulations! I'm so happy for the both of you!~ */
	
	IF ~~ THEN 
	DO ~
		SetGlobal("XA_LC_DukesDebriefed", "GLOBAL", 5)
		SetGlobal("XA_LC_DukesFullyDebriefed", "GLOBAL", 1)
	~
	EXTERN XACORWIJ XA_Congratulations1
END

IF ~
	IsGabber("XACORWIN")
	!Global("XA_LC_CorwinTalkedToSkie", "GLOBAL", 1)
~ THEN BEGIN XA_MeetSkieCorwin
	SAY @34 /* ~Captain! Welcome home!~ */
	
	IF ~
		Global("XA_LC_TalkedToSkie", "GLOBAL", 1)
	~ THEN EXTERN XACORWIJ XA_MeetSkieCorwinChain2
	
	IF ~
		!Global("XA_LC_TalkedToSkie", "GLOBAL", 1)
	~ THEN EXTERN XACORWIJ XA_MeetSkieCorwinChain
END

IF ~
	!Global("XA_LC_TalkedToSkie", "GLOBAL", 1)
	IsGabber("XACORWIN")
	Global("XA_LC_CorwinTalkedToSkie", "GLOBAL", 1)
~ THEN BEGIN XA_MeetSkieCorwin
	SAY @35 /* ~Captain? Please let <CHARNAME> know that we need to speak to <PRO_HIMHER>.~ */
	
	IF ~~ THEN 
	EXIT
END

IF ~
	Global("XA_LC_ReturnToBG", "GLOBAL", 1)
	!Global("XA_LC_TalkedToSkie", "GLOBAL", 1)
	IsGabber(Player1)
~ THEN BEGIN XA_MeetSkie
	SAY @0 /* ~<CHARNAME>! Welcome back!~*/
	
	IF ~~ THEN REPLY @1 /* ~Thank you, Skie. I'm glad to see you're alive and well.~ */
	GOTO XA_MeetSkie2
END

IF ~
	True()
~ THEN BEGIN XA_DefaultGreeting
	SAY @36 /* ~Did you hear that? No, of course you didn't.~ */
	
	IF ~~ THEN EXIT
END
IF ~~ THEN BEGIN XA_MeetSkie2
	SAY @2 /* ~The elves asked me to express their gratitude to you for defeating  the Exile. They lament what he had become, and do not fault you in any way for doing what was necessary.~ */
	
	IF ~~ THEN REPLY @3 /* ~What elves? Did Suldanesselaar send a delegation to Baldur's Gate?~ */
	GOTO XA_MeetSkie3
	
	IF ~~ THEN REPLY @18 /* ~I don't understand. Elves? Here in Baldur's Gate?~*/
	GOTO XA_MeetSkie3
	
END

IF ~~ THEN BEGIN XA_MeetSkie3
	SAY @4 /* ~The elves are in the dagger. Here, let me show you.~ */
	
	= @5 /* ~(She brandishes a dagger and points it at you. You recognize it immediately - it's the Soultaker dagger that Irenicus used to imprison Skie, and frame you for her murder.)~  */
	
	IF ~~ THEN REPLY @6 /* ~Put that damned dagger away Skie. It's gotten me into enough trouble already!~ */
	GOTO XA_MeetSkie4
	
	IF ~~ THEN REPLY @7 /* ~The Soultaker dagger! Don't point it at me!~ */
	GOTO XA_MeetSkie4
	
	IF ~
		See("XACORWIN")
		IsValidForPartyDialogue("XACORWIN")
	~ THEN EXTERN XACORWIJ XA_MeetSkie3A
END



IF ~~ THEN BEGIN XA_MeetSkie4
	SAY @8 /* ~Oh, I'd never hurt you! Can't you hear them? My friends in the dagger yearn to be freed - THEY MUST BE FREED, but the wizards here can't help them.~ */
	
	IF ~~ THEN REPLY @9 /* ~Does your father know you have the dagger?~ */
	GOTO XA_MeetSkie5
	
	IF ~~ THEN REPLY @11 /* ~Skie, I think it would be best if you handed me the dagger. I may yet find a way to release your 'friends' from their imprisonment.~  */
	GOTO XA_MeetSkie6
END

IF ~~ THEN BEGIN XA_MeetSkie5
	SAY @10 /* ~Of course not! Don't tell him I have it. He said the dagger was making me unwell, so he had the wizards hide it from me. They kept taking it away from me, but now I have them fooled! I tricked them and they don't know that I have it!~ */
	
	IF ~~ THEN REPLY @23 /* ~You tricked them? What do you mean?~ */
	GOTO XA_TrickedWizards
	
	IF ~~ THEN REPLY @11 /* ~Skie, I think it would be best if you handed me the dagger. I may yet find a way to release your 'friends' from their imprisonment.~  */
	GOTO XA_MeetSkie6
END

IF ~~ THEN BEGIN XA_MeetSkie6
	SAY @12 /* ~Oh, that would be wonderful! You really are a hero, not just to the elves, but to me as well.~  */

	IF ~~ THEN
	DO ~
		GiveItemCreate("XASTDAGF", LastTalkedToBy(Myself), 0,0,0)
	~
	GOTO XA_MeetSkie6A
END

IF ~~ THEN BEGIN XA_MeetSkie6A
	SAY @16 /* ~Here, take good care of it, and be sure to talk to them so they don't get too lonely.~ */
	
	IF ~~ THEN REPLY @13 /* ~Talk to a dagger? Have you gone completely mad?~ */
	GOTO XA_MeetSkie7
	
	IF ~~ THEN REPLY @15 /* ~Thanks. I'll keep it safe.~ */
	GOTO XA_MeetSkieEnd
END	

IF ~~ THEN BEGIN XA_MeetSkie7
	SAY @14 /* ~Not the dagger, the elves inside the dagger! Gods, why doesn't anyone believe me. They have no one to pass the time with, and let me tell you - time passes much, much, MUCH slower in there than it does out here.~ */
	
	= @22 /* ~Look, I know how it sounds, but I'm not crazy. If you were trapped in the dagger like I was, you'd understand.~ */
	
	IF ~~ THEN REPLY @27 /* ~I see.~ */
	GOTO XA_MeetSkieEnd
END
IF ~~ THEN BEGIN XA_TrickedWizards
	SAY @24 /* ~The elves taught me how to create a replica of the dagger through magic. The wizards are convinced that the replica is the real deal.~ */

	IF ~~ THEN REPLY @25 /* ~It's hard to believe that the city wizard would fall for such parlor tricks.~ */
	GOTO XA_TrickedWizards2
END

IF ~~ THEN BEGIN XA_TrickedWizards2
	SAY @26 /* ~Go and ask them! You'll see!~ */
	
	IF ~~ THEN REPLY @11 /* ~Skie, I think it would be best if you handed me the dagger. I may yet find a way to release your 'friends' from their imprisonment.~  */
	GOTO XA_MeetSkie6
END
IF ~~ THEN BEGIN XA_MeetSkieEnd
	SAY @28 /* ~I can't wait to hear about your adventure in Amn. I'll be at the debriefing tomorrow, you know.~*/
	
	IF ~~ THEN REPLY @29 /* ~I'll see you there, then.~ */
	GOTO XA_MeetSkieEnd3
	
	IF ~~ THEN REPLY @30 /* ~I'm not eager to see your father again.~ */
	GOTO XA_MeetSkieEnd2
END

IF ~~ THEN BEGIN XA_MeetSkieEnd2
	SAY @32 /* ~Oh you needn't worry about him. He doesn't want you dead anymore.~ */
	IF ~~ THEN REPLY @33 /* Good to know. See you at the debriefing.~  */
	GOTO XA_MeetSkieEnd3
END

IF ~~ THEN BEGIN XA_MeetSkieEnd3
	SAY @31 /* ~Right. See you tomorrow!~ */
	IF ~~ THEN
	DO ~
		SetGlobal("XA_LC_TalkedToSkie", "GLOBAL", 1)
	~
	EXIT
END

CHAIN XACORWIJ XA_MeetSkieCorwinChain
	@37 /* ~Thanks Skie. I trust you are well?~*/
	DO ~
		SetGlobal("XA_LC_CorwinTalkedToSkie", "GLOBAL", 1)
	~
	== XASKIE
	@38 /* ~Never better.~ */
	= @39 /* ~She's a Captain in the Flaming Fist. The people that protect the city.~ */
	== XACORWIJ
	@40 /* ~I'm sorry? Who're you talking to?~ */
	== XASKIE
	@41 /* ~The elves. They were asking who you were.~ */
	== XACORWIJ
	@42 /* ~What elves?~ */
	== XASKIE
	@43 /* ~In the dagger - can't you hear them? Oh, Captain - I need to talk to <CHARNAME>. It's very important.~ */
	== XACORWIJ
	@44 /* ~Right...~ */
EXIT

CHAIN XACORWIJ XA_MeetSkieCorwinChain2
	@37 /* ~Thanks Skie. I trust you are well?~*/
	DO ~
		SetGlobal("XA_LC_CorwinTalkedToSkie", "GLOBAL", 1)
	~
	== XASKIE
	@38 /* ~Never better.~ */
	= @28 /* ~I can't wait to hear about your adventure in Amn. I'll be at the debriefing tomorrow, you know.~ */
	== XACORWIJ
	@29 /* ~I'll see you there, then.~ */
	== XASKIE
	@45 /* ~Aye-aye, Captain!~ */
EXIT

CHAIN IF ~
	Global("XA_LC_ArrivedInUndercity", "GLOBAL", 3)
~ THEN XASKIE XA_SkieUCChain
	@67 /* ~Over here.~*/
	== XACORWIJ
	@49 /* ~Who's there!~*/
	== XASKIE
	@50 /* ~Quiet down, it's me, Skie.~*/
	== XACORWIJ
	@51 /* ~Skie - but.. how? We can't see you.~*/
	== XASKIE
	@52 /* ~I'm invisible. I snuck in ahead of you, once the Thieves' Guild cleared the last of the traps from the maze.~*/
	=@64 /* ~Listen. Rohma's being held in the temple. She's alive, and appears to be unharmed. They put her into some kind of magical sleep, I think.~*/
	== XACORWIJ
	@53 /* ~How many are in there with her?~ */
	== XASKIE
	@54 /* ~Six in total. A woman, Illasera I presume, a man with a scar on his neck, and four assassins hiding in the shadows.~*/
END XACORWIJ XA_SkieUCChainEnd