BEGIN ~XALATH01~

//{ Beno Boom
IF ~
	Global("XA_BenoBoom", "GLOBAL", 1)
~ THEN BEGIN XA_BenoBoom_ST
	SAY @62 /* ~(He turns to you. He's covered in ... well... Beno.)~ */
	
	IF ~~ THEN REPLY @63  /* ~That was a satisfying explosion. Great job.~ */
	DO ~
		SetGlobal("XA_BenoBoom", "GLOBAL", 3)
	~
	GOTO XA_BenoBoom_ST_2
	
	IF ~~ THEN REPLY @64 /*~Did I forget to tell you? The dagger contains multiple souls, not just Beno's.~ */
	DO ~
		SetGlobal("XA_BenoBoom", "GLOBAL", 3)
	~
	GOTO XA_BenoBoom_ST_2
	
	IF ~~ THEN REPLY @65 /* ~Hahahah... you should take a look at yourself!~ */
	DO ~
		SetGlobal("XA_BenoBoom", "GLOBAL", 3)
	~
	GOTO XA_BenoBoom_ST_2
END

IF ~
	Global("XA_BenoBoom", "GLOBAL", 2)
~ THEN BEGIN XA_BenoBoom_Zombie
	SAY @62 /* ~(He turns to you. He's covered in ... well... Beno.)~ */
	
	IF ~~ THEN REPLY @70 /* ~What the hells happened!?~*/
	GOTO XA_BenoBoom_Zombie2
END

IF ~~ THEN BEGIN XA_BenoBoom_Zombie2
	SAY @71 /* It seems the head was too badly decomposed. Instead of being resurrected as a human, he was instead raised as a zombie... and, as warrior-priests of the Morning Lord...~ */
	
	IF ~~ THEN REPLY @72  /* ~You're magically protected against lower forms of undead.~ */
	GOTO XA_BenoBoom_Zombie3
END

IF ~~ THEN BEGIN XA_BenoBoom_Zombie3
	SAY @73 /* ~Yes. Hence, the explosion. I should have prepared for this possibility. How in Lathander's name will I explain what happened...~ */
	
	IF ~~ THEN REPLY @67  /* ~Tell them the truth. They should've sent someone more competent.~*/
	GOTO XA_BenoBoom_GoHome
	
	IF ~~ THEN REPLY @68  /*~You did the best you can. Go home. There's nothing more you can do here.~ */
	GOTO XA_BenoBoom_GoHome
END

IF ~~ THEN BEGIN XA_BenoBoom_ST_2
	SAY @66 /* ~Sufficeth to say, that didn't go according to plan. How in Lathander's name will I explain what happened...~*/
	
	IF ~~ THEN REPLY @67  /* ~Tell them the truth. They should've sent someone more competent.~*/
	GOTO XA_BenoBoom_GoHome
	
	IF ~~ THEN REPLY @68  /*~You did the best you can. Go home. There's nothing more you can do here.~ */
	GOTO XA_BenoBoom_GoHome
END

IF ~~ THEN BEGIN XA_BenoBoom_GoHome
	SAY @69 /*~I'm afraid your right. With his body obliterated, there's no hope for Beno's resurrection. Brothers, help me clean up this mess. Afterward, we'll head back home.~ */
	
	IF ~~ THEN REPLY @74 /* Safe travels.~*/
	DO ~
		StartCutSceneMode()
		StartCutScene("XALATHEX")
	~
	EXIT
	
	IF ~
		IsValidForPartyDialogue("XACORWIN")
	~ THEN REPLY @53 /* ~Schael... you have some ... ahhh... Beno on you. On your shoulder.~*/
	EXTERN XACORWIJ XA_BenoBoom
	
	IF ~
		IsValidForPartyDialogue("Aerie")
	~ THEN REPLY @54  /* ~Aerie... you got some, ahh, Beno in your hair.~ */
	EXTERN AERIEJ XA_BenoBoom
	
	IF ~
		IsValidForPartyDialogue("Jaheira")
	~ THEN REPLY @55  /* ~Jaheira there's, ahh, some Beno on you. On your backside, dear.~*/
	EXTERN JAHEIRAJ XA_BenoBoom
	
	IF ~
		IsValidForPartyDialogue("Imoen2")
	~ THEN REPLY @76  /*  ~Imoen you've got some... erm, you've got some Beno on your back.~ */
	EXTERN IMOEN2J XA_BenoBoom
	
	IF ~
		IsValidForPartyDialogue("Neera")
	~ THEN REPLY @75  /* ~Neera, oh dear, you have some Beno on your shoes.~ */
	EXTERN NEERAJ XA_BenoBoom
END
//}

//{ Initial Meeting
IF ~
	Global("XA_LathMetPlayer", "GLOBAL", 1)
	OR(2)
		PartyHasItem("XABENOHD")
		PartyHasItem("XASTDAGB")
~ THEN BEGIN XA_Intro
	SAY @0 /* ~We must be close... you, there. Perhaps you can help us.~ */
	
	IF ~
		PartyHasItem("XABENOHD")
	~ THEN REPLY @1 /* ~What is it?~ */
	DO ~
		SetGlobal("XA_LathMetPlayer", "GLOBAL", 2)
	~
	GOTO XA_MissingHead
	
	IF ~
		PartyHasItem("XASTDAGB")
	~ THEN REPLY @1 /* ~What is it?~*/
	DO ~
		SetGlobal("XA_LathMetPlayer", "GLOBAL", 2)
	~
	GOTO XA_MissingSoul
	
	IF ~
		PartyHasItem("XABENOHD")
	~ THEN REPLY @2 /* ~Who are you?~*/
	DO ~
		SetGlobal("XA_LathMetPlayer", "GLOBAL", 2)
	~
	GOTO XA_MissingHead
	
	IF ~
		PartyHasItem("XASTDAGB")
	~ THEN REPLY @2 /* ~Who are you?~*/
	DO ~
		SetGlobal("XA_LathMetPlayer", "GLOBAL", 2)
	~
	GOTO XA_MissingSoul
END

IF ~~ THEN BEGIN XA_MissingHead
	SAY @3 /* ~I am Bonaiutus, and I am a priest of the Morning Lord. My colleagues and I have been tasked with locating the lost head of one Beno Famari.~ */
	
	= @5 /* ~The situation is quite odd. You see, we managed to recover his body, or most of it, in the ruins of a temple of Bhaal located beneath Baldur's Gate. It seems that whoever killed him took his head, for purposes that are unknown to us. Through intense scrying we have tracked it from Baldur's Gate, to Saradush, and now, here.~ */
	
	= @7  /* ~Without his head, he cannot be resurrected.~ */
	
	IF ~
		See("XACORWIN")
		IsValidForPartyDialogue("XACORWIN")
	~ THEN REPLY @9 /* ~Schael, do you want to handle this, or should I?~ */
	EXTERN XACORWIJ XA_LathBeno_Head
	
	IF ~~ THEN REPLY @10  /* ~I have his head. I'll not give it to you, nor anyone else.~ */
	GOTO XA_ToldALie2
	
	IF ~
		See("XALATH02")
	~ THEN REPLY @21 /* ~Hah, obviously. But I don't know anything about a missing head.~*/
	EXTERN XALATH02 XA_ToldALie
	
	IF ~
		See("XALATH03")
	~ THEN REPLY @23 /* ~All those hours of self-flagellation for such a mundane revelation? Even a schoolboy knows you cannot restore a body without its head. Pester me no more, I know nothing of this missing head or its whereabouts.~ */
	EXTERN XALATH03 XA_ToldALie
END

IF ~~ THEN BEGIN XA_MissingSoul
	SAY @4 /* ~I am Bonaiutus, and I am a priest of the Morning Lord. My colleagues and I have been tasked with locating the lost soul of one Beno Famari.~ */
	
	= @6 /* ~The situation is quite odd. You see, we managed to recover his body in the ruins of a temple of Bhaal located beneath Baldur's Gate. It seems that whoever killed him somehow stole his soul using some kind of arcane artifact. Through intense scrying, we have tracked it from Baldur's Gate, to Saradush, and now, here.~ */
	
	= @8  /* ~Without his soul, he cannot be resurrected.~ */
	
	IF ~
		See("XACORWIN")
		IsValidForPartyDialogue("XACORWIN")
	~ THEN REPLY @9 /* ~Schael, do you want to handle this, or should I?~ */
	EXTERN XACORWIJ XA_LathBeno_Soul
	
	IF ~~ THEN REPLY @11  /* ~His soul is trapped in the Soultaker Dagger, which is in my possesion.~ */
	GOTO XA_ToldALie2
	
	IF ~
		See("XALATH02")
	~ THEN REPLY @22 /* ~Hah, obviously. But I don't know anything about a lost soul.~*/
	EXTERN XALATH02 XA_ToldALie
	
	IF ~
		See("XALATH03")
	~ THEN REPLY @24 /* ~All those hours of self-flagellation for such a mundane revelation? Even a schoolboy knows you cannot restore a man without his soul. Pester me no more, I know nothing of this soul or its whereabouts.~ */
	EXTERN XALATH03 XA_ToldALie
END

IF ~~ THEN BEGIN XA_ToldALie2
	SAY @25 /* ~Indeed. Am I correct in assuming that you were the one to take his life? If so, why?~ */
	
	IF ~
		PartyHasItem("XABENOHD")
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @13 /* ~He kidnapped the daughter of the woman I love. Death was an appropriate punishment.~ */
	DO ~
		IncrementGlobal("XA_CorwinOpinionOfPlayer", "GLOBAL", 1)
	~
	GOTO XA_KidnappedRohma
	
	IF ~
		PartyHasItem("XASTDAGB")
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @15 /* ~He kidnapped the daughter of the woman I love. His imprisonment ensures that he'll never hurt her, or anyone else ever again.~ */
	DO ~
		IncrementGlobal("XA_CorwinOpinionOfPlayer", "GLOBAL", 1)
	~
	GOTO XA_KidnappedRohma
	
	IF ~
		PartyHasItem("XABENOHD")
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @14 /* ~He kidnapped the daughter of one of my closest friends. Death was an appropriate punishment.~*/
	GOTO XA_KidnappedRohma
	
	IF ~
		PartyHasItem("XASTDAGB")
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @16 /* ~He kidnapped the daughter of one of my closest friends. His imprisonment ensures that he'll never hurt her, or anyone else ever again.~ */
	GOTO XA_KidnappedRohma
END

IF ~~ THEN BEGIN XA_KidnappedRohma
	SAY @26 /* ~I see... to be perfectly honest, this isn't surprising. He seems incapable of keeping himself out of trouble.~ */
	
	IF ~~ THEN
	GOTO XA_HowMany
	
	IF ~
		See("XALATH02")
	~ THEN
	EXTERN XALATH02 XA_HowMany
	
	IF ~
		See("XALATH03")
	~ THEN
	EXTERN XALATH03 XA_HowMany
END

IF ~~ THEN BEGIN XA_HowMany
	SAY @28 /* ~This will be the... let's see... sixth time we've had to resurrect him? Or is it the seventh? Lathander forgive me, but I'm quite tired of this nonsense.~ */
	
	IF ~~ THEN REPLY @19 /*~Why bother? I thought priests of Lathander weren't keen on associating themselves with scum like Beno.~ */
	GOTO XA_WhyBother
END

IF ~~ THEN BEGIN XA_HowMany2
	SAY @27 /* ~I'm quite tired of it already, as I'm sure you can imagine.~ */
	
	IF ~~ THEN REPLY @19 /*~Why bother? I thought priests of Lathander weren't keen on associating themselves with scum like Beno.~ */
	GOTO XA_WhyBother
END

IF ~~ THEN BEGIN XA_WhyBother
	SAY @20  /* ~Ah, it's complicated, you see. Beno's family has friends within the upper echelon of our clergy. If it were up to me... well. The point is, it's not up to me.~ */
	
	IF ~~ THEN REPLY @30 /* ~Just tell them you couldn't find the head.~ */
	GOTO XA_HateLying
	
	IF ~~ THEN REPLY @31 /* ~Just tell them you couldn't locate his soul.~ */
	GOTO XA_HateLying
	
	IF ~~ THEN REPLY @32 /* ~I can kill you if that will ease your suffering, priest.~ */
	GOTO XA_KillPriest
END

IF ~~ THEN BEGIN XA_KillPriest
	SAY @33 /* ~Perhaps it will, but it will not ease your own. The church will continue to send its priests and clergy in search of what's needed for the resurrection. Search parties will also be sent for us, and any other of our number you may kill. Eventually, you'll be overwhelmed by sheer force of numbers.~ */
	
	IF ~~ THEN REPLY @30 /* ~Just tell them you couldn't find the head.~ */
	GOTO XA_HateLying
	
	IF ~~ THEN REPLY @31 /* ~Just tell them you couldn't locate his soul.~ */
	GOTO XA_HateLying
END

IF ~~ THEN BEGIN XA_HateLying
	SAY @29 /* ~I will not lie to my superiors. Deception is detestable to the Morning Lord.~ */
	
	= @34 /* ~We're ready to perform the resurrection as soon as you give us what we need. We will be on our way as soon as we are done.~ */
	
	IF ~
		PartyHasItem("XABENOHD")
	~ THEN REPLY @35 /* ~Wait - you brought the body with you?~*/
	GOTO XA_BroughtBody_Head
	
	IF ~
		PartyHasItem("XASTDAGB")
	~ THEN REPLY @35 /* ~Wait - you brought the body with you?~*/
	GOTO XA_BroughtBody_Soul
END

IF ~~ THEN BEGIN XA_BroughtBody_Soul
	SAY @37  /* Of course. It has been magically preserved. Now, please, give me the dagger containing the soul.*/

	IF ~~ THEN REPLY @61  /* ~Fine. Here. (Hand him the dagger.)~ */
	DO ~
		ActionOverride(Player1, DestroyItem("XASTDAGB"))
		ActionOverride(Player2, DestroyItem("XASTDAGB"))
		ActionOverride(Player3, DestroyItem("XASTDAGB"))
		ActionOverride(Player4, DestroyItem("XASTDAGB"))
		ActionOverride(Player5, DestroyItem("XASTDAGB"))
		ActionOverride(Player6, DestroyItem("XASTDAGB"))
	~
	GOTO XA_GaveDagger
END

IF ~~ THEN BEGIN XA_GaveDagger
	SAY @44 /* ~Ugh... one can feel the... the despair from those trapped within. I don't know how you've managed to carry such an evil device on your person without becoming physically ill. I'll return it to you shortly, once I'm done with the soul reassociation.~ */
	
	IF ~~ THEN REPLY @58 /* ~Have you performed such a ritual before?~ */
	GOTO XA_Reassociate
END

IF ~~ THEN BEGIN XA_BroughtBody_Head
	SAY @36 /* ~Of course. It has been magically preserved. Now, please. Give me the head.~ */
	
	IF ~~ THEN REPLY @38
	DO ~
		ActionOverride(Player1, DestroyItem("XABENOHD"))
		ActionOverride(Player2, DestroyItem("XABENOHD"))
		ActionOverride(Player3, DestroyItem("XABENOHD"))
		ActionOverride(Player4, DestroyItem("XABENOHD"))
		ActionOverride(Player5, DestroyItem("XABENOHD"))
		ActionOverride(Player6, DestroyItem("XABENOHD"))
	~
	GOTO XA_BroughtBody_Head2
END

IF ~~ THEN BEGIN XA_BroughtBody_Head2
	SAY @40 /* ~I... ugh... didn't expect it to be in such an advanced state of decomposition... though there's enough to perform the resurrection. I think.~ */
	
	IF ~~ THEN GOTO XA_Reattach
	
	IF ~
		See("XALATH02")
	~ THEN 
	EXTERN XALATH02 XA_Reattach
	
	IF ~
		See("XALATH03")
	~ THEN 
	EXTERN XALATH03 XA_Reattach
END
IF ~~ THEN BEGIN XA_Reattach
	SAY @46 /* ~Now, if I can just find the suture kit... Ah! Here it is.~ */
	
	IF ~~ THEN REPLY @47 /* ~You're going to sew the head back on? Are you serious?~*/
	GOTO XA_Reattach3
	
	IF ~~ THEN REPLY @52 /* ~Those sutures won't hold. The skin's turned to mush.~*/
	GOTO XA_Reattach3
END
IF ~~ THEN BEGIN XA_Reattach2
	SAY @41 /* ~Have faith, young one. It's no different than reattaching a hand, or a foot, or... do you remember the time, in a jealous rage, Lady Olsen cut off her husband's p—~ */

	IF ~
		See("XALATH02")
	~ THEN 
	EXTERN XALATH02 XA_Reattach3
	
	IF ~
		See("XALATH03")
	~ THEN 
	EXTERN XALATH03 XA_Reattach3
END

IF ~~ THEN BEGIN XA_Reattach3
	SAY @48 /* ~Well, yes. The head needs to be physically reattached before I can raise him. Have faith, my friend! It's no different than reattaching a hand, or a foot, or... you know, there was a time when, in a jealous rage, Lady Olsen removed her husband's —~ */
	
	IF ~~ THEN REPLY @49 /* ~Enough. You have what you came for. Now leave me be.~ */
	GOTO XA_Reattach4
END

IF ~~ THEN BEGIN XA_Reattach4A
	SAY @42  /* ~Er... right. The tavern will have enough room for us to perform the deed. You are welcome to join us, friend.~ */
	
	IF ~~ THEN REPLY @51 /* ~Fine. You've wasted this much of my time already, what's another half hour or so? Lead the way.~ */
	DO ~
		StartCutSceneMode()
		StartCutScene("XABENORH")
	~
	EXIT
END

IF ~~ THEN BEGIN XA_Reattach4
	SAY @50 /* ~You've been a great help already. Why don't you join us in the tavern? There's room enough inside to perform the deed, and you can observe for your own edification.~*/
	
	IF ~~ THEN REPLY @51 /* ~Fine. You've wasted this much of my time already, what's another half hour or so? Lead the way.~ */
	DO ~
		StartCutSceneMode()
		StartCutScene("XABENORH")
	~
	EXIT
END

IF ~~ THEN BEGIN XA_Reassociate
	SAY @59  /* ~Personally, no. Though I did read some literature from the wizard Melkor. It was he and his apprentice who successfully restored the daughter of one of the Grand Dukes from a similar soul prison. I'm confident that I can do the same.~ */
	
	IF ~~ THEN REPLY @60 /* ~I see...~ */
	GOTO XA_Reassociate2
END

IF ~~ THEN BEGIN XA_Reassociate2
	SAY @57 /* ~You've been a great help already. Why don't you join us in the tavern? There's room enough inside to perform the deed, and you and the other patrons can observe for your own edification.~ */
	
	IF ~~ THEN REPLY @51 /* ~Fine. You've wasted this much of my time already, what's another half hour or so? Lead the way.~ */
	DO ~
		StartCutSceneMode()
		StartCutScene("XABENORS")
	~
	EXIT
END
//}