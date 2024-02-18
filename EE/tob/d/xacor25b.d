//{ Dialog B-1
	IF ~
		Global("XA_CorwinAnomenTalk", "LOCALS", 1)
	~ THEN BEGIN BCorwinAnomen1A
		SAY @541 /* ~You've been glaring at me for the last hour Anomen. What is it?~ [XACORB20] */
		IF ~~ THEN
		DO ~
			SetGlobal("XA_CorwinAnomenTalk", "LOCALS", 2)
			SetGlobal("XA_Banter_CorwinAnomenEnd", "GLOBAL", 3)	
		~ 
		EXIT
		
		IF ~
			IsValidForPartyDialogue("Anomen")
		~ THEN 
		DO ~
			SetGlobal("XA_CorwinAnomenTalk", "LOCALS", 2)
			SetGlobal("XA_Banter_CorwinAnomenEnd", "GLOBAL", 3)	
		~ 
		EXTERN ANOME25J BCorwinAnomen1A
	END
//}

//{ region Dialog B-4
IF ~
	Global("XA_Banter_CorwinMazzy", "GLOBAL", 4)
~ THEN BEGIN XA_Banter_CorwinMazzy2_Init
	SAY @528 /* ~Mazzy, I'm curious as to why you chose to specialize in the crossbow instead of the longbow.~ [XA100071]*/
	
	IF ~~ THEN 
	DO ~
		SetGlobal("XA_Banter_CorwinMazzy", "GLOBAL", 5)
		SetGlobal("XA_TM_ArcheryChallenge", "GLOBAL", 1)
	~
	EXTERN MAZZY25J BCorwinMazzy2
END
//}

//{ Mazzy Banters

	//{ region Dialog B-9
	CHAIN
		IF ~
			Global("XA_Banter_CorwinMazzy", "GLOBAL", 2)
			!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~
		THEN XACOR25B BCorwinMazzy1A
			@526 /* ~Mazzy? What do you need?~ [BD56086]*/
			DO ~
				SetGlobal("XA_Banter_CorwinMazzy", "GLOBAL", 3)
			~
			== MAZZY25J
			IF ~
				!Global("XA_CorwinPromoted", "GLOBAL", 1)
			~
			@517 /*  ~Captain, I'd not have thought it so, but you're quite skilled as an adventurer.~ */
			== MAZZY25J
			IF ~
				Global("XA_CorwinPromoted", "GLOBAL", 1)
			~
			@737 /*  ~Major, I'd not have thought it so, but you're quite skilled as an adventurer.~ */
			== XACOR25B
			@518 /* ~I wouldn't call myself an adventurer. I'm here on orders.~ */
			=
			@520 /* ~I'll head back to Baldur's Gate once Irenicus is killed or captured.~ */
			== MAZZY25J 
			@521 /* ~I see. Have you considered adventuring as a profession? Your leadership and skill with the bow would benefit almost any party.~ */
			=
			@522 /* ~Think of the good you can do.~ */
			== XACOR25B
			@523 /* ~It's not that simple. I've responsibilities to tend to at home. My daughter and father being the most important.~  */
			== MAZZY25J
			@524 /* ~Oh, forgive me - I didn't realize you had such obligations.~*/
			== XACOR25B
			@525 /* ~No need to apologize, Mazzy. Let's keep moving.~ */
	EXIT
	//}

	//{ region Dialog B-10
	CHAIN
		IF ~
			Global("XA_Banter_CorwinMazzy", "GLOBAL", 2)
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~
		THEN XACOR25B BCorwinMazzy1B
			@526 /* ~Mazzy? What do you need?~ [BD56086]*/
			DO ~
				SetGlobal("XA_Banter_CorwinMazzy", "GLOBAL", 3)
			~
			== MAZZY25J
			IF ~
				!Global("XA_CorwinPromoted", "GLOBAL", 1)
			~
			@517 /*  ~Captain, I'd not have thought it so, but you're quite skilled as an adventurer.~ */
			== MAZZY25J
			IF ~
				Global("XA_CorwinPromoted", "GLOBAL", 1)
			~
			@737 /*  ~Major, I'd not have thought it so, but you're quite skilled as an adventurer.~ */
			== XACOR25B
			@519 /* ~I wouldn't call myself an adventurer. I'm here on orders, and because <CHARNAME> needs me.~ */
			== XACOR25B
			IF ~
				GlobalLT("XA_ReturnToBG", "GLOBAL", 1)
			~
			@520 /* ~I'll head back to Baldur's Gate once Irenicus is killed or captured.~ */
			== MAZZY25J 
			@521 /* ~I see. Have you considered adventuring as a profession? Your leadership and skill with the bow would benefit almost any party.~ */
			=
			@522 /* ~Think of the good you can do.~ */
			== XACOR25B
			@523 /* ~It's not that simple. I've responsibilities to tend to at home. My daughter and father being the most important.~  */
			== MAZZY25J
			@524 /* ~Oh, forgive me - I didn't realize you had such obligations.~*/
			== XACOR25B
			@525 /* ~No need to apologize, Mazzy. Let's keep moving.~ */
	EXIT
	//}

//}

//{ Nalia Banters

	//{ Dialog B-11
	CHAIN 
		IF ~
			Global("XA_Banter_CorwinNalia", "GLOBAL", 2)
			GlobalGT("XA_ReturnToBG", "GLOBAL", 0)
		~
		THEN XACOR25B BCorwinNalia1_RBG
			@375 /* ~Nalia — you seem agitated. What's bothering you?~ [XA100040] */
			DO ~
				SetGlobal("XA_Banter_CorwinNalia", "GLOBAL", 3)
			~
			== NALIA25J
			@784 /* ~It seems that everywhere we go, we're confronted with maddening wealth disparities. I used to think that it was unique to Amn, but clearly I was mistaken.~ */
			= 
			@785 /* ~I can't understand why the people don't band together to demand change.~ */
	END XACOR25B BCorwinNalia1_END
	//}

	//{ Dialog B-12
	CHAIN 
		IF ~
			Global("XA_Banter_CorwinNalia", "GLOBAL", 2)
			GlobalLT("XA_ReturnToBG", "GLOBAL", 1)
		~
		THEN XACOR25B BCorwinNalia1
			@375 /* ~~Nalia — you seem agitated. What's bothering you?~ [XA100040] */
			DO ~
				SetGlobal("XA_Banter_CorwinNalia", "GLOBAL", 3)
			~
			== NALIA25J
			@381 /* ~The wealth disparity throughout Amn is maddening. Gilded cities full of slaves, and people who can't afford even a decent meal.~ */
			== NALIA25J
			IF ~
				!Global("XA_CorwinPromoted", "GLOBAL", 1)
			~
			@376 /* ~Captain, what is it like in Baldur's Gate? Are things as bad as they are in Athkatla?~*/
			== NALIA25J
			IF ~
				Global("XA_CorwinPromoted", "GLOBAL", 1)
			~
			@740 /* ~Major, what is it like in Baldur's Gate? Are things as bad as they are in Athkatla?~*/
			== XACOR25B
			@377 /* ~Not as bad as what I've seen during my time in Amn, but yes, there's a stark difference between the haves and have-nots.~ */
			== NALIA25J
			@378 /*  ~I'm sorry to hear that. I can't understand why the people don't band together to demand change.~*/
	END XACOR25B BCorwinNalia1_END
	
	CHAIN
		IF ~~ THEN XACOR25B BCorwinNalia1_END
			@379 /* ~I suppose it's human nature. Most people are only concerned with the well-being of their loved ones.~ [XA100041] */
			= 
			@380 /* They don't have the time, energy, or willingness to risk themselves to change the status quo.~*/
			== NALIA25J
			@382 /* ~I see... it seems that there's a lack of leadership among the poor and downtrodden. I'll think on what you said.~ */
	EXIT
	//}
	
	//{ Dialog B-13A
	CHAIN 
		IF ~
			Global("XA_Banter_CorwinNalia", "GLOBAL", 4)
			GlobalLT("XA_CorwinPromoted", "GLOBAL", 1)
		~
		THEN NALIA25J BCorwinNalia2
			@16 /* ~Captain, do you have a moment?~*/
			DO ~
				SetGlobal("XA_Banter_CorwinNalia", "GLOBAL", 5)
			~
			== XACOR25B
			@384 /* ~Sure, Nalia. What's on your mind?~ [XA100026] */
			== NALIA25J
			@385 /* ~I was thinking about our earlier discussion. You mentioned how people are afraid to stand against the status quo. I think you're correct.~ */
			=
			@386 /* ~But isn't that because there are those that will fight to protect the status quo?~*/
			=
			@387 /* ~... Like yourself and the Flaming Fist, I'm afraid.~ */
			== XACOR25B
			@388 /*  ~Our society has it's flaws to be sure, but people need order and safety as much as they do food and shelter. The way of things must be preserved. The alternative is chaos.~ [XA100042] */
			== NALIA25J
			@389 /* ~There has to be a better way.~ */
			== XACOR25B 
			@390 /*  ~Maybe there is, and I hope you're able to find it and make it a reality.~*/
			=
			@391 /* ~In the meantime, the Flaming Fist and like-minded organizations will continue to fight to preserve the current order. And so will I. ~  */
	EXIT
	//}
	
	//{ Dialog B-13B
	CHAIN 
		IF ~
			Global("XA_Banter_CorwinNalia", "GLOBAL", 4)
			GlobalGT("XA_CorwinPromoted", "GLOBAL", 0)
		~
		THEN NALIA25J BCorwinNalia2
			@74 /* ~Captain, do you have a moment?~*/
			DO ~
				SetGlobal("XA_Banter_CorwinNalia", "GLOBAL", 5)
			~
			== XACOR25B
			@384 /* ~Sure, Nalia. What's on your mind?~ [XA100026] */
			== NALIA25J
			@385 /* ~I was thinking about our earlier discussion. You mentioned how people are afraid to stand against the status quo. I think you're correct.~ */
			=
			@386 /* ~But isn't that because there are those that will fight to protect the status quo?~*/
			=
			@387 /* ~... Like yourself and the Flaming Fist, I'm afraid.~ */
			== XACOR25B
			@388 /*  ~Our society has it's flaws to be sure, but people need order and safety as much as they do food and shelter. The way of things must be preserved. The alternative is chaos.~ [XA100042] */
			== NALIA25J
			@389 /* ~There has to be a better way.~ */
			== XACOR25B 
			@390 /*  ~Maybe there is, and I hope you're able to find it and make it a reality.~*/
			=
			@391 /* ~In the meantime, the Flaming Fist and like-minded organizations will continue to fight to preserve the current order. And so will I. ~  */
	EXIT
	//}

	//{ Dialog B-14
	CHAIN 
		IF ~
			Global("XA_Banter_CorwinNalia", "GLOBAL", 6)
			GlobalGT("XA_ReturnToBG", "GLOBAL", 0)
		~
		THEN XACOR25B BCorwinNalia3_RBG
			@560 /* ~Nalia? You alright?~ [BD64597]*/
			DO ~
				SetGlobal("XA_Banter_CorwinNalia", "GLOBAL", 7)
			~
			== NALIA25J
			@459 /*  ~Not really.. I just have a lot on my mind. I've been hearing rumors that Amnish leaders are planning to criminalize vagrancy. Those that can't afford to pay the fines will be imprisoned~ */
			== XACOR25B
			@461 /* ~That seems ridiculous. There isn't enough room in the jails for that many people.~ */
			== NALIA25J
			@462 /* ~These people have very little already. How can people be so cruel to imprison those less fortunate for being poor?~ */
			== XACOR25B
			@786 /* ~You have a good heart, Nalia. Some problems are simply beyond our ability to solve.~ */
			== NALIA25J
			@787 /* ~That's it? It's too hard, so just give up?~ */
			== XACOR25B
			@788 /* ~No... but you need to focus your energy on problems that you can solve. There was a prayer that my mother taught me... what was it...~ */
			= 
			@789 /*  ~Oh yes... "Grant me the serenity to accept the things that I cannot change, the courage to change the things I can, and the wisdom to know the difference."~ */
			== NALIA25J
			@790 /*~That... that's actually helpful advice. Thank you, Schael.~ */
			== XACOR25B
			@791 /*~Anytime, Nalia.~*/
	EXIT
	//}

	//{ Dialog B-15
	CHAIN 
		IF ~
			Global("XA_Banter_CorwinNalia", "GLOBAL", 6)
			GlobalLT("XA_ReturnToBG", "GLOBAL", 1)
		~
		THEN XACOR25B BCorwinNalia3
			@560 /* ~Nalia? You alright?~ [BD64597]*/
			DO ~
				SetGlobal("XA_Banter_CorwinNalia", "GLOBAL", 7)
			~
			== NALIA25J
			@459 /*  ~Not really.. I just have a lot on my mind. I've been hearing rumors that Amnish leaders are planning to criminalize vagrancy. Those that can't afford to pay the fines will be imprisoned~ */
			== XACOR25B
			@461 /* ~That seems ridiculous. There isn't enough room in the jails for that many people.~ */
			== NALIA25J
			@462 /* ~These people have very little already. How can people be so cruel to imprison those less fortunate for being poor?~ */
			=
			@463 /* Do they do the same up north? In Beregost? Baldur's Gate?~ */
			== XACOR25B
			@464 /*  ~No, the poor are generally left alone, unless they start making trouble.~ */
			== NALIA25J
			@465 /* ~Making trouble? How do you mean?~*/
			== XACOR25B 
			@466 /*  ~Oh, you know. Aggressive begging, disturbing the peace, loitering around businesses for too long. At some point homeowners, shopkeepers and local officials start complaining, then we have to step in.~*/
			== NALIA25J
			@467 /* ~(Sigh) It sounds like things aren't much better for the poor up north.~ */
			== XACOR25B 
			@468 /* ~It was worse a few months ago at the height of the refugee crisis. The poor had to compete with the refugees for hand outs. Fights broke out. Things got ugly, on more than one occasion.~ */
			== NALIA25J
			@469 /* That's terrible.~ */
			== XACOR25B
			@472 /* ~The situation is slowly getting better as more refugees are resettled - not fast enough for my liking, but some progress is better than none. Come on, let's keep moving.~  */
	EXIT
	//}

//}

//{ HaerDalis Banters

	//{ Dialog B-16
	CHAIN 
		IF ~
			Global("XA_Banter_CorwinHaerDalis", "GLOBAL", 2)
			!Global("XA_CorwinPromoted", "GLOBAL", 1)
		~
		THEN HAERD25J BCorwinHaerDalis1_C
			@564 /* ~A moment of your time, Captain?~ [XA100067]*/
	END XACOR25B BCorwinHaerDalis1
	//}

	//{ Dialog B-17
	CHAIN 
		IF ~
			Global("XA_Banter_CorwinHaerDalis", "GLOBAL", 2)
			Global("XA_CorwinPromoted", "GLOBAL", 1)
			IsValidForPartyDialogue("HaerDalis")
		~
		THEN HAERD25J BCorwinHaerDalis1_M
			@742 /* ~A moment of your time, Major?~ [XA100067]*/
	END XACOR25B BCorwinHaerDalis1
	//}

	//{ End of B-16, B-17
	CHAIN XACOR25B BCorwinHaerDalis1
		@363 /* ~Sure. What do you need?~ [BD56086]*/
		DO ~
			SetGlobal("XA_Banter_CorwinHaerDalis", "GLOBAL", 3)
		~		
		== HAERD25J
		@364 /* ~Did you know, my raven, that your arrows sing to me as they fly?~ */
		=
		@357 /* ~They sing a song of death and destruction that belies the lovely countenance of the one who set them aflight.~~*/
		== XACOR25B
		@7 /*~Flatterer...~ [XA100073]*/
		=
		@358 /* ~You certainly have a talent for making the mundane seem dramatic.~ [XACORB61]*/
		== HAERD25J
		@359 /*  ~There is nothing mundane about you - a bird of prey, as deadly as she is beautiful.~*/
		== XACOR25B
		@356 /* ~That's kind of you to say...~ [BD67552] */
		=
		@360 /* ~... But you should know that playwrights and poets aren't my type.~*/
		== HAERD25J
		@361 /* ~Ah, but I am no ordinary playwright, just as you are no ordinary raven. Together, we could soar to heights that neither of us thought possible.~ */
		= 
		@362 /* ~For you to keep an open mind is all that I ask.~ */
		== XACOR25B
		@365 /* ~I always do. Come on, let's keep moving.~*/
	EXIT
	//}

	//{ Dialog B-18
	CHAIN 
		IF ~
			Global("XA_Banter_CorwinHaerDalis", "GLOBAL", 4)
			Global("XA_LC_CorwinRomanceActive","GLOBAL",2)
			OR(2)
				Global("HaerDalisRomanceActive","GLOBAL",2)
				Global("HaerDalisRomanceActive","GLOBAL",1)
		~
		THEN XACOR25B BCorwinHaerDalis2
			@366 /* ~Haer'Dalis? What is it?~ [XA100039] */
			DO ~
				SetGlobal("XA_Banter_CorwinHaerDalis", "GLOBAL", 5)
			~
			== HAERD25J
			@367 /*~Have you given any thought to what we discussed earlier? What you will do once this adventure is over, my raven?~ */
			== XACOR25B
			@368 /* ~I have. My goal is to complete my mission, then return home, with <CHARNAME>, to my daughter and father.~*/
			=
			@370 /* ~As interesting as your travels sound, my loved ones are here, in this plane, and I won't abandon them.~*/
			=
			@371 /* ~Besides, I see how you and Aerie look at eachother. I wouldn't want to stand in the way of a relationship between the two of you.~ */
			== HAERD25J
			@372 /*   ~Ah... I see. You'd have made a wondrous addition to my flock, but I understand the desire to return to the nest you have created for you and your loved ones.~*/
			= @373 /* ~Let us enjoy then our time together, before our flights diverge for the last time, my raven.~ */
			== XACOR25B
			@374 /*  Gladly, friend. Let's go.~ [XA100072] */
	EXIT
	//}

	//{ Dialog B-19
	CHAIN 
		IF ~
			Global("XA_Banter_CorwinHaerDalis", "GLOBAL", 4)
			Global("XA_LC_CorwinRomanceActive","GLOBAL",2)
			!Global("HaerDalisRomanceActive","GLOBAL",2)
			!Global("HaerDalisRomanceActive","GLOBAL",1)
		~
		THEN XACOR25B BCorwinHaerDalis2
			@366 /* ~Haer'Dalis? What is it?~ [XACORB56]*/
			DO ~
				SetGlobal("XA_Banter_CorwinHaerDalis", "GLOBAL", 5)
			~
			== HAERD25J
			@367 /*~Have you given any thought to what we discussed earlier? What you will do once this adventure is over, my raven?~ */
			== XACOR25B
			@368 /* ~I have. My goal is to complete my mission, then return home, with <CHARNAME>, to my daughter and father.~*/
			=
			@370 /* ~As interesting as your travels sound, my loved ones are here, in this plane, and I won't abandon them.~ [XACORB62]*/
			== HAERD25J
			@372 /*   ~Ah... I see. You'd have made a wondrous addition to my flock, but I understand the desire to return to the nest you have created for you and your loved ones.~*/
			= @373 /* ~Let us enjoy then our time together, before our flights diverge for the last time, my raven.~ */
			== XACOR25B
			@374 /*  ~Gladly, friend. Let's go.~ [XA100072] */
	EXIT
	//}

	//{ Dialog B-20
	CHAIN 
		IF ~
			Global("XA_Banter_CorwinHaerDalis", "GLOBAL", 4)
			!Global("XA_LC_CorwinRomanceActive","GLOBAL",2)
			OR(2)
				Global("HaerDalisRomanceActive","GLOBAL",2)
				Global("HaerDalisRomanceActive","GLOBAL",1)
		~
		THEN XACOR25B BCorwinHaerDalis2
			@366 /* ~Haer'Dalis? What is it?~ [XACORB56] */
			DO ~
				SetGlobal("XA_Banter_CorwinHaerDalis", "GLOBAL", 5)
			~
			== HAERD25J
			@367 /*~Have you given any thought to what we discussed earlier? What you will do once this adventure is over, my raven?~ */
			== XACOR25B
			@369 /*  ~I have. My goal is to complete my mission, then return home to my daughter and father.~*/
			=
			@370 /* ~As interesting as your travels sound, my loved ones are here, in this plane, and I won't abandon them.~ [XACORB62]*/
			=
			@371 /* ~Besides, I see how you and Aerie look at eachother. I wouldn't want to stand in the way of a relationship between the two of you.~ */
			== HAERD25J
			@372 /*   ~Ah... I see. You'd have made a wondrous addition to my flock, but I understand the desire to return to the nest you have created for you and your loved ones.~*/
			= @373 /* ~Let us enjoy then our time together, before our flights diverge for the last time, my raven.~ */
			== XACOR25B
			@374 /*  ~Gladly, friend. Let's go.~ [XA100072]*/
	EXIT
	//}

	//{ Dialog B-21
	CHAIN 
		IF ~
			Global("XA_Banter_CorwinHaerDalis", "GLOBAL", 4)
			!Global("HaerDalisRomanceActive","GLOBAL",2)
			!Global("HaerDalisRomanceActive","GLOBAL",1)
			!Global("XA_LC_CorwinRomanceActive","GLOBAL",2)
		~
		THEN XACOR25B BCorwinHaerDalis2
			@366 /* ~Haer'Dalis? What is it?~ [XACORB56] */
			DO ~
				SetGlobal("XA_Banter_CorwinHaerDalis", "GLOBAL", 5)
			~
			== HAERD25J
			@367 /*~Have you given any thought to what we discussed earlier? What you will do once this adventure is over, my raven?~ */
			== XACOR25B
			@369 /*  ~I have. My goal is to complete my mission, then return home to my daughter and father.~*/
			=
			@370 /* ~As interesting as your travels sound, my loved ones are here, in this plane, and I won't abandon them.~ */
			== HAERD25J
			@372 /*   ~Ah... I see. You'd have made a wondrous addition to my flock, but I understand the desire to return to the nest you have created for you and your loved ones.~*/
			= @373 /* ~Let us enjoy then our time together, before our flights diverge for the last time, my raven.~ */
			== XACOR25B
			@374 /*  ~Gladly, friend. Let's go.~ */
	EXIT
	//}
	
//}

//{ Minsc Banters

	//{ Dialog B-2
	CHAIN 
		IF ~
			Global("XA_Banter_CorwinMinsc", "GLOBAL", 2)
			Global("XA_CorwinPromoted", "GLOBAL", 1)
		~
		THEN XACOR25B BCorwinMinsc1_M
			@343 /* ~Minsc, I'm sorry about Dynaheir. I know that you two were very close.~ [XACORB45] */
			DO ~
				SetGlobal("XA_Banter_CorwinMinsc", "GLOBAL", 3)
			~
			== MINSC25J
			@792 /* ~Thank you, dear Major soldier lady. Boo is glad that skull crushing justice was exacted upon the wizard that murdered her.~ */
			== XACOR25B
			@345/* ~Um.. right. So am I.~*/
			== MINSC25J
			@744 /* ~Major soldier lady, Boo would like to compliment you.~ */
			== XACOR25B
			@347 /* ~Your hamster?~*/
			== MINSC25J
			@348 /*  ~Yes. Boo says that your hair is very soft and fine, like the hair on a space hamster's bottom.~*/
			== XACOR25B
			@349 /* ~WHAT!?~*/
			== MINSC25J
			@350 /* ~Yes, and also that your eyelashes remind him of a donkey's beautiful -~ */
			== XACOR25B
			@351 /* ~Choose your next words very, very carefully.~*/
			== MINSC25J
			@352 /* ~A donkey's beautiful.. erm .. beautiful .. well. Boo thinks you are beautiful.~ */
			== XACOR25B
			@354 /* ~... ... That's very kind. Let's go.~ */
	EXIT
	//}

	//{ Dialog B-22
	CHAIN 
		IF ~
			Global("XA_Banter_CorwinMinsc", "GLOBAL", 2)
			!Global("XA_CorwinPromoted", "GLOBAL", 1)
		~
		THEN XACOR25B BCorwinMinsc1_C
			@343 /* ~Minsc, I'm sorry about Dynaheir. I know that you two were very close.~ [XACORB45] */
			DO ~
				SetGlobal("XA_Banter_CorwinMinsc", "GLOBAL", 3)
			~
			== MINSC25J
			@353 /* ~Thank you, dear Captain soldier lady. Justice demands that I crush the skull of the wizard that killed her. I am glad that you are here to help inflict the most painful goodness on the forces of evil.~ */
			== XACOR25B
			@345/* ~Um.. right. So am I.~*/
			== MINSC25J
			@346 /* ~Captain soldier lady, Boo would like to compliment you.~ */
			== XACOR25B
			@347 /* ~Your hamster?~*/
			== MINSC25J
			@348 /*  ~Yes. Boo says that your hair is very soft and fine, like the hair on a space hamster's bottom.~*/
			== XACOR25B
			@349 /* ~WHAT!?~*/
			== MINSC25J
			@350 /* ~Yes, and also that your eyelashes remind him of a donkey's beautiful -~ */
			== XACOR25B
			@351 /* ~Choose your next words very, very carefully.~*/
			== MINSC25J
			@352 /* ~A donkey's beautiful.. erm .. beautiful .. well. Boo thinks you are beautiful.~ */
			== XACOR25B
			@354 /* ~... ... That's very kind. Let's go.~ */
	EXIT
	//}

	//{ Dialog B-23
	CHAIN 
		IF ~
			Global("XA_Banter_CorwinMinsc", "GLOBAL", 4)
		~
		THEN MINSC25J BCorwinMinsc2_M
			@399  /*~Soldier lady, Boo has a question for you.~ */
			DO ~
				SetGlobal("XA_Banter_CorwinMinsc", "GLOBAL", 5)
			~
			== XACOR25B
			@325 /* ~Oh let's not, please.~ [BD63913] */
			== MINSC25J
			IF ~
				Global("XA_CorwinPromoted", "GLOBAL", 1)
			~
			@745 /* ~Boo says that his question for Major soldier lady is urgent.~  */
			== MINSC25J
			IF ~
				!Global("XA_CorwinPromoted", "GLOBAL", 1)
			~
			@793 /* ~Boo says that his question for Captain soldier lady is urgent.~   */
			== XACOR25B
			@327 /* ~(sigh) Fine. What is it Boo.~*/
			== MINSC25J
			@328 /* ~Boo says, "You are a Ranger yet you do not carry a space hamster. Why is this?"~ */
			== XACOR25B
			@329 /* ~Really, Minsc?~*/
			= @330 /*  ~Whatever. Sure, I had a hamster once, when I was a child. His name was Cakey. He died.~ */
			== MINSC25J
			@331 /* ~Boo expresses his condolences on the loss of your dear not-a-space hamster.~*/
			== XACOR25B
			@332 /* ~I'm sure he does. Can we get going now?~*/
	EXIT
	//}

	//{ Dialog B-24
	CHAIN 
		IF ~
			Global("XA_Banter_CorwinMinsc", "GLOBAL", 6)
		~
		THEN XACOR25B BCorwinMinsc3
			@333 /* ~I have a question for you.~ [XACORB44] */
			DO ~
				SetGlobal("XA_Banter_CorwinMinsc", "GLOBAL", 7)
			~
			== MINSC25J
			IF ~
				!Global("XA_CorwinPromoted", "GLOBAL", 1)
			~
			@334 /* ~Of course, Captain soldier lady. How can Minsc and Boo help a fellow warrior of the greatest goodness?~ */
			== MINSC25J
			IF ~
				Global("XA_CorwinPromoted", "GLOBAL", 1)
			~
			@746 /* ~Of course, Major soldier lady. How can Minsc and Boo help a fellow warrior of the greatest goodness?~  */
			== XACOR25B
			@335 /* ~How long did you and Dynaheir travel together?~*/
			== MINSC25J
			@336 /* ~I prefer to gauge time by measuring the change in the length of Boo's whiskers.~ */
			== XACOR25B
			@337 /* ~...What.~*/
			== MINSC25J
			@338 /* ~Yes, so I and Dynaheir travelled together for more than a thumb, but less than a furlong. Quite a long time.~*/
			== XACOR25B
			@339 /* ~And in that.. time, how in Toril did she put up with your insanity? Everytime you open your mouth I want to scream!~*/
			== MINSC25J
			@340 /* ~Ah, my charge was a master of the magical arts, as you know. When she needed some peace and quiet, she would simply mutter a Silence spell.~ */
			= @341 /* ~I did not mind, as Boo is perfectly capable of speaking on my behalf.~ */
			== XACOR25B
			@342 /* ~Gods, help us.~ */
	EXIT
	//}
	
//}

//{ Rasaad Banters

	//{ Dialog B-25
	CHAIN 
		IF ~
			Global("XA_Banter_CorwinRasaad", "GLOBAL", 2)
			!Global("XA_CorwinPromoted", "GLOBAL", 1)
		~
		THEN RASAA25J BCorwinRasaad1_C
			@795 /* Captain, you seem troubled.~*/
			== XACOR25B
			@283 /* ~Rasaad.. it's nothing, I...~ [XACORB28] */
			DO ~
				SetGlobal("XA_Banter_CorwinRasaad", "GLOBAL", 3)
			~
			== RASAA25J
			@284 /* ~Yes?~ */
			== XACOR25B
			@285 /* ~It's just that I miss my daughter, my father. My city. I thought that after the Dragonspear campaign that I'd be done with these long duration deployments.~*/
			= @286 /* ~I don't regret taking this assignment, and I am proud to stand at <CHARNAME>'s side, yet it doesn't make being away from home any easier.~ */
			== RASAA25J
			@292 /* ~I understand. It's natural to feel that way.~ */
			= @287 /* ~Allow me to share with you a simple breathing exercise to help you focus, and relax. It will help relieve some of the anxiety you are feeling.~ */
			== XACOR25B
			@288 /* ~I - I don't think that's necessary - maybe some other time. ~ */
			== RASAA25J
			@289 /* ~Please Captain. Let me help you.~*/
			== XACOR25B
			@290 /* ~No, please don't. I mean... I'm fine. Thank you.~ [BD58946] */
			== RASAA25J
			@291 /* ~Very well. When you have the time, come and see me.~ */
	EXIT
	//}

	//{ Dialog B-26
	CHAIN 
		IF ~
			Global("XA_Banter_CorwinRasaad", "GLOBAL", 2)
			Global("XA_CorwinPromoted", "GLOBAL", 1)
		~
		THEN RASAA25J BCorwinRasaad1_M
			@794 /* ~Major, you seem troubled.~*/
			== XACOR25B
			@283 /* ~Rasaad.. it's nothing, I...~ [XACORB28] */
			DO ~
				SetGlobal("XA_Banter_CorwinRasaad", "GLOBAL", 3)
			~
			== RASAA25J
			@284 /* ~Yes?~ */
			== XACOR25B
			@285 /* ~It's just that I miss my daughter, my father. My city. I thought that after the Dragonspear campaign that I'd be done with these long duration deployments.~*/
			= @286 /* ~I don't regret taking this assignment, and I am proud to stand at <CHARNAME>'s side, yet it doesn't make being away from home any easier.~ */
			== RASAA25J
			@292 /* ~I understand. It's natural to feel that way.~ */
			= @287 /* ~Allow me to share with you a simple breathing exercise to help you focus, and relax. It will help relieve some of the anxiety you are feeling.~ */
			== XACOR25B
			@288 /* ~I - I don't think that's necessary - maybe some other time. ~ */
			== RASAA25J
			@747 /* ~Please Major. Let me help you.~*/
			== XACOR25B
			@290 /* ~Not right now. We have work to do. Let's get moving.~ */
			== RASAA25J
			@291 /* ~Very well. When you have the time, come and see me.~ */
	EXIT
	//}

	//{ Dialog B-27
	CHAIN 
		IF ~
			Global("XA_Banter_CorwinRasaad", "GLOBAL", 4)
		~
		THEN XACOR25B BCorwinRasaad1
			@303 /* ~Rasaad, about that breathing exercise.~ [XACORB27] */
			DO ~
				SetGlobal("XA_Banter_CorwinRasaad", "GLOBAL", 5)
				SetGlobal("XA_BreathingExercise", "GLOBAL", 1)
			~
			== RASAA25J
			IF ~
				!Global("XA_CorwinPromoted", "GLOBAL", 1)
			~
			@293 /*  ~Yes Captain - do you have some time now?~*/
			== RASAA25J
			IF ~
				Global("XA_CorwinPromoted", "GLOBAL", 1)
			~
			@748 /*  ~Yes Major - do you have some time now?~*/
			== XACOR25B
			@294 /* ~Please, if you would teach me. I've been feeling especially anxious today.~ */
			== RASAA25J
			@295 /* ~Of course. It's a simple but effective exercise. It has helped me to control my anxiety and improve my focus.~ */
			= @296 /* ~You take a deep breath, count to six. Breathe out for six counts. Breathe in, one, two, three, four, five, six. Breathe out, one, two, three, four, five, six.~ */
			= @297 /* ~Try it - breathe in for six counts, then exhale for six.~ */
			== XACOR25B
			@298 /*  ~Here goes... breathe in.. .. .. .. .. ..~ */
			= @299 /* ~Breathe out.. .. .. .. .. ..~ */
			== RASAA25J
			@300 /* ~Yes, just like that. ~ */
			== XACOR25B
			@301 /* ~Thank you. I appreciate this. Let's go.~ [BD58487] */
			== RASAA25J
			IF ~
				!Global("XA_CorwinPromoted", "GLOBAL", 1)
			~
			@302 /* ~My pleasure, Captain.~ */
			== RASAA25J
			IF ~
				Global("XA_CorwinPromoted", "GLOBAL", 1)
			~
			@749 /* ~My pleasure, Major.~ */
	EXIT
	//}

	//{ Dialog B-28
	CHAIN 
		IF ~
			Global("XA_Banter_CorwinRasaad", "GLOBAL", 6)
		~
		THEN XACOR25B BCorwinRasaad1
			@304 /* ~Rasaad - I wanted to thank you. [XACORB29] ~ */
			DO ~
				SetGlobal("XA_Banter_CorwinRasaad", "GLOBAL", 7)
			~
			== RASAA25J
			IF ~
				!Global("XA_CorwinPromoted", "GLOBAL", 1)
			~
			@305 /*  ~Captain?~*/
			== RASAA25J
			IF ~
				Global("XA_CorwinPromoted", "GLOBAL", 1)
			~
			@750 /*  ~Major?~*/
			== XACOR25B
			@306 /* ~I've been practicing that breathing exercise you showed me. It's been a big help.~ */
			== RASAA25J
			@307 /* ~Oh, I'm glad I was able to help.~ */
			== XACOR25B
			@308 /*  ~Me too. One of these days, I'll show you some of the stretching exercises I do to loosen up my back and shoulder muscles.~ */
			== RASAA25J
			@309 /* ~Yes, I've noticed you performing those. They help with drawing your bow, I assume?~*/
			== XACOR25B
			@310 /* ~Yes, exactly. Though I'm sure you'd benefit as well.~ */
			== RASAA25J
			IF ~
				!Global("XA_CorwinPromoted", "GLOBAL", 1)
			~
			@311 /* ~I look forward to it, Captain.~ */
			== RASAA25J
			IF ~
				Global("XA_CorwinPromoted", "GLOBAL", 1)
			~
			@751 /* ~I look forward to it, Major.~ */
			== XACOR25B
			@312 /* ~You can drop the formalities. Schael will do just fine.~ */
			== RASAA25J
			@313 /* ~Thank you, Schael. I appreciate that.~ */
	EXIT
	//}

	//{ Dialog B-29
	CHAIN 
		IF ~
			Global("XA_Banter_CorwinRasaad", "GLOBAL", 8)
			!IsValidForPartyDialogue("KORGA25J")
			!IsValidForPartyDialogue("Yoshimo")
			IsValidForPartyDialogue("Rasaad")
			OR(2)
				!IsValidForPartyDialogue("Viconia")
				!IsValidForPartyDialogue("Valygar")
		~
		THEN XACOR25B BCorwinRasaad4A
			@483 /* ~Rasaad - do you have some time now? I can show you that back exercise we were talking about. ~ [XA100067] */
			DO ~
				SetGlobal("XA_Banter_CorwinRasaad", "GLOBAL", 9)
			~
			== RASAA25J
			@484 /*  ~Yes Schael, now is a good time.~*/
			== XACOR25B
			@485 /* ~Good. I'll demonstrate, you can follow along. Start by standing up staight. Place your arms behind your head, with your elbows bent, like this.~ */
			== RASAA25J
			@486 /* ~Ah, like this?.~ */
			== XACOR25B
			@487 /*  ~Yes. Now, slowly bend to your right side by moving your right elbow toward your right hip until you feel a slight stretch in your upper back. Hold the position for 10 seconds.~*/
			=
			@488 /* ~Good. Now, keeping your hands behind your head, slowly move your body back to your upright starting position. Repeat the exercise, but for your left side this time.~ */
			== RASAA25J
			@489 /* ~Got it. Like this?~*/
			== XACOR25B
			@490 /* ~Just like that.~ */
			== RASAA25J
			@562 /* ~Great. Thank you, Schael. I'll be sure to incorporate this into my morning routine.~ */
	EXIT
	//}

	//{ Dialog B-30
	CHAIN 
		IF ~
			Global("XA_Banter_CorwinRasaad", "GLOBAL", 8)
			IsValidForPartyDialogue("KORGA25J")
			IsValidForPartyDialogue("Rasaad")
			OR(2)
				!IsValidForPartyDialogue("Viconia")
				!IsValidForPartyDialogue("Valygar")
		~
		THEN XACOR25B BCorwinRasaad4B
			@483 /* ~Rasaad - do you have some time now? I can show you that back exercise we were talking about. ~ [XA100067] */
			DO ~
				SetGlobal("XA_Banter_CorwinRasaad", "GLOBAL", 9)
			~
			== RASAA25J
			@484 /*  ~Yes Schael, now is a good time.~*/
			== XACOR25B
			@485 /* ~Good. I'll demonstrate, you can follow along. Start by standing up staight. Place your arms behind your head, with your elbows bent, like this.~ */
			== RASAA25J
			@486 /* ~Ah, like this?.~ */
			== XACOR25B
			@487 /*  ~Yes. Now, slowly bend to your right side by moving your right elbow toward your right hip until you feel a slight stretch in your upper back. Hold the position for 10 seconds.~*/
			== KORGA25J
			@492 /* ~Ah... ~*/
			== XACOR25B
			@563 /* KORGA25J? What is it?*/
			== KORGA25J
			@494 /*  ~Oh, don't mind me, lass. I'm just admiring the view, heh.~ */
			== XACOR25B
			@495 /* ~Ugh - grow up. Rasaad, let's continue.~ */
			=
			@488 /* ~Now, keeping your hands behind your head, slowly move your body back to your upright starting position. Repeat the exercise, but for your left side this time.~ */
			== RASAA25J
			@489 /* ~Got it. Like this?~*/
			== XACOR25B
			@490 /* ~Just like that.~ */
			== RASAA25J
			@562 /* ~Great. Thank you, Schael. I'll be sure to incorporate this into my morning routine.~ */
	EXIT
	//}

	//{ Dialog B-32
	CHAIN 
		IF ~
			Global("XA_Banter_CorwinRasaad", "GLOBAL", 8)
			!IsValidForPartyDialogue("KORGA25J")
			IsValidForPartyDialogue("Rasaad")
			OR(2)
				!IsValidForPartyDialogue("Viconia")
				!IsValidForPartyDialogue("Valygar")
		~
		THEN XACOR25B BCorwinRasaad4C
			@483 /* ~Rasaad - do you have some time now? I can show you that back exercise we were talking about. ~ [XA100067] */
			DO ~
				SetGlobal("XA_Banter_CorwinRasaad", "GLOBAL", 9)
			~
			== RASAA25J
			@484 /*  ~Yes Schael, now is a good time.~*/
			== XACOR25B
			@485 /* ~Good. I'll demonstrate, you can follow along. Start by standing up staight. Place your arms behind your head, with your elbows bent, like this.~ */
			== RASAA25J
			@486 /* ~Ah, like this?.~ */
			== XACOR25B
			@487 /*  ~Yes. Now, slowly bend to your right side by moving your right elbow toward your right hip until you feel a slight stretch in your upper back. Hold the position for 10 seconds.~*/
			= @488 /* ~Now, keeping your hands behind your head, slowly move your body back to your upright starting position. Repeat the exercise, but for your left side this time.~ */
			== RASAA25J
			@489 /* ~Got it. Like this?~*/
			== XACOR25B
			@490 /* ~Just like that.~ */
			== RASAA25J
			@562 /* ~Great. Thank you, Schael. I'll be sure to incorporate this into my morning routine.~ */
	EXIT
	//}

	//{ Dialog B-33
	CHAIN 
		IF ~
			Global("XA_Banter_CorwinRasaad", "GLOBAL", 8)
			!IsValidForPartyDialogue("KORGA25J")
			IsValidForPartyDialogue("Viconia")
			IsValidForPartyDialogue("Valygar")
			IsValidForPartyDialogue("Rasaad")
		~
		THEN XACOR25B BCorwinRasaad4D
			@483 /* ~Rasaad - do you have some time now? I can show you that back exercise we were talking about. ~ [XA100067] */
			DO ~
				SetGlobal("XA_Banter_CorwinRasaad", "GLOBAL", 9)
			~
			== RASAA25J
			@484 /*  ~Yes Schael, now is a good time.~*/
			== XACOR25B
			@485 /* ~Good. I'll demonstrate while you follow along. Start by standing up staight. Place your arms behind your head, with your elbows bent, like this.~ */
			== RASAA25J
			@486 /* ~Ah, like this, correct?~ */
			== XACOR25B
			@487 /*  ~Yes. Now, slowly bend to your right side by moving your right elbow toward your right hip until you feel a slight stretch in your upper back. Hold the position for 10 seconds.~*/
			== VICON25J
			@497 /* ~So you do like females after all, Valygar. I see the way you're looking at her.~*/
			== VALYG25J
			@498 /* ~I - I don't know what you're talking about.~*/
			== VICON25J
			@499 /*  ~Don't be ashamed of your attraction to her. You are a male, after all.~ */
			== VALYG25J
			@500 /* ~Be quiet, drow.~ */
			== VICON25J
			@501 /*  ~Of course. Forgive my interruption of your viewing experience.~ */
			== XACOR25B
			@488 /* ~Now, keeping your hands behind your head, slowly move your body back to your upright starting position. Repeat the exercise, but for your left side this time.~ */
			== RASAA25J
			@489 /* ~Got it. Like this?~*/
			== XACOR25B
			@490 /* ~Just like that.~ */
			== RASAA25J
			@562 /* ~Great. Thank you, Schael. I'll be sure to incorporate this into my morning routine.~ */
	EXIT
	//}

//}

//{ Cernd Banters

	//{ Dialog B-35
	CHAIN
		IF ~
			Global("XA_CorwinCerndBaby", "GLOBAL", 2)
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~
		THEN XACOR25B BCorwinCernd1A
			@258 /* ~Cernd, you have a beautiful child.~ [XACORB33] */
			DO ~
				SetGlobal("XA_CorwinCerndBaby", "GLOBAL", 3)
			~
			== CERND25J
			IF ~
				!Global("XA_CorwinPromoted", "GLOBAL", 1)
			~
			@259 /* ~Thank you, Captain Corwin. ~ */
			== CERND25J
			IF ~
				Global("XA_CorwinPromoted", "GLOBAL", 1)
			~
			@754 /* ~Thank you, Major Corwin. ~ */
			== XACOR25B
			@260 /* ~I remember when my daughter Rohma was just a baby. Holding your baby in your arms changes you, doesn't it?~ */
			== CERND25J
			@261 /* ~It does! When I held Ahsdale, I felt a... clarity, that I had never experienced before, like my purpose in this world had changed.~ */
			== XACOR25B
			@262 /* ~That's almost exactly how I felt with Rohma.. like my life had suddenly gained a meaning that it lacked before.~ */
			== CERND25J
			@263 /* ~It must not be easy being away from your child. I know that isn't easy for me.~ */
			== XACOR25B
			@264 /* ~No, it isn't. But duty requires that I be here, with <CHARNAME>. Duties aside, I would still be here - I love <PRO_HIMHER>, and <PRO_HESHE> needs me.~ */
			= @266 /* ~When she is older, I'll explain to Rohma why I needed to go away. She's a smart kid, she will understand.~ */
			== CERND25J
			@267 /* ~I'm sure she will. With luck, we'll be able to return to our children soon.~ */
			== XACOR25B
			@268 /* ~I hope so. Let's get moving.~ */
	EXIT
	//}

	//{ Dialog B-36
	CHAIN
		IF ~
			Global("XA_CorwinCerndBaby", "GLOBAL", 2)
			!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~
		THEN XACOR25B BCorwinCernd1B
			@258 /* ~Cernd, you have a beautiful child.~ [XACORB33] */
			DO ~
				SetGlobal("XA_CorwinCerndBaby", "GLOBAL", 3)
			~
			== CERND25J
			IF ~
				!Global("XA_CorwinPromoted", "GLOBAL", 1)
			~
			@259 /* ~Thank you, Captain Corwin. ~ */
			== CERND25J
			IF ~
				Global("XA_CorwinPromoted", "GLOBAL", 1)
			~
			@754 /* ~Thank you, Major Corwin. ~ */
			== XACOR25B
			@260 /* ~I remember when my daughter Rohma was just a baby. Holding your baby in your arms changes you, doesn't it?~ */
			== CERND25J
			@261 /* ~It does! When I held Ahsdale, I felt a... clarity, that I had never experienced before, like my purpose in this world had changed.~ */
			== XACOR25B
			@262 /* ~That's almost exactly how I felt with Rohma.. like my life had suddenly gained a meaning that it lacked before.~ */
			== CERND25J
			@263 /* ~It must not be easy being away from your child. I know that isn't easy for me.~ */
			== XACOR25B
			@265 /* ~No, it isn't. But duty requires that I be here, with <CHARNAME>.~ */
			= @266 /* ~When she is older, I'll explain to Rohma why I needed to go away. She's a smart kid, she will understand.~ */
			== CERND25J
			@267 /* ~I'm sure she will. With luck, we'll be able to return to our children soon.~ */
			== XACOR25B
			@268 /* ~I hope so. Let's get moving.~ */
	EXIT
	//}
	
//}

//{ Valygar Banters

	//{ Dialog B-37
	CHAIN
		IF ~
			Global("XA_Banter_CorwinValygar", "GLOBAL", 2)
			!InParty("Minsc")
		~
		THEN XACOR25B BCorwinValygar1A
			@245 /* ~Valygar. It's good to have another Ranger on the team.~ [XA100033] */
			DO ~
				SetGlobal("XA_Banter_CorwinValygar", "GLOBAL", 3)
			~ 
			== VALYG25J
			IF ~
				!Global("XA_CorwinPromoted", "GLOBAL", 1)
			~
			@247 /* ~Yes, thank you Captain. I've been meaning to talk to you about something... do you have a moment?~*/
			== VALYG25J
			IF ~
				Global("XA_CorwinPromoted", "GLOBAL", 1)
			~
			@755 /* ~Yes, thank you Major. I've been meaning to talk to you about something... do you have a moment?~*/
			== XACOR25B
			@803 /* ~Of course. What's on your mind?~ */
			== VALYG25J
			@248 /* ~I've always felt that a Ranger's strength lies in their versatility. I'm interested in hearing why you chose to specialize in archery.~ */
			== XACOR25B
			@864 /* ~There's a reason for that...~ [XA100142]*/
			=@249 /* ~Well, unlike most Rangers, I'm not typically sent out on my own. The need for that versatility is reduced.~ */
			= @250 /* ~I tend to work as part of a team, and having a specialization can contribute more to the team's success.~ */
			== VALYG25J
			@251 /* ~An interesting perspective. I think we will enjoy working together.~ */
			== XACOR25B
			@252 /* ~So do I.~ */
	EXIT
	//}

	//{ Dialog B-38
	CHAIN
		IF ~
			Global("XA_Banter_CorwinValygar", "GLOBAL", 2)
			InParty("Minsc")
		~
		THEN XACOR25B BCorwinValygar1B
			@245 /* ~Valygar. It's good to have another Ranger on the team.~ [XA100033]*/
			DO ~
				SetGlobal("XA_Banter_CorwinValygar", "GLOBAL", 3)
			~ 
			= @246 /* ~Well */
			= @886 /*~(She looks at Minsc, and shakes her head.)~*/
			= @887 /* ~...One that isn't completely out of his mind, anyway. ~*/
			== VALYG25J
			IF ~
				!Global("XA_CorwinPromoted", "GLOBAL", 1)
			~
			@247 /* ~Yes, thank you Captain. I'm interested in hearing why you chose to specialize in archery.~*/
			== VALYG25J
			IF ~
				Global("XA_CorwinPromoted", "GLOBAL", 1)
			~
			@755 /* ~Yes, thank you Major. I'm interested in hearing why you chose to specialize in archery.~*/
			== VALYG25J
			@248 /* ~I've always felt that a Ranger's strength lies in their versatility.~ */
			== XACOR25B
			@249 /* ~Well, unlike most Rangers, I'm not typically sent out on my own. The need for that versatility is reduced.~ */
			= @250 /* ~I tend to work as part of a team, and having a specialization can contribute more to the team's success.~ */
			== VALYG25J
			@251 /* ~An interesting perspective. I think we will enjoy working together.~ */
			== XACOR25B
			@252 /* ~So do I.~ */
	EXIT
	//}

	//{ Dialog B-39
	CHAIN 
		IF ~
			Global("XA_CorwinValygarLavok", "GLOBAL", 1)
		~ THEN XACOR25B BCorwinValygar2
			@573 /* ~So, Valygar.~*/
			DO ~
				SetGlobal("XA_CorwinValygarLavok", "GLOBAL", 2)
				SetGlobalTimer("XA_CorwinValygarTimer", "GLOBAL", THREE_DAYS)
			~
			== VALYG25J
			IF ~
				!Global("XA_CorwinPromoted", "GLOBAL", 1)
			~
			@574 /* ~Yes, Captain?~*/
			== VALYG25J
			IF ~
				Global("XA_CorwinPromoted", "GLOBAL", 1)
			~
			@756 /* ~Yes, Major?~*/
			== XACOR25B
			@575 /* ~With Lavok dead, what will you do now?~*/
			== VALYG25J
			@576 /* ~For the time being, I'd like to remain part of this group.~*/
			== XACOR25B
			@577 /* ~Understandable. When this business with Irenicus is over, I'd like for you to consider coming back to Baldur's Gate with me.~*/
			= @578 /* ~The Flaming Fist could offer much to a warrior of your caliber.~ [BD37019]*/
			== VALYG25J
			@579 /* ~I appreciate the offer, though. I must confess however that I'd be, ah, out of my element in the city.~*/
			== XACOR25B
			@580 /* ~Well, you wouldn't be out on your own. You can shadow us on our patrols and see if it's a good fit for you.~*/
			= @581 /* ~The Flaming Fist takes care of its own, and you'd have everything necessary to succeed.~*/
			== VALYG25J
			IF ~
				!Global("XA_CorwinPromoted", "GLOBAL", 1)
			~
			@582 /* ~I am intrigued. Give me some time to consider your offer, Captain.~*/
			== VALYG25J
			IF ~
				Global("XA_CorwinPromoted", "GLOBAL", 1)
			~
			@757 /* ~I am intrigued. Give me some time to consider your offer, Major.~*/
			== XACOR25B
			@542 /* ~Right. Let's go.~ [BD58846]*/
			
	EXIT
	//}

	//{ Dialog B-85
	CHAIN
		IF ~
			Global("XA_CorwinValygarBG", "GLOBAL", 1)
		~ THEN VALYG25J BCorwinValygar3A
			@804 /* ~Captain, a word please.~*/
			== XACOR25B
			@807
			DO ~
				SetGlobal("XA_CorwinValygarBG", "GLOBAL", 2)
			~
			== VALYG25J
			@805 /* ~I've given this a lot of thought. When <CHARNAME>'s hunt for Irenicus is over, I'd like to accompany you back to Baldur's Gate, and join the Flaming Fist.~ */
			== XACOR25B
			@808 /* ~Excellent! You won't regret it. When we arrive, I'll introduce you to my commanding officer, Marshal Kirill Nederlok.~ */
			== VALYG25J
			@809 /* ~I look forward to our meeting.~ */
			== XACOR25B
			@214 /*~That's what I like to see. Would that there were more like you.~ [BD67546]*/
	EXIT
	//}
	
//}

//{ Neera Banters

	//{ Dialog B-40
	CHAIN
		IF ~
			Global("XA_Banter_CorwinNeera", "GLOBAL", 2)
		~ THEN XACOR25B BCorwinNeera1
			@215 /* ~Neera, how are you?~ [XACORB36] */
			DO ~
				SetGlobal("XA_Banter_CorwinNeera", "GLOBAL", 3)
			~ 
			== NEERA25J
			@216 /* ~Good, Schael! What's new?~ */
			== XACOR25B
			@217 /* ~Nothing, it seems. I noticed you're still struggling to control your magic.~*/
			== NEERA25J
			@218 /* ~Yeah... a lot of the time I'm able to control it, but then all of a sudden BAM!~  */
			== XACOR25B
			@219 /* ~Please, keep trying. It's important that we're able to rely on you, and we need to be certain that your spells will help us instead of turning one of us into a chicken.~ */
			== NEERA25J
			@220 /* ~A chicken? No, I think you mean a llama.~ */
			== XACOR25B
			@221 /* ~W-what? You turned someone into a llama?~ */
			== NEERA25J
			@222 /* ~Yes, while casting a Goodberry spell. I did get the berries, though. I shared them with the llama.~ */
			== XACOR25B
			@223 /* ~I... see. What happened with the llama?~ */
			== NEERA25J
			@224 /*  ~Oh, one of my friends was able to counteract the spell, but not before my llama friend spit on my shoes.~ */
			== XACOR25B
			@213 /* ~Well, that was... That was something. Let's go.~ [BD50374] */
	EXIT
	//}

	//{ Dialog B-41
	CHAIN
		IF ~
			Global("XA_CorwinNeeraImoen", "GLOBAL", 1)
		~ THEN XACOR25B BCorwinNeera1
			@502 /* ~You know, Neera, Imoen here studied under one of the finest mages in Baldur's Gate.~ [XA100067] */
			DO ~
				SetGlobal("XA_CorwinNeeraImoen", "GLOBAL", 2)
			~ 
			== NEERA25J
			@503 /* ~Really? Who?~ */
			== XACOR25B
			@504 /* ~Her name is Liia Jannath, she is part of the Council of Four. I'm sure Imoen can help share what she learned to help you better control your magic.~  */
			== IMOEN25J
			@505 /* ~Yes, that's right. Neera, if you have the time, I'd like to show you some focusing techniques. I'm not as great a teacher as Liia is but I'm sure you'll benefit.~  */
			== NEERA25J
			@506 /* ~Ah thanks, but no thanks.~ */
			== XACOR25B
			@507 /* ~Neera? Why not take Imoen up on her offer?~ */
			== NEERA25J
			@508 /* ~The unpredictability of my wild magic is one of the things that makes me, well, me. I guess I don't want to turn into a boring old mage - not that you are boring, Imoen! Just the opposite!~ */
			== IMOEN25J
			@509 /* ~I understand the need to carve out your own niche in life. Still, I think you would benefit from what I can show you. My offer stands should you decide to reconsider.~ */
			== NEERA25J
			@510 /*  ~Thanks. Maybe someday I will. For now, though, I just want to be myself.~ */
	EXIT
	//}

//}

//{ Hexxat Banters

	//{ Dialog B-42
	CHAIN
		IF ~
			Global("XA_CorwinHexxat", "GLOBAL", 3)
		~ THEN XACOR25B BCorwinHexxat1
			@204 /* ~Hexxat.~ [XA100031]*/
			DO ~
				SetGlobal("XA_CorwinHexxat", "GLOBAL", 4)
				SetGlobalTimer("XA_CorwinHexxatTimer", "LOCALS", ONE_DAY)
			~ 
			== HEXXA25J
			IF ~
				!Global("XA_CorwinPromoted", "GLOBAL", 1)
			~
			@205 /* ~Yes, Captain?~ */
			== HEXXA25J
			IF ~
				Global("XA_CorwinPromoted", "GLOBAL", 1)
			~
			@756 /* ~Yes, Major?~ */
			== XACOR25B
			@206 /* ~This is your one warning.~ */
			= @207 /* ~Leave, now. Go back to your crypt, or wherever it is your kind comes from.~ */
			== HEXXA25J
			@208 /* ~When <CHARNAME> wishes for me to depart, then I will do so, but not before then. ~ */
			== XACOR25B
			@209 /* ~You would be wise to reconsider. You may have <PRO_HIMHER> fooled, but not me.~ */
			== HEXXA25J
			@210 /* ~I see. And if I don't?~ */
			== XACOR25B
			@211 /* ~Then you will be removed. One way, or the other.~ */
			== HEXXA25J
			@212 /* ~Brave words... but such empty threats are beneath you.~ */
	EXIT
	//}

//}

//{ KORGA25J Banters

	//{ region Dialog B-43
	CHAIN
		IF ~
			Global("XA_Banter_CorwinKORGA25J", "GLOBAL", 2)
		~ THEN XACOR25B BCorwinKORGA25J1
			@138 /* ~Get your filthy hands off me!~ [XACORB05] */
			DO ~
				SetGlobal("XA_Banter_CorwinKORGA25J", "GLOBAL", 3)
			~ 
			== KORGA25J
			IF ~
				!Global("XA_CorwinPromoted", "GLOBAL", 1)
			~
			@144 /* ~But Captain, ye be the rarest of sights! A strong beauty, in uniform no less! ~ */
			== KORGA25J
			IF ~
				Global("XA_CorwinPromoted", "GLOBAL", 1)
			~
			@758 /* ~But Major, ye be the rarest of sights! A strong beauty, in uniform no less! ~ */
			== KORGA25J
			@139 /*  ~Ole KORGA25J nae hath seen one such as yerself. I simply needed a hand on yer wondrous bottom to see if ye be an illusion.~*/
			== XACOR25B
			@140 /* ~Well, I hope you got all you needed. Touch me like that again, dwarf, and you'll regret it.~ */
			== KORGA25J
			@141 /* ~Aye, doth ye be a prude? Ye ain't felt true pleasure till ye hath lain with a master of eroticism, such as I.~ */
			== XACOR25B
			@142 /* ~Hah, don't make me laugh. No one in their right mind would share their bed with you.~ */
			== KORGA25J
			@143 /*   ~Bed, floor, or field doth make no difference to I, longlimbs. You are nae ready now, but when ye are, come and see KORGA25J for a night you shan't forget. ~ */
			== XACOR25B
			@238/* ~Next time you open your mouth, close it quickly—before that sort of idiocy spills off your tongue.~ [BD67544] */
	EXIT
	//}

	//{ region Dialog B-44
	CHAIN
		IF ~
			Global("XA_Banter_CorwinKORGA25J", "GLOBAL", 4)
		~ THEN XACOR25B BCorwinKORGA25J1
			@194 /*  ~What is it KORGA25J?~ [XACORB42] */
			DO ~
				SetGlobal("XA_Banter_CorwinKORGA25J", "GLOBAL", 5)
			~ 
			== KORGA25J
			@195 /* ~Aye, girlie. I feel yer eyes on me rear in battle. Doth ye like what ye see?~ */
			== XACOR25B
			@196 /*  ~Not particularly, no. Well - I must admit that your skill with the axe is impressive.~ */
			== KORGA25J
			@197 /* ~Aye, as is your skill with the bow. Nae hath I seen so many foes fall before I can even reach em. ~ */
			== XACOR25B
			@572 /*~You noticed. Good eye.~ [BD39880]*/
			== KORGA25J
			@198 /* ~Don't you worry my beauty. Ole KORGA25J will stay at the front and keep ye safe. Just leave a few for me, will ye? Me axe doth get thirsty from time to time.~ */
			== XACOR25B
			@199 /* ~Duly noted. ~ */
	EXIT
	//}

//}

//{ Viconia Banters

	//{ Dialog B-45
	CHAIN
		IF ~
			Global("XA_Banter_CorwinViconia", "GLOBAL", 2)
			OR(2)
				!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
				Gender(Player1, FEMALE)
		~ THEN XACOR25B BCorwinViconia1A
			@114 /*  ~Never forget that I'm watching you.~ [BD67545] */
			DO ~
				SetGlobal("XA_Banter_CorwinViconia", "GLOBAL", 3)
				SetGlobalTimer("XA_ViconiaBanter2Timer", "LOCALS", ONE_DAY)
			~ 
			== VICON25J
			IF ~
				!Global("XA_CorwinPromoted", "GLOBAL", 1)
			~
			@115 /* ~I noticed. See something you like, Captain?~ */
			== VICON25J
			IF ~
				Global("XA_CorwinPromoted", "GLOBAL", 1)
			~
			@759 /* ~I noticed. See something you like, Major?~ */
			== XACOR25B
			@116 /*  ~What? No, of course not!~ */
			== VICON25J
			@117 /* ~Oh come now, Schael. It is quite natural for females in our society to express and act upon their attraction for one another. Do not be bashful, my dear.~ */
			== XACOR25B
			@118 /* ~Hmph. I'd never -- not with a drow!~ */
			== VICON25J
			@119 /* ~Relax, Corwin. I am not interested in you, at least not in that way. I've found that males are more to my liking. And you?~ */
			== XACOR25B
			@120 /*   ~Just... just don't try anything! Got it?~ */
			== VICON25J
			IF ~
				!Global("XA_CorwinPromoted", "GLOBAL", 1)
			~
			@121 /* ~Of course. I would never do anything to upset you, Captain.~   */
			== VICON25J
			IF ~
				Global("XA_CorwinPromoted", "GLOBAL", 1)
			~
			@760 /* ~Of course. I would never do anything to upset you, Major.~   */
	EXIT
	//}

	//{ Dialog B-46
	CHAIN
		IF ~
			Global("XA_Banter_CorwinViconia", "GLOBAL", 2)
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
			Gender(Player1, MALE)
		~ THEN XACOR25B BCorwinViconia1B
			@114 /* ~Never forget that I'm watching you.~ [BD67545] */
			DO ~
				SetGlobal("XA_Banter_CorwinViconia", "GLOBAL", 3)
				SetGlobalTimer("XA_ViconiaBanter2Timer", "LOCALS", ONE_DAY)
			~ 
			== VICON25J
			IF ~
				!Global("XA_CorwinPromoted", "GLOBAL", 1)
			~
			@115 /* ~I noticed. See something you like, Captain?~ */
			== VICON25J
			IF ~
				Global("XA_CorwinPromoted", "GLOBAL", 1)
			~
			@759 /* ~I noticed. See something you like, Major?~ */
			== XACOR25B
			@116 /*  ~What? No, of course not!~ */
			== VICON25J
			@117 /* ~Oh come now, Schael. It is quite natural for females in our society to express and act upon their attraction for one another. Do not be bashful, my dear.~ */
			== XACOR25B
			@118 /* ~Hmph. I'd never -- not with a drow!~ */
			== VICON25J
			@236 /* ~Relax, Corwin. I am not interested in you, at least not in that way. I've found that males are more to my liking... as you have, judging from your interactions with <CHARNAME>.~*/
			== XACOR25B
			@120 /*   ~Just... just don't try anything! Got it?~ */
			== VICON25J
			IF ~
				!Global("XA_CorwinPromoted", "GLOBAL", 1)
			~
			@121 /* ~Of course. I would never do anything to upset you, Captain.~   */
			== VICON25J
			IF ~
				Global("XA_CorwinPromoted", "GLOBAL", 1)
			~
			@760 /* ~Of course. I would never do anything to upset you, Major.~   */
	EXIT
	//}

	//{ Dialog B-47
	CHAIN
		IF ~
			Global("XA_Banter_CorwinViconiaDay", "LOCALS", 1)
		~ THEN XACOR25B BCorwinViconia2
			@416 /* ~Light and warmth... I'm glad for both.~ [BD68278] */
			DO ~
				SetGlobal("XA_Banter_CorwinViconiaDay", "LOCALS", 2)
			~ 
			== VICON25J
			@417 /* ~I'm glad someone is. The warmth I don't mind, but I'll never understand how you surfacers can enjoy being bathed in this blinding light.~ */
			== XACOR25B
			@314 /* ~This must be a tough time for you, then.~ [BD35157] */
			== VICON25J
			@419 /* ~It would be harder for you living underground, I'm afraid. For all of your skill and bravado, you wouldn't last long on your own in the Underdark. Few would.~ */
			=
			@420 /* ~There, the threats come from horrors that are beyond your comprehension.~ */
			== XACOR25B
			@421 /* ~And here?~ */
			== VICON25J
			IF ~
				!Global("XA_CorwinPromoted", "GLOBAL", 1)
			~
			@422 /* ~...I told you that I'd never do anything to upset you, Captain. You wouldn't like what I have to say.~ */
			== VICON25J
			IF ~
				Global("XA_CorwinPromoted", "GLOBAL", 1)
			~
			@761 /* ~...I told you that I'd never do anything to upset you, Major. You wouldn't like what I have to say.~ */
			== XACOR25B
			@423 /* ~I'd rather you speak your mind, but fair enough. Let's get going.~ */
	EXIT
	//}

	//{ Dialog B-48
	CHAIN
		IF ~
			Global("XA_Banter_CorwinViconiaCity", "GLOBAL", 1)
		~ THEN VICON25J BCorwinViconia3
			@559 /* ~These human cities make me want to scream.~ [XACORB64] */
			== XACOR25B
			@424 /* ~What was that?~ */
			DO ~
				SetGlobal("XA_Banter_CorwinViconiaCity", "GLOBAL", 2)
			~ 
			== VICON25J
			@425 /* ~The filth, the stench, the rabble - how can you stand it!?~ */
			== XACOR25B
			@426 /*   ~It was your decision to come to the surface. Deal with it.~ [XACORB54] */
			== VICON25J
			@427 /* ~Ah, the surface. Where bigoted fools attack others based soley on their appearance... like your precious Flaming Fist.~ */
			== XACOR25B
			@428 /* ~What are you playing at here, drow?~ [BD58878] */
			=
			@429 /* ~Let me remind you that your kind has a well-earned reputation for violence and treachery. The Flaming Fist works to protect the innocent all threats, including those posed by the drow.~  */
			== VICON25J
			@430 /* ~Is that so? Then why are your cities full of thieves, slavers, molesters and murderers, all roaming free? It seems to me that your kind can learn a thing or to from the drow when it comes to the administration of justice and punishment!~ */
			== XACOR25B
			@431 /* ~I don't have the time to argue about the criminal justice system. It's far from perfect, but we are doing the best that we can.~ */
			=
			@432 /*  ~What matters is that you've remained loyal thus far, which is more than I expected. Keep it up and I promise you won't need to worry about your safety while on the surface.~ */
			== VICON25J
			IF ~
				!Global("XA_CorwinPromoted", "GLOBAL", 1)
			~
			@433 /*  ~I.. I appreciate that, Captain.~ */
			== VICON25J
			IF ~
				Global("XA_CorwinPromoted", "GLOBAL", 1)
			~
			@762 /*  ~I.. I appreciate that, Major.~ */
			== XACOR25B
			@435 /* ~Just remember what I said - you'll have nothing to worry about so long as you remain true to us.~ */
	EXIT
	//}
	
//}

//{ Imoen Banters

	//{ Dialog B-49
	CHAIN
		IF ~
			Global("XA_Banter_CorwinImoen", "GLOBAL", 2)
		~ THEN XACOR25B BCorwinImoen1
			@226 /* ~Imoen - what do you need?~ [XACORB58] */ 
			DO ~
				SetGlobal("XA_Banter_CorwinImoen", "GLOBAL", 3)
			~ 
			== IMOEN25J
			IF ~
				!Global("XA_CorwinPromoted", "GLOBAL", 1)
			~
			@227 /* ~Nothing, Captain Corwin. I wanted to tell you that I'm glad you're here. I know it's been difficult being away from your family.~ */
			== IMOEN25J
			IF ~
				Global("XA_CorwinPromoted", "GLOBAL", 1)
			~
			@763 /* ~Nothing, Major Corwin. I wanted to tell you that I'm glad you're here. I know it's been difficult being away from your family.~ */
			== XACOR25B
			@228 /*  ~I'm just glad that you're free from the wizard. Duke Jannath was very worried when she learned that you'd been kidnapped.~ */
			== IMOEN25J
			@229 /* ~Liia was worried about me? I miss her... she's a wonderful person, and a great teacher.~ */
			== XACOR25B
			@230 /* ~Don't worry, you'll see her again once this is over. I'm sure she'd be proud of your progress in the magical arts.~ [XACORB59] */
			== IMOEN25J
			IF ~
				Global("XA_IrenicusBeat", "GLOBAL", 1)
			~
			@798 /* ~I hope so. My magic pales in comparison to what Irenicus possessed.~ */
			== IMOEN25J
			IF ~
				!Global("XA_IrenicusBeat", "GLOBAL", 1)
			~
			@231 /* ~I hope so. My magic pales in comparison to Irenicus.~ */
			== XACOR25B
			@237 /* You're doing a good job. Your skills are proving invaluable.~ */
			== IMOEN25J
			IF ~
				!Global("XA_CorwinPromoted", "GLOBAL", 1)
			~
			@233 /* ~Thanks, Captain.~  */
			== IMOEN25J
			IF ~
				Global("XA_CorwinPromoted", "GLOBAL", 1)
			~
			@764/* ~Thanks, Major.~  */
			== XACOR25B
			@234 /* ~Imoen, I consider you a friend. There's no need to address me by rank - Schael will do just fine.~ */
			== IMOEN25J
			@235 /* ~I too consider you a friend, Schael. Thank you.~  */
	EXIT
	//}

	//{ Dialog B-50
	CHAIN 
		IF ~
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
			Global("XA_CorwinImoenSoulTalk", "GLOBAL", 1)
		~ THEN XACOR25B BCorwinImoenSoulA
			@565 /*  ~Imoen, I can't tell you how relieved I am that you're better.~  */
			DO ~
				SetGlobal("XA_CorwinImoenSoulTalk", "GLOBAL", 2)
			~
			== IMOEN25J
			@566 /* ~Yes, Schael. With my soul returned, I feel like myself again.~ */
			== XACOR25B
			@567 /* ~Thank goodness. I feel like <CHARNAME>'s becoming more and more distant of late. I'm very worried about <PRO_HIMHER>.~ */
			== IMOEN25J
			@569 /* ~Once we defeat Irenicus and take back what was stolen from <CHARNAME>, I'm sure that <PRO_HESHE> will be back to normal.~ */
			= @570 /* ~The two of you have made it this far, Schael. Don't give up hope of a future together.~ */
			== XACOR25B
			@554 /* ~My father always said to hope for the best but prepare for the worst.~ [BD37000] */
			= @550 /*~You're right though, Imoen, and I won't give up... let's get moving.~*/
	EXIT
	//}

	//{ Dialog B-51
	CHAIN 
		IF ~
			!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
			Global("XA_CorwinImoenSoulTalk", "GLOBAL", 1)
		~ THEN XACOR25B BCorwinImoenSoulB
			@565 /*  ~Imoen, I can't tell you how relieved I am that you're better.~ [XA100067] */
			DO ~
				SetGlobal("XA_CorwinImoenSoulTalk", "GLOBAL", 2)
			~
			== IMOEN25J
			@566 /* ~Yes, Schael. With my soul returned, I feel like myself again.~ */
			== XACOR25B
			@567 /* ~Thank goodness. I feel like <CHARNAME>'s becoming more and more distant of late. I'm very worried about <PRO_HIMHER>.~ */
			== IMOEN25J
			@569 /* ~Once we defeat Irenicus and take back what was stolen from <CHARNAME>, I'm sure that <PRO_HESHE> will be back to normal.~ */
			== XACOR25B
			@571 /* ~Right... thank you, Imoen. Let's go. ~  */
	EXIT
	//}

	//{ Dialog B-52
	CHAIN
		IF ~
			Global("XA_Banter_CorwinImoen", "GLOBAL", 4)
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN XACOR25B BCorwinImoen2A
			@448 /* ~Imoen, could I ask you something?~ [XACORB57] */
			DO ~
				SetGlobal("XA_Banter_CorwinImoen", "GLOBAL", 5)
			~ 
			== IMOEN25J
			@449 /* ~Sure, Schael. What's on your mind?~*/
			== XACOR25B
			@450 /*  ~You grew up with <CHARNAME>, in Candlekeep, right?~ */
			== IMOEN25J
			@451 /* ~Yes, that's right.~*/
			== XACOR25B
			@452 /* ~What was <PRO_HESHE> like growing up? What were some of <PRO_HISHER> hobbies?~ */
			=
			@457 /* ~I ask because I love <PRO_HIMHER> dearly, and in some ways, I feel that I don't know <PRO_HIMHER> as well as I should.~ */
			== IMOEN25J
			@454 /* ~Oh, I've got lots of stories... I think you'll like the one about the time <PRO_HESHE> first tried to ... */
			= @734 /* ~(They have a long and animated discussion, though you can't quite make out what they are saying.)~ */
			== XACOR25B
			@480 /*~Heh. Most just call that the "hard way."[XA100077]*/
			== IMOEN25J
			@481 /*~Then there was the time <PRO_HESHE> thought <PRO_HESHE> could get away with taking Jessup's...~*/
			= @482 /*~(Again, you can't make out what's being said.)~*/
			== XACOR25B
			@455 /* ~(She bursts into laughter) */
			== IMOEN25J
			@479 /* ~I know, right! I wonder what <PRO_HESHE> was thinking!~ */
			== XACOR25B
			@545 /*~I'd like to know that myself.~ [XA100008]*/
			= @456 /* ~Thank you Imoen. Heh, it sounds like the two of you had some fun times together.~*/
			== IMOEN25J
			@458 /* ~Definitely.~  */
	EXIT
	//}

	//{ Dialog B-53
	CHAIN
		IF ~
			Global("XA_Banter_CorwinImoen", "GLOBAL", 4)
			!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN XACOR25B BCorwinImoen2A
			@448 /* ~Imoen, could I ask you something?~ [XA100067] */
			DO ~
				SetGlobal("XA_Banter_CorwinImoen", "GLOBAL", 5)
			~ 
			== IMOEN25J
			@449 /* ~Sure, Schael. What's on your mind?~*/
			== XACOR25B
			@450 /*  ~You grew up with <CHARNAME>, in Candlekeep, right?~ */
			== IMOEN25J
			@451 /* ~Yes, that's right.~*/
			== XACOR25B
			@452 /* ~What was <PRO_HESHE> like growing up? What were some of <PRO_HISHER> hobbies?~ */
			=
			@453 /* ~I ask because in many ways, I feel that I know <PRO_HIMHER> very well, but in other ways, not so much.~ */
			== IMOEN25J
			@454 /* ~Oh, I've got lots of stories... I think you'll like the one about the time <PRO_HESHE> first tried to ... (they have a long and animated discussion, though you can't quite make out what they are saying)~ */
			== XACOR25B
			@480 /*~Heh. Most just call that the "hard way."[XA100077]*/
			== IMOEN25J
			@481 /*~Then there was the time <PRO_HESHE> thought <PRO_HESHE> could get away with taking Jessup's...~*/
			= @482 /*~(Again, you can't make out what's being said.)~*/
			== XACOR25B
			@455 /* ~(She bursts into laughter) */
			== IMOEN25J
			@479 /* ~I know, right! I wonder what <PRO_HESHE> was thinking!~ */
			== XACOR25B
			@545 /*~I'd like to know that myself.~ [XA100008]*/
			= @456 /* ~Thank you Imoen. Heh, it sounds like the two of you had some fun times together.~*/
			== IMOEN25J
			@458 /* ~Definitely.~  */
	EXIT
	//}

//}

//{ Edwin Banters

	//{ Dialog B-54
	CHAIN
		IF ~
			Global("XA_CorwinEdwinThay", "GLOBAL", 1)
		~ THEN XACOR25B BCorwinEdwinThay
			@700 /* ~Edwin, what was that about? Why are the Thayans after you?~ */
			DO ~
				SetGlobal("XA_CorwinEdwinThay", "GLOBAL", 2)
			~
			== EDWIN25J
			@701 /* ~It is not your concern. You needn't worry about that fool Degardan.~ */
			== XACOR25B
			@702 /* ~Tell us what you know, wizard.~ [BD42217]~ */
			== EDWIN25J
			@703 /* ~You want to know? Fine! I expressed some spirited ... criticism (yes, that is a good way to put it) of the ruling clan, and was exiled! The fools!~ */
			== XACOR25B
			@704 /* ~Well, that's not surprising. You had to know that your mouth would get you into trouble eventually. It doesn't explain why they're after you now, though.~*/
			== EDWIN25J
			@705 /* ~(Why, why, WHY won't this woman leave me alone!) Before I was exiled, I ... accessed certain tomes of knowledge that were forbidden to me. It's how I learned of the Nether Scroll!~*/
			=
			@706 /* ~And once I learned of their decision to exile me, I may have pilfered a few baubles here and there, to pay for certain provisions and amenities.~*/
			== XACOR25B
			@707 /* ~Provisions and amenities, sure. I'm sure the brothels appreciated your patronage.~*/
	EXIT
	//}

	//{ Dialog B-56
	CHAIN
		IF ~
			Global("XA_Banter_CorwinEdwin", "GLOBAL", 2)
			Gender("Edwin",MALE)
		~ THEN XACOR25B BCorwinEdwin1
			@106 /* ~Edwin, a word, please.~ [XACORB06]*/
			DO ~
				SetGlobal("XA_Banter_CorwinEdwin", "GLOBAL", 3)
			~ 
			== EDWIN25J
			@107 /* ~Yes? What is it that you want? (Can't this cretin see that I am busy?)~ */
			== XACOR25B
			@108 /*  ~As much as I hate to admit it, you are one of the finest spelXAasters I have ever seen. You are an essential part of our success.~ */
			== EDWIN25J
			@109 /* ~Oh.. *Ahem* Yes, your acknowledgement of my superiority was long overdue, though late is better than never.~ */
			=
			@123 /* ~You are quite talented as well, though your skills pale to those of the great Odesseiron. (What is she after?)~ */
			== XACOR25B
			@110 /*  ~I can hear you, you know. We all can~ [BD58890]*/
			== EDWIN25J
			@111 /* ~When I do what? (Is this some sort of Flaming Fist trick? Not likely, as the witless wench lacks the guile to fool me.)~*/
			= @122 /* ~(Ah, of course. Her infatuation is apparent. Patience - I must not be seen as desparate.)~  */
			== XACOR25B
			@112 /*   ~Ugh. Why do I bother.~ */
			== EDWIN25J
			@113 /* ~(Well played, Odesseiron, well played. She will assume her rightful position at your feet before long.)~   */
	EXIT
	//}

	//{ Dialog B-57
	CHAIN
		IF ~
			Global("XA_Banter_CorwinEdwin", "GLOBAL", 4)
		~ THEN XACOR25B BCorwinEdwin2
			@392 /*  ~What is it, Edwin?~ [XACORB42]*/
			DO ~
				SetGlobal("XA_Banter_CorwinEdwin", "GLOBAL", 5)
			~ 
			== EDWIN25J
			@393 /* ~I wish to discuss your potential.~ */
			== XACOR25B
			@394 /*   ~My potential?~ */
			== EDWIN25J
			@395 /* ~Yes. It is within my power to reshape you, and your destiny - not literally, of course. (Your shape is quite pleasing to me, after all).~*/
			=
			@396 /* ~What I mean is that I can teach you the mystical arts, and show you secrets passed through the eons to unlock your power! (Yes, true power!)~ */
			== XACOR25B
			@397 /*  ~I see.. and what would you want in exchange?~ */
			== EDWIN25J
			@398 /* ~You will leave these simians and become bethrothed to me.~*/
			== XACOR25B
			@253 /*  ~You can't be serious. Have you taken leave of your senses?~ [XA100078]*/
			== EDWIN25J
			@400 /* ~Of course I am! (Why wouldn't I be!?)~   */
			== XACOR25B
			@401 /*   ~Well, then. Give me some time to consider your generous offer, Edwin.~ */
			== EDWIN25J
			@402 /* ~Very well, but do not wait too long. I am eager to begin your instruction.~ */
	EXIT
	//}

	//{ Dialog B-58
	CHAIN
		IF ~
			Global("XA_Banter_CorwinEdwin", "GLOBAL", 6)
		~ THEN XACOR25B BCorwinEdwin3
			@404 /*  ~Edwin? What is it?~ [XACORB42] */
			DO ~
				SetGlobal("XA_Banter_CorwinEdwin", "GLOBAL", 7)
			~ 
			== EDWIN25J
			@405 /* ~It is time for you to make your decision. (Yes, I have waited quite long enough.) Will you become by bethrothed in exchange for the mystical knowledge I offer you?~ */
			== XACOR25B
			@403 /*~You aren't going to let this go, are you?~ [BD66686]*/
			=
			@406 /*   ~Fine. Let me be perfectly clear — I'm not interested in the secrets of a group of maladjusted wizards, or in becoming your wife... Well... on second thought...~ */
			=
			@408 /* ~Yes, there is one thing you could teach me.~ */
			== EDWIN25J
			@409 /* ~Conjuration of a fire elemental? The art of mental domination? The doubling of one's - ~*/
			== XACOR25B
			@410 /*   ~No, nothing like that.~ */
			== EDWIN25J
			@411 /* ~What is it then?~  */
			== XACOR25B
			@412 /* ~Your robes - how do you keep them so clean? The color is as vibrant as the first time I saw you.~ */
			== EDWIN25J
			@413 /* ~Small minded fool! I offer you power, tutelage and a lifetime of exquisite lovemaking, and you are more concerned with laundry techniques!~ */
			== XACOR25B
			@414 /* ~Relax. I'm just joking with you - about your robes anyway. I've no inclination to take you up on your offer. Nor will I ever.~  */
			== EDWIN25J
			@415 /* @415 = ~So be it. I should have expected such from a Flaming Fist wench. You will rue the day you rejected Edwin Odesseiron!~ */
	EXIT
	//}
	
//}

//{ Jan Banters

	//{ Dialog B-59
	CHAIN
		IF ~
			Global("XA_Banter_CorwinJan", "GLOBAL", 2)
		~ THEN XACOR25B BCorwinJan1
			@440 /* ~Uh, what are you doing?~ [BD40510]*/
			DO ~
				SetGlobal("XA_Banter_CorwinJan", "GLOBAL", 3)
			~ 
			== JAN25J
			IF ~
				!Global("XA_CorwinPromoted", "GLOBAL", 1)
			~
			@75 /* ~Ah Captain! Just warming up some turnip stew. Would you like to try some?~ */
			== JAN25J
			IF ~
				Global("XA_CorwinPromoted", "GLOBAL", 1)
			~
			@765 /* ~Ah Major! Just warming up some turnip stew. Would you like to try some?~ */
			== XACOR25B
			@76 /*  ~Um... sure, Jan.~ */
			== JAN25J
			@77 /* ~I added a few spices to give it a nice kick. I hope you find it to you liking!~ */
			== XACOR25B
			@78 /* ~Wow that's ... actually very good. Can I have another taste? */
			== JAN25J
			@79 /* ~Yes, of course!  */
			== XACOR25B
			@80 /*  ~Mm. I taste beef, turnips, tomatoes, red peppers, and ... what is that? Kind of an earthy, fruity taste?~  */
			== JAN25J
			@81 /*~Saffron! I had it imported fresh from one of the eastern merchant guilds.~  */
			== XACOR25B
			@511 /* ~Could I have the recipe? I'd like to make some for my father and daughter when I get home.~ */
			== JAN25J
			@512 /* ~Of course, my dear. Come see me later, I'll write it down for you.~ */
			== XACOR25B
			@513 /* ~Thanks, Jan.~ */
	EXIT
	//}

	//{ Dialog B-60
	CHAIN
		IF ~
			Global("XA_Banter_CorwinJan", "GLOBAL", 4)
		~ THEN XACOR25B BCorwinJan2
			@514 /* ~Jan? About the turnip stew recipe - ~ [XA100067] */
			DO ~
				SetGlobal("XA_JanWantsToSeeBG", "GLOBAL", 1)
				SetGlobal("XA_Banter_CorwinJan", "GLOBAL", 5)
			~ 
			== JAN25J
			@515 /* ~Ah yes, here it is.~ */
			== XACOR25B
			@516 /* Thanks again. ~ */
			== JAN25J
			@82 /*~You know, I'm looking to expand my turnip business outside of Athkatla. Perhaps you can help me set up a stall in Baldur's Gate? I'd share the profits with you, of course.~ */
			== XACOR25B
			@83 /*  ~Uh, I appreciate the offer, but I'm not much of a salesperson.~  */
			== JAN25J
			@84 /* ~Nonsense! A beautiful woman such as yourself selling my turnips would do wonders for my business.~ */
			== XACOR25B
			@85 /*  ~This isn't the time. I have a mission. That's all that matters. So let's go.~ [BD54384]*/
	EXIT
	//}
	
//}

//{ Keldorn Banters

	//{ Dialog B-61
	CHAIN 
		IF ~
			Global("XA_CorwinCoverUD", "GLOBAL", 2)
		~ THEN XACOR25B BCorwinScoldKeldorn
			@609 /* ~Keldorn - what happened back there?~ */
			DO ~
				SetGlobal("XA_CorwinCoverUD", "GLOBAL", 3)
			~
			== KELDO25J
			@610 /* ~Captain?~ */
			== XACOR25B
			@611 /* ~You nearly blew our cover!~ */
			== KELDO25J
			@612 /* ~I let my anger get the better of me, I'm afraid.~ */
			== XACOR25B
			@73/* ~Rein it in. If you can't control yourself, you're a danger to us all.~ */
			== KELDO25J
			@614 /* ~I understand, Captain. I will hold my tongue while in the presence of the drow.~ */
			== XACOR25B
			@615 /* Good. Let's go.~ */
	EXIT
	//}

	//{ Dialog B-62
	CHAIN
		IF ~
			Global("XA_Banter_CorwinKeldornOpt1", "GLOBAL", 3)
		~ THEN XACOR25B BCorwinKeldorn1
			@473 /* ~Yes, Keldorn?~ [XA100067]*/
			DO ~
				SetGlobal("XA_Banter_CorwinKeldornOpt1", "GLOBAL", 4)
			~ 
			== KELDO25J
			@474 /* ~Captain, I want to thank you, and <CHARNAME>, for the advice you gave me during the situation with my wife and Sir William.~ */
			=
			@475 /* ~I can't believe that I was willing to have her thrown in jail. ~ */
			== XACOR25B
			@476 /* ~There's no need to thank me. It was clear that your anger got the better of you, and that you weren't thinking clearly.~ */
			== KELDO25J
			@477 /* ~That's a good way to put it - strong emotions can often cloud one's judgment. It's a lesson I've had to learn, and relearn, many times over the years.~ */
			== XACOR25B
			@478 /* ~You and I both. I'm just glad I was able to help.~ */
			== KELDO25J
			@460 /* ~Indeed... I'm seeing more and more that your ability to lead is as impressive as your skill with the bow, if not moreso.~*/
			== XACOR25B
			@491 /* ~That's high praise, coming from someone who knows his way around a sword as well as you.~ [BD58923] */
	EXIT
	//}

	//{ Dialog B-XX
	CHAIN
		IF ~
			Global("XA_Banter_CorwinKeldornInitial", "GLOBAL", 1)
		~ THEN KELDO25J BCorwinKeldornInitial
			@624  /*~Captain, if I may... I once knew an officer with the surname Corwin. Tell me, are you related to a man named Audamar?~ */
			DO ~
				SetGlobal("XA_Banter_CorwinKeldornInitial", "GLOBAL", 2)
			~
			== XACOR25B
			@625  /* ~Yes, that's my father.~*/
			== KELDO25J
			@626  /* ~I thought so. Some 25 or so years past I had ventured west to the vicinity of Baldur's Gate, to evaluate locations for a new chapter of our order. It was then that I met your father, and your mother, presumably.~ */
			= @629  /* ~From what I remember of him, your father was a good man, and a fine officer.~ */
			== XACOR25B
			@630  /* ~He still is. He's retired now, though. ~*/
			== KELDO25J
			@631  /* ~Then he's still alive? That's good to hear... and what of your mother? I cannot recall her name, though I vaguely remember she was pregnant at the time.~*/
			== XACOR25B
			@632  /* ~My mother died when I was very young. Her name was Ilara.~*/
			== KELDO25J
			@633  /* ~I see... it must have been difficult, then, for the two of you.~ */
			== XACOR25B
			@634  /* ~More-so for my father than for me. I didn't make things easy for him, that's for sure.~*/
			== KELDO25J
			@635 /*~How so?~*/
			== XACOR25B
			@640 /*~When I was younger, I ran a bit wild. It took a lot of strength and patience on my father's part to set me on the right path. Things would have been much different for me if he were a lesser man.~ [BD35094]*/
			== KELDO25J
			@636 /*~Be that as it may, I'm sure he's proud of the fine young officer you've become.~*/
			== XACOR25B
			@638  /* ~Spoken like someone who barely knows me, but I'll take what compliments I can get and do what I can not to change your mind.~ [BD34332] */
			== KELDO25J
			@641 /*~Aye. Come, Captain. Duty calls.~*/
	EXIT
	//}
	//{ Dialog B-63
	CHAIN
		IF ~
			Global("XA_Banter_CorwinKeldorn", "GLOBAL", 2)
		~ THEN XACOR25B BCorwinKeldorn1
			@60 /* ~Keldorn, a moment of your time?~ [XACORB12] */
			DO ~
				SetGlobal("XA_Banter_CorwinKeldorn", "GLOBAL", 3)
			~ 
			== KELDO25J
			IF ~
				!Global("XA_CorwinPromoted", "GLOBAL", 1)
			~
			@61 /* ~Of course Captain. How can I help you?~ */
			== KELDO25J
			IF ~
				Global("XA_CorwinPromoted", "GLOBAL", 1)
			~
			@766 /* ~Of course Major. How can I help you?~ */
			== XACOR25B
			@62 /*  ~Do you have any children?~ [BD54420] */
			== KELDO25J
			@145 /* ~Yes, two daughters. I love them dearly.~ */
			== XACOR25B
			@146 /* How do you balance your duties to your Order with your responsibilities as a parent?~ */
			=
			@63 /* ~I ask because I have a daughter, and I feel like I am struggling to find the right balance.~ */
			== KELDO25J
			@64 /* ~That's something I've struggled with as well. There is no right answer. What is most important is that your daughter understands that you love her, and that at times it is necessary for you to be apart from her to perform your duties toward the Flaming Fist.~*/
			=
			@65 /* ~Who is helping to raise your child while you are on this assignment?~ */
			== XACOR25B
			@66 /*  ~My father, thankfully... I know that she's safe with him.~ */
			== KELDO25J
			@200 /* ~That is good... I am pleased that you involve the child's grandfather in her life.~ */
	EXIT
	//}

	//{ Dialog B-64
	CHAIN
		IF ~
			Global("XA_Banter_CorwinKeldorn", "GLOBAL", 4)
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN XACOR25B BCorwinKeldorn1
			@201 /* ~Yes, Keldorn?~ [BD68260]*/
			DO ~
				SetGlobal("XA_Banter_CorwinKeldorn", "GLOBAL", 5)
			~ 
			== KELDO25J
			IF ~
				!Global("XA_CorwinPromoted", "GLOBAL", 1)
			~
			@202 /* ~Captain, I do not mean to pry. You mentioned earlier that your father was raising your child, yes?~ */
			== KELDO25J
			IF ~
				Global("XA_CorwinPromoted", "GLOBAL", 1)
			~
			@767 /* ~Major, I do not mean to pry. You mentioned earlier that your father was raising your child, yes?~ */
			== XACOR25B
			@203 /* ~Yes, that's right.~ */
			== KELDO25J
			@67 /* ~And where is your husband? Is he not helping to raise her?~  */
			== XACOR25B
			@51 /* ~I'm not married - her father has never been a part of her life, which in this case is a good thing. ~ */
			== KELDO25J
			@52  /* ~I'm afraid I don't understand.~*/
			== XACOR25B
			@53 /* ~He was there when she was conceived. He was never her father. When I told him about Rohma...~ [BD52089]*/
			= @59 /* ~You know, it's ironic that you'd ask about him. When Rohma was born, he wanted me to leave her at a temple of the Radiant Heart. Could you imagine? Giving up my baby like that? That was when I knew that it would never work between us.~ */
			== KELDO25J
			@69 /* ~I see... it's important for a child's father, or a father figure, to be a part of a child's life.~  */
			== XACOR25B
			@70 /* ~I agree... my father has had a tremendous impact on my life, and my daughter's... */
			=
			@5 /*~I hope to one day share the honor of being her parent with the right person... it's a big job.~ [XA100024] */
			=
			@800 /* ~(She shoots a quick glance in your direction.)~*/
			=
			@801 /* ~Time will tell, I suppose.~*/
			=
			@71 /* ~I appreciate the advice - thank you, Keldorn.~ */
			== KELDO25J
			@72 /* ~Any time, my friend. Let us hope that we are both able to return to our families soon.~ */
	EXIT
	//}

	//{ Dialog B-65
	CHAIN
		IF ~
			Global("XA_Banter_CorwinKeldorn", "GLOBAL", 4)
			!Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN XACOR25B BCorwinKeldorn1
			@201 /* ~Yes, Keldorn?~ [BD68260] */
			DO ~
				SetGlobal("XA_Banter_CorwinKeldorn", "GLOBAL", 5)
			~ 
			== KELDO25J
			IF ~
				!Global("XA_CorwinPromoted", "GLOBAL", 1)
			~
			@202 /* ~Captain, I do not mean to pry. You mentioned earlier that your father was raising your child, yes?~ */
			== KELDO25J
			IF ~
				Global("XA_CorwinPromoted", "GLOBAL", 1)
			~
			@767 /* ~Major, I do not mean to pry. You mentioned earlier that your father was raising your child, yes?~ */
			== XACOR25B
			@203 /* ~Yes, that's right.~ */
			== KELDO25J
			@67 /* ~And where is your husband? Is he not helping to raise her?~  */
			== XACOR25B
			@68 /* ~I'm not married - her father has never been a part of her life, which in this case is a good thing. ~ */
			= @59 /* ~You know, it's ironic that you'd ask about him. When Rohma was born, he wanted me to leave her at a temple of the Radiant Heart. Could you imagine? Giving up my baby like that? That was when I knew that it would never work between us.~ */
			== KELDO25J
			@69 /* ~I see... it's important for a child's father, or a father figure, to be a part of a child's life.~  */
			== XACOR25B
			@70 /*~I agree... my father's done so much for me, and for my daughter...~  */
			=
			@5  /* ~I hope to one day share the honor of being her parent with the right person... it's a big job.~ [XA100024] */
			=
			@71 /* ~I appreciate the advice - thank you, Keldorn.~ */
			== KELDO25J
			@72 /* ~Any time, my friend. Let us hope that we are both able to return to our families soon.~ */
	EXIT
	//}

//}

//{ Anomen Banters
	
	//{ Continuation of B-1
	CHAIN
	IF ~~ THEN XACOR25B BCorwinAnomen1B
		@54 /* ~You think I don't want to be home with my daughter and father? ~ [XACORB60]*/
		= @55 /* ~I'm here to fulfil my duties to <CHARNAME>, the Grand Dukes, and the Flaming Fist. If you knew anything about duty or responsibility, you would understand.~ */
		== ANOME25J
		@547 /* ~Why even join the Flaming Fist? You willingly put your daughter at risk of becoming an orphan!~ */
		== XACOR25B
		@56 /* ~We don't all grow up in wealthy households. Some of us have to work to support their family, instead of playing dress up as a knight in shining armor.~ */
		== ANOME25J
		@548 /* ~I beg your pardon?~  */
		== XACOR25B
		@57 /* ~I think you heard me quite clearly. Let's move out.~ [XACORB21] */
	EXIT
	//}
	
	//{ Dialog B-67
	CHAIN
		IF ~
			Global("XA_Banter_CorwinAnomen", "GLOBAL", 2)
			!Global("XA_CorwinHatesAnomen", "GLOBAL", 1)
		~ THEN XACOR25B BCorwinAnomen2
			@174 /* ~Anomen. What is it?~ [XACORB02] */
			DO ~
				SetGlobal("XA_Banter_CorwinAnomen", "GLOBAL", 3)
			~ 
			== ANOME25J
			IF ~
				!Global("XA_CorwinPromoted", "GLOBAL", 1)
			~
			@164 /* ~Captain Corwin, I wish to apologize to you for my earlier behaviour.~ */
			== ANOME25J
			IF ~
				Global("XA_CorwinPromoted", "GLOBAL", 1)
			~
			@768 /* ~Major Corwin, I wish to apologize to you for my earlier behaviour.~ */
			== ANOME25J
			@165 /* = ~It's just that I'm quite unaccustomed to seeing a woman serve in a military organization, let alone in a leadership position.~ */
			== XACOR25B
			@166 /* ~The Flaming Fist doesn't care if a recruit is a man or a woman. What matters is their ability and willingness to do what's needed of them.~ */
			== ANOME25J
			@167 /* ~They are fortunate to have you among their ranks. Your skill in battle is among the best I have seen, as is your ability to lead.~*/
			== XACOR25B
			@170 /* = ~I too must aplogize. My family isn't wealthy. As much as I want to be home with my father and daughter, I need to work to support them.~ */
			=
			@171 /* = ~I have certain... pre-conceptions about people who come from wealth. It was unfair of me to apply them to you.~ */
			== ANOME25J
			@172 /* = ~I understand. In Athkatla especially, there are many families that have acquired their wealth through... less than honorable means. I assure you, however, that my family is not one of them.~ */
			=
			@173 /* ~It seems that we would both do well to, as they say, avoid judging a book by its cover.~  */
			== XACOR25B
			@177  /* ~Aye. That would be for the best, I think.~ [BD54407]*/
	EXIT
	//}


//}

//{ Jaheira Banters

	//{ Dialog B-68
	CHAIN
		IF ~
			Global("XA_Banter_CorwinJaheira", "GLOBAL", 2)
			Global("XA_IrenicusBeat", "GLOBAL", 1)
		~ THEN XACOR25B jahRemorseChain1
			@0 /* ~Jaheira.~ [XACORB16] */
			DO ~
				SetGlobal("XA_Banter_CorwinJaheira", "GLOBAL", 3)
			~
			== JAHEI25J
			@6 /*Yes?*/
			== XACOR25B
			#258901 /* I'm sorry for your loss.*/
			=@1 /* ~Your husband was good man, and a fine warrior. Those who survived the siege on Bridgefort owe him their lives.~*/
			== JAHEI25J
			IF ~
				!Global("XA_CorwinPromoted", "GLOBAL", 1)
			~
			@4 /* ~Thank you, Captain. The pain of his loss weighs heavily, though I am glad that the monster responsible is dead.~ */
			== JAHEI25J
			IF ~
				Global("XA_CorwinPromoted", "GLOBAL", 1)
			~
			@770 /* ~Thank you, Major. The pain of his loss weighs heavily, though I am glad that the monster responsible is dead.~ */
			== XACOR25B
			@3 /* ~As am I.~ */
	EXIT
	//}

	//{ Dialog B-69
	CHAIN
		IF ~
			Global("XA_Banter_CorwinJaheira", "GLOBAL", 2)
			!Global("XA_IrenicusBeat", "GLOBAL", 1)
		~ THEN XACOR25B jahRemorseChain2
			@0 /* ~Jaheira.~ [XACORB16] */
			DO ~
				SetGlobal("XA_Banter_CorwinJaheira", "GLOBAL", 3)
			~
			== JAHEI25J
			@17 /* ~Yes, Captain?~*/
			== XACOR25B
			@1 /* ~I'm very sorry about Khalid. Your husband was good man, and a great warrior. Those who survived the siege on Bridgefort owe him their lives.~ */
			== JAHEI25J
			IF ~
				!Global("XA_CorwinPromoted", "GLOBAL", 1)
			~
			@2 /* ~Thank you, Captain. The pain of his loss weighs heavily. In time I will learn to cope with this, but for now I only wish to see Irenicus dead... and I am glad you are here to help in the hunt for that monster.~ */
			== JAHEI25J
			IF ~
				Global("XA_CorwinPromoted", "GLOBAL", 1)
			~
			@771 /* ~Thank you, Major. The pain of his loss weighs heavily. In time I will learn to cope with this, but for now I only wish to see the Five stopped... and I am glad you are here to help in that regard.~  */
			== XACOR25B
			@3 /* ~As am I.~ */
	EXIT
	//}

	//{ Dialog B-70
	CHAIN
		IF ~
			Global("XA_Banter_CorwinJaheira", "GLOBAL", 4)
		~ THEN XACOR25B BCorwinJaheira1
			@30 /* ~(She adjusts the string on her bow)~ [XA100067]   */
			DO ~
				SetGlobal("XA_Banter_CorwinJaheira", "GLOBAL", 5)
			~ 
			== JAHEI25J
			IF ~
				!Global("XA_CorwinPromoted", "GLOBAL", 1)
			~
			@9 /* ~Captain, a word please.~*/
			== JAHEI25J
			IF ~
				Global("XA_CorwinPromoted", "GLOBAL", 1)
			~
			@772 /* ~Major, a word please.~*/
			== XACOR25B
			@10 /* ~Yes, Jaheira?~ */
			== JAHEI25J
			@11 /*  ~You are quite skilled as a fighter, far moreso than the Flaming Fist I've encountered in my travels. Where did you acquire such skill?~ */
			== XACOR25B
			@12	/* ~My father was a Fist as well. He taught me how to fight at a young age. ~  */
			== JAHEI25J
			@191 /* ~A young age? It must have been difficult for you, then.~ */
			== XACOR25B
			@190 /*~Heh. My father let me fall down a lot. At the time, it made me angry. I thought I'd never forgive him. Then I realized how hard it was for him to let me struggle—and fail—on my own. It made me the woman I am.~ [BD58841]*/
			= 
			@31 /* ~By the time I joined the Fist, I had more fighting ability than many of the officers, so I was placed into a more advanced training regimen to further refine my skills.~~*/
			== JAHEI25J
			@13	/*~I see, your father did you a great service. And your mother?~*/
			== XACOR25B
			@14 /* ~My mother... that's a long story.~*/
			= @15 /* ~Let's leave it for another day, shall we?~*/
	EXIT
	//}

	//{ Dialog B-71
	CHAIN
		IF ~
			Global("XA_Banter_CorwinJaheira", "GLOBAL", 6)
		~ THEN XACOR25B BCorwinJaheira2
			@0 /* ~~Jaheira.~ [XA100055]~*/
			DO ~
				SetGlobal("XA_Banter_CorwinJaheira", "GLOBAL", 7)
			~ 
			== JAHEI25J
			IF ~
				!Global("XA_CorwinPromoted", "GLOBAL", 1)
			~
			@17	/* ~Yes, Captain?~*/	
			== JAHEI25J
			IF ~
				Global("XA_CorwinPromoted", "GLOBAL", 1)
			~
			@756 /* ~Yes, Major?~*/		
			== XACOR25B
			@18 /* ~Earlier, you wanted to know about my mother...~*/
			= 
			@19 /* ~I did not know her well. You see, she was killed when I was very young.~*/
			== JAHEI25J
			@20 /* ~I am sorry to hear that. I did not mean to stir up bad memories...~*/
			== XACOR25B
			@21 /* ~Yes.. my father does not speak of her often, but I know it still hurts him, and that he feels partly responsible.~*/
			== JAHEI25J
			@22 /* ~In what way?~*/
			== XACOR25B
			@23 /* ~He was very committed to his duty, like I am. It left little time for other concerns, including my mother.~*/
			= @24 /* ~They had an argument one evening, and she left the house, I guess to cool off. She didn't make it back home.~*/
			== JAHEI25J
			@25 /* ~What happened?~*/
			== XACOR25B
			@26 /* ~Some thug robbed her, and tried to rape her. When she fought back, he killed her.~*/
			== JAHEI25J
			@27 /* ~That's terrible... I am sorry that you had to lose your mother in such a way.~*/
			== XACOR25B
			@28 /* ~That's when my father began teaching me how to fight. I often wonder how different things would be had she not been murdered...~*/
			== JAHEI25J
			IF ~
				!Global("XA_CorwinPromoted", "GLOBAL", 1)
			~
			@29 /* ~Hm. I appreciate you sharing this with me, Captain. Such things are never easy to talk about.~*/
			== JAHEI25J
			IF ~
				Global("XA_CorwinPromoted", "GLOBAL", 1)
			~
			@58 /* ~Hm. I appreciate you sharing this with me, Major. Such things are never easy to talk about.~*/
	EXIT
	//}
	
//}

//{ Aerie Banters

	//{ Dialog B-72
	CHAIN
		IF ~
			Global("XA_Banter_CorwinAerie", "GLOBAL", 2)
		~ THEN XACOR25B BCorwinAerie1
			@39 /* ~Aerie, what's wrong? You seem worried... more than usual, anyway.~ [XACORB13] */
			DO ~
				SetGlobal("XA_Banter_CorwinAerie", "GLOBAL", 3)
				SetGlobal("XA_CorwinAerieScars", "GLOBAL", 1)
			~  
			== AERIE25J
			IF ~
				!Global("XA_CorwinPromoted", "GLOBAL", 1)
			~
			@40 /* ~It's n-nothing, Captain... well, can I ask you a question?~ */
			== AERIE25J
			IF ~
				Global("XA_CorwinPromoted", "GLOBAL", 1)
			~
			@773 /* ~It's n-nothing, Major... well, can I ask you a question?~ */
			== XACOR25B
			@41 /* ~Yes, what is it Aerie?~ */
			== AERIE25J
			@42 /* ~I often worry about how my s-scars affect how people think of me. You have scars as well, yet you are always so c-confident and assertive. Why don't your scars affect you in the same way that my scars affect me?~ */
			== XACOR25B
			@43 /* ~Aerie, scars serve as a reminder to us. They show us that we are stronger than the person that tried to hurt us.~ */
			== AERIE25J
			@44 /* ~That's a.. an interesting way of looking at things... How did you get your s-scars?~ */
			== XACOR25B
			@45 /* ~Through my duty to the Flaming Fist. This one here (she points under her right eye) came after I chased a thief into an alley... I triggered an acid trap. I learned an important lesson from that.~ */
			== AERIE25J
			@46 /* ~Oh dear! What did you l-learn? ~ */
			== XACOR25B
			@47 /* ~Not to rush into things, and to evaluate the situation before taking action.~*/
			== AERIE25J
			@48 /* ~I see... couldn't the healers remove the scar?~ */
			== XACOR25B
			@49 /* ~Yes, but like I said, the scars help me to avoid making the same mistakes. The same goes for emotional scars, Aerie.~*/
			== AERIE25J
			@50 /* ~I - I understand. Thank you... Schael.~ */
	EXIT
	//}

	//{ Dialog B-74
	CHAIN
		IF ~
			Global("XA_Banter_CorwinAerie", "GLOBAL", 4)
		~ THEN XACOR25B BCorwinAerie2
			@124 /*  ~Damn it!~ [XA100035]  */
			DO ~
				SetGlobal("XA_Banter_CorwinAerie", "GLOBAL", 5)
			~  
			== AERIE25J
			@125 /* ~Schael? What's wrong?~ */
			== XACOR25B
			@126 /* ~It's nothing, Aerie... one of the links in the back of my armor is pinched up against my vest. I can't quite reach it to pull it loose.~ */
			== AERIE25J
			@127 /* ~Oh, please let me h-help you with that... there, is that better?~ */
			== XACOR25B
			@128 /* ~Ah, yes.. much better. Thanks, Aerie.~ */
			== AERIE25J
			@100 /* ~Oh, y-you're welcome. Schael? Can I ask you a question?~ */
			== XACOR25B
			@101 /* ~Sure. What's on your mind?~ */
			== AERIE25J
			IF ~
				!Global("XA_AerieInBG", "GLOBAL", 1)
			~
			@102 /* ~I've encountered so many d-different people, cultures and races while in the circus. The circus never travelled to Baldur's Gate before. What are the people there like?~ */
			== AERIE25J
			IF ~
				Global("XA_AerieInBG", "GLOBAL", 1)
			~
			@796 /* ~~In your travels, have you ever met one of my k-kind? An Avariel? Before me, I mean.~*/
			== XACOR25B
			IF ~
				!Global("XA_AerieInBG", "GLOBAL", 1)
			~
			@103 /* ~Not much different than Athkatla, Aerie. Most of the population is human, but there are dwarves, gnomes, elves, even some half-orcs in the city.~*/
			== AERIE25J
			IF ~
				!Global("XA_AerieInBG", "GLOBAL", 1)
			~
			@104 /* ~I see.. have you m-met an Avariel before? Before me, I mean.~ */
			== XACOR25B
			@87 /* ~Yes, <CHARNAME> and I have met one of your kind before.~*/
			== AERIE25J
			@88 /* ~R-really? What is their name?~ */
			== XACOR25B
			@89 /* ~Ashatiel. Did you know her?~ */
			== AERIE25J
			@129 /* ~No... what is she like?~ */
			== XACOR25B
			@90 /* @90 = ~She was.. striking in her appearance.. a great leader, and a fierce opponent.~ */
			== AERIE25J
			@91 /* @91 = ~Y-you mean you fought each other? But why?~ */
			== XACOR25B
			@130 /* ~That's going to take some time to explain.. let's discuss this tomorrow - we have work to do.~ */
			== AERIE25J
			@131 /* ~Right.. okay, t-thank you, Schael.~ */
	EXIT
	//}

	//{ Dialog B-75
	CHAIN
		IF ~
			Global("XA_Banter_CorwinAerie", "GLOBAL", 6)
			Global("bd_asha_duel","global",3) //CHARNAME dueled Ashatiel honorably
		~ THEN XACOR25B BCorwinAerie3A
			@132 /* ~Aerie, you wanted to learn more about Ashatiel.. do you have some time now?~ [XACORB08]*/
			DO ~
				SetGlobal("XA_Banter_CorwinAerie", "GLOBAL", 7)
			~  
			== AERIE25J
			@133 /* ~Yes, Schael. Please continue with your story.~ */
			== XACOR25B
			@92/* ~<CHARNAME> and I were part of a coalition of forces from Baldur's Gate, Daggerford and Waterdeep. We marched north from Baldur's Gate to rendevous with the coalition and confront Caelar Argent and her crusaders.~*/
			== AERIE25J
			@134 /* ~Caelar Argent? I-I'm sorry, who is she?~ */
			== XACOR25B
			@149 /* ~A charismatic leader. An acolyte of the Order of the Aster, once.~ [XA100080] */
			=
			@93 /* ~She rallied many to her banner, in spite of the death and destruction that she and her army caused across the Sword Coast.~*/
			=
			@436 /* ~After a series of defeats at the hand of <CHARNAME> and the coalition, Caelar and her forces retreated north, back to Dragonspear castle.~ */
			== AERIE25J
			@437 /* ~I see.. and what was Ashatiel's role in this? Was she part of your c-coalition?~ */
			== XACOR25B
			@438 /* ~No, Aerie, she wasn't.~ */
			=
			@105 /* ~Ashatiel was one of Caelar's most trusted lieutenants. When the coalition breached the walls of Dragonspear castle, she left the keep to challenge <CHARNAME> to a duel. <CHARNAME> accepted the challenge.~ */
			=
			@136 /* ~Ashatiel believed that killing <CHARNAME> would force the coalition to withdraw. <CHARNAME> believed that the crusaders defending the keep would surrender, if Ashatiel were killed. Whatever the outcome was, lives would be saved, on both sides.~ */
			=
			@135/* ~Offering to duel <CHARNAME> was an honorable gesture on her part. Honorable, and foolish.~ */
			== AERIE25J
			@94 /* ~W-what happened to her?~*/
			== XACOR25B
			@439 /* ~She... no. That's enough for now. We'll finish next time. Let's get moving.~ */
	EXIT
	//}

	//{ Dialog B-76
	CHAIN
		IF ~
			Global("XA_Banter_CorwinAerie", "GLOBAL", 8)
			Global("bd_asha_duel","global",3) //CHARNAME dueled Ashatiel honorably
		~ THEN AERIE25J BCorwinAerie4A
			@441 /* ~Schael? Do you have time now to finish the story a-about Ashatiel?~ [XA100067] */
			
			== XACOR25B
			@446 /* ~Ah, sure Aerie. We left off at the duel, between Ashatiel and <CHARNAME>.~*/
			=
			@95 /* ~Ashatiel fought bravely, but she was killed by <CHARNAME> after a long battle. In her last moments, she cried out for Caelar to save her, but no help came - I think she realized at that point that her faith in Caelar was misplaced.~   */
			DO ~
				SetGlobal("XA_Banter_CorwinAerie", "GLOBAL", 9)
			~  
			== AERIE25J
			@96 /* ~But that's - that's cruel! How could <PRO_HESHE> have killed her? Wasn't there another way?~*/
			== XACOR25B
			@447 /* ~Aerie, you don't understand - in killing Ashatiel, <CHARNAME> saved many lives, both crusader and coalition alike. Once she was dead, the crusaders taking part in the counterattack either fled or laid down their weapons.~ */
			=
			@137 /* ~I've no doubt that Ashatiel was a good person, and that she didn't deserve to die. But if I had to choose who'd survive between <CHARNAME> and Ashatiel, I'd choose <CHARNAME> every time. As you would, I believe.~ */
			== AERIE25J
			@98 /* ~I see... I'm sorry then that <CHARNAME> h-had to do that..~ */
			== XACOR25B
			@99 /* ~So am I, Aerie. And so is <CHARNAME>. Do you know what the lesson from the story is?~ ~  */
			== AERIE25J
			@444 /* ~I think so.. but please, tell me.~ */
			== XACOR25B
			@97 /* ~The lesson is this: war places people into untenable situations, and for that reason it must be avoided whenever possible.~ [XACORB25] */
			== AERIE25J
			@445 /* ~I understand. Thank you, Schael.~ */
			== XACOR25B
			@214  /* ~That's what I like to see. Would that there were more like you.~ [BD67546]*/
	EXIT
	//}

	//{ Dialog B-77
	CHAIN
		IF ~
			Global("XA_Banter_CorwinAerie", "GLOBAL", 6)
			!Global("bd_asha_duel","global",3) //CHARNAME refused to duel Ashatiel, or cheated
		~ THEN XACOR25B BCorwinAerie3B
			@132 /* ~Aerie, you wanted to learn more about Ashatiel.. do you have some time now?~ [XACORB08]*/
			DO ~
				SetGlobal("XA_Banter_CorwinAerie", "GLOBAL", 7)
			~ 
			== AERIE25J
			@133 /* ~Yes, Schael. Please continue with your story.~ */
			== XACOR25B
			@92/* ~<CHARNAME> and I were part of a coalition of forces from Baldur's Gate, Daggerford and Waterdeep. We marched north from Baldur's Gate to rendevous with the coalition and confront Caelar Argent and her crusaders.~*/
			== AERIE25J
			@134 /* ~Caelar Argent? I-I'm sorry, who is she?~ */
			== XACOR25B
			@149 /* ~A charismatic leader. An acolyte of the Order of the Aster, once.~ [XA100080] */
			=
			@93 /* ~She rallied many to her banner, in spite of the death and destruction that she and her army caused across the Sword Coast.~*/
			=
			@436 /* ~After a series of defeats at the hand of <CHARNAME> and the coalition, Caelar and her forces retreated north, back to Dragonspear castle.~ */
			== AERIE25J
			@437 /* ~I see.. and what was Ashatiel's role in this? Was she part of your c-coalition?~ */
			== XACOR25B
			@438 /* ~No, Aerie, she wasn't.~ */
			=
			@147 /* ~Ashatiel was one of Caelar's most trusted lieutenants. When the coalition, led by <CHARNAME>, breached the walls of Dragonspear castle, she left the keep to lead the crusaders' counterattack. ~ */
			=
			@148 /* ~She showed great courage, but her efforts amounted to nothing.~ */
			== AERIE25J
			@94 /* ~W-what happened to her?~*/
			== XACOR25B
			@439 /*  ~She... no. That's enough for now. We'll finish next time. Let's get moving.~ */
	EXIT
	//}

	//{ Dialog B-78
	CHAIN
		IF ~
			Global("XA_Banter_CorwinAerie", "GLOBAL", 8)
			!Global("bd_asha_duel","global",3) //CHARNAME refused to duel Ashatiel, or cheated
		~ THEN AERIE25J BCorwinAerie4B
			@441 /* ~Schael? Do you have time now to finish the story a-about Ashatiel?~ [XA100067] */
			== XACOR25B
			@442 /* ~Ah, sure Aerie. Right, Ashatiel left the keep to lead the crusaders' counterattack.~ */
			=
			@150 /* ~She, and the other crusaders that took part in the counterattack fought bravely. <CHARNAME> rallied the coalition and defeated the crusaders, and Ashatiel was killed. We were victorious, but many lives on both sides were lost.~*/
			DO ~
				SetGlobal("XA_Banter_CorwinAerie", "GLOBAL", 9)
			~
			== AERIE25J
			@151 /* ~But that's - that's terrible! Wasn't there another way Schael, b-besides bloodshed?~*/
			== XACOR25B
			@152 /* ~Listen, I've no doubt that Ashatiel was a good person, and that she didn't deserve to die. But it was either us, or Ashatiel.~ */
			== AERIE25J
			@153 /* ~I see... I'm sorry then that you and <CHARNAME> h-had to take part in that..~   */
			== XACOR25B
			@99 /* ~So am I, Aerie. And so is <CHARNAME>. Do you know what the lesson from the story is?~   */
			== AERIE25J
			@444 /* ~I think so, but please tell me.~ */
			== XACOR25B
			@97 /* ~The lesson is this: war places people into untenable situations, and for that reason it must be avoided whenever possible.~ [XACORB25] */
			== AERIE25J
			@445 /* ~I understand. Thank you, Schael.~ */
			== XACOR25B
			@214 /* ~That's what I like to see. Would that there were more like you.~ [BD67546]*/
			
	EXIT
	//}

//}

//{ Dorn Banters
	
	//{ Dialog B-80
	CHAIN
		IF ~
			Global("XA_Banter_CorwinDorn", "GLOBAL", 2)
		~ THEN XACOR25B BCorwinDorn1
			@32 /* ~Dorn - I thought you'd have learned by now that you can't serve two masters.~ [XACORB22] */
			DO ~
				SetGlobal("XA_Banter_CorwinDorn", "GLOBAL", 3)
			~ 
			== DORN25J
			IF ~
				!Global("XA_CorwinPromoted", "GLOBAL", 1)
			~
			@33 /* ~What do you mean by that, Captain?~*/
			== DORN25J
			IF ~
				Global("XA_CorwinPromoted", "GLOBAL", 1)
			~
			@774 /* ~What do you mean by that, Major?~*/
			== XACOR25B
			@34 /* ~You claim to help <CHARNAME>, yet your leash is held firm by your patron.~*/
			== DORN25J
			@35 /* ~Watch your tongue, woman. You are very far from home, and your precious Flaming Fist.~*/
			= 
			@36 /* ~You are the one who is trying to serve two masters.~*/
			== XACOR25B
			@37 /* ~The difference is that <CHARNAME>'s goals and those of the Dukes are aligned. Your patron only wants to feed on the death and destruction left in your wake.~*/
			== DORN25J
			IF ~
				!Global("XA_CorwinPromoted", "GLOBAL", 1)
			~
			@38 /* ~Hmph. Be wary of the day then, Captain, when the goals of those you serve oppose one another.~*/
			== DORN25J
			IF ~
				Global("XA_CorwinPromoted", "GLOBAL", 1)
			~
			@775 /* ~Hmph. Be wary of the day then, Major, when the goals of those you serve oppose one another.~*/
	EXIT
	//}

	//{ Dialog B-81
	CHAIN
		IF ~
			Global("XA_Banter_CorwinDorn", "GLOBAL", 4)
			!Global("XA_DornPatronsDead", "GLOBAL", 1)
		~ THEN XACOR25B BCorwinDorn2
			@156 /* ~Dorn, I give orders to those under my command either verbally, or in writing. How do you receive orders from your patron?~ [XACORB04] */
			DO ~
				SetGlobal("XA_Banter_CorwinDorn", "GLOBAL", 5)
			~ 
			== DORN25J
			@157 /* ~What concern of it is yours?~*/
			== XACOR25B
			@158 /* = ~How do you know that the orders you receive are legitimate? That they aren't sent by some other person, or thing?~ */
			== DORN25J
			IF ~
				!Global("XA_CorwinPromoted", "GLOBAL", 1)
			~
			@159 /* = ~My patron communicates their thoughts to my mind. I can.. hear them, as clearly as I can hear your mewling voice, Captain.~ */
			== DORN25J
			IF ~
				Global("XA_CorwinPromoted", "GLOBAL", 1)
			~
			@776 /* = ~My patron communicates their thoughts to my mind. I can.. hear them, as clearly as I can hear your mewling voice, Major.~ */
			== XACOR25B
			@160 /* ~So, you just follow the voice inside your head that tells you to murder things. Is that right?~*/
			== DORN25J
			@161 /* = ~Get to your point.~ */
			== XACOR25B
			@162 /* = ~If that voice tells you to harm <CHARNAME>, or anyone else that I care about, then your patron will need to find themselves a new slave. I trust I've made myself clear.~ */
			== DORN25J
			@163 /* = ~You are a truly pathetic woman. Even still, such insults and threats are beneath you. I've no intention of betraying <CHARNAME>, certainly not while my patron benefits from our arrangement.~ */
			== XACOR25B
			@182 /*~Next time, keep that thrice-damned pit of hell you call a mouth shut or I'll shut it for you.~ [XA100081]*/
	EXIT
	//}

	//{ Dialog B-81A
	CHAIN
		IF ~
			Global("XA_Banter_CorwinDorn", "GLOBAL", 4)
			Global("XA_DornPatronsDead", "GLOBAL", 1)
		~ THEN XACOR25B BCorwinDorn2
			@586 /* ~Dorn, I'm curious.~ */
			DO ~
				SetGlobal("XA_Banter_CorwinDorn", "GLOBAL", 5)
			~ 
			== DORN25J
			@587 /* ~And? Out with it.~*/
			== XACOR25B
			@588 /* = ~I give orders to those under my command either verbally, or in writing. How did you receive orders from your patron?~*/
			== DORN25J
			IF ~
				!Global("XA_CorwinPromoted", "GLOBAL", 1)
			~
			@589 /* = ~They communicated their thoughts to my mind. I could... hear them, as clearly as your mewling voice, Captain.~ */
			== DORN25J
			IF ~
				Global("XA_CorwinPromoted", "GLOBAL", 1)
			~
			@590 /* ~They communicated their thoughts to my mind. I could... hear them, as clearly as your mewling voice, Major.~*/
			== XACOR25B
			@591 /* ~And now that your patron is gone, you're no longer hearing the voices that tell you to murder things. Is that right?~*/
			== DORN25J
			@161 /* = ~Get to your point.~ */
			== XACOR25B
			@592 /* ~If you harm <CHARNAME>, or anyone else that I care about, then —~*/
			== DORN25J
			@585 /*~Pathetic, woman. Save your empty threats for someone who cares. I've no intention of betraying <CHARNAME>, certainly not while I benefit from our arrangement.~ */
			== XACOR25B
			@182 /*~Next time, keep that thrice-damned pit of hell you call a mouth shut or I'll shut it for you.~ [XA100081]*/
	EXIT
	//}

	//{ Dialog B-82
	CHAIN
		IF ~
			IsValidForPartyDialogue("Aerie")
			!IsValidForPartyDialogue("Valygar")
			Global("XA_AVComplimentFamily", "GLOBAL", 1)
		~ THEN XACOR25B XA_ComplimentFamily
			@727 /* ~Oh... what a relief.~ */
			== AERIE25J
			@716 /*  ~Schael, your daughter is just *so* precious! I love her!~ */
			DO ~
				SetGlobal("XA_AVComplimentFamily", "GLOBAL", 2)
			~
			== XACOR25B
			@169 /*~That's kind of you to say...~ [BD67552]*/
			=
			@717 /* ~She's such a wonderful kid... I'd do anything for her. Anything.~ */
			== AERIE25J
			@718 /* ~I hope one day I'll have some c-children of my own...~ */
			== XACOR25B
			@719 /* ~You're as sweet as they come. I'm sure you'll find the right person, Aerie.~ */
	EXIT
	//}
	
//}


//{ Sarevok Banters

	//{ Dialog B-89B
	CHAIN
		IF ~
			GlobalLT("ImoenGiveSoul","GLOBAL",2)
			Global("XA_SarevokSoul", "GLOBAL", 1)
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
			OR(2)
				Alignment("Sarevok",CHAOTIC_GOOD)
				Global("XA_89BDebug", "GLOBAL", 1)
		~ THEN XACOR25B XA_SarevokBanter_Soul
			@870 /* ~So, what's it like?~ */
			== SAREV25J
			@879 /* ~Pardon?~ */
			DO ~
				SetGlobal("XA_SarevokSoul", "GLOBAL", 2)
			~
			== XACOR25B
			@871 /* ~You're carrying part of <CHARNAME>'s soul. Maybe having <PRO_HIMHER> inside of you will make you a better person. But I expect that it won't.~ */
			== SAREV25J
			@872 /*  ~What do you wish to know, woman? What are you curious about?~ */
			= @873 /* ~Perhaps you would be interested to know that I can feel the triumph of Dragonspear, and the heat of Avernus. I've experienced the despair of that prison cell after being framed for murder. I remember the pain of our separation, and the sense of betrayal after being exiled from the city that I fought to defend.~ */
			== XACOR25B
			@882 /* ~Wait — you have <PRO_HISHER>'s memories?~ */
			== SAREV25J
			@874 /* ~I do. I can even feel the knives of Irenicus, slicing into my skin, torturing me. I can feel his hands and his breath... and... I can feel the unbridled joy of seeing you again, in Athkatla. I recall the fear of losing you to Bodhi, and Rohma to Illasera.~ */
			== XACOR25B
			@876 /* ~That's enough.~ */
			== SAREV25J
			@883 /* ~There's something else that you should know. Your <PRO_MANWOMAN> loves you with every fiber of <PRO_HISHER> being... I've never felt anything quite like it, in either of my lives...~*/
			== XACOR25B
			@885 /*~I said, enough... but, thank you. I feel the same way about <PRO_HIMHER>.~ */
			= @888 /*~Hrm. There may be more to you than I thought... Now let's get going.~ [XA100082]*/
	EXIT
	//}

	//{ Dialog B-89A
	CHAIN
		IF ~
			GlobalLT("ImoenGiveSoul","GLOBAL",2)
			Global("XA_SarevokSoul", "GLOBAL", 1)
			Global("XA_LC_CorwinRomanceActive", "GLOBAL", 2)
			OR(2)
				!Alignment("Sarevok",CHAOTIC_GOOD)
				Global("XA_89ADebug", "GLOBAL", 1)
		~ THEN XACOR25B XA_SarevokBanter_Soul
			@870 /* ~So, what's it like?~ */
			== SAREV25J
			@879 /* ~Pardon?~ */
			DO ~
				SetGlobal("XA_SarevokSoul", "GLOBAL", 2)
			~
			== XACOR25B
			@871 /* ~You're carrying part of <CHARNAME>'s soul. Maybe having <PRO_HIMHER> inside of you will make you a better person. But I expect that it won't.~ */
			== SAREV25J
			@872 /*  ~What do you wish to know, woman? What are you curious about?~ */
			= @873 /* ~Perhaps you would be interested to know that I can feel the triumph of Dragonspear, and the heat of Avernus. I've experienced the despair of that prison cell after being framed for murder. I remember the pain of our separation, and the sense of betrayal after being exiled from the city that I fought to defend.~ */
			== XACOR25B
			@882 /* ~Wait — you have <PRO_HISHER>'s memories?~ */
			== SAREV25J
			IF ~
				Global("XA_CorwinLoveBG2", "GLOBAL", 1)
			~
			@874 /* ~I do. I can even feel the knives of Irenicus, slicing into my skin, torturing me. I can feel his hands and his breath... and... I can feel the unbridled joy of seeing you again, in Athkatla. I recall the fear of losing you to Bodhi, and Rohma to Illasera.~ */
			== SAREV25J
			IF ~
				GlobalLT("XA_CorwinLoveBG2", "GLOBAL", 1)
			~
			@154  /* ~I do.~ */
			== XACOR25B
			IF ~
				Global("XA_CorwinLoveBG2", "GLOBAL", 1)
			~
			@876 /* ~That's enough.~ */
			== SAREV25J
			IF ~
				Global("XA_CorwinLoveBG2", "GLOBAL", 1)
			~
			@877 /* ~And Schael... I remember us sharing some *very* intimate—~ */
			== XACOR25B
			@875 /*~I'm going to stop talking to you now. And I'm especially going to stop listening.~ [BD58915]*/
	EXIT
	//}

	//{ Dialog B-86A
	CHAIN
		IF ~
			Global("XA_Banter_CorwinSarevok", "GLOBAL", 2)
			!Alignment("Sarevok",CHAOTIC_GOOD)
		~ THEN XACOR25B XA_SarevokBanter1
			@815 /* ~Sarevok.~ */
			DO ~
				SetGlobal("XA_Banter_CorwinSarevok", "GLOBAL", 3)
			~
			== SAREV25J
			@816 /* ~Ah, Captain — excuse me, *Major* Corwin, to what do I owe the pleasure?~ */
			== XACOR25B
			#258881 /* What's the draw */
			== SAREV25J
			@8/* ~Even though I no longer stand to benefit from it, I want to see Aluando's prophecy fulfilled. It's all I have left.~*/
			== XACOR25B
			@114 /*~Never forget that I'm watching you.~ [BD67545]*/
			=
			@810 /*~<CHARNAME> may be able to look past your crimes, but I'm not. If I even suspect that you're —~ */
			== SAREV25J
			@811 /*  ~Silence, woman. I should've had my lackeys kill you first, instead of Scar. ~   */
			== XACOR25B
			@812 /* ~Weren't man enough to do it yourself, eh? You'd rather rely on monsters and brigands to do your dirty work.~ */
			== SAREV25J
			@813 /*~I had more important matters to attend to. Consider yourself fortunate. Tell me, how has the city fared in my absence?~ */
			== XACOR25B
			@817 /* ~You needn't concern yourself with that. You'll never set foot in my city ever again.~ */
			== SAREV25J
			@818 /*~Rest assured Major, I've no further designs on Baldur's Gate, its citizens, or the Dukes ... or you, for that matter.~*/
	EXIT
	//}

	//{ Dialog B-86B
	CHAIN
		IF ~
			Global("XA_Banter_CorwinSarevok", "GLOBAL", 2)
			Alignment("Sarevok",CHAOTIC_GOOD)
		~ THEN XACOR25B XA_SarevokBanter1
			@815 /* ~Sarevok.~ */
			DO ~
				SetGlobal("XA_Banter_CorwinSarevok", "GLOBAL", 3)
			~
			== SAREV25J
			@816 /* ~Ah, Captain — excuse me, *Major* Corwin, to what do I owe the pleasure?~ */
			== XACOR25B
			#258881 /* What's the draw */
			== SAREV25J
			@8/* ~Even though I no longer stand to benefit from it, I want to see Aluando's prophecy fulfilled. It's all I have left.~*/
			== XACOR25B
			@810 /*~<CHARNAME> may be able to look past your crimes, but I'm not. If I even suspect that you're —~ */
			== SAREV25J
			@869 /*  ~Enough. I know that I must atone for my sins. I've no wish to add to that burden by betraying <CHARNAME>, or any of you, for that matter.~  */
	EXIT
	//}

	//{ Dialog B-87
	CHAIN
		IF ~
			Global("XA_Banter_CorwinSarevok", "GLOBAL", 4)
		~ THEN SAREV25J XA_SarevokBanter2
			@825 /* ~Major, a word please.~ */
			
			== XACOR25B
			@826 /* ~What is it?~ */
			DO ~
				SetGlobal("XA_Banter_CorwinSarevok", "GLOBAL", 5)
			~
			== SAREV25J
			@827 /* ~Shortly before my attempted coup, Zhalimar informed me that a number of high ranking Flaming Fist officials, yourself included, left the city to take part in a training exercise. I always found the timing suspicious...~*/
			== XACOR25B
			@831 /* ... */
			== SAREV25J
			@828 /* ~Tell me ... what was the real reason you and the others were sent away?~ */
			== XACOR25B
			@403 /*You aren't going to let this go, are you [BD66686]*/
			=
			@832 /* ~All I will say is that the Council is wiser than you know.~  */
			== SAREV25J
			@830 /* ~There was no training exercise, was there? You were sent away, because they somehow knew or suspected that we would attempt to destroy the leadership of the Fist.~ */
			= @833 /* ~I suppose then that your orders were to take control of the city, in the event that I, or someone else associated with the Iron Throne, were to overtly usurp control.~ */
			= @835 /* ~Would you have been successful, I wonder? I doubt you'd have had the numbers, or the strength, to wrest control away from us.~*/
			== XACOR25B
			#267555 /* ~I disagree strenuously... Keep talking and I may disagree violently*/
			== SAREV25J
			@837 /* Hmph. */
	EXIT
	//}
	
	//{ Dialog B-88
	CHAIN
		IF ~
			Global("XA_Banter_CorwinSarevok", "GLOBAL", 6)
		~ THEN XACOR25B XA_SarevokBanter3
			@838 /* ~What are you staring at?~ */
			DO ~
				SetGlobal("XA_Banter_CorwinSarevok", "GLOBAL", 7)
			~
			== SAREV25J
			@840 /*~You.~*/
			== XACOR25B
			@841 /* ~Huh?~ */
			== SAREV25J
			@842 /* ~Given your rank, as well as with your youth and allure, I naturally assumed that you had slept to the top. Certainly with Nederlok. Perhaps even with Duke Eltan himself.~*/
			== XACOR25B
			@527 /* ~For the love of the gods, save that filth for a chamberpot!~ [XA100003] */	
	END SAREV25J XA_SarevokBanter3Chain_END

	CHAIN 
		IF ~~ THEN SAREV25J XA_SarevokBanter3_Romance_Chain
			@844 /* ~In many ways, you remind me of my Tamoko — you are strong, fierce, and assertive.~ */
			== XACOR25B
			@846 /* ~If she was so valuable to you, why did you toss her to the curb?~ */
			== SAREV25J
			@847 /* ~She tried to keep me from what I thought, at the time, was my destiny... a foolish decision, as it turned out.~ */
			== SAREV25J
			@845 /* ~You and <CHARNAME> are fortunate to have found eachother. But as I'm sure you know, such things are not meant to last.~ */
			== XACOR25B
			@850 /* ~Enough ... It's none of your concern. Let's go.~ */
	EXIT

	CHAIN 
		IF ~~ THEN SAREV25J XA_SarevokBanter3_NonRomance_Chain
			@848 /* ~You should have been at my side, instead of that fool Angelo.~ */
			== XACOR25B
			@849 /* ~Are you kidding? I'd never have joined you.~ */
			== SAREV25J
			@851 /* ~It would've been a trivial matter... you have a daughter, yes? She would've been all the leverage I needed to turn you, Major.~*/
			== XACOR25B
			@543 /*  ~Don't bring her into this. You won't like where that ends.~ [BD39644]~*/
			== SAREV25J
			@853 /* ~Relax, Major. As I told you before, I've no further interest in Baldur's Gate or its citizens. But others ... those who think like I do ... wouldn't hesitate to use your daughter against you.~ */
			== XACOR25B 
			@854 /* ~The Five already tried that, and <CHARNAME> and I stopped them.~ */
			== SAREV25J
			@855 /* ~There will be more. You must remain vigilant at all times.~ */
			== XACOR25B
			@856 /*~That's the first thing you've said that I agree with. Let's go.~*/
	EXIT
	//}
//}

//{ Caelar Banters
	//{ Dialog B-90
	CHAIN 
		IF ~
			Global("XA_Banter_CorwinCaelar", "GLOBAL", 2)
		~ THEN XACAELAB XA_CaelarCorwinBanter1Chain
		@858 /*~I can feel you staring at me. Is something on your mind, Major?~*/
		== XACOR25B
		@544 /*~Scores, if not hundreds, of innocent people have been slain by those in your service.~ [BD56584]*/
		=
		@859 /* ~The Fist lost a lot of good people fighting against your crusade. Mothers, fathers, sons and daughters, many of whom I considered friends.~*/
		DO ~
			SetGlobal("XA_Banter_CorwinCaelar", "GLOBAL", 3)
		~
		== XACAELAB
		@860 /* ~I understand, and I'm sorry. There's nothing I can do, however.~*/
		== XACOR25B
		@861 /*~I thought I'd hate you, but... I don't. The fact that you're here, helping <CHARNAME> and I with our mission is the reason why.~*/
		= @862 /* ~If we succeed, we'll vouch for your actions after your release from Avernus. The Dukes might be open to sparing your life, especially when they learn of what you've already suffered. You'd still have to worry about the Waterdhavian and Daggerford authorities, however.~*/
		== XACAELAB
		@863 /* ~I appreciate that Major, and I want to assure you that when the time comes, I'll accept whatever justice awaits me. Let's move out.~ */
	EXIT
	
	
	//}
//}