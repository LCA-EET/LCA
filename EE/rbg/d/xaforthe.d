BEGIN ~XAFORTHE~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY @0 /* Ah, it's you! It's good to see you again, friend.~*/
  
  IF ~~ THEN REPLY @1 /* ~It's me, yes, but who're you?~ */ 
  GOTO XA_WhoAreYou //OK
  
  IF ~~ THEN REPLY @2 /* Hello, bard. Did those stories I told you help at all? */ 
  GOTO XA_TellMeMoreStories //OK
END

IF ~~ THEN BEGIN XA_WhoAreYou // from: 0.2
	SAY @3/*  ~You don't remember? Many moons past, we met at the Hall of Wonders. I'd asked if you had any stories to tell of your adventures. I am a bard, and a soon-to-be-great bard, I might add.~ */
	
	=@27 /* ~Forthel August's the name. Many moons past, we met at the Hall of Wonders. I'd asked if you had any stories to tell of your adventures.~ */
  
	IF ~~ THEN REPLY @4 /* ~Oh, right. Did those stories help you at all?~*/
	GOTO XA_TellMeMoreStories //PL

END

IF ~~ THEN BEGIN XA_TellMeMoreStories
	SAY @6 /* ~They did. So much so, that I'm able to offer you 500 gold for any new stories you can tell me, hero.~  */
	
	IF ~~ THEN REPLY @7 /*~The lot of a bard is to travel and learn. Why don't you go out and find your own stories?~*/
	GOTO XA_GoAndLearn //OK
	
	IF ~~ THEN REPLY @10 /* ~Of course. 500 gold, you say?~ */
	GOTO XA_TellStory //ok	
END

IF ~~ THEN BEGIN XA_GoAndLearn
	SAY @9 /*~Why? Because it's DANGEROUS out there. Surely, you of all people would agree. Do you wish to help or not?~ */
	
	IF ~~ THEN REPLY @8 /* ~No self-respecting bard would do such a thing, and I won't help you again.~  */
	GOTO XA_WontHelp //OK 
	
	IF ~~ THEN REPLY @10 /* ~Of course. 500 gold, you say?~ */
	GOTO XA_TellStory //ok	
	
END

IF ~~ THEN BEGIN XA_TellStory
	SAY @11 /* ~Indeed.~ */
	
	IF ~
		Global("XA_LC__HonorableDuel", "GLOBAL", 1)
	~ THEN REPLY @12 /* ~(Tell him of your duel with Ashatiel during the siege of Dragonspear.)~ */
	GOTO XA_Ashatiel //OK
	
	IF ~~ THEN REPLY @13 /* ~(Describe how Irenicus framed you for the murder of Skie Silvershield, and how you were able to clear your name.)~ */
	GOTO XA_Skie //OK
	
	IF ~~ THEN REPLY @14 /* ~(Tell him of your escape from the Underdark through Ust Natha.)~ */
	GOTO XA_Underdark //OK
	
	IF ~~ THEN REPLY @15 /* ~(Explain how Irenicus' stole the souls of you and Imoen, and what you had to go through to get them back.)~ */
	GOTO XA_Irenicus //OK
	
	IF ~
		Global("XA_LC__CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @16 /* ~~(Tell him of how you and Schael were finally reunited in Athkatla.)~ */
	GOTO XA_Schael
	
	IF ~~ THEN REPLY @18 /* ~(Tell him of the first time you and Schael made love.)~ */
	GOTO XA_Belhifet //OK
END

IF ~~ THEN BEGIN XA_Schael
	SAY @26 /* ~That the love you have for one another was able to endure in the face of such adversity... truly inspiring!~ */
	
	IF ~~ THEN
	GOTO XA_TakeMoney //OK
END

IF ~~ THEN BEGIN XA_Skie
	SAY @25 /* ~What started in anguish and tragedy ends in justice and a return to grace. Wonderful. Just wonderful.~ */
	
	IF ~~ THEN
	GOTO XA_TakeMoney //OK
END

IF ~~ THEN BEGIN XA_Ashatiel
	SAY @22 /* ~Such tales of courage in the face of adversity do much to uplift one's spirit.~*/
	
	IF ~~ THEN 
	GOTO XA_TakeMoney //OK
END

IF ~~ THEN BEGIN XA_Underdark
	SAY @24 /* ~Action-packed and full of twists and turns! Amazing! The audience will hang on my every word.~  */
	
	IF ~~ THEN 
	GOTO XA_TakeMoney //OK
END

IF ~~ THEN BEGIN XA_Belhifet
	SAY @19 /* ~Incredible! To willingly venture to one of the nine hells, and come out alive and victorious! Unfortunately, I don't think that's a story I can use... no one would believe me. Still, I may be able to use bits and pieces of it.~ */
	
	IF ~~ THEN 
	GOTO XA_TakeMoney //OK
END

IF ~~ THEN BEGIN XA_Irenicus
	SAY @21 /* ~Hah! A wizard stole your soul, and you had to go to the Hells to take it back? This Irenicus you describe is like a villain from an old fairy tale. I can suspend my disbelief for only so long... Still, I may be able to use bits and pieces of it.~*/
	
	IF ~~ THEN
	GOTO XA_TakeMoney
END

IF ~~ THEN BEGIN XA_TakeMoney
	SAY @23 /* ~Thank you, friend, for sharing your story with me. Take this money and be well.~ */
	
	IF ~~ THEN
	DO ~
		GiveGoldForce(500)
		EscapeArea()
	~ 
	EXIT
END

IF ~~ THEN BEGIN XA_WontHelp
	SAY @17 /*~My, aren't you the moral champion of the day? I fail to see why I should be chastised because I don't wish to risk my neck chasing down vermin or bandits. Leave me be then.~ */
	
	IF ~~ THEN 
	DO ~
		EscapeArea()
	~ 
	EXIT
END
