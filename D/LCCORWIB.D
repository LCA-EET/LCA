BEGIN ~LCCORWIB~

//{ region: Dialog B-0
IF ~
	Global("OHD_corwinconflict","GLOBAL",2)
~ THEN BEGIN LCA_CorwinDornConflict1
	SAY @658 /* ~Dorn - you seem to have taken a very strong interest in <CHARNAME>.~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("OHD_corwinconflict","GLOBAL",3)
	~
	EXTERN DORNJ LCA_CorwinDornConflict2
END
//}

IF ~~ THEN BEGIN LCA_CorwinDornConflict3
	SAY @660 /* ~But it is. If you even think to stand in the way of our relationship, I promise that you'll regret it.~ */
	
	IF ~~ THEN
	EXTERN DORNJ LCA_CorwinDornConflict4
END

IF ~~ THEN BEGIN LCA_ChooseDorn
	SAY @470 /* ~To think I even considered the possibility of you and I being together. Madness. Be with Dorn, then. I want nothing more to do with you.~ [BD54533] */
	IF ~~ THEN
	DO ~
		SetGlobal("OHD_corwinconflict","GLOBAL",4)
		SetGlobal("LCA_CorwinRomanceActive", "GLOBAL", 3)
		SetPlayerSound(Myself,268282,SELECT_ACTION6)
	~
	EXIT
END

//{ region: Dialog B-1
IF ~
	Global("LCA_Banter_CorwinAnomen", "GLOBAL", 2)
~ THEN BEGIN BCorwinAnomen1A
	SAY @541 /* ~You've been glaring at me for the last hour Anomen. What is it?~ [LCCORB20] */
	IF ~~ THEN
	DO ~
		SetGlobal("LCA_Banter_CorwinAnomen", "GLOBAL", 3)
		ClearActions(Myself)
		ClearActions("Anomen")
		SetGlobal("LCA_BCorwinAnomen1A", "GLOBAL", 1)
		ActionOverride("Anomen", StartDialog("ANOMENJ", Player1))
	~ 
	EXIT
END
//}

//{ region: Dialog B-3A
IF ~
	Global("LCA_TM_ArcheryChallenge", "GLOBAL", 2)
	!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
~ THEN BEGIN LCA_Trademeet_Competition_MazzyWon
	SAY @549 /* ~Mazzy, congratulations on your victory. That was quite the performance.~ */
	
	IF ~~ THEN 
	EXTERN MAZZYJ LCA_MazzyWonCompetition
END
//}

//{ region Dialog B-4
IF ~
	Global("LCA_Banter_CorwinMazzy", "GLOBAL", 4)
~ THEN BEGIN LCA_Banter_CorwinMazzy2_Init
	SAY @528 /* ~Mazzy, I'm curious as to why you chose to specialize in the crossbow instead of the longbow.~ */
	
	IF ~~ THEN 
	DO ~
		SetGlobal("LCA_Banter_CorwinMazzy", "GLOBAL", 5)
		SetGlobal("LCA_TM_ArcheryChallenge", "GLOBAL", 1)
	~
	EXTERN MAZZYJ BCorwinMazzy2
END
//}

IF ~~ THEN BEGIN LCA_CorwinWonCompetition
	SAY @555 /* ~Thanks, Mazzy. You're one of the toughest people I've competed against.~ */
	
	IF ~~ THEN REPLY @551 /* ~You both performed well. I'm glad to have such skilled companions at my side.~ */
	EXTERN LCCORWIJ LCA77
	
	IF ~~ THEN REPLY @556 /* ~Schael, you were amazing.~  */
	EXTERN LCCORWIJ LCA77
END

IF ~~ THEN BEGIN BCorwinMazzy2_End
	SAY @538 /* ~Is that so? Yes, I'm interested.~ */
	
	IF ~~ THEN REPLY @557 /* ~Mazzy, you said the competition is held in Trademeet?~ */
	EXTERN MAZZYJ LCA_TMSignup
END


//{ region: Interjects
INTERJECT_COPY_TRANS SAREV25A 52 CORWIN_SAREV25A_52
	== LCCORWIB
	IF ~
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~
	@16 /* ~That would be a mistake. Don't listen to him, love.~ */
	== SAREV25A
	IF ~
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~
	@728 /* ~Love? I see... you'd risk your life to aid my brother in <PRO_HISHER> quest? You remind me in many ways of Tamoko... */
	== LCCORWIB
	IF ~
		!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~
	@729 /* ~That would be a mistake. Don't listen to him, <CHARNAME>.~ */
	== SAREV25A
	@730 /* ~I assure you woman, I have no further designs on the Dukes, the Flaming Fist, or Baldur's Gate.~ */
END

INTERJECT_COPY_TRANS SAREV25A 53 CORWIN_SAREV25A_53
	== LCCORWIB
	IF ~
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~
	@16 /* ~That would be a mistake. Don't listen to him, love.~ */
	== SAREV25A
	IF ~
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~
	@728 /* ~Love? I see... you'd risk your life to aid my brother in <PRO_HISHER> quest? You remind me in many ways of Tamoko... */
	== LCCORWIB
	IF ~
		!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~
	@729 /* ~That would be a mistake. Don't listen to him, <CHARNAME>.~ */
	== SAREV25A
	@730 /* ~I assure you woman, I have no further designs on the Dukes, the Flaming Fist, or Baldur's Gate.~ */
END

INTERJECT_COPY_TRANS PPIRENI1 22 CORWIN_PPIRENI1_22
	== LCCORWIB
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	@711 /* ~The Flaming Fist knows him well. He's a cleric of Cyric. We'd arrested him on numerous occasions for proselytizing on the streets of the city.~ */
	
	== PPIRENI1
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	@712 /* ~Ah, I see. While not nearly as mad as his god, he is insane nonetheless.~ */
	
	== LCCORWIB
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	@713 /* ~He was released not too long ago, if I recall. It's a wonder how he made it to Amn.~ */
	
	== PPIRENI1
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	@714 /* ~Madness lends its wielder a drive and determination that should never be underestimated.~ */
END


INTERJECT_COPY_TRANS GORODR1 19 CORWIN_GORODR1_19 //OK
	== LCCORWIB
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	@709 /* ~I don't like the sound of this, <CHARNAME>. We're being asked to venture into an old prison to restore the seals of, what, exactly? We have no idea what we're up against.~*/
	
	== LCCORWIB
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
		IsValidForPartyDialogue("KELDORN")
	~
	@710 /* ~Normally, I'd agree, but these are priests of Helm. We've no reason not to trust them. If there is evil imprisoned within the tower then we should ensure that it remains so.~ */
END

INTERJECT_COPY_TRANS UDSILVER 17 CORWIN_UDSILVER_17 //OK
	== LCCORWIB
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	@699 /* ~A mother would do anything to protect her child. Humans and dragons aren't any different in that regard.~ */
END

INTERJECT_COPY_TRANS2 SBWENCH 9 CORWIN_SBWENCH_9 //OK
	== LCCORWIB
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	@698 /* ~Oh "Eddie", you broke that sweet girl's heart.~ */
END

INTERJECT_COPY_TRANS IMOEN2 22 CORWIN_IMOEN2_22 //OK
	== LCCORWIB
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	@697 /* ~She's your sister, for Tymora's sake! You're not going to leave her to escape on her own, right?~ */
	DO ~
		IncrementGlobal("LCA_CorwinOpinionOfPlayer", "GLOBAL", -1)
	~
END

INTERJECT_COPY_TRANS PPSAEM 14 CORWIN_PPSAEM_14
	== LCCORWIB
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	@675 /* ~Finally! Any longer and I might have hurled.~*/
END

INTERJECT_COPY_TRANS PPSAEM 53 CORWIN_PPSAEM_53
	== LCCORWIB
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	@675 /* ~Finally! Any longer and I might have hurled.~*/
END

INTERJECT_COPY_TRANS2 ROGER 13 CORWIN_ROGER_13
	== LCCORWIB
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	@674 /* ~Trolls? This just gets better and better, doesn't it? We should ready our fire arrows and spells prior to battle.~ */
END

INTERJECT_COPY_TRANS2 DRUSH 9 CORWIN_DRUSH_9
	== LCCORWIB
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	@673 /* ~Ugh, that stinks! Just keep it away from me!~*/
END

INTERJECT_COPY_TRANS DELTOW01 9 CORWIN_DELTOW01_9
	== LCCORWIB
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	@672 /* ~Try anything, and you'll end up in the infirmary. The same goes for all of you!~ */
END


INTERJECT_COPY_TRANS GORAPP1 17 CORWIN_GORAPP1_17
	== LCCORWIB
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
		!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~
	@668 /* ~I'm not exactly eager to go up against the prince of demons. Whatever you decide, I'll have your back.~ */
	
	== LCCORWIB
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~
	@669 /* ~I'm not exactly eager to go up against the prince of demons. Whatever you decide, love, I'll have your back.~ */
END

INTERJECT_COPY_TRANS TOLGER 18 CORWIN_TOLGER_18
	== LCCORWIB
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	@646 /* ~I really don't like the sound of this.~ */
END

INTERJECT_COPY_TRANS ARAN 4 CORWIN_ARAN_4
	== LCCORWIB
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	@645 /* ~These guilds are all the same, in every city. I feel dirty just by speaking to them, let alone working for them. Still, they are a necessary means to an end if we're to rescue Imoen.~*/
END

INTERJECT_COPY_TRANS KORGANJ 15 CORWIN_KORGANJ_15 //OK
	== LCCORWIB
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	@666 /* ~What do you need with the book anyway? Can you even read?~ */
	== KORGANJ
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	@667 /* ~Har! Har! Har! Yer lucky I fancy you, longlimbs, else I be burying me axe, and maybe something more, in yer cute little backside, hah hah.~ */
END

INTERJECT_COPY_TRANS KORGANJ 22 CORWIN_KORGANJ_22 //OK
	== LCCORWIB
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	@670 /* ~(She rolls her eyes) You're disgusting, Korgan.~ */
END

INTERJECT_COPY_TRANS AERIEJ 136 Corwin_AERIEJ_136 // OK
	== LCCORWIB
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	@641 /* ~Aerie - whether we take the boat or not - you are strong enough for this.~ */
	
	== LCCORWIB
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
		!Global("LCA_CorwinWentToAvernus", "GLOBAL", 1)
	~
	@644 /* ~Besides, <CHARNAME> ventured to one of the nine hells and came back alive. I'm sure that with <PRO_HISHER> help we'll be able to handle the Underdark.~ */
	
	== LCCORWIB
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
		!Global("LCA_CorwinWentToAvernus", "GLOBAL", 1)
	~
	@642 /* ~Besides, <CHARNAME> and I ventured to one of the nine hells and came back alive. I'm sure that together we can handle the Underdark.~*/
	
	== LCCORWIB
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
		!Global("LCA_CorwinWentToAvernus", "GLOBAL", 1)
	~
	@643 /* ~I-if you say so, Schael... I'll do my best...~ */
END

INTERJECT_COPY_TRANS AERIEJ 114 Corwin_AERIEJ_114 // OK
	== LCCORWIB
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	@607 /* ~I'm not sure I trust her either, but... she did prove her worth in supporting the coalition against Caelar's crusade. We should give her a chance.~ */
END

INTERJECT_COPY_TRANS VICG1 2 CORWIN_VICG1_2
	== LCCORWIB
	IF ~ 
		IsValidForPartyDialogue("LCCORWIN")
	~
	@640 /* ~<CHARNAME>! That's Viconia, she served in our coalition - they are going to kill her!~ */
END

INTERJECT_COPY_TRANS EMBARL 6 CORWIN_EMBARL_6
	== LCCORWIB
	IF ~ 
		IsValidForPartyDialogue("LCCORWIN")
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~
	@637 /* ~Strong, and compassionate. Just two of the many traits I love about you.~ */
	DO ~
		IncrementGlobal("LCA_CorwinOpinionOfPlayer", "GLOBAL", 1)
	~
	
	== LCCORWIB
	IF ~ 
		IsValidForPartyDialogue("LCCORWIN")
		!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~
	@638 /*  ~Strong, and compassionate. Just two of the many traits I admire about you.~ */
	DO ~
		IncrementGlobal("LCA_CorwinOpinionOfPlayer", "GLOBAL", 1)
	~
END

INTERJECT_COPY_TRANS RUFFIAN 0 CORWIN_RUFFIAN_0
	== LCCORWIB
	IF ~ 
		IsValidForPartyDialogue("LCCORWIN")
	~
	@631 /* ~You'll back off if you know what's good for you.~ */
	
	== RUFFIAN
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	@632 /* ~I don't take orders from the likes of you, wench. Go, be a good girl and fetch me another drink.~ */
	
	== LCCORWIB
	IF ~ 
		IsValidForPartyDialogue("LCCORWIN")
	~
	@633 /*  ~I think you've had enough already. Come on, <CHARNAME>. Let's not waste our time with this one.~ */
END

INTERJECT_COPY_TRANS DELON 15 CORWIN_DELON_15
	== LCCORWIB
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
		!Global("LCA_HelpDelon", "GLOBAL", 1)
	~
	@639 /* ~I'm glad you agreed to help. There's a lot of good we can do out here, even if it's not direcly tied to the hunt for the wizard.~ */
	DO ~
		SetGlobal("LCA_HelpDelon", "GLOBAL", 1)
		IncrementGlobal("LCA_CorwinOpinionOfPlayer", "GLOBAL", 1)
	~
END

INTERJECT_COPY_TRANS DELON 16 CORWIN_DELON_16
	== LCCORWIB
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
		!Global("LCA_HelpDelon", "GLOBAL", 1)
	~
	@639 /* ~I'm glad you agreed to help. There's a lot of good we can do out here, even though it's not tied to our hunt for the wizard.~ */
	DO ~
		SetGlobal("LCA_HelpDelon", "GLOBAL", 1)
		IncrementGlobal("LCA_CorwinOpinionOfPlayer", "GLOBAL", 1)
	~
END

INTERJECT DELON 5 CORWIN_DELON_5
	== LCCORWIB
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	@628 /* ~Would it kill you to show a little kindness to this child?~ */
	DO ~
		IncrementGlobal("LCA_CorwinOpinionOfPlayer", "GLOBAL", -1)
	~
	
	== LCCORWIB
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
		PartyGoldGT(10)
	~
	@629 /* ~Come here, boy. Take this money. Get yourself something to eat.~ */
	
	== DELON
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
		PartyGoldGT(10)
	~
	@630 /* ~T-thank you, ma'am. You're very n-nice.~ */
END

INTERJECT_COPY_TRANS MARIA 5 CORWIN_MARIA_5
	== LCCORWIB
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	@627 /* ~We really shouldn't be here. They need some privacy to sort this out on their own.~ */
END

INTERJECT_COPY_TRANS GORDEMO 1 CORWIN_GORDEMO_1
	== LCCORWIB
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	@626 /* ~Did - did you feel that?~ */
END

INTERJECT_COPY_TRANS2 YUSUF 2 CORWIN_YUSUF_2
	== LCCORWIB
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	@625 /* ~Anomen - his daughter was innocent! Have you lost your mind!?~ */
	DO ~
		SetGlobal("LCA_CorwinHatesAnomen", "GLOBAL", 1)
	~
END

INTERJECT_COPY_TRANS2 MAZZY 13 CORWIN_MAZZY_13 //OK
	== LCCORWIB
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	@624 /* ~She seems to know what we're up against here. I think she'll prove a valuable ally.~*/
END

INTERJECT_COPY_TRANS UHMAY01 138 CORWIN_UHMAY01_138
	== LCCORWIB
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
		PartyGoldGT(1000)
	~
	@621 /* ~They need our help more than we need their money, love.~*/
	DO ~
		IncrementGlobal("LCA_CorwinOpinionOfPlayer", "GLOBAL", -1)
	~
	
	== LCCORWIB
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
		!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
		PartyGoldGT(1000)
	~
	@620 /*  ~They need our help more than we need their money, <CHARNAME>.~*/
	DO ~
		IncrementGlobal("LCA_CorwinOpinionOfPlayer", "GLOBAL", -1)
	~
	
	== LCCORWIB
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
		!PartyGoldGT(1000)
	~
	@623 /* ~They need our help, love.~ */
	DO ~
		IncrementGlobal("LCA_CorwinOpinionOfPlayer", "GLOBAL", -1)
	~
	
	== LCCORWIB
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
		!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
		!PartyGoldGT(1000)
	~
	@622 /*  ~They need our help, <CHARNAME>.~ */
	DO ~
		IncrementGlobal("LCA_CorwinOpinionOfPlayer", "GLOBAL", -1)
	~
	
END

INTERJECT_COPY_TRANS C6DRIZZ1 37 CORWIN_C6DRIZZ1_37
	== LCCORWIB
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	@616 /* ~Excellent! Your help is very much appreciated.~ */
END

INTERJECT_COPY_TRANS SUDEMIN 22 CORWIN_SUDEMIN_22
	== LCCORWIB
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	@618 /* ~You mean to tell me you set them loose? Did you stop for one second to think of what they might do in revenge? Your shortsightedness led to the murder of the daughter of one of the Grand Dukes, with <CHARNAME> framed for the crime! <PRO_HESHE> was nearly executed!~*/
	== SUDEMIN
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	@619 /* ~No one imagined that they would cause so much havoc. We are truly sorry.~ */
END

INTERJECT_COPY_TRANS SUDEMIN 35 CORWIN_SUDEMIN_35
	== LCCORWIB
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	@617 /* ~<CHARNAME>, in spite of their foolishness, we share a common enemy. We should help them.~ */
END

//Jan
INTERJECT_COPY_TRANS JANJ 197 CORWIN_JANJ_197 //OK
	== LCCORWIB
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	@602 /* ~Some would say you never left it.~*/
END

INTERJECT_COPY_TRANS JANJ 195 CORWIN_JANJ_195 //OK
	== LCCORWIB
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	@600 /* ~(A smile crosses her lips, as she tries and fails to stifle a hearty laugh.)~ */
	== JANJ
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
		!Global("LCA_CorwinPromoted", "GLOBAL", 1)
	~
	@601 /* ~Oh, is that the sweet sound of laughter I hear? From our ever-stoic Captain Corwin? Look, she has a lovely smile too! I'm afraid no one would believe me if I told them it happened.~ */
	== JANJ
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
		Global("LCA_CorwinPromoted", "GLOBAL", 1)
	~
	@731 /* ~Oh, is that the sweet sound of laughter I hear? From our ever-stoic Major Corwin? Look, she has a lovely smile too! I'm afraid no one would believe me if I told them it happened.~ */
END

INTERJECT_COPY_TRANS JANJ 189 CORWIN_JANJ_189 //OK
	== LCCORWIB
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	@599 /* ~What... the... hells?~*/
END

INTERJECT_COPY_TRANS JANJ 175 CORWIN_JANJ_175 //OK
	== LCCORWIB
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	@598 /*  ~Agreed - we need to pick up the pace. Imoen needs us.~ */
END

INTERJECT_COPY_TRANS JANJ 142 CORWIN_JANJ_142 //OK
	== LCCORWIB
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	@597 /* ~Jan, this - really - isn't the time!~ */
END 

INTERJECT_COPY_TRANS JANJ 136 CORWIN_JANJ_136 //OK
	== LCCORWIB
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	@596 /* ~It seems Athkatla and Baldur's Gate are not so different, at least in that regard.~ */
END

INTERJECT JANJ 126 CORWIN_JANJ_126 //OK
	== LCCORWIB
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	@588 /* ~Jan?~ */
	== JANJ
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
		!Global("LCA_CorwinPromoted", "GLOBAL",1)
	~
	@595 /* ~Yes, Captain?~ */
	== JANJ
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
		Global("LCA_CorwinPromoted", "GLOBAL",1)
	~
	@732 /* ~Yes, Major?~ */
	== LCCORWIB
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	@589 /* ~Shut up. ~*/
	== JANJ
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	@593 /* ~Now, there's no need to be rude. It was just a simple story of furry feet and the foibles of being a teenaged gnome. Ah, youth! I still remember her laughter as -~  */
	== LCCORWIB
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	@591 /* ~Your mouth. Shut it, or I'll tie your tongue to an arrow and fire it into the ass of the nearest horse. That would make for a fun story, wouldn't it?~*/
	== JANJ
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	@594 /* ~Erm... perhaps. But I'm not keen on it. I'll be quiet.~ */
END

INTERJECT_COPY_TRANS JANJ 113 CORWIN_JANJ_113 //OK
	== LCCORWIB
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	@586 /* ~We should heed his warning. Let's prepare before we head in.~*/
END

INTERJECT_COPY_TRANS JANJ 89 CORWIN_JANJ_89 //OK
	== LCCORWIB
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	@585 /* ~Is there a point to this story?~*/
END

INTERJECT_COPY_TRANS2 JANJ 20 CORWIN_JANJ_20 //OK
	== LCCORWIB
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	@584 /* ~Harsh truths are never easy to accept, Jan. It's good that you did.~ */
END

INTERJECT_COPY_TRANS HAERDAJ 114 CORWIN_HAERDAJ_114 //OK
	== LCCORWIB 
	IF ~ 
		IsValidForPartyDialogue("LCCORWIN")
	~
	@355 /* ~That goes for all of us. We need to act the part to maintain our cover.~  */
END

INTERJECT_COPY_TRANS HAERDAJ 90 CORWIN_HAERDAJ_90 //OK
	== LCCORWIB 
	IF ~ 
		IsValidForPartyDialogue("LCCORWIN")
	~
	@604 /* ~She has her moments.~ */
END

INTERJECT_COPY_TRANS VALYGAR 18 CORWIN_VALYGAR_18 //OK
	== LCCORWIB 
	IF ~ 
		IsValidForPartyDialogue("LCCORWIN")
	~
	@636 /* ~Let's hear what he has to say. I'm inclined to believe the word of another ranger over that of a wizard.~ */
END

INTERJECT_COPY_TRANS KELDORJ 23 CORWIN_KELDORJ_23 //OK
	== LCCORWIB 
	IF ~ 
		IsValidForPartyDialogue("LCCORWIN")
	~
	@322 /* ~Keldorn, your children need their mother. There must be another way.~ [LCCORB26] */
	== KELDORJ
	IF ~ 
		IsValidForPartyDialogue("LCCORWIN")
	~
	@323 /* ~How, then, should I proceed? My family's honor is at stake!~ */
END

INTERJECT_COPY_TRANS2 KELDORJ 26 CORWIN_KELDORJ_26 //OK
	== LCCORWIB 
	IF ~ 
		IsValidForPartyDialogue("LCCORWIN")
	~
	@605 /*~<CHARNAME> - we need to keep a close eye on Keldorn. I'm afraid that this meeting with Sir William may quickly spiral out of control.~*/
END

INTERJECT_COPY_TRANS KELDORJ 103 CORWIN_KELDORJ_103 //OK
	== LCCORWIB 
	IF ~ 
		IsValidForPartyDialogue("LCCORWIN")
	~
	@606 /* ~Ajantis... yes. I remember meeting him during a patrol southeast of Wyrm's Crossing. We were investigating reports of bandit activity in the area. What a shame.~ */
END

INTERJECT_COPY_TRANS KELDORJ 145 Corwin_KELDORJ_145 // OK
	== LCCORWIB
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	@253 /* ~Don't be so sure. As distasteful as it is to say, we've worked well with Edwin in the past.~ */
	== KELDORJ
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	@254 /*  ~You've worked with this scoundrel? I am surprised, Captain.~ */
	== LCCORWIB
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~  
	@255 /* ~Yes. I'm not proud of it, but he has proven his worth to <CHARNAME> and myself on many occasions.~ */
END

INTERJECT_COPY_TRANS KELDORJ 181 Corwin_KELDORJ_181 // OK
	== LCCORWIB
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	@607 /* ~I'm not sure I trust her either, but... she did prove her worth in supporting the coalition against Caelar's crusade. We should give her a chance.~ */
END

INTERJECT_COPY_TRANS KELDORJ 182 Corwin_KELDORJ_182 // OK
	== LCCORWIB
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
		!Global("LCA_CorwinAngryAtKeldorn", "GLOBAL", 1)
	~
	@608 /*  ~(She gives Keldorn a sharp stare.)~ */
	DO ~
		SetGlobal("LCA_CorwinAngryAtKeldorn", "GLOBAL", 1)
		SetGlobalTimer("LCA_CorwinScoldKeldornTimer", "GLOBAL", ONE_ROUND)
	~
END

INTERJECT_COPY_TRANS KELDORJ 236 Corwin_KELDORJ_236 // OK
	== LCCORWIB
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
		!Global("LCA_CorwinAngryAtKeldorn", "GLOBAL", 1)
	~
	@608 /*  ~(She gives Keldorn a sharp stare.)~ */
	DO ~
		SetGlobal("LCA_CorwinAngryAtKeldorn", "GLOBAL", 1)
		SetGlobalTimer("LCA_CorwinScoldKeldornTimer", "GLOBAL", ONE_ROUND)
	~
END

INTERJECT_COPY_TRANS LEHTIN 15 CORWIN_LEHTIN_15
	== LCCORWIB
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	@321 /* ~Your time has come. You'll pay for what you did to those children!~ */
END

INTERJECT_COPY_TRANS BODHI 1 CORWIN_BODHI_1 // OK
	== LCCORWIB
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	@315 /* ~<CHARNAME> - something's wrong here. I don't trust her.~ */
END

INTERJECT_COPY_TRANS BODHI 18 CORWIN_BODHI_18 // OK
	== LCCORWIB
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	@316 /*  ~I hope you made the right decision. I can't shake the feeling that you didn't.~ */
	DO ~
		IncrementGlobal("LCA_CorwinOpinionOfPlayer", "GLOBAL", -1)
	~
END

INTERJECT_COPY_TRANS2 BODHI 21 CORWIN_BODHI_21 // OK
	== LCCORWIB
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	@317 /* ~And we'll be ready for you. You can count on that.~ */
END

INTERJECT_COPY_TRANS2 BODHI 34 CORWIN_BODHI_34 // OK
	== LCCORWIB
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	@317 /* ~And we'll be ready for you. You can count on that.~ */
END

INTERJECT_COPY_TRANS DORNJ 769 Corwin_DORNJ_769 // OK
	== LCCORWIB
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	@314 /* ~Dorn - you have a chance to be free. Take it!~ */
END

INTERJECT_COPY_TRANS2 FIRKRA02 21 Corwin_FIRKRA02_21 // OK
	== LCCORWIB
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	@279 /*  ~Let's get out of here, while we still can. We would do well to avoid the wrath of this beast.~ */
END 

INTERJECT_COPY_TRANS FIRKRA02 23 Corwin_FIRKRA02_23 // OK
	== LCCORWIB
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	@280 /*  ~<CHARNAME>! Let's just rescue the child and get out of here! Leave the dragon be.~ */
END 

INTERJECT_COPY_TRANS FIRKRA02 29 Corwin_FIRKRA02_29 // OK
	== LCCORWIB
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	@281 /*  ~<CHARNAME> - I don't know what you're up to. I won't try and stop you, but I warn you that I won't take part in this betrayal. */
	DO ~
		IncrementGlobal("LCA_CorwinOpinionOfPlayer", "GLOBAL", -1)
	~
END 

INTERJECT_COPY_TRANS KORGANJ 107 Corwin_KORGANJ_107 // OK
	== LCCORWIB
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	@257 /* ~(She tries, unsucessfully, to stifle a laugh.)~ */
END

INTERJECT_COPY_TRANS VALYGARJ 58 Corwin_VALYGARJ_58 // OK
	== LCCORWIB
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	@253 /* ~Don't be so sure. As distasteful as it is to say, we've worked well with Edwin in the past.~ */
	== VALYGARJ
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	@254 /*  ~You've worked with this scoundrel? I am surprised, Captain.~ */
	== LCCORWIB
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~  
	@255 /* ~Yes. I'm not proud of it, but he has proven his worth to <CHARNAME> and myself on many occasions.~ */
END

INTERJECT_COPY_TRANS VALYGARJ 50 Corwin_VALYGAR_50 // OK
	== VICONIJ
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
		!Global("LCA_CorwinPromoted","GLOBAL",1)
	~
	@239 /* ~What about our dear Captain Corwin, then? You seem the type of man that would enjoy having a strong, authoritative female have her way with him.~   */
	== VICONIJ
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
		Global("LCA_CorwinPromoted","GLOBAL",1)
	~
	@733 /* ~What about our dear Captain Corwin, then? You seem the type of man that would enjoy having a strong, authoritative female have her way with him.~   */
	== VALYGARJ
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~
	@240 /* ~Your 'insights' aside, she's romantically involved.~   */
	== VALYGARJ
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
		!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~
	@241 /* ~I would not have her, or her daughter, share in my family's curse.~ */
	== VICONIJ
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	@242 /* ~A more assertive male would not let such things stand in his way.~ */
	== LCCORWIJ
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
		!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~
	@243 /* ~Valygar, that reasoning will prevent you from forming any kind of lasting relationship. You need to let go of your past.~ */
	== VALYGARJ
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
		!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
		!Global("LCA_CorwinPromoted", "GLOBAL", 1)
	~
	@244 /* ~I.. I appreciate the advice, Captain. ~*/
	== VALYGARJ
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
		!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
		Global("LCA_CorwinPromoted", "GLOBAL", 1)
	~
	@734 /* ~I.. I appreciate the advice, Major. ~*/
END

INTERJECT VALYGARJ 68 Corwin_VALYGARJ_68 // OK
	== LCCORWIB
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	@238 /* ~Don't let her get to you, Valygar. Calm down.~ */
	== VALYGARJ
	IF ~
		!Global("LCA_CorwinPromoted", "GLOBAL", 1)
	~
	@480 /*~But she - damnit! No, you're right, Captain.~ */
	== VALYGARJ
	IF ~
		Global("LCA_CorwinPromoted", "GLOBAL", 1)
	~
	@735 /*~But she - damnit! No, you're right, Major.~ */
	== VICONIJ
	@481 /* ~Just as I thought. Pathetic.~ */
	== LCCORWIB
	@482 /* ~That's enough from the both of you! Infighting isn't going to help any of us to achieve our goals. Let's move out.~ */
END

INTERJECT_COPY_TRANS VALYGARJ 117 Corwin_VALYGARJ_117 // OK
	== LCCORWIB
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	@237 /* ~Tell me you aren't seriously considering giving him to this wizard.~ */
END

INTERJECT_COPY_TRANS VALYGARJ 119 Corwin_VALYGARJ_119 // OK
	== LCCORWIB
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	@256 /* ~And that's why you're alone. Yes, you can be hurt, but if you aren't willing to place at least some trust in others, you'll always be alone.~ */
END

INTERJECT_COPY_TRANS HEXXAT 65 Corwin_HEXXAT_65 // OK
	== LCCORWIB
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
		!Global("LCA_CorwinHexxatCloak", "GLOBAL", 1)
	~
	@213 /* ~You aren't a person at all. You're a monster, a beast. <CHARNAME>, let's not waste anymore time with this creature.~ */
	DO ~
		SetGlobal("LCA_CorwinHexxatCloak", "GLOBAL", 1)
	~
END

INTERJECT_COPY_TRANS HEXXAT 40 Corwin_HEXXAT_GiveCloak // OK
	== LCCORWIB
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	@214 /*  ~Don't do it. Leave the monster here to rot.~ */

END

INTERJECT_COPY_TRANS HEXXAT 45 Corwin_HEXXAT_GiveCloak // OK
	== LCCORWIB
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	@214 /*  ~Don't do it. Leave the monster here to rot.~ */

END

INTERJECT_COPY_TRANS HEXXAT 46 Corwin_HEXXAT_GiveCloak // OK
	== LCCORWIB
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	@214 /*  ~Don't do it. Leave the monster here to rot.~ */

END

INTERJECT_COPY_TRANS HEXXAT 60 Corwin_HEXXAT_GiveCloak // OK
	== LCCORWIB
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	@214 /*  ~Don't do it. Leave the monster here to rot.~ */

END

INTERJECT_COPY_TRANS HEXXAT 81 Corwin_HEXXAT_GiveCloak // OK
	== LCCORWIB
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	@214 /*  ~Don't do it. Leave the monster here to rot.~ */

END

INTERJECT_COPY_TRANS HEXXAT 86 Corwin_HEXXAT_GiveCloak // OK
	== LCCORWIB
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	@214 /*  ~Don't do it. Leave the monster here to rot.~ */

END

INTERJECT_COPY_TRANS HEXXAT 87 Corwin_HEXXAT_GiveCloak // OK
	== LCCORWIB
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	@214 /*  ~Don't do it. Leave the monster here to rot.~ */

END

INTERJECT_COPY_TRANS HEXXAT 89 Corwin_HEXXAT_GiveCloak // OK
	== LCCORWIB
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	@214 /*  ~Don't do it. Leave the monster here to rot.~ */

END

INTERJECT_COPY_TRANS HEXXAT 92 Corwin_HEXXAT_GiveCloak // OK
	== LCCORWIB
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	@214 /*  ~Don't do it. Leave the monster here to rot.~ */

END

INTERJECT_COPY_TRANS HEXXAT 102 Corwin_HEXXAT_GiveCloak // OK
	== LCCORWIB
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	@214 /*  ~Don't do it. Leave the monster here to rot.~ */

END

INTERJECT_COPY_TRANS HEXXAT 105 Corwin_HEXXAT_GiveCloak // OK
	== LCCORWIB
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	@214 /*  ~Don't do it. Leave the monster here to rot.~ */

END

INTERJECT_COPY_TRANS HEXXAT 109 Corwin_HEXXAT_GiveCloak // OK
	== LCCORWIB
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	@214 /*  ~Don't do it. Leave the monster here to rot.~ */

END

INTERJECT_COPY_TRANS HEXXAT 110 Corwin_HEXXAT_GiveCloak // OK
	== LCCORWIB
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	@214 /*  ~Don't do it. Leave the monster here to rot.~ */

END

INTERJECT_COPY_TRANS BDORN 51 Corwin_BDORN_51 // OK
	== LCCORWIB
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	@191 /* ~ ~You could have all of that done that without giving yourself to a demon, blackguard.~ */
	== BDORN
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~
	@192 /* ~Mine was a choice between life and death, woman. I chose life. You would have done the same.~ */
END

INTERJECT_COPY_TRANS BNALIA 3 Corwin_BNALIA_3 // OK
	== LCCORWIB 
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~ THEN @185 /* ~Don't be so sure. In my experience, wealth, or the lack thereof, has no impact on one's capability for compassion or cruelty.~ */
END 

INTERJECT_COPY_TRANS BNALIA 4 Corwin_BNALIA_4 // OK
	== LCCORWIB 
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~ THEN @186 /* ~On that we can agree.~ */
END 

INTERJECT_COPY_TRANS2 BNALIA 11 Corwin_BNALIA_11 // OK
	== LCCORWIB 
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~ THEN @187 /* ~I disagree. Some time at the tavern can do wonders for troop morale and camaraderie. They don't exist solely to exploit the poor.~ */
	== BNALIA
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
		!Global("LCA_CorwinPromoted", "GLOBAL", 1)
	~ THEN 
	@188 /* ~Perhaps, Captain, but you can't deny the negative effects these establishments have on the less fortunate among us.~ */
	== BNALIA
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
		Global("LCA_CorwinPromoted", "GLOBAL", 1)
	~ THEN 
	@736 /* ~Perhaps, Captain, but you can't deny the negative effects these establishments have on the less fortunate among us.~ */
END 

INTERJECT_COPY_TRANS BNALIA 53 Corwin_BNALIA_53 // OK
	== LCCORWIB 
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~ THEN @189 /* ~Nalia, one needn't be poor to find meaning in their life. Duke Eltan, for example, has dedicated his life to the safety of Baldur's Gate and its citizens.~ */
	== BNALIA
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~ THEN @190 /* ~Certainly, and I did not mean to imply that the lives of the higher born have no meaning. It's just that it is easier, in a sense, for a poorer person to find meaning than a wealthy one.~ */
END 

INTERJECT_COPY_TRANS BAERIE 186 Corwin_BAERIE_186 // OK
	== LCCORWIB 
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~ THEN @184 /* ~Aerie, a mother would never stop looking for their child. Don't give up on the hope of seeing her again.~ */
END 

INTERJECT_COPY_TRANS BAERIE 430 Corwin_BAERIE_430 // OK
	== LCCORWIB 
	IF ~
		IsValidForPartyDialogue("LCCORWIN")
	~ THEN @177 /* ~Aerie! That's enough.~ */
END 
//}
//{ region Dialog B-5
CHAIN
	IF ~
		Global("LCA_CorwinSick_Aerie", "GLOBAL", 1)
	~
	THEN AERIEJ BCorwinSickAerie
		@677 /* ~Schael, you haven't been able to k-keep any fluids down. Sit down for a m-moment, let me have a look at you.~ */
		DO ~
			SetGlobal("LCA_CorwinPartySick", "GLOBAL", 1)
			SetGlobal("LCA_CorwinSick_Aerie", "GLOBAL", 0)
		~
		== LCCORWIB
		@678 /* ~N-no *cough* we need to... we need to keep *cough* moving...~*/
		== AERIEJ
		@679 /* ~It will only take a moment. Let me check your temperature... oh... oh my! You're ice cold!~ */
		== AERIEJ
		@680 /* ~Here, this spell will help with the nausea, at least... is that b-better?~ */
		== LCCORWIB
		@681 /* ~Yes, thanks *cough* Aerie..~ */
		== AERIEJ
		@782  /*~(She walks over and pulls you aside.)~*/
		=
		@682 /*  ~We need to find Bodhi and k-kill her before Schael gets any worse. I don't think she has much time left.~  */
EXIT
//}

//{ region Dialog B-6
CHAIN
	IF ~
		Global("LCA_CorwinSick_Jaheira", "GLOBAL", 1)
	~
	THEN JAHEIRAJ BCorwinSickJaheira
		@683 /* ~Captain, you haven't been able to keep any fluids down. Sit down for a moment, let me have a look at you.~ */
		DO ~
			SetGlobal("LCA_CorwinSick_Jaheira", "GLOBAL", 0)
			SetGlobal("LCA_CorwinPartySick", "GLOBAL", 1)
		~
		== LCCORWIB
		@678 /* ~N-no *cough* we need to... we need to keep *cough* moving...~*/
		== JAHEIRAJ
		@684 /* ~This salve will help you to control your nausea. I need to apply it to your neck and chest.~ */
		== LCCORWIB
		@685 /* ~Fine.. just help me get this *cough* armor off... thanks.~ */
		== JAHEIRAJ
		@687 /* ~Good, I'll unbutton your vest. This will only take a moment.~ */
		=
		@686 /*  ~(To protect Schael's modesty, Jaheira stands between her and the rest of the party, obstructing any view of her bare breasts.)~  */
		=
		@688 /* ~(She begins to rub the salve on Schael's chest, then abruptly stops.)~ */
		=
		@689 /* ~Oh... child! You're ice cold! Let's get your vest and armor back on. Good.~ */
		=
		@690 /* ~I'll make a fire for you, stay here for a moment while I talk to <CHARNAME>.~ */
		=
		@782 /*~(She walks over and pulls you aside.)~*/
		=
		@691 /* ~We need to find Bodhi and kill her before Schael gets any worse. She doesn't have much time left. I don't want you to lose her, like I lost Khalid.~ */
EXIT
//}

//{ region Dialog B-7
CHAIN
	IF ~
		Global("LCA_CorwinSick_Korgan", "GLOBAL", 1)
	~
	THEN KORGANJ BCorwinSickKorgan
		@692 /* ~Aye, <CHARNAME>. Ye girlie ain't doing well at all. She's as tough as they come, though I'd wager me clan's name that Schael won't make it through the night.~  */
		DO ~
			SetGlobal("LCA_CorwinSick_Korgan", "GLOBAL", 0)
			SetGlobal("LCA_CorwinPartySick", "GLOBAL", 1)
		~
		== KORGANJ
		IF ~
			Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
		~
		@693 /* ~It be not my place to tell ye what to do, but if ye cares about yer woman, you'd do well to find that neck-biting bitch and ram a stake through her heart, ye hear?~ */
		
EXIT
//}

//{ region Dialog B-8
CHAIN
	IF ~
		Global("LCA_CorwinSick_Imoen", "GLOBAL", 1)
	~
	THEN IMOEN2J BCorwinSickImoen2
		@694 /* ~Schael, you haven't been able to keep any fluids down. Sit down for a moment, let me have a look at you.~ */
		DO ~
			SetGlobal("LCA_CorwinSick_Imoen", "GLOBAL", 0)
			SetGlobal("LCA_CorwinPartySick", "GLOBAL", 1)
		~
		== LCCORWIB
		@695 /* ~N-no *cough* we need to... we need to keep *cough* moving...~*/
		== IMOEN2J
		@696 /* ~And we will, but I'm more concerned about you right now. Let me check your temperature, it will only take a moment. Oh... oh my! You're ice cold, you poor thing!~ */
		= 
		@690 /* ~I'll make a fire for you, stay here for a moment while I talk to <CHARNAME>.~*/
		=
		@782 /*  ~(She walks over and pulls you aside.)~*/
		=
		@797 /* ~We need to find Bodhi and kill her before Schael gets any worse. I don't want you to lose her like I lost Khalid.~ */
EXIT
//}

//Mazzy Banters

//{ region Dialog B-9
CHAIN
	IF ~
		Global("LCA_Banter_CorwinMazzy", "GLOBAL", 2)
		!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN LCCORWIB BCorwinMazzy1A
		@526 /* ~Mazzy? What do you need?~ */
		DO ~
			SetGlobal("LCA_Banter_CorwinMazzy", "GLOBAL", 3)
		~
		== MAZZYJ
		IF ~
			!Global("LCA_CorwinPromoted", "GLOBAL", 1)
		~
		@517 /*  ~Captain, I'd not have thought it so, but you're quite skilled as an adventurer.~ */
		== MAZZYJ
		IF ~
			Global("LCA_CorwinPromoted", "GLOBAL", 1)
		~
		@737 /*  ~Major, I'd not have thought it so, but you're quite skilled as an adventurer.~ */
		== LCCORWIB
		@518 /* ~I wouldn't call myself an adventurer. I'm here on orders.~ */
		=
		@520 /* ~I'll head back to Baldur's Gate once Irenicus is killed or captured.~ */
		== MAZZYJ 
		@521 /* ~I see. Have you considered adventuring as a profession? Your leadership and skill with the bow would benefit almost any party.~ */
		=
		@522 /* ~Think of the good you can do.~ */
		== LCCORWIB
		@523 /* ~It's not that simple. I've responsibilities to tend to at home. My daughter and father being the most important.~  */
		== MAZZYJ
		@524 /* ~Oh, forgive me - I didn't realize you had such obligations.~*/
		== LCCORWIB
		@525 /* ~No need to apologize, Mazzy. Let's keep moving.~ */
EXIT
//}

//{ region Dialog B-10
CHAIN
	IF ~
		Global("LCA_Banter_CorwinMazzy", "GLOBAL", 2)
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN LCCORWIB BCorwinMazzy1B
		@526 /* ~Mazzy? What do you need?~ */
		DO ~
			SetGlobal("LCA_Banter_CorwinMazzy", "GLOBAL", 3)
		~
		== MAZZYJ
		IF ~
			!Global("LCA_CorwinPromoted", "GLOBAL", 1)
		~
		@517 /*  ~Captain, I'd not have thought it so, but you're quite skilled as an adventurer.~ */
		== MAZZYJ
		IF ~
			Global("LCA_CorwinPromoted", "GLOBAL", 1)
		~
		@737 /*  ~Major, I'd not have thought it so, but you're quite skilled as an adventurer.~ */
		== LCCORWIB
		@519 /* ~I wouldn't call myself an adventurer. I'm here on orders, and because <CHARNAME> needs me.~ */
		== LCCORWIB
		IF ~
			GlobalLT("LCA_ReturnToBG", "GLOBAL", 1)
		~
		@520 /* ~I'll head back to Baldur's Gate once Irenicus is killed or captured.~ */
		== MAZZYJ 
		@521 /* ~I see. Have you considered adventuring as a profession? Your leadership and skill with the bow would benefit almost any party.~ */
		=
		@522 /* ~Think of the good you can do.~ */
		== LCCORWIB
		@523 /* ~It's not that simple. I've responsibilities to tend to at home. My daughter and father being the most important.~  */
		== MAZZYJ
		@524 /* ~Oh, forgive me - I didn't realize you had such obligations.~*/
		== LCCORWIB
		@525 /* ~No need to apologize, Mazzy. Let's keep moving.~ */
EXIT
//}

CHAIN IF ~~ THEN MAZZYJ BCorwinMazzy2
	@529 /*  ~Isn't it obvious?~*/
	== LCCORWIB
	@530 /* ~I'm sorry?~ */
	== MAZZYJ
	@531 /*  ~That longbow you carry is taller than me! Longbows are far too difficult for someone of my stature to wield properly.~ */
	== LCCORWIB
	@532 /* ~Oh, of course - sorry. I didn't mean to offend.~ */
END MAZZYJ BCorwinMazzy2_BREAK

CHAIN IF ~~ THEN MAZZYJ BCorwinMazzy2_RESUME
	@534 /* ~You know, one of these days I'd like to challenge you to a friendly archery match.~ */
	== LCCORWIB
	@535 /* ~Hah, I'd like that! I must warn you though, it's been years since I've lost. ~  */
	== MAZZYJ
	@536 /* ~That's not surprising given your skill, though I doubt you've faced someone of my caliber.~*/
	=
	@537 /* ~You know, Trademeet holds an annual archery competition around this time of the year. If you're game, you and I should sign up.~ */
END LCCORWIB BCorwinMazzy2_End

CHAIN
	IF ~~ THEN MAZZYJ LCA_TMSignup
		@539 /* ~Yes, that's right. The signup table is in the southeast of the city, if I remember correctly. Next time we are in the area, we can signup.~ [NOSOUND]*/
		DO ~
			AddJournalEntry(@540, INFO)
		~
		== LCCORWIB
		@558 /* ~Sounds good. Let's get going, we have work to do.~ */
EXIT

CHAIN
	IF ~~ THEN MAZZYJ LCA_MazzyWonCompetition2
		@552 /* ~And I am glad to have you at my side, <CHARNAME>.~ */
		DO ~
			GiveGoldForce(2500)
			AddExperienceParty(35000)
			SetGlobal("LCA_TM_ArcheryChallenge", "GLOBAL", 3)
		~
		== LCCORWIB
		@553 /* ~As am I, my friend. Let's go.~ */
EXIT


//Nalia Banters

//{ region Dialog B-11
CHAIN 
	IF ~
		Global("LCA_Banter_CorwinNalia", "GLOBAL", 2)
		GlobalGT("LCA_ReturnToBG", "GLOBAL", 0)
	~
	THEN LCCORWIB BCorwinNalia1_RBG
		@375 /* ~Nalia - you seem agitated. What's bothering you?~ [LCCORB48] */
		DO ~
			SetGlobal("LCA_Banter_CorwinNalia", "GLOBAL", 3)
			ClearActions(Myself)
			ClearActions("Nalia")
		~
		== NALIAJ
		@784 /* ~It seems that everywhere we go, we're confronted with maddening wealth disparities. I used to think that it was unique to Amn, but clearly I was mistaken.~ */
		= 
		@785 /* ~I can't understand why the people don't band together to demand change.~ */
END LCCORWIB BCorwinNalia1_END
//}

//{ region Dialog B-12
CHAIN 
	IF ~
		Global("LCA_Banter_CorwinNalia", "GLOBAL", 2)
		GlobalLT("LCA_ReturnToBG", "GLOBAL", 1)
	~
	THEN LCCORWIB BCorwinNalia1
		@375 /* ~Nalia - you seem agitated. What's bothering you?~ [LCCORB48] */
		DO ~
			SetGlobal("LCA_Banter_CorwinNalia", "GLOBAL", 3)
			ClearActions(Myself)
			ClearActions("Nalia")
		~
		== NALIAJ
		@381 /* ~The wealth disparity throughout Amn is maddening. Gilded cities full of slaves, and people who can't afford even a decent meal.~ */
		== NALIAJ
		IF ~
			!Global("LCA_CorwinPromoted", "GLOBAL", 1)
		~
		@376 /* ~Captain, what is it like in Baldur's Gate? Are things as bad as they are in Athkatla?~*/
		== NALIAJ
		IF ~
			Global("LCA_CorwinPromoted", "GLOBAL", 1)
		~
		@740 /* ~Major, what is it like in Baldur's Gate? Are things as bad as they are in Athkatla?~*/
		== LCCORWIB
		@377 /* ~Not as bad as what I've seen during my time in Amn, but yes, there's a stark difference between the haves and have-nots.~ */
		== NALIAJ
		@378 /*  ~I'm sorry to hear that. I can't understand why the people don't band together to demand change.~*/
END LCCORWIB BCorwinNalia1_END
//}

CHAIN
	IF ~~ THEN LCCORWIB BCorwinNalia1_END
		@379 /* ~Human nature, I suppose. Most people are only concerned with the well-being of their loved ones.~ */
		= 
		@380 /* They don't have the time, energy, or willingness to risk themselves to change the status quo.~*/
		== NALIAJ
		@382 /* ~I see... it seems that there's a lack of leadership among the poor and downtrodden. I'll think on what you said.~ */
EXIT

//{ region Dialog B-13
CHAIN 
	IF ~
		Global("LCA_Banter_CorwinNalia", "GLOBAL", 4)
	~
	THEN LCCORWIB BCorwinNalia2
		@384 /* ~Sure, Nalia. What's on your mind?~ [LCCORB40] */
		DO ~
			SetGlobal("LCA_Banter_CorwinNalia", "GLOBAL", 5)
			ClearActions(Myself)
			ClearActions("Nalia")
		~
		== NALIAJ
		@385 /* ~I was thinking about our earlier discussion. You mentioned how people are afraid to stand against the status quo. I think you're correct.~ */
		=
		@386 /* ~But isn't that because there are those that will fight to protect the status quo?~*/
		=
		@387 /* ~... Like yourself and the Flaming Fist, I'm afraid.~ */
		== LCCORWIB
		@388 /*  ~Our society has it's flaws to be sure, but people need order and safety as much as they do food and shelter. The way of things must be preserved. The alternative is chaos.~  */
		== NALIAJ
		@389 /* ~There has to be a better way.~ */
		== LCCORWIB 
		@390 /*  ~Maybe there is, and I hope you're able to find it and make it a reality.~*/
		=
		@391 /* ~In the meantime, the Flaming Fist and like-minded organizations will continue to fight to preserve the current order. And so will I. ~  */
EXIT
//}

//{ region Dialog B-14
CHAIN 
	IF ~
		Global("LCA_Banter_CorwinNalia", "GLOBAL", 6)
		GlobalGT("LCA_ReturnToBG", "GLOBAL", 0)
	~
	THEN LCCORWIB BCorwinNalia3_RBG
		@560 /* ~Nalia? Something bothering you?~*/
		DO ~
			SetGlobal("LCA_Banter_CorwinNalia", "GLOBAL", 7)
			ClearActions(Myself)
			ClearActions("Nalia")
		~
		== NALIAJ
		@459 /*  ~Not really.. I just have a lot on my mind. I've been hearing rumors that Amnish leaders are planning to criminalize vagrancy. Those that can't afford to pay the fines will be imprisoned~ */
		== LCCORWIB
		@461 /* ~That seems ridiculous. There isn't enough room in the jails for that many people.~ */
		== NALIAJ
		@462 /* ~These people have very little already. How can people be so cruel to imprison those less fortunate for being poor?~ */
		== LCCORWIB
		@786 /* ~You have a good heart, Nalia. Some problems are simply beyond our ability to solve.~ */
		== NALIAJ
		@787 /* ~That's it? It's too hard, so just give up?~ */
		== LCCORWIB
		@788 /* ~No... but you need to focus your energy on problems that you can solve. There was a prayer that my mother taught me... what was it...~ */
		= 
		@789 /*  ~Oh yes... "Grant me the serenity to accept the things that I cannot change, the courage to change the things I can, and the wisdom to know the difference."~ */
		== NALIAJ
		@790 /*~That... that's actually helpful advice. Thank you, Schael.~ */
		== LCCORWIB
		@791
EXIT
//}

//{ region Dialog B-15
CHAIN 
	IF ~
		Global("LCA_Banter_CorwinNalia", "GLOBAL", 6)
		GlobalLT("LCA_ReturnToBG", "GLOBAL", 1)
	~
	THEN LCCORWIB BCorwinNalia3
		@560 /* ~Nalia? Something bothering you?~*/
		DO ~
			SetGlobal("LCA_Banter_CorwinNalia", "GLOBAL", 7)
			ClearActions(Myself)
			ClearActions("Nalia")
		~
		== NALIAJ
		@459 /*  ~Not really.. I just have a lot on my mind. I've been hearing rumors that Amnish leaders are planning to criminalize vagrancy. Those that can't afford to pay the fines will be imprisoned~ */
		== LCCORWIB
		@461 /* ~That seems ridiculous. There isn't enough room in the jails for that many people.~ */
		== NALIAJ
		@462 /* ~These people have very little already. How can people be so cruel to imprison those less fortunate for being poor?~ */
		=
		@463 /* Do they do the same up north? In Beregost? Baldur's Gate?~ */
		== LCCORWIB
		@464 /*  ~No, the poor are generally left alone, unless they start making trouble.~ */
		== NALIAJ
		@465 /* ~Making trouble? How do you mean?~*/
		== LCCORWIB 
		@466 /*  ~Oh, you know. Aggressive begging, disturbing the peace, loitering around businesses for too long. At some point homeowners, shopkeepers and local officials start complaining, then we have to step in.~*/
		== NALIAJ
		@467 /* ~(Sigh) It sounds like things aren't much better for the poor up north.~ */
		== LCCORWIB 
		@468 /* ~It was worse a few months ago at the height of the refugee crisis. The poor had to compete with the refugees for hand outs. Fights broke out. Things got ugly, on more than one occasion.~ */
		== NALIAJ
		@469 /* That's terrible.~ */
		== LCCORWIB
		@472 /* ~The situation is slowly getting better as more refugees are resettled - not fast enough for my liking, but some progress is better than none. Come on, let's keep moving.~  */
EXIT
//}

//HaerDalis Banters

//{ region Dialog B-16
CHAIN 
	IF ~
		Global("LCA_Banter_CorwinHaerDalis", "GLOBAL", 2)
		!Global("LCA_CorwinPromoted", "GLOBAL", 1)
	~
	THEN HAERDAJ BCorwinHaerDalis1_C
		@564 /* ~A moment of your time, Captain?~ [NOSOUND]*/
END LCCORWIB BCorwinHaerDalis1
//}

//{ region Dialog B-17
CHAIN 
	IF ~
		Global("LCA_Banter_CorwinHaerDalis", "GLOBAL", 2)
		Global("LCA_CorwinPromoted", "GLOBAL", 1)
	~
	THEN HAERDAJ BCorwinHaerDalis1_M
		@742 /* ~A moment of your time, Major?~ [NOSOUND]*/
END LCCORWIB BCorwinHaerDalis1
//}

CHAIN LCCORWIB BCorwinHaerDalis1
		@363 /* ~Sure - what do you need?~ [LCCORB47] */
		DO ~
			SetGlobal("LCA_Banter_CorwinHaerDalis", "GLOBAL", 3)
			ClearActions(Myself)
			ClearActions("LCCORWIN")
		~		
		== HAERDAJ
		@364 /* ~Did you know, my raven, that your arrows sing to me as they fly?~ */
		=
		@357 /* ~They sing a song of death and destruction that belies the lovely countenance of the one who set them aflight.~~*/
		== LCCORWIB
		@358 /* ~You certainly have a talent for making the mundane seem dramatic.~ [LCCORB61]*/
		== HAERDAJ
		@359 /*  ~There is nothing mundane about you - a bird of prey, as deadly as she is beautiful.~*/
		== LCCORWIB
		@360 /* ~You've very kind - really. But playwrights and poets are not my type.~*/
		== HAERDAJ
		@361 /* ~Ah, but I am no ordinary playwright, just as you are no ordinary raven. Together, we could soar to heights that neither of us thought possible.~ */
		= 
		@362 /* ~For you to keep an open mind is all that I ask.~ */
		== LCCORWIB
		@365 /* ~I always do. Come on, let's keep moving.~*/
EXIT

//{ region Dialog B-18
CHAIN 
	IF ~
		Global("LCA_Banter_CorwinHaerDalis", "GLOBAL", 4)
		Global("LCA_CorwinRomanceActive","GLOBAL",2)
		OR(2)
			Global("HaerDalisRomanceActive","GLOBAL",2)
			Global("HaerDalisRomanceActive","GLOBAL",1)
	~
	THEN LCCORWIB BCorwinHaerDalis2
		@366 /* ~Haer'Dalis? What is it?~ [LCCORB56] */
		DO ~
			SetGlobal("LCA_Banter_CorwinHaerDalis", "GLOBAL", 5)
			ClearActions(Myself)
			ClearActions("HaerDalis")
		~
		== HAERDAJ
		@367 /*~Have you given any thought to what we discussed earlier? What you will do once this adventure is over, my raven?~ */
		== LCCORWIB
		@368 /* ~I have. My goal is to complete my mission, then return home, with <CHARNAME>, to my daughter and father.~*/
		=
		@370 /* ~As interesting as your travels sound, my loved ones are here, in this plane, and I won't abandon them.~ [LCCORB62]*/
		=
		@371 /* ~Besides, I see how you and Aerie look at eachother. I wouldn't want to stand in the way of a relationship between the two of you.~ */
		== HAERDAJ
		@372 /*   ~Ah... I see. You'd have made a wondrous addition to my flock, but I understand the desire to return to the nest you have created for you and your loved ones.~*/
		= @373 /* ~Let us enjoy then our time together, before our flights diverge for the last time, my raven.~ */
		== LCCORWIB
		@374 /*  ~Gladly, friend. Let's go.~ */
EXIT
//}

//{ region Dialog B-19
CHAIN 
	IF ~
		Global("LCA_Banter_CorwinHaerDalis", "GLOBAL", 4)
		Global("LCA_CorwinRomanceActive","GLOBAL",2)
		!Global("HaerDalisRomanceActive","GLOBAL",2)
		!Global("HaerDalisRomanceActive","GLOBAL",1)
	~
	THEN LCCORWIB BCorwinHaerDalis2
		@366 /* ~Haer'Dalis? What is it?~ [LCCORB56]*/
		DO ~
			SetGlobal("LCA_Banter_CorwinHaerDalis", "GLOBAL", 5)
			ClearActions(Myself)
			ClearActions("HaerDalis")
		~
		== HAERDAJ
		@367 /*~Have you given any thought to what we discussed earlier? What you will do once this adventure is over, my raven?~ */
		== LCCORWIB
		@368 /* ~I have. My goal is to complete my mission, then return home, with <CHARNAME>, to my daughter and father.~*/
		=
		@370 /* ~As interesting as your travels sound, my loved ones are here, in this plane, and I won't abandon them.~ [LCCORB62]*/
		== HAERDAJ
		@372 /*   ~Ah... I see. You'd have made a wondrous addition to my flock, but I understand the desire to return to the nest you have created for you and your loved ones.~*/
		= @373 /* ~Let us enjoy then our time together, before our flights diverge for the last time, my raven.~ */
		== LCCORWIB
		@374 /*  ~Gladly, friend. Let's go.~ */
EXIT
//}

//{ region Dialog B-20
CHAIN 
	IF ~
		Global("LCA_Banter_CorwinHaerDalis", "GLOBAL", 4)
		!Global("LCA_CorwinRomanceActive","GLOBAL",2)
		OR(2)
			Global("HaerDalisRomanceActive","GLOBAL",2)
			Global("HaerDalisRomanceActive","GLOBAL",1)
	~
	THEN LCCORWIB BCorwinHaerDalis2
		@366 /* ~Haer'Dalis? What is it?~ [LCCORB56] */
		DO ~
			SetGlobal("LCA_Banter_CorwinHaerDalis", "GLOBAL", 5)
			ClearActions(Myself)
			ClearActions("HaerDalis")
		~
		== HAERDAJ
		@367 /*~Have you given any thought to what we discussed earlier? What you will do once this adventure is over, my raven?~ */
		== LCCORWIB
		@369 /*  ~I have. My goal is to complete my mission, then return home to my daughter and father.~*/
		=
		@370 /* ~As interesting as your travels sound, my loved ones are here, in this plane, and I won't abandon them.~ [LCCORB62]*/
		=
		@371 /* ~Besides, I see how you and Aerie look at eachother. I wouldn't want to stand in the way of a relationship between the two of you.~ */
		== HAERDAJ
		@372 /*   ~Ah... I see. You'd have made a wondrous addition to my flock, but I understand the desire to return to the nest you have created for you and your loved ones.~*/
		= @373 /* ~Let us enjoy then our time together, before our flights diverge for the last time, my raven.~ */
		== LCCORWIB
		@374 /*  ~Gladly, friend. Let's go.~ */
EXIT
//}

//{ region Dialog B-21
CHAIN 
	IF ~
		Global("LCA_Banter_CorwinHaerDalis", "GLOBAL", 4)
		!Global("HaerDalisRomanceActive","GLOBAL",2)
		!Global("HaerDalisRomanceActive","GLOBAL",1)
		!Global("LCA_CorwinRomanceActive","GLOBAL",2)
	~
	THEN LCCORWIB BCorwinHaerDalis2
		@366 /* ~Haer'Dalis? What is it?~ [LCCORB56] */
		DO ~
			SetGlobal("LCA_Banter_CorwinHaerDalis", "GLOBAL", 5)
			ClearActions(Myself)
			ClearActions("Minsc")
		~
		== HAERDAJ
		@367 /*~Have you given any thought to what we discussed earlier? What you will do once this adventure is over, my raven?~ */
		== LCCORWIB
		@369 /*  ~I have. My goal is to complete my mission, then return home to my daughter and father.~*/
		=
		@370 /* ~As interesting as your travels sound, my loved ones are here, in this plane, and I won't abandon them.~ */
		== HAERDAJ
		@372 /*   ~Ah... I see. You'd have made a wondrous addition to my flock, but I understand the desire to return to the nest you have created for you and your loved ones.~*/
		= @373 /* ~Let us enjoy then our time together, before our flights diverge for the last time, my raven.~ */
		== LCCORWIB
		@374 /*  ~Gladly, friend. Let's go.~ */
EXIT
//}

//Minsc Banters

//{ region Dialog B-2
CHAIN 
	IF ~
		Global("LCA_Banter_CorwinMinsc", "GLOBAL", 2)
		Global("LCA_CorwinPromoted", "GLOBAL", 1)
	~
	THEN LCCORWIB BCorwinMinsc1_M
		@343 /* ~Minsc, I'm sorry about Dynaheir. I know that you two were very close.~ [LCCORB45] */
		DO ~
			SetGlobal("LCA_Banter_CorwinMinsc", "GLOBAL", 3)
			ClearActions(Myself)
			ClearActions("Minsc")
		~
		== MINSCJ
		@792 /* ~Thank you, dear Major soldier lady. Boo is glad that skull crushing justice was exacted upon the wizard that murdered her.~ */
		== LCCORWIB
		@345/* ~Um.. right. So am I.~*/
		== MINSCJ
		@744 /* ~Major soldier lady, Boo would like to compliment you.~ */
		== LCCORWIB
		@347 /* ~Your hamster?~*/
		== MINSCJ
		@348 /*  ~Yes. Boo says that your hair is very soft and fine, like the hair on a space hamster's bottom.~*/
		== LCCORWIB
		@349 /* ~WHAT!?~*/
		== MINSCJ
		@350 /* ~Yes, and also that your eyelashes remind him of a donkey's beautiful -~ */
		== LCCORWIB
		@351 /* ~Choose your next words very, very carefully.~*/
		== MINSCJ
		@352 /* ~A donkey's beautiful.. erm .. beautiful .. well. Boo thinks you are beautiful.~ */
		== LCCORWIB
		@354 /* ~... ... That's very kind. Let's go.~ */
EXIT
//}

//{ region Dialog B-22
CHAIN 
	IF ~
		Global("LCA_Banter_CorwinMinsc", "GLOBAL", 2)
		!Global("LCA_CorwinPromoted", "GLOBAL", 1)
	~
	THEN LCCORWIB BCorwinMinsc1_C
		@343 /* ~Minsc, I'm sorry about Dynaheir. I know that you two were very close.~ [LCCORB45] */
		DO ~
			SetGlobal("LCA_Banter_CorwinMinsc", "GLOBAL", 3)
			ClearActions(Myself)
			ClearActions("Minsc")
		~
		== MINSCJ
		@353 /* ~Thank you, dear Captain soldier lady. Justice demands that I crush the skull of the wizard that killed her. I am glad that you are here to help inflict the most painful goodness on the forces of evil.~ */
		== LCCORWIB
		@345/* ~Um.. right. So am I.~*/
		== MINSCJ
		@346 /* ~Captain soldier lady, Boo would like to compliment you.~ */
		== LCCORWIB
		@347 /* ~Your hamster?~*/
		== MINSCJ
		@348 /*  ~Yes. Boo says that your hair is very soft and fine, like the hair on a space hamster's bottom.~*/
		== LCCORWIB
		@349 /* ~WHAT!?~*/
		== MINSCJ
		@350 /* ~Yes, and also that your eyelashes remind him of a donkey's beautiful -~ */
		== LCCORWIB
		@351 /* ~Choose your next words very, very carefully.~*/
		== MINSCJ
		@352 /* ~A donkey's beautiful.. erm .. beautiful .. well. Boo thinks you are beautiful.~ */
		== LCCORWIB
		@354 /* ~... ... That's very kind. Let's go.~ */
EXIT
//}

//{ region Dialog B-23
CHAIN 
	IF ~
		Global("LCA_Banter_CorwinMinsc", "GLOBAL", 4)
	~
	THEN LCCORWIB BCorwinMinsc2_M
		@325 /* ~Ugh, not now Minsc. I'm busy.~ [LCCORB43] */
		DO ~
			SetGlobal("LCA_Banter_CorwinMinsc", "GLOBAL", 5)
			ClearActions(Myself)
			ClearActions("Minsc")
		~
		== MINSCJ
		IF ~
			Global("LCA_CorwinPromoted", "GLOBAL", 1)
		~
		@745 /* ~Boo says that his question for Major soldier lady is urgent.~  */
		== MINSCJ
		IF ~
			!Global("LCA_CorwinPromoted", "GLOBAL", 1)
		~
		@793 /* ~Boo says that his question for Captain soldier lady is urgent.~   */
		== LCCORWIB
		@327 /* ~(sigh) Fine. What is it Boo.~*/
		== MINSCJ
		@328 /* ~Boo says, "You are a Ranger yet you do not carry a space hamster. Why is this?"~ */
		== LCCORWIB
		@329 /* ~Really, Minsc?~*/
		= @330 /*  ~Whatever. Sure, I had a hamster once, when I was a child. His name was Cakey. He died.~ */
		== MINSCJ
		@331 /* ~Boo expresses his condolences on the loss of your dear not-a-space hamster.~*/
		== LCCORWIB
		@332 /* ~I'm sure he does. Can we get going now?~*/
EXIT
//}

//{ region Dialog B-24
CHAIN 
	IF ~
		Global("LCA_Banter_CorwinMinsc", "GLOBAL", 6)
	~
	THEN LCCORWIB BCorwinMinsc3
		@333 /* ~I have a question for you.~ [LCCORB44] */
		DO ~
			SetGlobal("LCA_Banter_CorwinMinsc", "GLOBAL", 7)
			ClearActions("Minsc")
			ClearActions(Myself)
		~
		== MINSCJ
		IF ~
			!Global("LCA_CorwinPromoted", "GLOBAL", 1)
		~
		@334 /* ~Of course, Captain soldier lady. How can Minsc and Boo help a fellow warrior of the greatest goodness?~ */
		== MINSCJ
		IF ~
			Global("LCA_CorwinPromoted", "GLOBAL", 1)
		~
		@746 /* ~Of course, Major soldier lady. How can Minsc and Boo help a fellow warrior of the greatest goodness?~  */
		== LCCORWIB
		@335 /* ~How long did you and Dynaheir travel together?~*/
		== MINSCJ
		@336 /* ~I prefer to gauge time by measuring the change in the length of Boo's whiskers.~ */
		== LCCORWIB
		@337 /* ~...What.~*/
		== MINSCJ
		@338 /* ~Yes, so I and Dynaheir travelled together for more than a thumb, but less than a furlong. Quite a long time.~*/
		== LCCORWIB
		@339 /* ~And in that.. time, how in Toril did she put up with your insanity? Everytime you open your mouth I want to scream!~*/
		== MINSCJ
		@340 /* ~Ah, my charge was a master of the magical arts, as you know. When she needed some peace and quiet, she would simply mutter a Silence spell.~ */
		= @341 /* ~I did not mind, as Boo is perfectly capable of speaking on my behalf.~ */
		== LCCORWIB
		@342 /* ~Gods, help us.~ */
EXIT
//}

//Rasaad Banters

//{ region Dialog B-25
CHAIN 
	IF ~
		Global("LCA_Banter_CorwinRasaad", "GLOBAL", 2)
		!Global("LCA_CorwinPromoted", "GLOBAL", 1)
	~
	THEN RASAADJ BCorwinRasaad1_C
		@795 /* Captain, you seem troubled.~*/
		DO ~
			SetGlobal("LCA_Banter_CorwinRasaad", "GLOBAL", 3)
			ClearActions(Myself)
			ClearActions("LCCORWIN")
		~
		== LCCORWIB
		@283 /* ~Rasaad.. it's nothing, I...~ [LCCORB28] */
		== RASAADJ
		@284 /* ~Yes?~ */
		== LCCORWIB
		@285 /* ~It's just that I miss my daughter, my father. My city. I thought that after the Dragonspear campaign that I'd be done with these long duration deployments.~*/
		= @286 /* ~I don't regret taking this assignment, and I am proud to stand at <CHARNAME>'s side, yet it doesn't make being away from home any easier.~ */
		== RASAADJ
		@292 /* ~I understand. It's natural to feel that way.~ */
		= @287 /* ~Allow me to share with you a simple breathing exercise to help you focus, and relax. It will help relieve some of the anxiety you are feeling.~ */
		== LCCORWIB
		@288 /* ~I - I don't think that's necessary - maybe some other time. ~ */
		== RASAADJ
		@289 /* ~Please Captain. Let me help you.~*/
		== LCCORWIB
		@290 /* ~Not right now. We have work to do. Let's get moving.~ */
		== RASAADJ
		@291 /* ~Very well. When you have the time, come and see me.~ */
EXIT
//}

//{ region Dialog B-26
CHAIN 
	IF ~
		Global("LCA_Banter_CorwinRasaad", "GLOBAL", 2)
		Global("LCA_CorwinPromoted", "GLOBAL", 1)
	~
	THEN RASAADJ BCorwinRasaad1_M
		@794 /* ~Major, you seem troubled.~*/
		DO ~
			SetGlobal("LCA_Banter_CorwinRasaad", "GLOBAL", 3)
			ClearActions(Myself)
			ClearActions("LCCORWIN")
		~
		== LCCORWIB
		@283 /* ~Rasaad.. it's nothing, I...~ [LCCORB28] */
		== RASAADJ
		@284 /* ~Yes?~ */
		== LCCORWIB
		@285 /* ~It's just that I miss my daughter, my father. My city. I thought that after the Dragonspear campaign that I'd be done with these long duration deployments.~*/
		= @286 /* ~I don't regret taking this assignment, and I am proud to stand at <CHARNAME>'s side, yet it doesn't make being away from home any easier.~ */
		== RASAADJ
		@292 /* ~I understand. It's natural to feel that way.~ */
		= @287 /* ~Allow me to share with you a simple breathing exercise to help you focus, and relax. It will help relieve some of the anxiety you are feeling.~ */
		== LCCORWIB
		@288 /* ~I - I don't think that's necessary - maybe some other time. ~ */
		== RASAADJ
		@747 /* ~Please Major. Let me help you.~*/
		== LCCORWIB
		@290 /* ~Not right now. We have work to do. Let's get moving.~ */
		== RASAADJ
		@291 /* ~Very well. When you have the time, come and see me.~ */
EXIT
//}

//{ region Dialog B-27
CHAIN 
	IF ~
		Global("LCA_Banter_CorwinRasaad", "GLOBAL", 4)
	~
	THEN LCCORWIB BCorwinRasaad1
		@303 /* ~Rasaad, about that breathing exercise.~ [LCCORB27] */
		DO ~
			SetGlobal("LCA_Banter_CorwinRasaad", "GLOBAL", 5)
			SetGlobal("LCA_BreathingExercise", "GLOBAL", 1)
			ClearActions(Myself)
			ClearActions("Rasaad")
		~
		== RASAADJ
		IF ~
			!Global("LCA_CorwinPromoted", "GLOBAL", 1)
		~
		@293 /*  ~Yes Captain - do you have some time now?~*/
		== RASAADJ
		IF ~
			Global("LCA_CorwinPromoted", "GLOBAL", 1)
		~
		@748 /*  ~Yes Major - do you have some time now?~*/
		== LCCORWIB
		@294 /* ~Please, if you would teach me. I've been feeling especially anxious today.~ */
		== RASAADJ
		@295 /* ~Of course. It's a simple but effective exercise. It has helped me to control my anxiety and improve my focus.~ */
		= @296 /* ~You take a deep breath, count to six. Breathe out for six counts. Breathe in, one, two, three, four, five, six. Breathe out, one, two, three, four, five, six.~ */
		= @297 /* ~Try it - breathe in for six counts, then exhale for six.~ */
		== LCCORWIB
		@298 /*  ~Here goes... breathe in.. .. .. .. .. ..~ */
		= @299 /* ~Breathe out.. .. .. .. .. ..~ */
		== RASAADJ
		@300 /* ~Yes, just like that. ~ */
		== LCCORWIB
		@301 /* ~Thank you Rasaad... I'll be sure to practice that exercise.~ */
		== RASAADJ
		IF ~
			!Global("LCA_CorwinPromoted", "GLOBAL", 1)
		~
		@302 /* ~My pleasure, Captain.~ */
		== RASAADJ
		IF ~
			Global("LCA_CorwinPromoted", "GLOBAL", 1)
		~
		@749 /* ~My pleasure, Major.~ */
EXIT
//}

//{ region Dialog B-28
CHAIN 
	IF ~
		Global("LCA_Banter_CorwinRasaad", "GLOBAL", 6)
	~
	THEN LCCORWIB BCorwinRasaad1
		@304 /* ~Rasaad - I wanted to thank you. [LCCORB29] ~ */
		DO ~
			SetGlobal("LCA_Banter_CorwinRasaad", "GLOBAL", 7)
			ClearActions(Myself)
			ClearActions("Rasaad")
		~
		== RASAADJ
		IF ~
			!Global("LCA_CorwinPromoted", "GLOBAL", 1)
		~
		@305 /*  ~Captain?~*/
		== RASAADJ
		IF ~
			Global("LCA_CorwinPromoted", "GLOBAL", 1)
		~
		@750 /*  ~Major?~*/
		== LCCORWIB
		@306 /* ~I've been practicing that breathing exercise you showed me. It's been a big help.~ */
		== RASAADJ
		@307 /* ~Oh, I'm glad I was able to help.~ */
		== LCCORWIB
		@308 /*  ~Me too. One of these days, I'll show you some of the stretching exercises I do to loosen up my back and shoulder muscles.~ */
		== RASAADJ
		@309 /* ~Yes, I've noticed you performing those. They help with drawing your bow, I assume?~*/
		== LCCORWIB
		@310 /* ~Yes, exactly. Though I'm sure you'd benefit as well.~ */
		== RASAADJ
		IF ~
			!Global("LCA_CorwinPromoted", "GLOBAL", 1)
		~
		@311 /* ~I look forward to it, Captain.~ */
		== RASAADJ
		IF ~
			Global("LCA_CorwinPromoted", "GLOBAL", 1)
		~
		@751 /* ~I look forward to it, Major.~ */
		== LCCORWIB
		@312 /* ~You can drop the formalities. Schael will do just fine.~ */
		== RASAADJ
		@313 /* ~Thank you, Schael. I appreciate that.~ */
EXIT
//}

//{ region Dialog B-29
CHAIN 
	IF ~
		Global("LCA_Banter_CorwinRasaad", "GLOBAL", 8)
		!IsValidForPartyDialogue("Korgan")
		!IsValidForPartyDialogue("Yoshimo")
		OR(2)
			!IsValidForPartyDialogue("Viconia")
			!IsValidForPartyDialogue("Valygar")
	~
	THEN LCCORWIB BCorwinRasaad4A
		@483 /* ~Rasaad - do you have some time now? I can show you that back exercise we were talking about. ~ [NOSOUND] */
		DO ~
			SetGlobal("LCA_Banter_CorwinRasaad", "GLOBAL", 9)
			ClearActions(Myself)
			ClearActions("Rasaad")
		~
		== RASAADJ
		@484 /*  ~Yes Schael, now is a good time.~*/
		== LCCORWIB
		@485 /* ~Good. I'll demonstrate, you can follow along. Start by standing up staight. Place your arms behind your head, with your elbows bent, like this.~ */
		== RASAADJ
		@486 /* ~Ah, like this?.~ */
		== LCCORWIB
		@487 /*  ~Yes. Now, slowly bend to your right side by moving your right elbow toward your right hip until you feel a slight stretch in your upper back. Hold the position for 10 seconds.~*/
		=
		@488 /* ~Good. Now, keeping your hands behind your head, slowly move your body back to your upright starting position. Repeat the exercise, but for your left side this time.~ */
		== RASAADJ
		@489 /* ~Got it. Like this?~*/
		== LCCORWIB
		@490 /* ~Just like that.~ */
		== RASAADJ
		@562 /* ~Great. Thank you, Schael. I'll be sure to incorporate this into my morning routine.~ */
EXIT
//}

//{ region Dialog B-30
CHAIN 
	IF ~
		Global("LCA_Banter_CorwinRasaad", "GLOBAL", 8)
		IsValidForPartyDialogue("Korgan")
		!IsValidForPartyDialogue("Yoshimo")
		OR(2)
			!IsValidForPartyDialogue("Viconia")
			!IsValidForPartyDialogue("Valygar")
	~
	THEN LCCORWIB BCorwinRasaad4B
		@483 /* ~Rasaad - do you have some time now? I can show you that back exercise we were talking about. ~ [NOSOUND] */
		DO ~
			SetGlobal("LCA_Banter_CorwinRasaad", "GLOBAL", 9)
			ClearActions(Myself)
			ClearActions("Rasaad")
		~
		== RASAADJ
		@484 /*  ~Yes Schael, now is a good time.~*/
		== LCCORWIB
		@485 /* ~Good. I'll demonstrate, you can follow along. Start by standing up staight. Place your arms behind your head, with your elbows bent, like this.~ */
		== RASAADJ
		@486 /* ~Ah, like this?.~ */
		== LCCORWIB
		@487 /*  ~Yes. Now, slowly bend to your right side by moving your right elbow toward your right hip until you feel a slight stretch in your upper back. Hold the position for 10 seconds.~*/
		== KORGANJ
		@492 /* ~Ah... ~*/
		== LCCORWIB
		@563 /* Korgan? What is it?*/
		== KORGANJ
		@494 /*  ~Oh, don't mind me, lass. I'm just admiring the view, heh.~ */
		== LCCORWIB
		@495 /* ~Ugh - grow up. Rasaad, let's continue.~ */
		=
		@488 /* ~Now, keeping your hands behind your head, slowly move your body back to your upright starting position. Repeat the exercise, but for your left side this time.~ */
		== RASAADJ
		@489 /* ~Got it. Like this?~*/
		== LCCORWIB
		@490 /* ~Just like that.~ */
		== RASAADJ
		@562 /* ~Great. Thank you, Schael. I'll be sure to incorporate this into my morning routine.~ */
EXIT
//}

//{ region Dialog B-31
CHAIN 
	IF ~
		Global("LCA_Banter_CorwinRasaad", "GLOBAL", 8)
		IsValidForPartyDialogue("Korgan")
		IsValidForPartyDialogue("Yoshimo")
		OR(2)
			!IsValidForPartyDialogue("Viconia")
			!IsValidForPartyDialogue("Valygar")
	~
	THEN LCCORWIB BCorwinRasaad4B
		@483 /* ~Rasaad - do you have some time now? I can show you that back exercise we were talking about. ~ [NOSOUND] */
		DO ~
			SetGlobal("LCA_Banter_CorwinRasaad", "GLOBAL", 9)
			ClearActions(Myself)
			ClearActions("Rasaad")
		~
		== RASAADJ
		@484 /*  ~Yes Schael, now is a good time.~*/
		== LCCORWIB
		@485 /* ~Good. I'll demonstrate, you can follow along. Start by standing up staight. Place your arms behind your head, with your elbows bent, like this.~ */
		== RASAADJ
		@486 /* ~Ah, like this?.~ */
		== LCCORWIB
		@487 /*  ~Yes. Now, slowly bend to your right side by moving your right elbow toward your right hip until you feel a slight stretch in your upper back. Hold the position for 10 seconds.~*/
		== KORGANJ
		@492 /* ~Ah... ~*/
		== LCCORWIB
		@563 /* Korgan? What is it?*/
		== KORGANJ
		@494 /*  ~Oh, don't mind me, lass. I'm just admiring the view, heh.~ */
		== LCCORWIB
		@495 /* ~Ugh - grow up. Rasaad, let's continue.~ */
		=
		@488 /* ~Now, keeping your hands behind your head, slowly move your body back to your upright starting position. Repeat the exercise, but for your left side this time.~ */
		== RASAADJ
		@489 /* ~Got it. Like this?~*/
		== LCCORWIB
		@490 /* ~Just like that.~ */
		== RASAADJ
		@562 /* ~Great. Thank you, Schael. I'll be sure to incorporate this into my morning routine.~ */
EXIT
//}

//{ region Dialog B-32
CHAIN 
	IF ~
		Global("LCA_Banter_CorwinRasaad", "GLOBAL", 8)
		!IsValidForPartyDialogue("Korgan")
		IsValidForPartyDialogue("Yoshimo")
		OR(2)
			!IsValidForPartyDialogue("Viconia")
			!IsValidForPartyDialogue("Valygar")
	~
	THEN LCCORWIB BCorwinRasaad4C
		@483 /* ~Rasaad - do you have some time now? I can show you that back exercise we were talking about. ~ [NOSOUND] */
		DO ~
			SetGlobal("LCA_Banter_CorwinRasaad", "GLOBAL", 9)
			ClearActions(Myself)
			ClearActions("Rasaad")
		~
		== RASAADJ
		@484 /*  ~Yes Schael, now is a good time.~*/
		== LCCORWIB
		@485 /* ~Good. I'll demonstrate, you can follow along. Start by standing up staight. Place your arms behind your head, with your elbows bent, like this.~ */
		== RASAADJ
		@486 /* ~Ah, like this?.~ */
		== LCCORWIB
		@487 /*  ~Yes. Now, slowly bend to your right side by moving your right elbow toward your right hip until you feel a slight stretch in your upper back. Hold the position for 10 seconds.~*/
		== YOSHJ
		@492 /* ~Ah... ~*/
		== LCCORWIB
		@493 /* Yoshimo? What is it?*/
		== YOSHJ
		IF ~
			!Global("LCA_CorwinPromoted", "GLOBAL", 1)
		~
		@496 /*  ~Oh, don't mind me, Captain. I'm just admiring the view.~ */
		== YOSHJ
		IF ~
			Global("LCA_CorwinPromoted", "GLOBAL", 1)
		~
		@752 /*  ~Oh, don't mind me, Major. I'm just admiring the view.~ */
		== LCCORWIB
		@495 /* ~Ugh - grow up. Rasaad, let's continue.~ */
		=
		@488 /* ~Now, keeping your hands behind your head, slowly move your body back to your upright starting position. Repeat the exercise, but for your left side this time.~ */
		== RASAADJ
		@489 /* ~Got it. Like this?~*/
		== LCCORWIB
		@490 /* ~Just like that.~ */
		== RASAADJ
		@562 /* ~Great. Thank you, Schael. I'll be sure to incorporate this into my morning routine.~ */
EXIT
//}

//{ region Dialog B-33
CHAIN 
	IF ~
		Global("LCA_Banter_CorwinRasaad", "GLOBAL", 8)
		!IsValidForPartyDialogue("Korgan")
		!IsValidForPartyDialogue("Yoshimo")
		IsValidForPartyDialogue("Viconia")
		IsValidForPartyDialogue("Valygar")
	~
	THEN LCCORWIB BCorwinRasaad4D
		@483 /* ~Rasaad - do you have some time now? I can show you that back exercise we were talking about. ~ [NOSOUND] */
		DO ~
			SetGlobal("LCA_Banter_CorwinRasaad", "GLOBAL", 9)
			ClearActions(Myself)
			ClearActions("Rasaad")
		~
		== RASAADJ
		@484 /*  ~Yes Schael, now is a good time.~*/
		== LCCORWIB
		@485 /* ~Good. I'll demonstrate while you follow along. Start by standing up staight. Place your arms behind your head, with your elbows bent, like this.~ */
		== RASAADJ
		@486 /* ~Ah, like this, correct?~ */
		== LCCORWIB
		@487 /*  ~Yes. Now, slowly bend to your right side by moving your right elbow toward your right hip until you feel a slight stretch in your upper back. Hold the position for 10 seconds.~*/
		== VICONIJ
		@497 /* ~So you do like females after all, Valygar. I see the way you're looking at her.~*/
		== VALYGARJ
		@498 /* ~I - I don't know what you're talking about.~*/
		== VICONIJ
		@499 /*  ~Don't be ashamed of your attraction to her. You are a male, after all.~ */
		== VALYGARJ
		@500 /* ~Be quiet, drow.~ */
		== VICONIJ
		@501 /*  ~Of course. Forgive my interruption of your viewing experience.~ */
		== LCCORWIB
		@488 /* ~Now, keeping your hands behind your head, slowly move your body back to your upright starting position. Repeat the exercise, but for your left side this time.~ */
		== RASAADJ
		@489 /* ~Got it. Like this?~*/
		== LCCORWIB
		@490 /* ~Just like that.~ */
		== RASAADJ
		@562 /* ~Great. Thank you, Schael. I'll be sure to incorporate this into my morning routine.~ */
EXIT
//}

//Yoshimo Banters

//{ region Dialog B-34
CHAIN 
	IF ~
		Global("LCA_Banter_CorwinYoshimo", "GLOBAL", 2)
	~
	THEN LCCORWIB BCorwinYoshimo1
		@269 /* ~Yoshimo - what is it?~ [LCCORB30] */
		DO ~
			SetGlobal("LCA_Banter_CorwinYoshimo", "GLOBAL", 3)
			ClearActions(Myself)
			ClearActions("Yoshimo")
		~
		== YOSHJ
		IF ~
			!Global("LCA_CorwinPromoted", "GLOBAL", 1)
		~
		@270 /* ~My lovely Captain, a question if you will.~ */
		== YOSHJ
		IF ~
			Global("LCA_CorwinPromoted", "GLOBAL", 1)
		~
		@753 /* ~My lovely Major, a question if you will.~ */
		== YOSHJ
		@282 /* ~Do the tales of my exploits reach as far north as Baldur's Gate?~*/
		== LCCORWIB
		@273 /* ~No, they don't.~ */
		== YOSHJ
		@274 /* ~I find that hard to believe. Surely, you have heard at least some of the stories?~ */
		== LCCORWIB
		@275 /* ~No, I've never heard of you.~*/
		== YOSHJ
		@276 /* ~You mean to tell me you haven't heard of my daring raid on the archives of the Unseen? My heroic defense of the town of Easthaven? The rescue of the virgin maiden of -~ */
		== LCCORWIB
		@277 /* ~Enough! Be quiet, or people will hear the story of Yoshimo the Silent, the braggart thief whose jaw was broken by the Flaming Fist!~ */
		== YOSHJ
		@271 /* ~That doesn't sound like a story I'd want to hear.~ */
		== LCCORWIB
		@278 /* ~Then stay focused on our mission. Let's go.~ */
EXIT
//}

//Cernd Banters
//{ region Dialog B-35
CHAIN
	IF ~
		Global("LCA_Banter_CorwinCernd", "GLOBAL", 2)
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN LCCORWIB BCorwinCernd1A
		@258 /* ~Cernd, you have a beautiful child.~ [LCCORB33] */
		DO ~
			SetGlobal("LCA_Banter_CorwinCernd", "GLOBAL", 3)
			ClearActions(Myself)
			ClearActions("Cernd")
		~
		== CERNDJ
		IF ~
			!Global("LCA_CorwinPromoted", "GLOBAL", 1)
		~
		@259 /* ~Thank you, Captain Corwin. ~ */
		== CERNDJ
		IF ~
			Global("LCA_CorwinPromoted", "GLOBAL", 1)
		~
		@754 /* ~Thank you, Major Corwin. ~ */
		== LCCORWIB
		@260 /* ~I remember when my daughter Rohma was just a baby. Holding your baby in your arms changes you, doesn't it?~ */
		== CERNDJ
		@261 /* ~It does! When I held Ahsdale, I felt a... clarity, that I had never experienced before, like my purpose in this world had changed.~ */
		== LCCORWIB
		@262 /* ~That's almost exactly how I felt with Rohma.. like my life had suddenly gained a meaning that it lacked before.~ */
		== CERNDJ
		@263 /* ~It must not be easy being away from your child. I know that isn't easy for me.~ */
		== LCCORWIB
		@264 /* ~No, it isn't. But duty requires that I be here, with <CHARNAME>. Duties aside, I would still be here - I love <PRO_HIMHER>, and <PRO_HESHE> needs me.~ */
		= @266 /* ~When she is older, I'll explain to Rohma why I needed to go away. She's a smart kid, she will understand.~ */
		== CERNDJ
		@267 /* ~I'm sure she will. With luck, we'll be able to return to our children soon.~ */
		== LCCORWIB
		@268 /* ~I hope so. Let's get moving.~ */
EXIT
//}

//{ region Dialog B-36
CHAIN
	IF ~
		Global("LCA_Banter_CorwinCernd", "GLOBAL", 2)
		!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN LCCORWIB BCorwinCernd1B
		@258 /* ~Cernd, you have a beautiful child.~ [LCCORB33] */
		DO ~
			SetGlobal("LCA_Banter_CorwinCernd", "GLOBAL", 3)
			ClearActions(Myself)
			ClearActions("Cernd")
		~
		== CERNDJ
		IF ~
			!Global("LCA_CorwinPromoted", "GLOBAL", 1)
		~
		@259 /* ~Thank you, Captain Corwin. ~ */
		== CERNDJ
		IF ~
			Global("LCA_CorwinPromoted", "GLOBAL", 1)
		~
		@754 /* ~Thank you, Major Corwin. ~ */
		== LCCORWIB
		@260 /* ~I remember when my daughter Rohma was just a baby. Holding your baby in your arms changes you, doesn't it?~ */
		== CERNDJ
		@261 /* ~It does! When I held Ahsdale, I felt a... clarity, that I had never experienced before, like my purpose in this world had changed.~ */
		== LCCORWIB
		@262 /* ~That's almost exactly how I felt with Rohma.. like my life had suddenly gained a meaning that it lacked before.~ */
		== CERNDJ
		@263 /* ~It must not be easy being away from your child. I know that isn't easy for me.~ */
		== LCCORWIB
		@265 /* ~No, it isn't. But duty requires that I be here, with <CHARNAME>.~ */
		= @266 /* ~When she is older, I'll explain to Rohma why I needed to go away. She's a smart kid, she will understand.~ */
		== CERNDJ
		@267 /* ~I'm sure she will. With luck, we'll be able to return to our children soon.~ */
		== LCCORWIB
		@268 /* ~I hope so. Let's get moving.~ */
EXIT
//}

//Valygar Banters

//{ region Dialog B-37
CHAIN
	IF ~
		Global("LCA_Banter_CorwinValygar", "GLOBAL", 2)
		!InParty("Minsc")
	~
	THEN LCCORWIB BCorwinValygar1A
		@245 /* ~Valygar. It's good to have another Ranger on the team.~ [LCCORB34] */
		DO ~
			SetGlobal("LCA_Banter_CorwinValygar", "GLOBAL", 3)
			ClearActions(Myself)
			ClearActions("Valygar")
		~ 
		== VALYGARJ
		IF ~
			!Global("LCA_CorwinPromoted", "GLOBAL", 1)
		~
		@247 /* ~Yes, thank you Captain. I've been meaning to talk to you about something... do you have a moment?~*/
		== VALYGARJ
		IF ~
			Global("LCA_CorwinPromoted", "GLOBAL", 1)
		~
		@755 /* ~Yes, thank you Major. I've been meaning to talk to you about something... do you have a moment?~*/
		== LCCORWIB
		@803 /* ~Of course. What's on your mind?~ */
		== VALYGARJ
		@248 /* ~I'm interested in hearing why you chose to specialize in archery. I've always felt that a Ranger's strength lies in their versatility.~ */
		== LCCORWIB
		@249 /* ~Well, unlike most Rangers, I'm not typically sent out on my own. The need for that versatility is reduced.~ */
		= @250 /* ~I tend to work as part of a team, and having a specialization can contribute more to the team's success.~ */
		== VALYGARJ
		@251 /* ~An interesting perspective. I think we will enjoy working together.~ */
		== LCCORWIB
		@252 /* ~So do I.~ */
EXIT
//}

//{ region Dialog B-38
CHAIN
	IF ~
		Global("LCA_Banter_CorwinValygar", "GLOBAL", 2)
		InParty("Minsc")
	~
	THEN LCCORWIB BCorwinValygar1B
		@245 /* ~Valygar. It's good to have another Ranger on the team.~ [LCCORB34] */
		DO ~
			SetGlobal("LCA_Banter_CorwinValygar", "GLOBAL", 3)
			ClearActions(Myself)
			ClearActions("Valygar")
		~ 
		= @246 /* ~Well (she looks at Minsc), one that isn't completely out of his mind, anyway. ~*/
		== VALYGARJ
		IF ~
			!Global("LCA_CorwinPromoted", "GLOBAL", 1)
		~
		@247 /* ~Yes, thank you Captain. I'm interested in hearing why you chose to specialize in archery.~*/
		== VALYGARJ
		IF ~
			Global("LCA_CorwinPromoted", "GLOBAL", 1)
		~
		@755 /* ~Yes, thank you Major. I'm interested in hearing why you chose to specialize in archery.~*/
		== VALYGARJ
		@248 /* ~I've always felt that a Ranger's strength lies in their versatility.~ */
		== LCCORWIB
		@249 /* ~Well, unlike most Rangers, I'm not typically sent out on my own. The need for that versatility is reduced.~ */
		= @250 /* ~I tend to work as part of a team, and having a specialization can contribute more to the team's success.~ */
		== VALYGARJ
		@251 /* ~An interesting perspective. I think we will enjoy working together.~ */
		== LCCORWIB
		@252 /* ~So do I.~ */
EXIT
//}

//{ region Dialog B-39
CHAIN 
	IF ~
		Global("LCA_CorwinValygarLavok", "GLOBAL", 1)
	~ THEN LCCORWIB BCorwinValygar2
		@573 /* ~So, Valygar.~*/
		DO ~
			SetGlobal("LCA_CorwinValygarLavok", "GLOBAL", 2)
			SetGlobal("LCA_Banter_CorwinValygar", "GLOBAL", 3)
			SetGlobalTimer("LCA_CorwinValygarTimer", "GLOBAL", THREE_DAYS)
		~
		== VALYGARJ
		IF ~
			!Global("LCA_CorwinPromoted", "GLOBAL", 1)
		~
		@574 /* ~Yes, Captain?~*/
		== VALYGARJ
		IF ~
			Global("LCA_CorwinPromoted", "GLOBAL", 1)
		~
		@756 /* ~Yes, Major?~*/
		== LCCORWIB
		@575 /* ~With Lavok dead, what will you do now?~*/
		== VALYGARJ
		@576 /* ~For the time being, I'd like to remain part of this group.~*/
		== LCCORWIB
		@577 /* ~Understandable. When this business with Irenicus is over, I'd like for you to consider coming back to Baldur's Gate with me.~*/
		= @578 /* ~The Flaming Fist is always looking for right-minded individuals of your caliber to join the team.~*/
		== VALYGARJ
		@579 /* ~I appreciate the offer, though. I must confess however that I'd be, ah, out of my element in the city.~*/
		== LCCORWIB
		@580 /* ~Well, you wouldn't be out on your own. You can shadow us on our patrols and see if it's a good fit for you.~*/
		= @581 /* ~The Flaming Fist takes care of its own, and you'd have everything necessary to succeed.~*/
		== VALYGARJ
		IF ~
			!Global("LCA_CorwinPromoted", "GLOBAL", 1)
		~
		@582 /* ~I am intrigued. Give me some time to consider your offer, Captain.~*/
		== VALYGARJ
		IF ~
			Global("LCA_CorwinPromoted", "GLOBAL", 1)
		~
		@757 /* ~I am intrigued. Give me some time to consider your offer, Major.~*/
		== LCCORWIB
		@583 /* Of course. Let's move out.~*/
		
EXIT
//}

//{ Dialog B-85
CHAIN
	IF ~
		Global("LCA_CorwinValygarBG", "GLOBAL", 1)
	~ THEN VALYGARJ BCorwinValygar3A
	
EXIT
//}

//Neera Banters

//{ region Dialog B-40
CHAIN
	IF ~
		Global("LCA_Banter_CorwinNeera", "GLOBAL", 2)
	~ THEN LCCORWIB BCorwinNeera1
		@215 /* ~Neera, how are you?~ [LCCORB36] */
		DO ~
			SetGlobal("LCA_Banter_CorwinNeera", "GLOBAL", 3)
			ClearActions(Myself)
			ClearActions("Neera")
		~ 
		== NEERAJ
		@216 /* ~Good, Schael! What's new?~ */
		== LCCORWIB
		@217 /* ~Nothing, it seems. I noticed you're still struggling to control your magic.~*/
		== NEERAJ
		@218 /* ~Yeah... a lot of the time I'm able to control it, but then all of a sudden BAM!~  */
		== LCCORWIB
		@219 /* ~Please, keep trying. It's important that we're able to rely on you, and we need to be certain that your spells will help us instead of turning one of us into a chicken.~ */
		== NEERAJ
		@220 /* ~A chicken? No, I think you mean a llama.~ */
		== LCCORWIB
		@221 /* ~W-what? You turned someone into a llama?~ */
		== NEERAJ
		@222 /* ~Yes, while casting a Goodberry spell. I did get the berries, though. I shared them with the llama.~ */
		== LCCORWIB
		@223 /* ~I... see. What happened with the llama?~ */
		== NEERAJ
		@224 /*  ~Oh, one of my friends was able to counteract the spell, but not before my llama friend spit on my shoes.~ */
		== LCCORWIB
		@225 /* ~I'm glad. Not about your shoes, but that your friend is back to normal. It must have been quite the experience.~ */
EXIT
//}

//{ region Dialog B-41
CHAIN
	IF ~
		Global("LCA_Banter_CorwinNeera", "GLOBAL", 4)
	~ THEN LCCORWIB BCorwinNeera1
		@502 /* ~You know, Neera, Imoen here studied under one of the finest mages in Baldur's Gate.~ [NOSOUND] */
		DO ~
			SetGlobal("LCA_Banter_CorwinNeera", "GLOBAL", 5)
			ClearActions(Myself)
			ClearActions("Neera")
		~ 
		== NEERAJ
		@503 /* ~Really? Who?~ */
		== LCCORWIB
		@504 /* ~Her name is Liia Jannath, she is part of the Council of Four. I'm sure Imoen can help share what she learned to help you better control your magic.~  */
		== IMOENJ
		@505 /* ~Yes, that's right. Neera, if you have the time, I'd like to show you some focusing techniques. I'm not as great a teacher as Liia is but I'm sure you'll benefit.~  */
		== NEERAJ
		@506 /* ~Ah thanks, but no thanks.~ */
		== LCCORWIB
		@507 /* ~Neera? Why not take Imoen up on her offer?~ */
		== NEERAJ
		@508 /* ~The unpredictability of my wild magic is one of the things that makes me, well, me. I guess I don't want to turn into a boring old mage - not that you are boring, Imoen! Just the opposite!~ */
		== IMOENJ
		@509 /* ~I understand the need to carve out your own niche in life. Still, I think you would benefit from what I can show you. My offer stands should you decide to reconsider.~ */
		== NEERAJ
		@510 /*  ~Thanks. Maybe someday I will. For now, though, I just want to be myself.~ */
EXIT
//}

//Hexxat Banters

//{ region Dialog B-42
CHAIN
	IF ~
		Global("LCA_Banter_CorwinHexxat", "GLOBAL", 4)
	~ THEN LCCORWIB BCorwinHexxat1
		@204 /* ~Hexxat.~ [LCCORB37] */
		DO ~
			SetGlobal("LCA_Banter_CorwinHexxat", "GLOBAL", 5)
			ClearActions(Myself)
			ClearActions("Hexxat")
		~ 
		== HEXXATJ
		IF ~
			!Global("LCA_CorwinPromoted", "GLOBAL", 1)
		~
		@205 /* ~Yes, Captain?~ */
		== HEXXATJ
		IF ~
			Global("LCA_CorwinPromoted", "GLOBAL", 1)
		~
		@756 /* ~Yes, Major?~ */
		== LCCORWIB
		@206 /* ~This is your one warning.~ */
		= @207 /* ~Leave, now. Go back to your crypt, or wherever it is your kind comes from.~ */
		== HEXXATJ
		@208 /* ~When <CHARNAME> wishes for me to depart, then I will do so, but not before then. ~ */
		== LCCORWIB
		@209 /* ~You would be wise to reconsider. You may have <PRO_HIMHER> fooled, but not me.~ */
		== HEXXATJ
		@210 /* ~I see. And if I don't?~ */
		== LCCORWIB
		@211 /* ~Then you will be removed. One way, or the other.~ */
		== HEXXATJ
		@212 /* ~Brave words... but such empty threats are beneath you.~ */
EXIT
//}

//Korgan Banters

//{ region Dialog B-43
CHAIN
	IF ~
		Global("LCA_Banter_CorwinKorgan", "GLOBAL", 2)
	~ THEN LCCORWIB BCorwinKorgan1
		@138 /* ~Get your filthy hands off me!~ [LCCORB05] */
		DO ~
			SetGlobal("LCA_Banter_CorwinKorgan", "GLOBAL", 3)
			ClearActions(Myself)
			ClearActions("Korgan")
		~ 
		== KORGANJ
		IF ~
			!Global("LCA_CorwinPromoted", "GLOBAL", 1)
		~
		@144 /* ~But Captain, ye be the rarest of sights! A strong beauty, in uniform no less! ~ */
		== KORGANJ
		IF ~
			Global("LCA_CorwinPromoted", "GLOBAL", 1)
		~
		@758 /* ~But Major, ye be the rarest of sights! A strong beauty, in uniform no less! ~ */
		== KORGANJ
		@139 /*  ~Ole Korgan nae hath seen one such as yerself. I simply needed a hand on yer wondrous bottom to see if ye be an illusion.~*/
		== LCCORWIB
		@140 /* ~Well, I hope you got all you needed. Touch me like that again, dwarf, and you'll regret it.~ */
		== KORGANJ
		@141 /* ~Aye, doth ye be a prude? Ye ain't felt true pleasure till ye hath lain with a master of eroticism, such as I.~ */
		== LCCORWIB
		@142 /* ~Hah, don't make me laugh. No one in their right mind would share their bed with you.~ */
		== KORGANJ
		@143 /*   ~Bed, floor, or field doth make no difference to I, longlimbs. You are nae ready now, but when ye are, come and see Korgan for a night you shan't forget. ~ */
EXIT
//}

//{ region Dialog B-44
CHAIN
	IF ~
		Global("LCA_Banter_CorwinKorgan", "GLOBAL", 4)
	~ THEN LCCORWIB BCorwinKorgan1
		@194 /*  ~What is it Korgan?~ [LCCORB42] */
		DO ~
			SetGlobal("LCA_Banter_CorwinKorgan", "GLOBAL", 5)
			ClearActions(Myself)
			ClearActions("Korgan")
		~ 
		== KORGANJ
		@195 /* ~Aye, girlie. I feel yer eyes on me rear in battle. Doth ye like what ye see?~ */
		== LCCORWIB
		@196 /*  ~Not particularly, no. Well - I must admit that your skill with the axe is impressive.~ */
		== KORGANJ
		@197 /* ~Aye, as is your skill with the bow. Nae hath I seen so many foes fall before I can even reach em. ~ */
		=
		@198 /* ~Don't you worry my beauty. Ole Korgan will stay at the front and keep ye safe. Just leave a few for me, will ye? Me axe doth get thirsty from time to time.~ */
		== LCCORWIB
		@199 /* ~Duly noted. ~ */
EXIT
//}

//Viconia Banters
//{ region Dialog B-45
CHAIN
	IF ~
		Global("LCA_Banter_CorwinViconia", "GLOBAL", 2)
		OR(2)
			!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
			Gender(Player1, FEMALE)
	~ THEN LCCORWIB BCorwinViconia1A
		@114 /* ~I'm watching you, drow. Don't you even think about betraying us.~ [LCCORB03] */
		DO ~
			SetGlobal("LCA_Banter_CorwinViconia", "GLOBAL", 3)
			ClearActions(Myself)
			ClearActions("Viconia")
		~ 
		== VICONIJ
		IF ~
			!Global("LCA_CorwinPromoted", "GLOBAL", 1)
		~
		@115 /* ~I noticed. See something you like, Captain?~ */
		== VICONIJ
		IF ~
			Global("LCA_CorwinPromoted", "GLOBAL", 1)
		~
		@759 /* ~I noticed. See something you like, Major?~ */
		== LCCORWIB
		@116 /*  ~What? No, of course not!~ */
		== VICONIJ
		@117 /* ~Oh come now, Schael. It is quite natural for females in our society to express and act upon their attraction for one another. Do not be bashful, my dear.~ */
		== LCCORWIB
		@118 /* ~Hmph. I'd never -- not with a drow!~ */
		== VICONIJ
		@119 /* ~Relax, Corwin. I am not interested in you, at least not in that way. I've found that males are more to my liking. And you?~ */
		== LCCORWIB
		@120 /*   ~Just... just don't try anything! Got it?~ */
		== VICONIJ
		IF ~
			!Global("LCA_CorwinPromoted", "GLOBAL", 1)
		~
		@121 /* ~Of course. I would never do anything to upset you, Captain.~   */
		== VICONIJ
		IF ~
			Global("LCA_CorwinPromoted", "GLOBAL", 1)
		~
		@760 /* ~Of course. I would never do anything to upset you, Major.~   */
EXIT
//}

//{ region Dialog B-46
CHAIN
	IF ~
		Global("LCA_Banter_CorwinViconia", "GLOBAL", 2)
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
		Gender(Player1, MALE)
	~ THEN LCCORWIB BCorwinViconia1B
		@114 /* ~I'm watching you, drow. Don't you even think about betraying us.~ [LCCORB03] */
		DO ~
			SetGlobal("LCA_Banter_CorwinViconia", "GLOBAL", 3)
			ClearActions(Myself)
			ClearActions("Viconia")
		~ 
		== VICONIJ
		IF ~
			!Global("LCA_CorwinPromoted", "GLOBAL", 1)
		~
		@115 /* ~I noticed. See something you like, Captain?~ */
		== VICONIJ
		IF ~
			Global("LCA_CorwinPromoted", "GLOBAL", 1)
		~
		@759 /* ~I noticed. See something you like, Major?~ */
		== LCCORWIB
		@116 /*  ~What? No, of course not!~ */
		== VICONIJ
		@117 /* ~Oh come now, Schael. It is quite natural for females in our society to express and act upon their attraction for one another. Do not be bashful, my dear.~ */
		== LCCORWIB
		@118 /* ~Hmph. I'd never -- not with a drow!~ */
		== VICONIJ
		@236 /* ~Relax, Corwin. I am not interested in you, at least not in that way. I've found that males are more to my liking... as you have, judging from your interactions with <CHARNAME>.~*/
		== LCCORWIB
		@120 /*   ~Just... just don't try anything! Got it?~ */
		== VICONIJ
		IF ~
			!Global("LCA_CorwinPromoted", "GLOBAL", 1)
		~
		@121 /* ~Of course. I would never do anything to upset you, Captain.~   */
		== VICONIJ
		IF ~
			Global("LCA_CorwinPromoted", "GLOBAL", 1)
		~
		@760 /* ~Of course. I would never do anything to upset you, Major.~   */
EXIT
//}

//{ region Dialog B-47
CHAIN
	IF ~
		Global("LCA_Banter_CorwinViconia", "GLOBAL", 4)
	~ THEN LCCORWIB BCorwinViconia2
		@416 /* ~Light and warmth... I'm glad for both.~ [BD68278] */
		DO ~
			SetGlobal("LCA_Banter_CorwinViconia", "GLOBAL", 5)
			ClearActions(Myself)
			ClearActions("Viconia")
		~ 
		== VICONIJ
		@417 /* ~I'm glad someone is. The warmth I don't mind, but I'll never understand how you surfacers can enjoy being bathed in this blinding light.~ */
		== LCCORWIB
		@418 /*   ~I imagine it's as hard for you as it would be for me living underground.~ */
		== VICONIJ
		@419 /* ~It would be harder for you, I'm afraid. For all of your skill and bravado, you wouldn't last long on your own in the Underdark. Few would.~~ */
		=
		@420 /* ~There, the threats come from horrors that are beyond your comprehension.~ */
		== LCCORWIB
		@421 /* ~And here?~ */
		== VICONIJ
		IF ~
			!Global("LCA_CorwinPromoted", "GLOBAL", 1)
		~
		@422 /* ~...I told you that I'd never do anything to upset you, Captain. You wouldn't like what I have to say.~ */
		== VICONIJ
		IF ~
			Global("LCA_CorwinPromoted", "GLOBAL", 1)
		~
		@761 /* ~...I told you that I'd never do anything to upset you, Major. You wouldn't like what I have to say.~ */
		== LCCORWIB
		@423 /* ~I'd rather you speak your mind, but fair enough. Let's get going.~ */
EXIT
//}

//{ region Dialog B-48
CHAIN
	IF ~
		Global("LCA_Banter_CorwinViconia", "GLOBAL", 6)
	~ THEN VICONIJ BCorwinViconia3
		@559 /* ~These human cities make me want to scream.~ [LCCORB64] */
		DO ~
			SetGlobal("LCA_Banter_CorwinViconia", "GLOBAL", 7)
			ClearActions(Myself)
			ClearActions("Viconia")
		~ 
		== LCCORWIB
		@424 /* ~What was that?~ */
		== VICONIJ
		@425 /* ~The filth, the stench, the rabble - how can you stand it!?~ */
		== LCCORWIB
		@426 /*   ~It was your decision to come to the surface. Deal with it.~ [LCCORB54] */
		== VICONIJ
		@427 /* ~Ah, the surface. Where bigoted fools attack others based soley on their appearance... like your precious Flaming Fist.~ */
		== LCCORWIB
		@428 /* ~This must be what you wanted to get off your chest earlier.~ */
		=
		@429 /* ~Let me remind you, drow, that your kind has a well-earned reputation for violence and treachery. The Flaming Fist works to protect the innocent all threats, including those posed by the drow.~  */
		== VICONIJ
		@430 /* ~Is that so? Then why are your cities full of thieves, slavers, molesters and murderers, all roaming free? It seems to me that your kind can learn a thing or to from the drow when it comes to the administration of justice and punishment!~ */
		== LCCORWIB
		@431 /* ~I don't have the time to argue about the criminal justice system. It's far from perfect, but we are doing the best that we can.~ */
		=
		@432 /*  ~What matters is that you've remained loyal thus far, which is more than I expected. Keep it up and I promise you won't need to worry about your safety while on the surface.~ */
		== VICONIJ
		IF ~
			!Global("LCA_CorwinPromoted", "GLOBAL", 1)
		~
		@433 /*  ~I.. I appreciate that, Captain.~ */
		== VICONIJ
		IF ~
			Global("LCA_CorwinPromoted", "GLOBAL", 1)
		~
		@762 /*  ~I.. I appreciate that, Major.~ */
		== LCCORWIB
		@435 /* ~Just remember what I said - you'll have nothing to worry about so long as you remain true to us.~ */
EXIT
//}

//Imoen Banters

//{ region Dialog B-49
CHAIN
	IF ~
		Global("LCA_Banter_CorwinImoen", "GLOBAL", 2)
	~ THEN LCCORWIB BCorwinImoen1
		@226 /* ~Imoen - what do you need?~ [LCCORB58] */ 
		DO ~
			SetGlobal("LCA_Banter_CorwinImoen", "GLOBAL", 3)
			ClearActions(Myself)
			ClearActions("Imoen")
		~ 
		== IMOEN2J
		IF ~
			!Global("LCA_CorwinPromoted", "GLOBAL", 1)
		~
		@227 /* ~Nothing, Captain Corwin. I wanted to tell you that I'm glad you're here. I know it's been difficult being away from your family.~ */
		== IMOEN2J
		IF ~
			Global("LCA_CorwinPromoted", "GLOBAL", 1)
		~
		@763 /* ~Nothing, Major Corwin. I wanted to tell you that I'm glad you're here. I know it's been difficult being away from your family.~ */
		== LCCORWIB
		@228 /*  ~I'm just glad that you're free from the wizard. Duke Jannath was very worried when she learned that you'd been kidnapped.~ */
		== IMOEN2J
		@229 /* ~Liia was worried about me? I miss her... she's a wonderful person, and a great teacher.~ */
		== LCCORWIB
		@230 /* ~Don't worry, you'll see her again once this is over. I'm sure she'd be proud of your progress in the magical arts.~ [LCCORB59] */
		== IMOEN2J
		IF ~
			Global("LCA_IrenicusBeat", "GLOBAL", 1)
		~
		@798 /* ~I hope so. My magic pales in comparison to what Irenicus possessed.~ */
		== IMOEN2J
		IF ~
			!Global("LCA_IrenicusBeat", "GLOBAL", 1)
		~
		@231 /* ~I hope so. My magic pales in comparison to Irenicus.~ */
		== LCCORWIB
		IF ~
			Global("LCA_IrenicusBeat", "GLOBAL", 1)
		~
		@799 /* ~His magic didn't help him in the end. You're an essential part of this team, and your contributions are valued, by all of us.~ */
		== LCCORWIB
		IF ~
			!Global("LCA_IrenicusBeat", "GLOBAL", 1)
		~
		@232 /* ~Don't compare your skills to those of that madman. You're an essential part of this team, and your contributions are valued, by all of us.~~ */
		== IMOEN2J
		IF ~
			!Global("LCA_CorwinPromoted", "GLOBAL", 1)
		~
		@233 /* ~Thanks, Captain.~  */
		== IMOEN2J
		IF ~
			Global("LCA_CorwinPromoted", "GLOBAL", 1)
		~
		@764/* ~Thanks, Major.~  */
		== LCCORWIB
		@234 /* ~Imoen, I consider you a friend. There's no need to address me by rank - Schael will do just fine.~ */
		== IMOEN2J
		@235 /* ~I too consider you a friend, Schael. Thank you.~  */
EXIT
//}

//{ region Dialog B-50
CHAIN 
	IF ~
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
		Global("LCA_CorwinImoenSoulTalk", "GLOBAL", 1)
	~ THEN LCCORWIB BCorwinImoenSoulA
		@565 /*  ~Imoen, I can't tell you how relieved I am that you're better.~ [NOSOUND] */
		DO ~
			SetGlobal("LCA_CorwinImoenSoulTalk", "GLOBAL", 2)
		~
		== IMOENJ
		@566 /* ~Yes, Schael. With my soul returned, I feel like myself again.~ */
		== LCCORWIB
		@567 /* ~Thank goodness. I feel like <CHARNAME>'s becoming more and more distant of late. I'm very worried about <PRO_HIMHER>.~ */
		== IMOENJ
		@569 /* ~Once we defeat Irenicus and take back what was stolen from <CHARNAME>, I'm sure that <PRO_HESHE> will be back to normal.~ */
		= @570 /* ~The two of you have made it this far, Schael. Don't give up hope of a future together.~ */
		== LCCORWIB
		@571 /* ~Right... thank you, Imoen. Let's go. ~  */
EXIT
//}

//{ region Dialog B-51
CHAIN 
	IF ~
		!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
		Global("LCA_CorwinImoenSoulTalk", "GLOBAL", 1)
	~ THEN LCCORWIB BCorwinImoenSoulB
		@565 /*  ~Imoen, I can't tell you how relieved I am that you're better.~ [NOSOUND] */
		DO ~
			SetGlobal("LCA_CorwinImoenSoulTalk", "GLOBAL", 2)
		~
		== IMOENJ
		@566 /* ~Yes, Schael. With my soul returned, I feel like myself again.~ */
		== LCCORWIB
		@567 /* ~Thank goodness. I feel like <CHARNAME>'s becoming more and more distant of late. I'm very worried about <PRO_HIMHER>.~ */
		== IMOENJ
		@569 /* ~Once we defeat Irenicus and take back what was stolen from <CHARNAME>, I'm sure that <PRO_HESHE> will be back to normal.~ */
		== LCCORWIB
		@571 /* ~Right... thank you, Imoen. Let's go. ~  */
EXIT
//}

//{ region Dialog B-52
CHAIN
	IF ~
		Global("LCA_Banter_CorwinImoen", "GLOBAL", 4)
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN LCCORWIB BCorwinImoen2A
		@448 /* ~Imoen, could I ask you something?~ [LCCORB57] */
		DO ~
			SetGlobal("LCA_Banter_CorwinImoen", "GLOBAL", 5)
			ClearActions(Myself)
			ClearActions("Imoen")
		~ 
		== IMOEN2J
		@449 /* ~Sure, Schael. What's on your mind?~*/
		== LCCORWIB
		@450 /*  ~You grew up with <CHARNAME>, in Candlekeep, right?~ */
		== IMOEN2J
		@451 /* ~Yes, that's right.~*/
		== LCCORWIB
		@452 /* ~What was <PRO_HESHE> like growing up? What were some of <PRO_HISHER> hobbies?~ */
		=
		@457 /* ~I ask because I love <PRO_HIMHER> dearly, and in some ways, I feel that I don't know <PRO_HIMHER> as well as I should.~ */
		== IMOEN2J
		@454 /* ~Oh, I've got lots of stories... I think you'll like the one about the time <PRO_HESHE> first tried to ... (they have a long and animated discussion, though you can't quite make out what they are saying)~ */
		== LCCORWIB
		@455 /* ~(She bursts into laughter) Really? (She looks at you) I would never have guessed!~ */
		=
		@456 /* ~Hahah... thank you Imoen. It sounds like the two of you had some fun times together.~ */
		== IMOEN2J
		@458 /* ~Definitely.~  */
EXIT
//}

//{ region Dialog B-53
CHAIN
	IF ~
		Global("LCA_Banter_CorwinImoen", "GLOBAL", 4)
		!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN LCCORWIB BCorwinImoen2A
		@448 /* ~Imoen, could I ask you something?~ [NOSOUND] */
		DO ~
			SetGlobal("LCA_Banter_CorwinImoen", "GLOBAL", 5)
			ClearActions(Myself)
			ClearActions("Imoen")
		~ 
		== IMOEN2J
		@449 /* ~Sure, Schael. What's on your mind?~*/
		== LCCORWIB
		@450 /*  ~You grew up with <CHARNAME>, in Candlekeep, right?~ */
		== IMOEN2J
		@451 /* ~Yes, that's right.~*/
		== LCCORWIB
		@452 /* ~What was <PRO_HESHE> like growing up? What were some of <PRO_HISHER> hobbies?~ */
		=
		@453 /* ~I ask because in many ways, I feel that I know <PRO_HIMHER> very well, but in other ways, not so much.~ */
		== IMOEN2J
		@454 /* ~Oh, I've got lots of stories... I think you'll like the one about the time <PRO_HESHE> first tried to ... (they have a long and animated discussion, though you can't quite make out what they are saying)~ */
		== LCCORWIB
		@455 /* ~(She bursts into laughter) Really? (She looks at you) I would never have guessed!~ */
		=
		@456 /* ~Hahah... thank you Imoen. It sounds like the two of you had some fun times together.~ */
		== IMOEN2J
		@458 /* ~Definitely.~  */
EXIT
//}

//Edwin Banters

//{ region Dialog B-54
CHAIN
	IF ~
		Global("LCA_CorwinEdwinThay", "GLOBAL", 1)
	~ THEN LCCORWIB BCorwinEdwinThay
		@700 /* ~Edwin, what was that about? Why are the Thayans after you?~ */
		DO ~
			SetGlobal("LCA_CorwinEdwinThay", "GLOBAL", 2)
		~
		== EDWINJ
		@701 /* ~It is not your concern. You needn't worry about that fool Degardan.~ */
		== LCCORWIB
		@702 /* ~We covered for you. The least you can do is to tell us what's going on.~ */
		== EDWINJ
		@703 /* ~You want to know? Fine! I expressed some spirited ... criticism (yes, that is a good way to put it) of the ruling clan, and was exiled! The fools!~ */
		== LCCORWIB
		@704 /* ~Well, that's not surprising. You had to know that your mouth would get you into trouble eventually. It doesn't explain why they're after you now, though.~*/
		== EDWINJ
		@705 /* ~(Why, why, WHY won't this woman leave me alone!) Before I was exiled, I ... accessed certain tomes of knowledge that were forbidden to me. It's how I learned of the Nether Scroll!~*/
		=
		@706 /* ~And once I learned of their decision to exile me, I may have pilfered a few baubles here and there, to pay for certain provisions and amenities.~*/
		== LCCORWIB
		@707 /* ~Provisions and amenities, sure. I'm sure the brothels appreciated your patronage.~*/
EXIT
//}

//{ region Dialog B-55
CHAIN
	IF ~
		Global("LCA_EdwinWasMale", "GLOBAL", 1)
		Global("LCA_CorwinEdwinFemale", "GLOBAL", 1)
	~ THEN LCCORWIB BCorwinEdwin2
		@178 /*  ~Well, what have we here?~ [LCCORB38] */
		DO ~
			SetGlobal("LCA_CorwinEdwinFemale", "GLOBAL", 2)
		~
		=
		@179 /* ~I can hear the catcalls from the sailors at the Blushing Mermaid already.~ */
		=
		@180 /* ~...Can't say I'd blame them, either.~ */
		== EDWINJ
		@181 /*~Quiet, you flirtatious wench! Those who would dare catcall the great Odesseiron shall suffer his -  erm.. her wrath!~ */
EXIT
//}

//{ region Dialog B-56
CHAIN
	IF ~
		Global("LCA_Banter_CorwinEdwin", "GLOBAL", 2)
		Gender("Edwin",MALE)
	~ THEN LCCORWIB BCorwinEdwin1
		@106 /* ~Edwin, a word, please.~ [LCCORB06]*/
		DO ~
			SetGlobal("LCA_Banter_CorwinEdwin", "GLOBAL", 3)
			ClearActions(Myself)
			ClearActions("Edwin")
		~ 
		== EDWINJ
		@107 /* ~Yes? What is it that you want? (Can't this cretin see that I am busy?)~ */
		== LCCORWIB
		@108 /*  ~As much as I hate to admit it, you are one of the finest spellcasters I have ever seen. You are an essential part of our success.~ */
		== EDWINJ
		@109 /* ~Oh.. *Ahem* Yes, your acknowledgement of my superiority was long overdue, though late is better than never.~ */
		=
		@123 /* ~You are quite talented as well, though your skills pale to those of the great Odesseiron. (What is she after?)~ */
		== LCCORWIB
		@110 /*  ~I can still hear you when you do that, you know.~ */
		== EDWINJ
		@111 /* ~When I do what? (Is this some sort of Flaming Fist trick? Not likely, as the witless wench lacks the guile to fool me.)~*/
		= @122 /* ~(Ah, of course. Her infatuation is apparent. Patience - I must not be seen as desparate.)~  */
		== LCCORWIB
		@112 /*   ~Ugh. Why do I bother.~ */
		== EDWINJ
		@113 /* ~(Well played, Odesseiron, well played. She will assume her rightful position at your feet before long.)~   */
EXIT
//}

//{ region Dialog B-57
CHAIN
	IF ~
		Global("LCA_Banter_CorwinEdwin", "GLOBAL", 4)
	~ THEN LCCORWIB BCorwinEdwin2
		@392 /*  ~What is it, Edwin?~ [LCCORB42]*/
		DO ~
			SetGlobal("LCA_Banter_CorwinEdwin", "GLOBAL", 5)
			ClearActions(Myself)
			ClearActions("Edwin")
		~ 
		== EDWINJ
		@393 /* ~I wish to discuss your potential.~ */
		== LCCORWIB
		@394 /*   ~My potential?~ */
		== EDWINJ
		@395 /* ~Yes. It is within my power to reshape you, and your destiny - not literally, of course. (Your shape is quite pleasing to me, after all).~*/
		=
		@396 /* ~What I mean is that I can teach you the mystical arts, and show you secrets passed through the eons to unlock your power! (Yes, true power!)~ */
		== LCCORWIB
		@397 /*  ~I see.. and what would you want in exchange?~ */
		== EDWINJ
		@398 /* ~You will leave these simians and become bethrothed to me.~*/
		== LCCORWIB
		@399 /*  ~Hah! Are you serious?~ */
		== EDWINJ
		@400 /* ~Of course I am! (Why wouldn't I be!?)~   */
		== LCCORWIB
		@401 /*   ~Well, then. Give me some time to consider your generous offer, Edwin.~ */
		== EDWINJ
		@402 /* ~Very well, but do not wait too long. I am eager to begin your instruction.~ */
EXIT
//}

//{ region Dialog B-58
CHAIN
	IF ~
		Global("LCA_Banter_CorwinEdwin", "GLOBAL", 6)
	~ THEN LCCORWIB BCorwinEdwin3
		@404 /*  ~Edwin? What is it?~ [LCCORB42] */
		DO ~
			SetGlobal("LCA_Banter_CorwinEdwin", "GLOBAL", 7)
			ClearActions(Myself)
			ClearActions("Edwin")
		~ 
		== EDWINJ
		@405 /* ~It is time for you to make your decision. (Yes, I have waited quite long enough.) Will you become by bethrothed in exchange for the mystical knowledge I offer you?~ */
		== LCCORWIB
		@406 /*   ~Sorry - I'm not interested in the secrets of a group of maladjusted wizards, or becoming your wife.~ */
		=
		@407 /*  ~Well, on second thought...~*/
		=
		@408 /* ~Yes, there is one thing you could teach me.~ */
		== EDWINJ
		@409 /* ~Conjuration of a fire elemental? The art of mental domination? The doubling of one's - ~*/
		== LCCORWIB
		@410 /*   ~No, nothing like that.~ */
		== EDWINJ
		@411 /* ~What is it then?~  */
		== LCCORWIB
		@412 /* ~Your robes - how do you keep them so clean? The color is as vibrant as the first time I saw you.~ */
		== EDWINJ
		@413 /* ~Small minded fool! I offer you power, tutelage and a lifetime of exquisite lovemaking, and you are more concerned with laundry techniques!~ */
		== LCCORWIB
		@414 /* ~Relax. I'm just joking with you - about your robes anyway. I've no inclination to take you up on your offer. Nor will I ever.~  */
		== EDWINJ
		@415 /* @415 = ~So be it. I should have expected such from a Flaming Fist wench. You will rue the day you rejected Edwin Odesseiron!~ */
EXIT
//}

//Jan Banters

//{ region Dialog B-59
CHAIN
	IF ~
		Global("LCA_Banter_CorwinJan", "GLOBAL", 2)
	~ THEN LCCORWIB BCorwinJan1
		@74 /* ~What... what is that smell?~ [LCCORB23] */
		DO ~
			SetGlobal("LCA_Banter_CorwinJan", "GLOBAL", 3)
			ClearActions(Myself)
			ClearActions("Jan")
		~ 
		== JANJ
		IF ~
			!Global("LCA_CorwinPromoted", "GLOBAL", 1)
		~
		@75 /* ~Ah Captain! Just warming up some turnip stew. Would you like to try some?~ */
		== JANJ
		IF ~
			Global("LCA_CorwinPromoted", "GLOBAL", 1)
		~
		@765 /* ~Ah Major! Just warming up some turnip stew. Would you like to try some?~ */
		== LCCORWIB
		@76 /*  ~Um... sure, Jan.~ */
		== JANJ
		@77 /* ~I added a few spices to give it a nice kick. I hope you find it to you liking!~ */
		== LCCORWIB
		@78 /* ~Wow that's ... actually very good. Can I have another taste? */
		== JANJ
		@79 /* ~Yes, of course!  */
		== LCCORWIB
		@80 /*  ~Mm. I taste beef, turnips, tomatoes, red peppers, and ... what is that? Kind of an earthy, fruity taste?~  */
		== JANJ
		@81 /*~Saffron! I had it imported fresh from one of the eastern merchant guilds.~  */
		== LCCORWIB
		@511 /* ~Could I have the recipe? I'd like to make some for my father and daughter when I get home.~ */
		== JANJ
		@512 /* ~Of course, my dear. Come see me later, I'll write it down for you.~ */
		== LCCORWIB
		@513 /* ~Thanks, Jan.~ */
EXIT
//}

//{ region Dialog B-60
CHAIN
	IF ~
		Global("LCA_Banter_CorwinJan", "GLOBAL", 4)
	~ THEN LCCORWIB BCorwinJan2
		@514 /* ~Jan? About the turnip stew recipe - ~ [NOSOUND] */
		DO ~
			SetGlobal("LCA_BackToBG_Jan", "GLOBAL", 1)
			SetGlobal("LCA_Banter_CorwinJan", "GLOBAL", 5)
			ClearActions(Myself)
			ClearActions("Jan")
		~ 
		== JANJ
		@515 /* ~Ah yes, here it is.~ */
		== LCCORWIB
		@516 /* Thanks again. ~ */
		== JANJ
		@82 /*~You know, I'm looking to expand my turnip business outside of Athkatla. Perhaps you can help me set up a stall in Baldur's Gate? I'd share the profits with you, of course.~ */
		== LCCORWIB
		@83 /*  ~Uh, I appreciate the offer, but I'm not much of a salesperson.~  */
		== JANJ
		@84 /* ~Nonsense! A beautiful woman such as yourself selling my turnips would do wonders for my business.~ */
		== LCCORWIB
		@85 /* ~Thanks? I think? */
		=@86 /* ~We can talk about this another time. Let's keep moving.~ [LCCORB24]*/
EXIT
//}

//Keldorn Banters

//{ region Dialog B-61
CHAIN 
	IF ~
		Global("LCA_CorwinAngryAtKeldorn", "GLOBAL", 2)
	~ THEN LCCORWIB BCorwinScoldKeldorn
		@609 /* ~Keldorn - what happened back there?~ */
		DO ~
			SetGlobal("LCA_CorwinAngryAtKeldorn", "GLOBAL", 3)
		~
		== KELDORJ
		@610 /* ~Captain?~ */
		== LCCORWIB
		@611 /* ~You nearly blew our cover!~ */
		== KELDORJ
		@612 /* ~I let my anger get the better of me, I'm afraid.~ */
		== LCCORWIB
		@613 /* ~Listen - if they suspect that we aren't drow, we're done for. There's no way we'd make it out of the Underdark alive.~ */
		== KELDORJ
		@614 /* ~I understand, Captain. I will hold my tongue while in the presence of the drow.~ */
		== LCCORWIB
		@615 /* Good. Let's go.~ */
EXIT
//}

//{ region Dialog B-62
CHAIN
	IF ~
		Global("LCA_Banter_CorwinKeldornOpt1", "GLOBAL", 2)
	~ THEN LCCORWIB BCorwinKeldorn1
		@473 /* ~Yes, Keldorn?~ [NOSOUND]*/
		DO ~
			SetGlobal("LCA_Banter_CorwinKeldornOpt1", "GLOBAL", 3)
			ClearActions(Myself)
			ClearActions("Keldorn")
		~ 
		== KELDORJ
		@474 /* ~Captain, I want to thank you, and <CHARNAME>, for the advice you gave me during the situation with my wife and Sir William.~ */
		=
		@475 /* ~I can't believe that I was willing to have her thrown in jail. ~ */
		== LCCORWIB
		@476 /* ~There's no need to thank me. It was clear that your anger got the better of you, and that you weren't thinking clearly.~ */
		== KELDORJ
		@477 /* ~That's a good way to put it - strong emotions can often cloud one's judgment. It's a lesson I've had to learn, and relearn, many times over the years.~ */
		== LCCORWIB
		@478 /* ~You and I both. I'm just glad I was able to help.~ */
		== KELDORJ
		@479 /* ~As am I. Come, my friend, there is work to be done.~*/
EXIT
//}

//{ region Dialog B-63
CHAIN
	IF ~
		Global("LCA_Banter_CorwinKeldorn", "GLOBAL", 2)
	~ THEN LCCORWIB BCorwinKeldorn1
		@60 /* ~Keldorn, a moment of your time?~ [LCCORB12] */
		DO ~
			SetGlobal("LCA_Banter_CorwinKeldorn", "GLOBAL", 3)
			ClearActions(Myself)
			ClearActions("Keldorn")
		~ 
		== KELDORJ
		IF ~
			!Global("LCA_CorwinPromoted", "GLOBAL", 1)
		~
		@61 /* ~Of course Captain. How can I help you?~ */
		== KELDORJ
		IF ~
			Global("LCA_CorwinPromoted", "GLOBAL", 1)
		~
		@766 /* ~Of course Major. How can I help you?~ */
		== LCCORWIB
		@62 /*  ~I understand that you have children.~ */
		== KELDORJ
		@145 /* ~Yes, two daughters. I love them dearly.~ */
		== LCCORWIB
		@146 /* How do you balance your duties to your Order with your responsibilities as a parent?~ */
		=
		@63 /* ~I ask because I have a daughter, and I feel like I am struggling to find the right balance.~ */
		== KELDORJ
		@64 /* ~That's something I've struggled with as well. There is no right answer. What is most important is that your daughter understands that you love her, and that at times it is necessary for you to be apart from her to perform your duties to the .. Flaming Fist, is it?~ */
		=
		@65 /* ~Who is helping to raise your child while you are on this assignment?~ */
		== LCCORWIB
		@66 /*  ~My father, thankfully. He's a retired Fist, so I know that she is safe with him.~ */
		== KELDORJ
		@200 /* ~That is good... I am pleased that you involve the child's grandfather in her life.~ */
EXIT
//}

//{ region Dialog B-64
CHAIN
	IF ~
		Global("LCA_Banter_CorwinKeldorn", "GLOBAL", 4)
		Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN LCCORWIB BCorwinKeldorn1
		@201 /* ~Yes, Keldorn?~ [BD68260]*/
		DO ~
			SetGlobal("LCA_Banter_CorwinKeldorn", "GLOBAL", 5)
			ClearActions(Myself)
			ClearActions("Keldorn")
		~ 
		== KELDORJ
		IF ~
			!Global("LCA_CorwinPromoted", "GLOBAL", 1)
		~
		@202 /* ~Captain, I do not mean to pry. You mentioned earlier that your father was raising your child, yes?~ */
		== KELDORJ
		IF ~
			Global("LCA_CorwinPromoted", "GLOBAL", 1)
		~
		@767 /* ~Major, I do not mean to pry. You mentioned earlier that your father was raising your child, yes?~ */
		== LCCORWIB
		@203 /* ~Yes, that's right.~ */
		== KELDORJ
		@67 /* ~And where is your husband? Is he not helping to raise her?~  */
		== LCCORWIB
		@68 /* ~I'm not married - her father has never been a part of her life, which in this case is a good thing. ~ */
		== KELDORJ
		@69 /* ~I see... it's important for a child's father, or a father figure, to be a part of a child's life.~  */
		== LCCORWIB
		@70 /* ~I agree... my father has had a tremendous impact on my life, and my daughter's. I hope I've found someone to fill that need for Rohma... */
		=
		@800 /* ~(She shoots a quick glance in your direction.)~*/
		=
		@801 /* ~Time will tell, I suppose.~*/
		=
		@71 /* ~I appreciate the advice - thank you, Keldorn.~ */
		== KELDORJ
		@72 /* ~Any time, my friend. Let us hope that we are both able to return to our families soon.~ */
EXIT
//}

//{ region Dialog B-65
CHAIN
	IF ~
		Global("LCA_Banter_CorwinKeldorn", "GLOBAL", 4)
		!Global("LCA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN LCCORWIB BCorwinKeldorn1
		@201 /* ~Yes, Keldorn?~ [BD68260] */
		DO ~
			SetGlobal("LCA_Banter_CorwinKeldorn", "GLOBAL", 5)
			ClearActions(Myself)
			ClearActions("Keldorn")
		~ 
		== KELDORJ
		IF ~
			!Global("LCA_CorwinPromoted", "GLOBAL", 1)
		~
		@202 /* ~Captain, I do not mean to pry. You mentioned earlier that your father was raising your child, yes?~ */
		== KELDORJ
		IF ~
			Global("LCA_CorwinPromoted", "GLOBAL", 1)
		~
		@767 /* ~Major, I do not mean to pry. You mentioned earlier that your father was raising your child, yes?~ */
		== LCCORWIB
		@203 /* ~Yes, that's right.~ */
		== KELDORJ
		@67 /* ~And where is your husband? Is he not helping to raise her?~  */
		== LCCORWIB
		@68 /* ~I'm not married - her father has never been a part of her life, which in this case is a good thing. ~ */
		== KELDORJ
		@69 /* ~I see... it's important for a child's father, or a father figure, to be a part of a child's life.~  */
		== LCCORWIB
		@73 /* ~I agree... my father has had a tremendous impact on my life, and the life of my daughter. I hope that one day I'll find someone to fill that need for Rohma...~ [LCCORB10]   */
		=
		@71 /* ~I appreciate the advice - thank you, Keldorn.~ */
		== KELDORJ
		@72 /* ~Any time, my friend. Let us hope that we are both able to return to our families soon.~ */
EXIT
//}

CHAIN
	IF ~~ THEN LCCORWIB BCorwinAnomen1B
		@54 /* ~You think I don't want to be home with my daughter and father? ~ [LCCORB60]*/
		= @55 /* ~I'm here to fulfil my duties to <CHARNAME>, the Grand Dukes, and the Flaming Fist. If you knew anything about duty or responsibility, you would understand.~ */
		== ANOMENJ
		@547 /* ~Why even join the Flaming Fist? You willingly put your daughter at risk of becoming an orphan!~ */
		== LCCORWIB
		@56 /* ~We don't all grow up in wealthy households. Some of us have to work to support their family, instead of playing dress up as a knight in shining armor.~ */
		== ANOMENJ
		@548 /* ~I beg your pardon?~  */
		== LCCORWIB
		@57 /* ~I think you heard me quite clearly. Let's move out.~ [LCCORB21] */
EXIT
//}

//{ region Dialog B-67
CHAIN
	IF ~
		Global("LCA_Banter_CorwinAnomen", "GLOBAL", 4)
		!Global("LCA_CorwinHatesAnomen", "GLOBAL", 1)
	~ THEN LCCORWIB BCorwinAnomen2
		@174 /* ~Anomen. What is it?~ [LCCORB02] */
		DO ~
			SetGlobal("LCA_Banter_CorwinAnomen", "GLOBAL", 5)
			ClearActions(Myself)
			ClearActions("Anomen")
		~ 
		== ANOMENJ
		IF ~
			!Global("LCA_CorwinPromoted", "GLOBAL", 1)
		~
		@164 /* ~Captain Corwin, I wish to apologize to you for my earlier behaviour.~ */
		== ANOMENJ
		IF ~
			Global("LCA_CorwinPromoted", "GLOBAL", 1)
		~
		@768 /* ~Major Corwin, I wish to apologize to you for my earlier behaviour.~ */
		== ANOMENJ
		@165 /* = ~It's just that I'm quite unaccustomed to seeing a woman serve in a military organization, let alone in a leadership position.~ */
		== LCCORWIB
		@166 /* ~The Flaming Fist doesn't care if a recruit is a man or a woman. What matters is their ability and willingness to do what's needed of them.~ */
		== ANOMENJ
		@167 /* ~They are fortunate to have you among their ranks. Your skill in battle is among the best I have seen, as is your ability to lead.~*/
		=
		@168 /* ~I have much to learn from your example.~ */
		== LCCORWIB
		@169 /* ~That's kind of you to say... thank you. I too should apologize.~  */
		== ANOMENJ
		@176 /* = ~For what?~ */
		== LCCORWIB
		@170 /* = ~My family is not wealthy. As much as I want to be home with my father and daughter, I need to work to support them.~ */
		=
		@171 /* = ~I have certain... pre-conceptions about people who come from wealth. It was unfair of me to apply them to you.~ */
		== ANOMENJ
		@172 /* = ~I understand. In Athkatla especially, there are many families that have acquired their wealth through... less than honorable means. I assure you, however, that my family is not one of them.~ */
		== LCCORWIB
		@173 /* @173 = ~It seems that we would both do well to, as they say, avoid judging a book by its cover.~  */
		== ANOMENJ
		IF ~
			!Global("LCA_CorwinPromoted", "GLOBAL", 1)
		~
		@175 /* ~Agreed, Captain.~ */
		== ANOMENJ
		IF ~
			Global("LCA_CorwinPromoted", "GLOBAL", 1)
		~
		@769 /* ~Agreed, Major.~ */
EXIT
//}

//Edwin Banters
 
// Jaheira Banters

//{ region Dialog B-68
CHAIN
	IF ~
		Global("LCA_Banter_CorwinJaheira", "GLOBAL", 2)
		Global("LCA_IrenicusBeat", "GLOBAL", 1)
	~ THEN LCCORWIB jahRemorseChain1
		@0 /* ~Jaheira.~ [LCCORB16] */
		DO ~
			SetGlobal("LCA_Banter_CorwinJaheira", "GLOBAL", 3)
			ClearActions(Myself)
			ClearActions("Jaheira")
		~
		=@1 /* ~I'm very sorry about Khalid. Your husband was good man, and a great warrior. Those who survived the siege on Bridgefort owe him their lives.~ */
		== JAHEIRAJ
		IF ~
			!Global("LCA_CorwinPromoted", "GLOBAL", 1)
		~
		@4 /* ~Thank you, Captain. The pain of his loss weighs heavily, though I am glad that the monster responsible is dead.~ */
		== JAHEIRAJ
		IF ~
			Global("LCA_CorwinPromoted", "GLOBAL", 1)
		~
		@770 /* ~Thank you, Major. The pain of his loss weighs heavily, though I am glad that the monster responsible is dead.~ */
		== LCCORWIB
		@3 /* ~As am I.~ */
EXIT
//}

//{ region Dialog B-69
CHAIN
	IF ~
		Global("LCA_Banter_CorwinJaheira", "GLOBAL", 2)
		!Global("LCA_IrenicusBeat", "GLOBAL", 1)
	~ THEN LCCORWIB jahRemorseChain2
		@0 /* ~Jaheira.~ [LCCORB16] */
		DO ~
			SetGlobal("LCA_Banter_CorwinJaheira", "GLOBAL", 3)
			ClearActions(Myself)
			ClearActions("Jaheira")
		~
		=@1 /* ~I'm very sorry about Khalid. Your husband was good man, and a great warrior. Those who survived the siege on Bridgefort owe him their lives.~ */
		== JAHEIRAJ
		IF ~
			!Global("LCA_CorwinPromoted", "GLOBAL", 1)
		~
		@2 /* ~Thank you, Captain. The pain of his loss weighs heavily. In time I will learn to cope with this, but for now I only wish to see Irenicus dead... and I am glad you are here to help in the hunt for that monster.~ */
		== JAHEIRAJ
		IF ~
			Global("LCA_CorwinPromoted", "GLOBAL", 1)
		~
		@771 /* ~Thank you, Major. The pain of his loss weighs heavily. In time I will learn to cope with this, but for now I only wish to see Irenicus dead... and I am glad you are here to help in the hunt for that monster.~ */
		== LCCORWIB
		@3 /* ~As am I.~ */
EXIT
//}

//{ region Dialog B-70
CHAIN
	IF ~
		Global("LCA_Banter_CorwinJaheira", "GLOBAL", 5)
	~ THEN LCCORWIB BCorwinJaheira1
		@30 /* ~(She adjusts the string on her bow)~ [NOSOUND]   */
		DO ~
			SetGlobal("LCA_Banter_CorwinJaheira", "GLOBAL", 6)
			ClearActions(Myself)
			ClearActions("Jaheira")
		~ 
		== JAHEIRAJ
		IF ~
			!Global("LCA_CorwinPromoted", "GLOBAL", 1)
		~
		@9 /* ~Captain, a word please.~*/
		== JAHEIRAJ
		IF ~
			Global("LCA_CorwinPromoted", "GLOBAL", 1)
		~
		@772 /* ~Major, a word please.~*/
		== LCCORWIB
		@10 /* ~Yes, Jaheira?~ */
		== JAHEIRAJ
		@11 /*  ~You are quite skilled as a fighter, far moreso than the Flaming Fist I've encountered in my travels. Where did you acquire such skill?~ */
		== LCCORWIB
		@12	/* ~My father was a Fist as well. He taught me how to fight at a young age. ~  */
		= @31 /* ~By the time I joined the Fist, I had more fighting ability than many of the officers, so I was placed into a more advanced training regimen to further refine my skills.~~*/
		== JAHEIRAJ
		@13	/*~I see, your father did you a great service. And your mother?~*/
		== LCCORWIB
		@14 /* ~My mother... that's a long story.~*/
		= @15 /* ~Let's leave it for another day, shall we?~*/
EXIT
//}

//{ region Dialog B-71
CHAIN
	IF ~
		Global("LCA_Banter_CorwinJaheira", "GLOBAL", 7)
	~ THEN LCCORWIB BCorwinJaheira2
		@0 /* ~Jaheira.~*/
		DO ~
			SetGlobal("LCA_Banter_CorwinJaheira", "GLOBAL", 8)
			ClearActions(Myself)
			ClearActions("Jaheira")
		~ 
		== JAHEIRAJ
		IF ~
			!Global("LCA_CorwinPromoted", "GLOBAL", 1)
		~
		@17	/* ~Yes, Captain?~*/	
		== JAHEIRAJ
		IF ~
			Global("LCA_CorwinPromoted", "GLOBAL", 1)
		~
		@756 /* ~Yes, Major?~*/		
		== LCCORWIB
		@18 /* ~Earlier, you wanted to know about my mother...~*/
		= 
		@19 /* ~I did not know her well. You see, she was killed when I was very young.~*/
		== JAHEIRAJ
		@20 /* ~I am sorry to hear that. I did not mean to stir up bad memories...~*/
		== LCCORWIB
		@21 /* ~Yes.. my father does not speak of her often, but I know it still hurts him, and that he feels partly responsible.~*/
		== JAHEIRAJ
		@22 /* ~In what way?~*/
		== LCCORWIB
		@23 /* ~He was very committed to his duty, like I am. It left little time for other concerns, including my mother.~*/
		= @24 /* ~They had an argument one evening, and she left the house, I guess to cool off. She didn't make it back home.~*/
		== JAHEIRAJ
		@25 /* ~What happened?~*/
		== LCCORWIB
		@26 /* ~Some thug robbed her, and tried to rape her. When she fought back, he killed her.~*/
		== JAHEIRAJ
		@27 /* ~That's terrible... I am sorry that you had to lose your mother in such a way.~*/
		== LCCORWIB
		@28 /* ~That's when my father began teaching me how to fight. I often wonder how different things would be had she not been murdered...~*/
		== JAHEIRAJ
		IF ~
			!Global("LCA_CorwinPromoted", "GLOBAL", 1)
		~
		@29 /* ~Hm. I appreciate you sharing this with me, Captain. Such things are never easy to talk about.~*/
		== JAHEIRAJ
		IF ~
			Global("LCA_CorwinPromoted", "GLOBAL", 1)
		~
		@58 /* ~Hm. I appreciate you sharing this with me, Major. Such things are never easy to talk about.~*/
EXIT
//}

//Aerie Banters

//{ region Dialog B-72
CHAIN
	IF ~
		Global("LCA_Banter_CorwinAerie", "GLOBAL", 2)
	~ THEN LCCORWIB BCorwinAerie1
		@39 /* ~Aerie, what's wrong? You seem worried... more than usual, anyway.~ [LCCORB13] */
		DO ~
			SetGlobal("LCA_Banter_CorwinAerie", "GLOBAL", 3)
			ClearActions(Myself)
			ClearActions("Aerie")
		~  
		== AERIEJ
		IF ~
			!Global("LCA_CorwinPromoted", "GLOBAL", 1)
		~
		@40 /* ~It's n-nothing, Captain... well, can I ask you a question?~ */
		== AERIEJ
		IF ~
			Global("LCA_CorwinPromoted", "GLOBAL", 1)
		~
		@773 /* ~It's n-nothing, Major... well, can I ask you a question?~ */
		== LCCORWIB
		@41 /* ~Yes, what is it Aerie?~ */
		== AERIEJ
		@42 /* ~I often worry about how my s-scars affect how people think of me. You have scars as well, yet you are always so c-confident and assertive. Why don't your scars affect you in the same way that my scars affect me?~ */
		== LCCORWIB
		@43 /* ~Aerie, scars serve as a reminder to us. They show us that we are stronger than the person that tried to hurt us.~ */
		== AERIEJ
		@44 /* ~That's a.. an interesting way of looking at things... How did you get your s-scars?~ */
		== LCCORWIB
		@45 /* ~Through my duty to the Flaming Fist. This one here (she points under her right eye) came after I chased a thief into an alley... I triggered an acid trap. I learned an important lesson from that.~ */
		== AERIEJ
		@46 /* ~Oh dear! What did you l-learn? ~ */
		== LCCORWIB
		@47 /* ~Not to rush into things, and to evaluate the situation before taking action.~*/
		== AERIEJ
		@48 /* ~I see... couldn't the healers remove the scar?~ */
		== LCCORWIB
		@49 /* ~Yes, but like I said, the scars help me to avoid making the same mistakes. The same goes for emotional scars, Aerie.~*/
		== AERIEJ
		@50 /* ~I - I understand. Thank you... Schael.~ */
EXIT
//}

//{ region Dialog B-74
CHAIN
	IF ~
		Global("LCA_Banter_CorwinAerie", "GLOBAL", 5)
	~ THEN LCCORWIB BCorwinAerie2
		@124 /* ~This damn thing...~ [LCCORB39] */
		DO ~
			SetGlobal("LCA_Banter_CorwinAerie", "GLOBAL", 6)
			ClearActions(Myself)
			ClearActions("Aerie")
		~  
		== AERIEJ
		@125 /* ~Schael? What's wrong?~ */
		== LCCORWIB
		@126 /* ~It's nothing, Aerie... one of the links in the back of my armor is pinched up against my vest. I can't quite reach it to pull it loose.~ */
		== AERIEJ
		@127 /* ~Oh, please let me h-help you with that... there, is that better?~ */
		== LCCORWIB
		@128 /* ~Ah, yes.. much better. Thanks, Aerie.~ */
		== AERIEJ
		@100 /* ~Oh, y-you're welcome. Schael? Can I ask you a question?~ */
		== LCCORWIB
		@101 /* ~Sure. What's on your mind?~ */
		== AERIEJ
		IF ~
			!Global("LCA_AerieInBG", "GLOBAL", 1)
		~
		@102 /* ~I've encountered so many d-different people, cultures and races while in the circus. The circus never travelled to Baldur's Gate before. What are the people there like?~ */
		== AERIEJ
		IF ~
			Global("LCA_AerieInBG", "GLOBAL", 1)
		~
		@796 /* ~~In your travels, have you ever met one of my k-kind? An Avariel? Before me, I mean.~*/
		== LCCORWIB
		IF ~
			!Global("LCA_AerieInBG", "GLOBAL", 1)
		~
		@103 /* ~Not much different than Athkatla, Aerie. Most of the population is human, but there are dwarves, gnomes, elves, even some half-orcs in the city.~*/
		== AERIEJ
		IF ~
			!Global("LCA_AerieInBG", "GLOBAL", 1)
		~
		@104 /* ~I see.. have you m-met an Avariel before? Before me, I mean.~ */
		== LCCORWIB
		@87 /* ~Yes, <CHARNAME> and I have met one of your kind before.~*/
		== AERIEJ
		@88 /* ~R-really? What is their name?~ */
		== LCCORWIB
		@89 /* ~Ashatiel. Did you know her?~ */
		== AERIEJ
		@129 /* ~No... what is she like?~ */
		== LCCORWIB
		@90 /* @90 = ~She was.. striking in her appearance.. a great leader, and a fierce opponent.~ */
		== AERIEJ
		@91 /* @91 = ~Y-you mean you fought each other? But why?~ */
		== LCCORWIB
		@130 /* ~That's going to take some time to explain.. let's discuss this tomorrow - we have work to do.~ */
		== AERIEJ
		@131 /* ~Right.. okay, t-thank you, Schael.~ */
EXIT
//}

//{ region Dialog B-75
CHAIN
	IF ~
		Global("LCA_Banter_CorwinAerie", "GLOBAL", 7)
		Global("bd_asha_duel","global",3) //CHARNAME dueled Ashatiel honorably
	~ THEN LCCORWIB BCorwinAerie3A
		@132 /* ~Aerie, you wanted to learn more about Ashatiel.. do you have some time now?~ [LCCORB08]*/
		DO ~
			SetGlobal("LCA_Banter_CorwinAerie", "GLOBAL", 8)
			ClearActions(Myself)
			ClearActions("Aerie")
		~  
		== AERIEJ
		@133 /* ~Yes, Schael. Please continue with your story.~ */
		== LCCORWIB
		@92/* ~<CHARNAME> and I were part of a coalition of forces from Baldur's Gate, Daggerford and Waterdeep. We marched north from Baldur's Gate to rendevous with the coalition and confront Caelar Argent and her crusaders.~*/
		== AERIEJ
		@134 /* ~Caelar Argent? I-I'm sorry, who is she?~ */
		== LCCORWIB
		@93 /* ~Caelar was an Aasimar, and an extremely charismatic leader. She rallied many to her banner, in spite of the death and destruction that she and her army caused across the Sword Coast.~ */
		=
		@436 /* ~After a series of defeats at the hand of <CHARNAME> and the coalition, Caelar and her forces retreated north, back to Dragonspear castle.~ */
		== AERIEJ
		@437 /* ~I see.. and what was Ashatiel's role in this? Was she part of your c-coalition?~ */
		== LCCORWIB
		@438 /* ~No, Aerie, she wasn't.~ */
		=
		@105 /* ~Ashatiel was one of Caelar's most trusted lieutenants. When the coalition breached the walls of Dragonspear castle, she left the keep to challenge <CHARNAME> to a duel. <CHARNAME> accepted the challenge.~ */
		=
		@136 /* ~Ashatiel believed that killing <CHARNAME> would force the coalition to withdraw. <CHARNAME> believed that the crusaders defending the keep would surrender, if Ashatiel were killed. Whatever the outcome was, lives would be saved, on both sides.~ */
		=
		@135/* ~Offering to duel <CHARNAME> was an honorable gesture on her part. Honorable, and foolish.~ */
		== AERIEJ
		@94 /* ~W-what happened to her?~*/
		== LCCORWIB
		@439 /* ~She... no. That's enough for now. We'll finish next time. Let's get moving.~ */
EXIT
//}

//{ region Dialog B-76
CHAIN
	IF ~
		Global("LCA_Banter_CorwinAerie", "GLOBAL", 9)
		Global("bd_asha_duel","global",3) //CHARNAME dueled Ashatiel honorably
	~ THEN AERIEJ BCorwinAerie4A
		@441 /* ~Schael? Do you have time now to finish the story a-about Ashatiel?~ [NOSOUND] */
		DO ~
			SetGlobal("LCA_Banter_CorwinAerie", "GLOBAL", 10)
			ClearActions(Myself)
			ClearActions("LCCORWIN")
		~  
		== LCCORWIB
		@446 /* ~Ah, sure Aerie. We left off at the duel, between Ashatiel and <CHARNAME>.~*/
		=
		@95 /* ~Ashatiel fought bravely, but she was killed by <CHARNAME> after a long battle. In her last moments, she cried out for Caelar to save her, but no help came - I think she realized at that point that her faith in Caelar was misplaced.~   */
		== AERIEJ
		@96 /* ~But that's - that's cruel! How could <PRO_HESHE> have killed her? Wasn't there another way?~*/
		== LCCORWIB
		@447 /* ~Aerie, you don't understand - in killing Ashatiel, <CHARNAME> saved many lives, both crusader and coalition alike. Once she was dead, the crusaders taking part in the counterattack either fled or laid down their weapons.~ */
		=
		@137 /* ~I've no doubt that Ashatiel was a good person, and that she didn't deserve to die. But if I had to choose who'd survive between <CHARNAME> and Ashatiel, I'd choose <CHARNAME> every time. As you would, I believe.~ */
		== AERIEJ
		@98 /* ~I see... I'm sorry then that <CHARNAME> h-had to do that..~ */
		== LCCORWIB
		@99 /* ~So am I, Aerie. And so is <CHARNAME>. Do you know what the lesson from the story is?~ ~  */
		== AERIEJ
		@444 /* ~I think so.. but please, tell me.~ */
		== LCCORWIB
		@97 /* ~The lesson is this: war places people into untenable situations, and for that reason it must be avoided whenever possible.~ [LCCORB25] */
		== AERIEJ
		@445 /* ~I understand. Thank you, Schael.~ */
EXIT
//}

//{ region Dialog B-77
CHAIN
	IF ~
		Global("LCA_Banter_CorwinAerie", "GLOBAL", 7)
		!Global("bd_asha_duel","global",3) //CHARNAME refused to duel Ashatiel, or cheated
	~ THEN LCCORWIB BCorwinAerie3B
		@132 /* ~Aerie, you wanted to learn more about Ashatiel.. do you have some time now?~ [LCCORB08]*/
		DO ~
			SetGlobal("LCA_Banter_CorwinAerie", "GLOBAL", 8)
			ClearActions(Myself)
			ClearActions("Aerie")
		~ 
		== AERIEJ
		@133 /* ~Yes, Schael. Please continue with your story.~ */
		== LCCORWIB
		@92/* ~<CHARNAME> and I were part of a coalition of forces from Baldur's Gate, Daggerford and Waterdeep. We marched north from Baldur's Gate to rendevous with the coalition and confront Caelar Argent and her crusaders.~*/
		== AERIEJ
		@134 /* ~Caelar Argent? I-I'm sorry, who is she?~ */
		== LCCORWIB
		@93 /* ~Caelar was an Aasimar, and an extremely charismatic leader. She rallied many to her banner, in spite of the death and destruction that she and her army caused across the Sword Coast.~ */
		=
		@436 /* ~After a series of defeats at the hand of <CHARNAME> and the coalition, Caelar and her forces retreated north, back to Dragonspear castle.~ */
		== AERIEJ
		@437 /* ~I see.. and what was Ashatiel's role in this? Was she part of your c-coalition?~ */
		== LCCORWIB
		@438 /* ~No, Aerie, she wasn't.~ */
		=
		@147 /* ~Ashatiel was one of Caelar's most trusted lieutenants. When the coalition, led by <CHARNAME>, breached the walls of Dragonspear castle, she left the keep to lead the crusaders' counterattack. ~ */
		=
		@148 /* ~She showed great courage, but her efforts amounted to nothing.~ */
		== AERIEJ
		@94 /* ~W-what happened to her?~*/
		== LCCORWIB
		@439 /*  ~She... no. That's enough for now. We'll finish next time. Let's get moving.~ */
EXIT
//}

//{ region Dialog B-78
CHAIN
	IF ~
		Global("LCA_Banter_CorwinAerie", "GLOBAL", 9)
		!Global("bd_asha_duel","global",3) //CHARNAME refused to duel Ashatiel, or cheated
	~ THEN AERIEJ BCorwinAerie4B
		@441 /* ~Schael? Do you have time now to finish the story a-about Ashatiel?~ [NOSOUND] */
		DO ~
			SetGlobal("LCA_Banter_CorwinAerie", "GLOBAL", 10)
			ClearActions(Myself)
			ClearActions("LCCORWIN")
		~ 
		== LCCORWIB
		@442 /* ~Ah, sure Aerie. Right, Ashatiel left the keep to lead the crusaders' counterattack.~ */
		=
		@150 /* ~She, and the other crusaders that took part in the counterattack fought bravely. <CHARNAME> rallied the coalition and defeated the crusaders, and Ashatiel was killed. We were victorious, but many lives on both sides were lost.~*/
		== AERIEJ
		@151 /* ~But that's - that's terrible! Wasn't there another way Schael, b-besides bloodshed?~*/
		== LCCORWIB
		@152 /* ~Listen, I've no doubt that Ashatiel was a good person, and that she didn't deserve to die. But it was either us, or Ashatiel.~ */
		== AERIEJ
		@153 /* ~I see... I'm sorry then that you and <CHARNAME> h-had to take part in that..~   */
		== LCCORWIB
		@99 /* ~So am I, Aerie. And so is <CHARNAME>. Do you know what the lesson from the story is?~   */
		== AERIEJ
		@444 /* ~I think so, but please tell me.~ */
		== LCCORWIB
		@97 /* ~The lesson is this: war places people into untenable situations, and for that reason it must be avoided whenever possible.~ [LCCORB25] */
		== AERIEJ
		@445 /* ~I understand. Thank you, Schael.~ */
		
EXIT
//}

//{ region Dialog B-80
CHAIN
	IF ~
		Global("LCA_Banter_CorwinDorn", "GLOBAL", 2)
	~ THEN LCCORWIB BCorwinDorn1
		@32 /* ~Dorn - I thought you'd have learned by now that you can't serve two masters.~ [LCCORB22] */
		DO ~
			SetGlobal("LCA_Banter_CorwinDorn", "GLOBAL", 3)
			ClearActions(Myself)
			ClearActions("Dorn")
		~ 
		== DORNJ
		IF ~
			!Global("LCA_CorwinPromoted", "GLOBAL", 1)
		~
		@33 /* ~What do you mean by that, Captain?~*/
		== DORNJ
		IF ~
			Global("LCA_CorwinPromoted", "GLOBAL", 1)
		~
		@774 /* ~What do you mean by that, Major?~*/
		== LCCORWIB
		@34 /* ~You claim to help <CHARNAME>, yet your leash is held firm by your patron.~*/
		== DORNJ
		@35 /* ~Watch your tongue, woman. You are very far from home, and your precious Flaming Fist.~*/
		= 
		@36 /* ~You are the one who is trying to serve two masters.~*/
		== LCCORWIB
		@37 /* ~The difference is that <CHARNAME>'s goals and those of the Dukes are aligned. Your patron only wants to feed on the death and destruction left in your wake.~*/
		== DORNJ
		IF ~
			!Global("LCA_CorwinPromoted", "GLOBAL", 1)
		~
		@38 /* ~Hmph. Be wary of the day then, Captain, when the goals of those you serve oppose one another.~*/
		== DORNJ
		IF ~
			Global("LCA_CorwinPromoted", "GLOBAL", 1)
		~
		@775 /* ~Hmph. Be wary of the day then, Major, when the goals of those you serve oppose one another.~*/
EXIT
//}

//{ region Dialog B-81
CHAIN
	IF ~
		Global("LCA_Banter_CorwinDorn", "GLOBAL", 4)
		!Global("LCA_DornPatronsDead", "GLOBAL", 1)
	~ THEN LCCORWIB BCorwinDorn2
		@156 /* ~Dorn, I give orders to those under my command either verbally, or in writing. How do you receive orders from your patron?~ [LCCORB04] */
		DO ~
			SetGlobal("LCA_Banter_CorwinDorn", "GLOBAL", 5)
			ClearActions(Myself)
			ClearActions("Dorn")
		~ 
		== DORNJ
		@157 /* ~What concern of it is yours?~*/
		== LCCORWIB
		@158 /* = ~How do you know that the orders you receive are legitimate? That they aren't sent by some other person, or thing?~ */
		== DORNJ
		IF ~
			!Global("LCA_CorwinPromoted", "GLOBAL", 1)
		~
		@159 /* = ~My patron communicates their thoughts to my mind. I can.. hear them, as clearly as I can hear your mewling voice, Captain.~ */
		== DORNJ
		IF ~
			Global("LCA_CorwinPromoted", "GLOBAL", 1)
		~
		@776 /* = ~My patron communicates their thoughts to my mind. I can.. hear them, as clearly as I can hear your mewling voice, Major.~ */
		== LCCORWIB
		@160 /* ~So, you just follow the voice inside your head that tells you to murder things. Is that right?~*/
		== DORNJ
		@161 /* = ~Get to your point.~ */
		== LCCORWIB
		@162 /* = ~If that voice tells you to harm <CHARNAME>, or anyone else that I care about, then your patron will need to find themselves a new slave. I trust I've made myself clear.~ */
		== DORNJ
		@163 /* = ~These pathetic insults and threats are beneath you. I've no intention of betraying <CHARNAME>, certainly not while my patron benefits from our arrangement.~ */
EXIT
//}

//{ region Dialog B-82
CHAIN
	IF ~
		IsValidForPartyDialogue("Aerie")
		!IsValidForPartyDialogue("Valygar")
		Global("LCA_AVComplimentFamily", "GLOBAL", 1)
	~ THEN LCCORWIB LCA_ComplimentFamily
		@727 /* ~Oh... what a relief.~ */
		== AERIEJ
		@716 /*  ~Schael, your daughter is just *so* precious! I love her!~ */
		DO ~
			SetGlobal("LCA_AVComplimentFamily", "GLOBAL", 2)
		~
		== LCCORWIB
		@717 /* ~Thanks Aerie. She's a wonderful kid.~ */
		== AERIEJ
		@718 /* ~I hope one day I'll have some c-children of my own...~ */
		== LCCORWIB
		@719 /* ~You're as sweet as they come. I'm sure you'll find the right person, Aerie.~ */
EXIT
//}

//{ region Dialog B-83
CHAIN
	IF ~
		!IsValidForPartyDialogue("Aerie")
		!IsValidForPartyDialogue("Neera")
		IsValidForPartyDialogue("Valygar")
		Global("LCA_AVComplimentFamily", "GLOBAL", 1)
	~ THEN LCCORWIB LCA_ComplimentFamily
		@727 /* ~Oh... what a relief.~ */
		== VALYGARJ
		IF ~
			!Global("LCA_CorwinPromoted", "GLOBAL", 1)
		~
		@720 /*  ~Captain, you have a lovely family.~ */
		DO ~
			SetGlobal("LCA_AVComplimentFamily", "GLOBAL", 2)
		~
		== VALYGARJ
		IF ~
			Global("LCA_CorwinPromoted", "GLOBAL", 1)
		~
		@777 /*  ~Major, you have a lovely family.~ */
		DO ~
			SetGlobal("LCA_AVComplimentFamily", "GLOBAL", 2)
		~
		== LCCORWIB
		@721 /* ~Thanks Valygar. Everything I do is for them, especially Rohma.~ */
		== VALYGARJ
		@722 /* ~Having a family to provide for and protect is a great responsibility. I... I would welcome that responsibility.~ */
		== LCCORWIB
		@723 /* ~It's something I think you'd excel at, if you allow yourself the opportunity.~*/
		== VALYGARJ
		@724 /* ~What do you mean?~ */
		== LCCORWIB
		@725 /* ~You have a chance here to forget about your past and your family's curse, and to start a new life. I suggest you take it.~ */
		== VALYGARJ
		@726 /* ~Right... Let's go.~ */
EXIT
//}

//{ region Dialog B-84
CHAIN
	IF ~
		IsValidForPartyDialogue("Aerie")
		IsValidForPartyDialogue("Valygar")
		Global("LCA_AVComplimentFamily", "GLOBAL", 1)
	~ THEN LCCORWIB LCA_ComplimentFamily
		@727 /* ~Oh... what a relief.~ */
		== AERIEJ
		@716 /*  ~Schael, your daughter is just *so* precious! I love her!~ */
		DO ~
			SetGlobal("LCA_AVComplimentFamily", "GLOBAL", 2)
		~
		== LCCORWIB
		@717 /* ~Thanks Aerie. She's a wonderful kid.~ */
		== AERIEJ
		@718 /* ~I hope one day I'll have some c-children of my own...~ */
		== LCCORWIB
		@719 /* ~You're as sweet as they come. I'm sure you'll find the right person, Aerie.~ */
		== VALYGARJ
		@722 /* ~Having a family to provide for and protect is a great responsibility. I... I would welcome that responsibility.~ */
		== LCCORWIB
		@723 /* ~You'd excel at it Valygar, if you give yourself the opportunity.~*/
		== VALYGARJ
		@724 /* ~What do you mean?~ */
		== LCCORWIB
		@725 /* ~You have a chance here to forget about your past and your family's curse, and to start a new life.~ */
		== VALYGARJ
		@726 /* ~Right... Let's go.~ */
EXIT
//}

//{ region Dialog B-66
CHAIN
	IF ~
		IsValidForPartyDialogue("Neera")
		!IsValidForPartyDialogue("Valygar")
		Global("LCA_AVComplimentFamily", "GLOBAL", 1)
	~ THEN LCCORWIB LCA_ComplimentFamily
		@727 /* ~Oh... what a relief.~ */
		== NEERAJ
		@716 /*  ~Schael, your daughter is just *so* precious! I love her!~ */
		DO ~
			SetGlobal("LCA_AVComplimentFamily", "GLOBAL", 2)
		~
		== LCCORWIB
		@443 /* ~Thanks Neera. She's a wonderful kid.~ */
		== NEERAJ
		@434 /* ~You know, I've never given much thought to having kids, but now...~ */
		== LCCORWIB
		@802 /* ~Being a parent is a tremendous responsibility, but it's worth it Neera. I would give up everything for my child. Everything.~ */
EXIT
//}

//{ region Dialog B-79
CHAIN
	IF ~
		IsValidForPartyDialogue("Neera")
		IsValidForPartyDialogue("Valygar")
		Global("LCA_AVComplimentFamily", "GLOBAL", 1)
	~ THEN LCCORWIB LCA_ComplimentFamily
		@727 /* ~Oh... what a relief.~ */
		== NEERAJ
		@716 /*  ~Schael, your daughter is just *so* precious! I love her!~ */
		DO ~
			SetGlobal("LCA_AVComplimentFamily", "GLOBAL", 2)
		~
		== LCCORWIB
		@443 /* ~Thanks Neera. She's a wonderful kid.~ */
		== NEERAJ
		@434 /* ~You know, I've never given much thought to having kids, but now...~ */
		== VALYGARJ
		@722 /* ~Having a family to provide for and protect is a great responsibility. I... I would welcome that responsibility.~ */
		== LCCORWIB
		@723 /* ~You'd excel at it Valygar, if you give yourself the opportunity.~*/
		== VALYGARJ
		@724 /* ~What do you mean?~ */
		== LCCORWIB
		@725 /* ~You have a chance here to forget about your past and your family's curse, and to start a new life.~ */
		== VALYGARJ
		@726 /* ~Right... Let's go.~ */
EXIT
//}

