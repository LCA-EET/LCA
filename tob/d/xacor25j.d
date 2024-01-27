//{ Killed Wraith - CC OK
	IF ~
		Global("XA_RohmaWraith", "GLOBAL", 3)
	~ THEN BEGIN XA_KilledWraith
		SAY @1326 /*~Rohma...~ [XA100122]*/
		
		IF ~~ THEN REPLY @1328 /*~Rohma's safe and sound, love. That wraith was trying to rattle your cage, that's all.~*/
		DO ~
			SetGlobal("XA_RohmaWraith", "GLOBAL", 4)
		~
		GOTO XA_KilledWraith2
		
		IF ~~ THEN REPLY @1327 /*~Whatever that thing was, it wasn't your daughter.~*/
		DO ~
			SetGlobal("XA_RohmaWraith", "GLOBAL", 4)
		~
		GOTO XA_KilledWraith2
	END
	
	IF ~~ THEN BEGIN XA_KilledWraith2
		SAY @1329 /*~You're right, I know... it was hard though to see that kind of burning hatred in her eyes. I... wasn't prepared for that.~*/
		
		= @1330 /*~These monsters can somehow sense our worst fears, and use them against us. Stay on your guard. Let's move.~*/

		IF ~~ THEN
		EXIT
	END
	
//}

//{ Caelar Sent to prison - CC OK
	IF ~
		Global("XA_CorwinCaelarJailTalk", "GLOBAL", 1)
	~ THEN BEGIN XA_CaelarSentJail
		SAY @591 /* You decided to send her to prison, instead of letting her go. Interesting. I'll need to let the Dukes know about this.~ */
		
		IF ~~ THEN REPLY @587 /*~You don't approve?~*/
		DO ~
			SetGlobal("XA_CorwinCaelarJailTalk", "GLOBAL", 2)
			IncrementGlobal("XA_CorwinOpinionOfPlayer", "GLOBAL", 1)
		~
		GOTO XA_CaelarSentJail2
		
		IF ~~ THEN REPLY @589 /*~Would you have chosen differently?~*/
		DO ~
			SetGlobal("XA_CorwinCaelarJailTalk", "GLOBAL", 2)
			IncrementGlobal("XA_CorwinOpinionOfPlayer", "GLOBAL", 1)
		~
		GOTO XA_CaelarSentJail2
		
		IF ~~ THEN REPLY @590 /*~You have a problem with that?~*/
		DO ~
			SetGlobal("XA_CorwinCaelarJailTalk", "GLOBAL", 2)
			IncrementGlobal("XA_CorwinOpinionOfPlayer", "GLOBAL", 1)
		~
		GOTO XA_CaelarSentJail2
	END
	
	IF ~~ THEN BEGIN XA_CaelarSentJail2
		SAY @592 /*~I... I'm sworn to uphold the law, and Caelar deserves to be punished for what she did. In spite of that, I would've let her go. Whatever she endured in Avernus was greater than any punishment the Fist can dole out. I just hope that it's the last we've seen and heard of her. Let's go.~*/
		
		IF ~~ THEN
		EXIT
	END
//}

//{ Caelar Sent Home Instead of Jail - CC OK
	IF ~
		Global("XA_CorwinCaelarHomeTalk", "GLOBAL", 1)
	~ THEN BEGIN XA_CaelarSentHome
		SAY @586 /*~You decided to send her home, instead of jail? Interesting. I'll need to let the Dukes know about this.~*/
		
		IF ~~ THEN REPLY @587 /*~You don't approve?~*/
		DO ~
			SetGlobal("XA_CorwinCaelarHomeTalk", "GLOBAL", 2)
			IncrementGlobal("XA_CorwinOpinionOfPlayer", "GLOBAL", 1)
		~
		GOTO XA_CaelarSentHome2
		
		IF ~~ THEN REPLY @589 /*~Would you have chosen differently?~*/
		DO ~
			SetGlobal("XA_CorwinCaelarHomeTalk", "GLOBAL", 2)
			IncrementGlobal("XA_CorwinOpinionOfPlayer", "GLOBAL", 1)
		~
		GOTO XA_CaelarSentHome2
		
		IF ~~ THEN REPLY @590 /*~You have a problem with that?~*/
		DO ~
			SetGlobal("XA_CorwinCaelarHomeTalk", "GLOBAL", 2)
			IncrementGlobal("XA_CorwinOpinionOfPlayer", "GLOBAL", 1)
		~
		GOTO XA_CaelarSentHome2
	END
	
	IF ~~ THEN BEGIN XA_CaelarSentHome2
		SAY @588 /*~Were it up to me... I think I'd have let her go too. Whatever she endured in Avernus was greater than any punishment we'd have doled out. I just hope that it's the last we've heard of her. Let's go.~*/
		
		IF ~~ THEN
		EXIT
	END
//}

//{ Corwin Avernus Return - CC OK
	IF ~
		Global("XA_AvernusChat", "GLOBAL", 1)
	~ THEN BEGIN XA_AvernusEntry
		SAY @981 /* ~Back in Avernus. What in Tymora's name were we thinking? We must have a deathwish.~ */
		
		IF ~~ THEN REPLY @982
		DO ~
			SetGlobal("XA_AvernusChat", "GLOBAL", 2)
		~
		EXIT
	END
//}

//{ Corwin Beno Soul Talk Dialog J-85 - CC OK
	IF ~
		Global("XA_CorwinBenoSoulTalk", "GLOBAL", 1)
	~ THEN BEGIN XA_CorwinBenoSoulTalk
		SAY @286 /*  ~A moment of your time, <CHARNAME>?~*/
		
		IF ~~ THEN REPLY @287 /* ~Sure, what's on your mind?~*/
		DO ~
			SetGlobal("XA_CorwinBenoSoulTalk", "GLOBAL", 2)
		~
		GOTO XA_CorwinBenoSoulTalk2
		
		IF ~~ THEN REPLY @288 /* ~For you, of course.~*/
		DO ~
			SetGlobal("XA_CorwinBenoSoulTalk", "GLOBAL", 2)
		~
		GOTO XA_CorwinBenoSoulTalk2
		
		IF ~~ THEN REPLY @289 /*~A moment, a smidgen, a wee bit... whatever you need.~ */
		DO ~
			SetGlobal("XA_CorwinBenoSoulTalk", "GLOBAL", 2)
		~
		GOTO XA_CorwinBenoSoulTalk2
	END
	
	IF ~~ THEN BEGIN XA_CorwinBenoSoulTalk2
		SAY @290 /* ~I've been doing a lot of thinking... about Beno. In spite of everything he did, I don't think that he should spend eternity in that damned dagger.~ */
		
		= @291 /*~Plus, with his body destroyed, he can never harm Rohma or my father ever again. If there's a way we can release his soul...~*/
		
		IF ~
			Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN REPLY @292 /* ~I understand. Perhaps Cespenar knows something that can help us.~ */
		DO ~
			SetGlobal("XA_AskCespenarDagger", "GLOBAL", 1)
		~
		GOTO XA_CorwinBenoSoulTalk3_Romance
		
		IF ~
			Global("XA_ST_Kanaglym", "GLOBAL", 1)
			Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN REPLY @296 /* ~I remember the wizard Melkor had mentioned something about the Fugue Plane... If we can bring the dagger to Kanaglym, he thought that it would release the souls trapped within.~ */
		GOTO XA_CorwinBenoSoulTalk3_Romance
		
		IF ~
			!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN REPLY @292 /* ~I understand. Perhaps Cespenar knows something that can help us.~ */
		DO ~
			SetGlobal("XA_AskCespenarDagger", "GLOBAL", 1)
		~
		GOTO XA_CorwinBenoSoulTalk3
		
		IF ~
			Global("XA_ST_Kanaglym", "GLOBAL", 1)
			!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN REPLY @296 /* ~I remember the wizard Melkor had mentioned something about the Fugue Plane... If we can bring the dagger to Kanaglym, he thought that it would release the souls trapped within.~ */
		GOTO XA_CorwinBenoSoulTalk3
	END
	
	IF ~~ THEN BEGIN XA_CorwinBenoSoulTalk3
		SAY @294  /* ~It's worth a try. Thank you, <CHARNAME>.~ */
		
		IF ~~ THEN
		EXIT
	END
	
	IF ~~ THEN BEGIN XA_CorwinBenoSoulTalk3_Romance
		SAY @293  /* ~It's worth a try. Thank you, love.~ */
		
		IF ~~ THEN
		EXIT
	END
//}

//{ Beno Boom
	IF ~~ THEN BEGIN XA_BenoBoom
		SAY @82 /* ~I'm covered in him! Gods, you are too!~ */
		
		= @98 /* ~At least he won't be coming back this time... Pray to Tymora that there's a bathhouse in this village. Let's go.~ */
		
		IF ~~ THEN 
		DO ~
			StartCutSceneMode()
			StartCutScene("XALATHEX")
		~
		EXIT
	END
//}

//{ Lathander Amkethran
	IF ~~ THEN BEGIN XA_LathBeno_Head
		SAY @54 /* ~He kidnapped my daughter, so we killed him. I'd do it again if I could. His head was taken to prevent someone like you from resurrecting him, again.~*/
		
		IF ~~ THEN 
		EXTERN XALATH01 XA_KidnappedRohma
	END
	
	IF ~~ THEN BEGIN XA_LathBeno_Soul
		SAY @56 /* ~He kidnapped my daughter, so we killed him. I'd do it again if I could. His soul was taken to prevent someone like you from resurrecting him, again.~*/
		
		IF ~~ THEN 
		EXTERN XALATH01 XA_KidnappedRohma
	END
//}

//{ FINSOL01 Debug - CC OK
	IF ~
		Global("XA_FINSOL01_Debug", "GLOBAL", 1)
	~ THEN BEGIN XA_FINSOL01_Debug
		SAY @482 /* ~FINSOL01 Debug.~*/
		
		IF ~
			Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN 
		DO ~
			SetGlobal("XA_FINSOL01_Debug", "GLOBAL", 0)
		~
		GOTO XA_Choice
		
		IF ~
			!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN 
		DO ~
			SetGlobal("XA_FINSOL01_Debug", "GLOBAL", 0)
		~
		GOTO XA_Choice_NonRomance
	END
//}

//{ FINSOL01
	//{ Chose to Stay
	IF ~~ THEN BEGIN XA_StayMortal
		SAY @625 /* ~Wh...What? I - I don't believe it. You chose to stay, instead of becoming a god?~ */
		
		IF ~~ THEN REPLY @626 /* ~I never wanted any of that, Schael. All I want is a life together with you.~ */
		GOTO XA_HappyEnd
		
		IF ~
			Global("XA_HappyEnding","GLOBAL",1)
		~ THEN REPLY @627 /* ~Don't you remember? I told you once long ago that some stories have happy endings. I'd like for our story to be one of them, Schael.~ */
		GOTO XA_HappyEnd2
		
		IF ~~ THEN REPLY @602 /* ~Why so surprised? If evil wizards, demons, dragons, and liches couldn't keep us apart... wait, did I forget anything?~ */
		GOTO XA_HappyEnd3
	END
	
	IF ~~ THEN BEGIN XA_HappyEnd
		SAY @628 /* ~(She covers her mouth, as her eyes fill with tears of joy. After a moment, she regains her composure.)~ */
	
		= @600 /* ~And you shall have it, hero.~ */
		
		IF ~~ THEN
		GOTO XA_HappyEnd_END
	END
	
	IF ~~ THEN BEGIN XA_HappyEnd2
		SAY @628 /* ~(She covers her mouth, as her eyes fill with tears of joy. After a moment, she regains her composure.)~ */
		
		= @615 /* ~And it will be, love, I promise you.~ */
		
		IF ~~ THEN
		GOTO XA_HappyEnd_END
	END
	
	IF ~~ THEN BEGIN XA_HappyEnd3
		SAY @599 /* ~(She laughs, as her eyes fill with tears of joy.)~ */
		
		= @598 /* ~Let's see... Kobolds. Crusaders. Also, Beholders, Mind Flayers, Basilisks... and who can forget the Bhaalspawn...~ */
		
		IF ~~ THEN REPLY @597 /* ~Oh, right, can't forget the Eye Tyrants. But, as I was saying, if all of those beasties couldn't keep us apart, what would make you think that the promise of godhood would? I love you Schael. All I want is a life together with you.~*/
		GOTO XA_HappyEnd3A
	END
	
	IF ~~ THEN BEGIN XA_HappyEnd3A
		SAY @600 /* ~And you shall have it, hero.~ */
		
		IF ~~ THEN
		GOTO XA_HappyEnd_END
	END
	
	IF ~~ THEN BEGIN XA_HappyEnd_END
		SAY @613  /* ~(You share a tender and passionate embrace.)~ */
		
		= @601 /* ~Back to the city, then, as soon as we can.~ */
		
		COPY_TRANS FINSOL01 32
	END
	//}

	//{ Non-Romance
	IF ~~ THEN BEGIN XA_Choice_NonRomance
		SAY @584 /* ~I don't envy your decision. To become a god... only to enter into a new struggle against other gods and planar powers. An endless battle, for perhaps all of eternity... I can't even begin to fathom what that would be like. Would you ever find peace? If I were in your shoes... well. I know what I'd choose.~*/
		
		= @585 /* ~Whatever you decide, <CHARNAME>, I want you to know that I appreciate everything you've done for me, for Rohma, and for Baldur's Gate. Thank you. It's been an honor to fight at your side, hero.~ */
		
		COPY_TRANS FINSOL01 27
	END
	//}
 
	//{ Romance
	IF ~~ THEN BEGIN XA_Twins2
		SAY @117 /*~Thank goodness... wait... children? You mean...~*/
		
		IF ~~ THEN
		EXTERN FINSOL01 XA_Twins3 
	END
	
	IF ~~ THEN BEGIN XA_Twins4
		SAY @118 /* ~Oh my...~ */
		
		IF ~~ THEN
		EXTERN FINSOL01 XA_Twins5 
	END
	
	IF ~~ THEN BEGIN XA_Choice
		SAY @119 /*~Oh, my love. I... I knew this was coming. You did too, I think... those nightmares you had about this very decision. But knowing that this was coming doesn't make it any easier, now that it's here. I tried to — to somehow convince myself that there was a future for us... but deep down, I knew.~*/
		
		= @120 /* ~(She takes hold of your hand.)~ */
		
		IF ~~ THEN
		GOTO XA_ChoiceNotPregnant
		
		IF ~
			Global("XA_PlayerKnowsCorwinPregnant", "GLOBAL", 1)
		~ THEN GOTO XA_ChoicePregnant
		
		IF ~
			Global("XA_CorwinTwins", "GLOBAL", 1)
		~ THEN GOTO XA_ChoiceTwins
	END
	
	//{ Not Pregnant Interactions
	IF ~~ THEN BEGIN XA_ChoiceNotPregnant
		SAY @178  /* ~I want you to know that I'll always treasure our time together... You're a hero, in every sense of the word. I love you, <CHARNAME>, now and always.~ */
		
		IF ~~ THEN REPLY @122 /* ~I don't want to leave you, Schael. I love you, more than anything.~ */
		GOTO XA_ChoiceA_NP
		
		IF ~~ THEN REPLY @126 /* ~You think I should give up the essence?~*/
		GOTO XA_ChoiceB_NP
		
		IF ~~ THEN REPLY @128 /* ~I'm sorry, Schael. I feel I have to go forward and accept my birthright.~ */
		GOTO XA_ChoiceC_NP
		
		IF ~~ THEN REPLY @106 /* ~I don't know what I should do.~ */
		GOTO XA_ChoiceB_NP
		
		IF ~~ THEN REPLY @44 /* ~Schael, you're the strongest, most determined woman I've ever known. You'll be fine.~ */
		GOTO XA_ChoiceD_NP
	END
	
	IF ~~ THEN BEGIN XA_ChoiceA_NP
		SAY @179 /* ~Love, Rohma, and a life together with you... it's all that I could ever want. But I don't have to decide between that, and godhood. I don't know how anyone could...~ */
		
		IF ~~ THEN 
		GOTO XA_ChoicePeace
	END
	
	IF ~~ THEN BEGIN XA_ChoiceB_NP
		SAY @185 /* ~I won't lie to you. I want you to stay. Love, Rohma, and a life together with you... it's all that I could ever want. But I don't have to decide between that, and godhood. I don't know how anyone could...~ */
		
		IF ~~ THEN 
		GOTO XA_ChoicePeace
	END
	
	IF ~~ THEN BEGIN XA_ChoiceC_NP
		SAY @129 /* ~I know. After everything you've been through... everything you've had to endure. You deserve it.~ */
		
		IF ~~ THEN
		GOTO XA_ChoiceB_NP
	END
	
	IF ~~ THEN BEGIN XA_ChoiceD_NP
		SAY @45 /*~It's going to hurt, for a while. The pain of not having you near me, of not waking up in your arms... it might never go away. Rohma will be heartbroken too. But you're right... we'll learn to live with it, and we'll be stronger for it.~*/
		
		IF ~~ THEN
		GOTO XA_ChoiceB_NP
	END
	//}
	
	//{ Pregnant / Twins Interactions
	IF ~~ THEN BEGIN XA_ChoicePregnant
		SAY @161 /* ~I want you to know that I'll always treasure our time together... and I'll tell our child about what an amazing man their father was. A hero, in every sense of the word. I love you, <CHARNAME>, now and always.~ */
		
		IF ~~ THEN REPLY @122 /* ~I don't want to leave you, Schael. I love you, more than anything.~ */
		GOTO XA_ChoiceA
		
		IF ~~ THEN REPLY @126 /* ~You think I should give up the essence?~*/
		GOTO XA_ChoiceB
		
		IF ~~ THEN REPLY @128 /* ~I'm sorry, Schael. I feel I have to go forward and accept my birthright.~ */
		GOTO XA_ChoiceC
		
		IF ~~ THEN REPLY @106 /* ~I don't know what I should do.~ */
		GOTO XA_ChoiceB
		
		IF ~~ THEN REPLY @44 /* ~Schael, you're the strongest, most determined woman I've ever known. You'll be fine.~ */
		GOTO XA_ChoiceD
	END
	
	IF ~~ THEN BEGIN XA_ChoiceTwins
		SAY @121 /*~I want you to know that I'll always treasure our time together... and I'll tell our children about what an amazing man their father was. A hero, in every sense of the word. I love you, <CHARNAME>, now and always.~*/
		
		IF ~~ THEN REPLY @122 /* ~I don't want to leave you, Schael. I love you, more than anything.~ */
		GOTO XA_ChoiceA
		
		IF ~~ THEN REPLY @126 /* ~You think I should give up the essence?~*/
		GOTO XA_ChoiceB
		
		IF ~~ THEN REPLY @128 /* ~I'm sorry, Schael. I feel I have to go forward and accept my birthright.~ */
		GOTO XA_ChoiceC
		
		IF ~~ THEN REPLY @106 /* ~I don't know what I should do.~ */
		GOTO XA_ChoiceB
		
		IF ~~ THEN REPLY @44 /* ~Schael, you're the strongest, most determined woman I've ever known. You'll be fine.~ */
		GOTO XA_ChoiceD
	END
	
	IF ~~ THEN BEGIN XA_ChoiceA
		SAY @123 /* ~Love, children, and a life together with you... it's all that I could ever want. But I don't have to decide between that, and godhood. I don't know how anyone could...~ */
		
		IF ~~ THEN 
		GOTO XA_ChoicePeace
	END
	
	IF ~~ THEN BEGIN XA_ChoiceB
		SAY @127 /* ~I won't lie to you. I want you to stay. Love, children, and a life together with you... it's all that I could ever want. But I don't have to decide between that, and godhood. I don't know how anyone could...~ */
		
		IF ~~ THEN 
		GOTO XA_ChoicePeace
	END
	
	IF ~~ THEN BEGIN XA_ChoiceC
		SAY @129 /* ~I know. After everything you've been through... everything you've had to endure. You deserve it.~ */
		
		IF ~~ THEN
		GOTO XA_ChoiceB
	END
	
	IF ~~ THEN BEGIN XA_ChoiceD
		SAY @45 /*~It's going to hurt, for a while. The pain of not having you near me, of not waking up in your arms... it might never go away. But you're right... I'll learn to live with it.~*/
		
		IF ~~ THEN
		GOTO XA_ChoiceB
	END
	//}
	
	IF ~~ THEN BEGIN XA_ChoicePeace
		SAY @321  /* ~If what the celestial said is true though... you'd be leaving the struggle of this life, only to enter into a new struggle against gods and other planar powers. An endless battle, for perhaps all of eternity... I can't even begin to fathom what that would be like. Will you ever find peace? Will you ever find ... love, again?~*/

		IF ~
			!Global("XA_PlayerKnowsCorwinPregnant", "GLOBAL", 1)
			!Global("XA_CorwinTwins", "GLOBAL", 1)
		~ THEN REPLY @323 /* ~You've given me a lot to think about. If I do accept this power, I promise you that at the very least, I will keep you and Rohma safe from any who would seek to do you harm.~*/
		GOTO XA_ChoiceEmbrace
		
		IF ~
			Global("XA_PlayerKnowsCorwinPregnant", "GLOBAL", 1)
			Global("XA_CorwinTwins", "GLOBAL", 1)
		~ THEN REPLY @324 /* ~You've given me a lot to think about. If I do accept this power, I promise you that at the very least, I will keep you, Rohma, and our children safe from any who would seek to do you harm.~*/
		GOTO XA_ChoiceEmbrace
		
		IF ~
			Global("XA_PlayerKnowsCorwinPregnant", "GLOBAL", 1)
			!Global("XA_CorwinTwins", "GLOBAL", 1)
		~ THEN REPLY @322 /* ~You've given me a lot to think about. If I do accept this power, I promise you that at the very least, I will keep you, Rohma, and our child safe from any who would seek to do you harm.~*/
		GOTO XA_ChoiceEmbrace
	END
	
	IF ~~ THEN BEGIN XA_ChoiceEmbrace
		SAY @80 /* ~Come here...~ */
		
		= @81 /* ~(You share a tender and emotional embrace.)~ */
		
		COPY_TRANS FINSOL01 27
	END
	
	IF ~~ THEN BEGIN XA_ChoiceThankYou
		SAY @486 /* ~Go... and thank you, love. Thank you for everything you've done for me, for Rohma, and for Baldur's Gate... and for the memories that I'll cherish for as long as I live. Farewell.~*/
		
		COPY_TRANS FINSOL01 29
	END
	
	IF ~~ THEN BEGIN XA_ChoiceThankYouChild
		SAY @485 /* ~Go... and thank you, love. Thank you for everything you've done for me, for Rohma, and for Baldur's Gate. Thank you for giving me a child, and for the memories that I'll cherish for as long as I live. Farewell.~*/
		
		COPY_TRANS FINSOL01 29
	END
	
	IF ~~ THEN BEGIN XA_ChoiceThankYouTwins
		SAY @484  /*~Go... and thank you, love. Thank you for everything you've done for me, for Rohma, and for Baldur's Gate. Thank you for giving me children, and for the memories that I'll cherish for as long as I live. Farewell.~ */
		
		COPY_TRANS FINSOL01 29
	END
	//}
	
//}

//{ SARMEL01
IF ~~ THEN BEGIN XA_SARMEL01_68
	SAY @1626 /* ~Illasera's dead. <CHARNAME> and I saw to that after she kidnapped my daughter.~ */
	
	IF ~~ THEN
	EXTERN SARMEL01 XA_SARMEL01_68_2
END

IF ~~ THEN BEGIN XA_SARMEL01_68_3
	SAY @1628 /* ~She is... and neither the Dukes nor the Flaming Fist will allow the Five to threaten Baldur's Gate again.~ */
	
	IF ~~ THEN
	EXTERN SARMEL01 XA_SARMEL01_68_4
END
//}

//{ SARPRO01
IF ~~ THEN BEGIN XA_SARPRO01_11
	SAY @1616 /* ~We don't have time for games. Let's go.~ */
	
	IF ~~ THEN REPLY @1617 /* ~I'm sorry, my love... I was just trying to lighten the grim mood.~ */
	GOTO XA_SARPRO01_Funny
	
	IF ~~ THEN REPLY @1618 /* ~Jealous? At least she doesn't come with a kid.~*/
	GOTO XA_SARPRO01_EndRomance
END 

IF ~~ THEN BEGIN XA_SARPRO01_EndRomance
	SAY @1619 /* ~Unbelievable, <CHARNAME>! If you really can't keep it in your pants during a time like this, then fine! Enjoy your whore — we're through.~ */
	
	IF ~~ THEN 
	DO ~
		SetGlobal("XA_CorwinRomanceActive","GLOBAL",3)
		IncrementGlobal("XA_CorwinOpinionOfPlayer", "GLOBAL", -2)
	~ 
	EXTERN ~SARPRO01~ 12
END

IF ~~ THEN BEGIN XA_SARPRO01_Funny
	SAY @1620 /* ~You know that I love your playfulness and sense of humor, but this really isn't the time. Let's give the girl a bit of money so that she doesn't need to work the streets, then get on with our mission.~*/
	
	IF ~~ THEN 
	EXTERN ~SARPRO01~ 3
END
//}

//{ SARPROVF
IF ~~ THEN BEGIN XA_SARPROVF_0
	SAY @1625 /* ~You know I don't approve of this... but there's something about her. She may have some important information that she'll only disclose in private. Go with her, but watch your back.*/
	
	IF ~~ THEN
	DO ~
		IncrementGlobal("XA_CorwinOpinionOfPlayer", "GLOBAL", -1)
	~
	EXTERN ~SARPROVF~ 1
END

IF ~~ THEN BEGIN XA_SARPROVF_0_BodhiBite
	SAY @1621 /* ~(She reaches up and touches the scar left behind from Bodhi's bite.)~*/
	
	IF ~~ THEN REPLY @1623 /* ~Are you alright?~*/
	DO ~
		IncrementGlobal("XA_CorwinOpinionOfPlayer", "GLOBAL", -1)
		
	~
	GOTO XA_SARPROVF_0_BodhiBite2
END

IF ~~ THEN BEGIN XA_SARPROVF_0_BodhiBite2
	SAY @1627 /*~Something's not right here.~ [BD62258] */
	
	= @1624 /* ~I don't approve of this, but I think there's more to this woman than meets the eye. Go with her, and watch your back.~   */
	
	IF ~~ THEN
	EXTERN ~SARPROVF~ 1
END
//}

//{ Dialog J-82 - CC OK
IF ~
	Global("XA_CorwinPregnant", "GLOBAL", 10)
~ THEN BEGIN XA_CorwinPregnant_Final
	SAY @1667 /* ~<CHARNAME>... It's time. I need to go home. Have the gateway send me back to Baldur's Gate.~*/
	
	IF ~~ THEN REPLY @1676 /* ~Can't you stay with me for a while longer? I need you.~*/
	DO ~
		SetGlobal("XA_CorwinPregnant", "GLOBAL", 11)
	~
	GOTO XA_CorwinPregnant_Final_2
END

IF ~~ THEN BEGIN XA_CorwinPregnant_Final_2
	SAY @1677 /* ~I want to, more than anything. But I can't. Look, love.~ */
	
	= @1678 /* ~(She moves her hand around her belly... it's clear that she'll no longer able to hide that she's pregnant.)~ */
	
	IF ~~ THEN REPLY @1679 /* ~I... I understand, love.~ */
	GOTO XA_CorwinPregnant_Final_3
END

IF ~~ THEN BEGIN XA_CorwinPregnant_Final_3
	SAY @1668 /*  ~Before I go, come here...~ */
	
	= @1669 /* ~(She takes your hand and places it on her belly, underneath her armor and vestment.)~*/
	
	= @1670 /* ~Wait for it...~*/
	
	= @1671/*~(You feel the baby kick.)~*/
	
	IF ~~ THEN REPLY @1672 /* ~I felt it! I felt our baby kick!~*/
	GOTO XA_CorwinPregnant_Final_4
END

IF ~~ THEN BEGIN XA_CorwinPregnant_Final_4
	SAY @1673 /* ~Mm. That's your child, love. It's going to need its father to come home. And so will I.~*/
	
	= @1674 /*  ~(She struggles to hold back tears.)~*/
	
	= @1675 /* ~Please, my love... promise me... promise me you'll come home...~ */
	
	IF ~~ THEN REPLY @1680 /* ~I will. I promise.~*/
	GOTO XA_CorwinPregnant_Final_5A
	
	IF ~~ THEN REPLY @1681 /* ~I'll do everything in my power to return to you, Schael.~*/
	GOTO XA_CorwinPregnant_Final_5A
END

IF ~~ THEN BEGIN XA_CorwinPregnant_Final_5A
	SAY @1683 /* ~I'll be waiting, love... Be *sob* careful, alright?~ */
	
	= @1682 /* ~(You share a tender and very emotional embrace.)~  */
	
	IF ~~ THEN
	GOTO XA_GoodbyeChainEnd
	
	IF ~
		OR(13)
			IsValidForPartyDialogue("Aerie")
			IsValidForPartyDialogue("HaerDalis")
			IsValidForPartyDialogue("Imoen2")
			IsValidForPartyDialogue("Jaheira")
			IsValidForPartyDialogue("Jan")
			IsValidForPartyDialogue("Keldorn")
			IsValidForPartyDialogue("Korgan")
			IsValidForPartyDialogue("Mazzy")
			IsValidForPartyDialogue("Minsc")
			IsValidForPartyDialogue("Nalia")
			IsValidForPartyDialogue("Neera")
			IsValidForPartyDialogue("Rasaad")
			IsValidForPartyDialogue("Valygar")
	~ THEN
	GOTO XA_GoodbyeChain
	
END

IF ~~ THEN BEGIN XA_GoodbyeChainEnd
	SAY @1684 /* ~Here, take my pack. I won't need it anymore...~ */
	
	IF ~~ THEN
	DO ~
		ActionOverride(Player1, TakeCreatureItems("XACORWIN", BACKPACK))
	~
	GOTO XA_GoodbyeChainEnd2
END

IF ~~ THEN BEGIN XA_GoodbyeChainEnd2
	SAY @1685 /* ~I'm ready, love. Send me home.~ */
	
	IF ~~ THEN REPLY @1686 /* ~As you wish, dear...~ */
	DO ~
		StartCutSceneMode()
		StartCutScene("XABYE")
	~
	EXIT
END
//}

//{ Dialog J-81 - CC OK
IF ~
	Global("XA_CorwinPregnant", "GLOBAL", 8)
~ THEN BEGIN XA_CorwinPregnant_Fourth
	SAY @1661 /* ~My love, a moment of your time?~ */
	
	IF ~~ THEN REPLY @1662 /* ~Of course, what's on your mind?~ */
	DO ~
		SetGlobal("XA_CorwinPregnant", "GLOBAL", 9)
		SetGlobalTimer("XA_CorwinPregnantTimer", "GLOBAL", "ONE_MONTH")
	~
	GOTO XA_CorwinPregnant_Fourth_2
END

IF ~~ THEN BEGIN XA_CorwinPregnant_Fourth_2
	SAY @1663 /* ~We'd discussed a couple of months ago that I'd need to go home once I started showing.~ */
	
	= @1664 /* ~I don't want to leave your side, but I won't be nearly as effective in the field. Plus, if one of your enemies sees that I'm pregnant, they'll use that against you.~ */
	
	IF ~~ THEN REPLY @1665 /* ~Right... how long do you think it will be, before you're visibly pregnant?~*/
	GOTO XA_CorwinPregnant_Fourth_3
END

IF ~~ THEN BEGIN XA_CorwinPregnant_Fourth_3
	SAY @1666 /* ~I'd guess around four weeks. Maybe less. Hopefully we can wrap up what we need to here, then head back home. Let's go.~ */
	
	IF ~~ THEN
	EXIT
END
//}

//{ Dialog J-80 - CC OK
IF ~
	Global("XA_CorwinPregnant", "GLOBAL", 6)
~ THEN BEGIN XA_CorwinPregnant_Third
	SAY @1640 /* ~Mmm...~ */
	
	IF ~~ THEN REPLY @1641 /* ~How are you feeling, love?~ */
	DO ~
		SetGlobal("XA_CorwinPregnant", "GLOBAL", 7)
		SetGlobalTimer("XA_CorwinPregnantTimer", "GLOBAL", "ONE_MONTH")
	~
	GOTO XA_CorwinPregnant_Third_2
	
	IF ~~ THEN REPLY @1642 /* ~What is it?~ */
	DO ~
		SetGlobal("XA_CorwinPregnant", "GLOBAL", 7)
		SetGlobalTimer("XA_CorwinPregnantTimer", "GLOBAL", "ONE_MONTH")
	~
	GOTO XA_CorwinPregnant_Third_2
	
	IF ~~ THEN REPLY @1648 /* ~Hungry? I'm sure we can find something our packs to satisfy any new cravings.~ */
	DO ~
		SetGlobal("XA_CorwinPregnant", "GLOBAL", 7)
		SetGlobalTimer("XA_CorwinPregnantTimer", "GLOBAL", "ONE_MONTH")
	~
	GOTO XA_CorwinPregnant_Third_2
END

IF ~~ THEN BEGIN XA_CorwinPregnant_Third_2
	SAY @1643 /* ~I'm fine, hon. I was just remembering something... in the caravan, on our way to Saradush, you said you were having nightmares. Something... about having to make a difficult decision...~*/
	
	= @1645 /* ~I didn't understand what you meant at the time, but I think that I'm beginning to...~ */
	
	IF ~~ THEN REPLY @1646 /* ~Yes... I've been thinking about that as well.~ */
	GOTO XA_CorwinPregnant_Third_3
	
	IF ~~ THEN REPLY @1647 /* ~Where are you going with this?~ */
	GOTO XA_CorwinPregnant_Third_3
END

IF ~~ THEN BEGIN XA_CorwinPregnant_Third_3
	SAY @1649 /* ~I see a change in you, love. Your skill in battle is unlike anything I've ever seen. You're becoming something... greater, if that makes sense.~ */
	
	= @1650 /* ~You know that I've never been one to believe in prophecies. But, if you did have to choose between godhood, and this life... what would that mean for us? For our child? There's nothing I can offer you that can compare with that.~ */
	
	IF ~~ THEN REPLY @1651 /*  ~Your love is enough, Schael. It's more than any <PRO_MANWOMAN> can ask for.~*/
	GOTO XA_CorwinPregnant_Third_4A
	
	IF ~~ THEN REPLY @1653 /* ~If I did become a god, I'd still love you. I'd be able to do things for you, and our child, that I could never do as a <PRO_MANWOMAN>.~ */
	GOTO XA_CorwinPregnant_Third_4B
END

IF ~~ THEN BEGIN XA_CorwinPregnant_Third_4B
	SAY @1656 /* ~I imagine you'd be able to do anything. Except be with me, that is. Besides, what are mortal concerns like love, children, and companionship, to an immortal being?~  */
	
	IF ~~ THEN
	GOTO XA_CorwinPregnant_Third_5
END

IF ~~ THEN BEGIN XA_CorwinPregnant_Third_4A
	SAY @1652 /* ~But don't you see, that's exactly it! A <PRO_MANWOMAN> is mortal, and a god is not. What are mortal concerns like love, children, and companionship, to an immortal being?~ */
	
	IF ~~ THEN
	GOTO XA_CorwinPregnant_Third_5
END

IF ~~ THEN BEGIN XA_CorwinPregnant_Third_5
	SAY @1655 /* ~I - I'm sorry. I know you have enough on your mind already, and me worrying about these things isn't good for our baby.~ */
	
	IF ~~ THEN REPLY @1658 /* ~And how is our baby?~ */
	GOTO XA_CorwinPregnant_Third_6
	
END

IF ~~ THEN BEGIN XA_CorwinPregnant_Third_6
	SAY @1659 /* ~(She smiles.)~ */
	= @1660 /* ~Good, love. I just can't wait to get home. Come on, let's go.~ */
	
	IF ~~ THEN
	EXIT
END
//}

//{ Dialog J-79 - CC OK
IF ~
	Global("XA_MessageToBG", "GLOBAL", 1)
	Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	GlobalGT("XA_CorwinPregnant", "GLOBAL", 4)
~ THEN BEGIN XA_AmkethranCourier_Pregnant
	SAY @1596 /* ~Listen — we need to provide a status update to the Dukes. They'll want to know that the fire giants have been dealt with, and they'll need my assessment of the threat posed by the remaining members of the Five. I also need to let my family know that we're fine ... and that I'm with child.~*/
	
	IF ~~ THEN REPLY @1597 /* ~Of course, love.~ */
	DO ~
		SetGlobal("XA_MessageToBG", "GLOBAL", 2)
	~
	GOTO XA_AmkethranCourier_END
	
	IF ~~ THEN REPLY @1593 /* ~What do you suggest we do?~ */
	DO ~
		SetGlobal("XA_MessageToBG", "GLOBAL", 2)
	~
	GOTO XA_AmkethranCourier_END
	
	IF ~~ THEN REPLY @1598 /* ~How do you think your father will take the news? And Rohma?~ */
	DO ~
		SetGlobal("XA_MessageToBG", "GLOBAL", 2)
	~
	GOTO XA_AudamarCorwinPregnant
END

IF ~~ THEN BEGIN XA_AudamarCorwinPregnant
	SAY @1599 /* ~Rohma will be thrilled, and I know she'll be a wonderful big sister to our baby. As for my father ... he'll be happy to have another grandchild, certainly, but he's going to have some stern words for me when I get back.~   */
	
	IF ~~ THEN REPLY @1600 /* ~What do you suggest we do, love?~*/
	GOTO XA_AmkethranCourier_END
END
//}

//{ Dialog J-78 - CC OK
IF ~
	Global("XA_MessageToBG", "GLOBAL", 1)
	Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	GlobalLT("XA_CorwinPregnant", "GLOBAL", 5)
~ THEN BEGIN XA_AmkethranCourier_Romance
	SAY @1595 /* ~Listen — we need to provide a status update to the Dukes. They'll want to know that the fire giants have been dealt with, and they'll need an assessment of the threat posed by the remaining members of the Five. I also need to let my family know that we're fine ...~ */
	
	IF ~~ THEN REPLY @1597 /* ~Of course, love.~ */
	DO ~
		SetGlobal("XA_MessageToBG", "GLOBAL", 2)
	~
	GOTO XA_AmkethranCourier_END
	
	IF ~~ THEN REPLY @1593 /* ~What do you suggest we do?~ */
	DO ~
		SetGlobal("XA_MessageToBG", "GLOBAL", 2)
	~
	GOTO XA_AmkethranCourier_END
END
//}

//{ Dialog J-77 - CC OK
IF ~
	Global("XA_MessageToBG", "GLOBAL", 1)
~ THEN BEGIN XA_AmkethranCourier
	SAY @1595 /* ~Listen — we need to provide a status update to the Dukes. They'll want to know that the fire giants have been dealt with, and they'll need an assessment of the threat posed by the remaining members of the Five. I also need to let my family know that we're fine ...~ */
	
	IF ~~ THEN REPLY @1592 /* ~Of course.~ */
	DO ~
		SetGlobal("XA_MessageToBG", "GLOBAL", 2)
	~
	GOTO XA_AmkethranCourier_END
	
	IF ~~ THEN REPLY @1593 /* ~What do you suggest we do?~ */
	DO ~
		SetGlobal("XA_MessageToBG", "GLOBAL", 2)
	~
	GOTO XA_AmkethranCourier_END
END
//}

//{ Common to Dialogs 77 through 79
IF ~~ THEN BEGIN XA_AmkethranCourier_END
	SAY @1594 /* ~This town might have a message courier we can use. Let's have a look around.~*/
	
	IF ~
		GlobalGT("XA_CorwinPregnant", "GLOBAL", 4)
	~ THEN REPLY @403 /* Right */
	DO ~
		SetGlobal("XA_LC_Journal_Progress", "GLOBAL", 2)
	~
	EXIT
	
	IF ~
		GlobalLT("XA_CorwinPregnant", "GLOBAL", 5)
	~ THEN REPLY @403 /* Right */
	DO ~
		SetGlobal("XA_LC_Journal_Progress", "GLOBAL", 1)
	~
	EXIT
	
	IF ~
		GlobalGT("XA_CorwinPregnant", "GLOBAL", 4)
		Global("XA_CanTalkToRasaad", "LOCALS", 1)
	~ THEN
	DO ~
		SetGlobal("XA_LC_Journal_Progress", "GLOBAL", 2)
	~
	EXTERN RASAADJ XA_AmkethranCourier_END
	
	IF ~
		GlobalLT("XA_CorwinPregnant", "GLOBAL", 5)
		Global("XA_CanTalkToRasaad", "LOCALS", 1)
	~ THEN
	DO ~
		SetGlobal("XA_LC_Journal_Progress", "GLOBAL", 1)
	~
	EXTERN RASAADJ XA_AmkethranCourier_END
	
END
//}

//{ Dialog J-76 - CC OK
IF ~
	Global("XA_CorwinParentAdvice", "GLOBAL", 2)
~ THEN BEGIN XA_ParentAdvice
	SAY @1568 /* ~Aerie told me the news. Congratulations, <CHARNAME>. You're going to be a father.~ */
	
	IF ~~ THEN REPLY @1569 /* ~She told you? I thought she wanted to keep it a secret, at least for the time being.~ */
	DO ~
		SetGlobal("XA_CorwinParentAdvice", "GLOBAL", 3)
	~
	GOTO XA_ParentAdvice_AerieSecret
	
	IF ~~ THEN REPLY @1571 /* ~Thanks, Schael.~ */
	DO ~
		SetGlobal("XA_CorwinParentAdvice", "GLOBAL", 3)
	~
	GOTO XA_ParentAdvice_ThanksSchael
END

IF ~~ THEN BEGIN XA_ParentAdvice_AerieSecret
	SAY @1570 /* ~She did. She was bouncing with energy, so naturally I asked her what was going on ... It didn't take long for her to spill the beans.~*/

	IF ~~ THEN REPLY @1578 /* ~Hah, I'm not surprised.~*/
	GOTO XA_ParentAdvice_ThanksSchael
	
	IF ~~ THEN REPLY @1579 /* ~Somehow, I don't think she'd last long in a Flaming Fist interrogation.~*/
	GOTO XA_ParentAdvice_ThanksSchael
END

IF ~~ THEN BEGIN XA_ParentAdvice_ThanksSchael
	SAY @1572 /* ~I think you're going to do great as parents. Care for a bit of advice?~ */
	
	IF ~~ THEN REPLY @1574 /*~Certainly.~*/
	GOTO XA_ParentAdvice_FirstAdvice
	
	IF ~~ THEN REPLY @1575 /*~Not right now — we need to get moving. I'll pick your brain over the coming days and weeks, I'm sure.~*/
	GOTO XA_ParentAdvice_NotRightNow
END

IF ~~ THEN BEGIN XA_ParentAdvice_FirstAdvice
	SAY @1581 /* ~The first few months with a newborn are always rough. It's easier to take care of your baby and to be a loving parent when you are in a good place, mentally, physically and emotionally. You and Aerie will need to work together to share the load.~*/
	
	IF ~~ THEN REPLY @1582 /* ~So, we need to practice good self-care, in other words.~ */
	GOTO XA_ParentAdvice_SecondAdvice
END

IF ~~ THEN BEGIN XA_ParentAdvice_SecondAdvice
	SAY @1583 /* ~Right. Also, you'll need to spend a lot of time cuddling and holding your baby. It helps a lot to read to your baby, too. Cuddling will make them feel loved and secure, and reading to them will help them to understand language.~ */
	
	IF ~~ THEN REPLY @1584 /*~That makes sense ... any additional advice?~*/
	GOTO XA_ParentAdvice_ThirdAdvice
END

IF ~~ THEN BEGIN XA_ParentAdvice_ThirdAdvice
	SAY @1585 /* ~When your child is Rohma's age, the most important thing you can do for them is to make sure that they feel safe, loved and valued. In that order, preferably. Your child will struggle without a safe and stable environment, and their sense of self-worth will suffer if you don't show them the unconditional love that only a parent can.~ */
	
	IF ~~ THEN REPLY @1586 /*~That is great advice. You've given me a lot to think about... thank you, my friend.~*/
	GOTO XA_ParentAdvice_Questions
END

IF ~~ THEN BEGIN XA_ParentAdvice_Questions
	SAY @1587 /* ~Anytime. If you or Aerie have any questions, please, just ask.~*/
	
	IF ~~ THEN 
	DO ~
		AddJournalEntry(@1588, INFO)
		AddXPObject(Player1, 25000)
	~
	EXIT
END

IF ~~ THEN BEGIN XA_ParentAdvice_NotRightNow
	SAY @1576 /* ~Sounds good.~ */
	
	IF ~~ THEN
	EXIT
END
//}

//{ Dialog J-71 - CC OK
IF ~
	Global("XA_CorwinPregnant", "GLOBAL", 2)
~ THEN BEGIN XA_CorwinPregnantInitial
	SAY @1510 /* ~Unhh...~ [XA100068]*/ 
	
	
	IF ~~ THEN REPLY @1511 /*  ~You look a little under the weather, love. Is everything alright?~ */
	DO ~
		SetGlobal("XA_CorwinPregnant", "GLOBAL", 3)
		SetGlobalTimer("XA_CorwinPregnantTimer", "GLOBAL", THREE_DAYS)
	~
	GOTO XA_CorwinPregnantInitial_END
	
	IF ~
		IsValidForPartyDialogue("Jaheira")
		//See("Jaheira")
	~ THEN
	DO ~
		SetGlobal("XA_CorwinPregnant", "GLOBAL", 3)
		SetGlobalTimer("XA_CorwinPregnantTimer", "GLOBAL", THREE_DAYS)
	~
	GOTO XA_CorwinPregnantInitial_Jaheira
		
	IF ~
		IsValidForPartyDialogue("Aerie")
		//See("Aerie")
	~ THEN
	DO ~
		SetGlobal("XA_CorwinPregnant", "GLOBAL", 3)
		SetGlobalTimer("XA_CorwinPregnantTimer", "GLOBAL", THREE_DAYS)
	~
	GOTO XA_CorwinPregnantInitial_Aerie
END

IF ~~ THEN BEGIN XA_CorwinPregnantInitial_Aerie
	SAY @1515 /* ~Aerie, do you have a minute? I need to talk to you about something, in private.~ */
	
	IF ~~ THEN
	EXTERN AERIEJ XA_CorwinPregnantInitial_Aerie
END

IF ~~ THEN BEGIN XA_CorwinPregnantInitial_Jaheira
	SAY @1516 /* ~Jaheira, do you have a minute? I need to talk to you about something, in private.~ */
	
	IF ~~ THEN
	EXTERN JAHEIRAJ XA_CorwinPregnantInitial_Jaheira
END

IF ~~ THEN BEGIN XA_CorwinPregnantInitial_Shh
	SAY @1513 /* ~Shh! I don't want him to ...~ */
	
	= @1514 /* ~(You can't make out the rest of their discussion. It ends, and Schael turns to you.)~ */
	
	IF ~~ THEN REPLY @1511 /* ~You look a little under the weather, love. Is everything alright?~ */
	GOTO XA_CorwinPregnantInitial_END
END

IF ~~ THEN BEGIN XA_CorwinPregnantInitial_END
	SAY @1512 /* ~Yeah... it must've been something I ate. Don't worry, I'll be fine. Let's keep moving.~*/
	
	IF ~~ THEN
	EXIT
END
//}

//{ Amkethran Letter
IF ~~ THEN BEGIN XA_DeliverTwoLetters
	SAY @1589 /* ~Two letters. One to the Dukes, and one to my father. I need to let my family know that we're fine.~*/
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_NeedLettersDelivered", "GLOBAL", 2)
	~
	EXTERN XAHAMZA XA_DeliverTwoLetters
END

IF ~~ THEN BEGIN XA_DeliverTwoLetters2
	SAY @1589 /* ~Two letters. One to the Dukes, and one to my father. I need to let my family know that we're fine.~*/
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_NeedLettersDelivered", "GLOBAL", 2)
	~
	EXTERN XAHAMZA XA_DeliverToBG
END

IF ~~ THEN BEGIN XA_DeliverAdditional
	SAY @1590 /* ~I need an additional letter delivered ... My family needs to know that we're fine.~ */
	
	IF ~
		!StateCheck("XAHAMZA", STATE_CHARMED)
	~ THEN
	EXTERN XAHAMZA XA_DeliverAdditional
	
	IF ~
		StateCheck("XAHAMZA", STATE_CHARMED)
	~ THEN
	EXTERN XAHAMZA XA_DeliverAdditional_Charmed
END
//}

//{ Dialog J-72 - CC OK
IF ~
	Global("XA_CorwinPregnant", "GLOBAL", 4)
~ THEN BEGIN XA_CorwinPregnant2
	SAY @1517 /* ~<CHARNAME> ... there's something I need to tell you. I ...~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_CorwinPregnant", "GLOBAL", 5)
		SetGlobal("XA_PlayerKnowsCorwinPregnant", "GLOBAL", 1)
	~
	GOTO XA_CorwinPregnant2_1
END




IF ~~ THEN BEGIN XA_CorwinPregnant2_1
	SAY @1518 /* ~I'm pregnant.~ */
	
	IF ~~ THEN REPLY @1521 /* ~Schael, that's wonderful news!~ */
	DO ~
		SetGlobal("XA_PregnantNews", "LOCALS", 1)
	~
	GOTO XA_CorwinPregnant2_GoodNews
	
	IF ~~ THEN REPLY @1519 /* ~What? But you don't look pregnant — are you sure?~ */
	DO ~
		SetGlobal("XA_PregnantSure", "LOCALS", 1)
	~
	GOTO XA_CorwinPregnant2_DontLookPregnant
	
	IF ~~ THEN REPLY @1523 /* But... how can that be? */
	DO ~
		SetGlobal("XA_PregnantHow", "LOCALS", 1)
	~
	GOTO XA_CorwinPregnant2_How
	
	IF ~~ THEN REPLY @1533 /* ~Schael, you know that I love you. But a baby, now?~ */
	GOTO XA_CorwinPregnant2_BabyNow
	
	IF ~~ THEN REPLY @1556 /* ~Schael, I ... I'm not sure if I'm ready for this responsibility.~ */
	GOTO XA_CorwinPregnant2_NotReady
END

IF ~~ THEN BEGIN XA_CorwinPregnant2_NotReady
	SAY @1557 /* ~I understand your misgivings, and that this is a lot to process. But you are ready. I've seen how great you are with Rohma. I know you'd be a great father to our child.~*/
	
	IF ~~ THEN REPLY @1558 /* But a baby, now? Given all of the danger we face?~ */
	GOTO XA_CorwinPregnant2_BabyNow
	
	IF ~~ THEN REPLY @1559 /*~Are you sure? That you're pregnant, I mean?~ */
	GOTO XA_CorwinPregnant2_DontLookPregnant

	IF ~~ THEN REPLY @1560 /* I'm not as sure ... but I promise you, I'm going to give it my all.~*/
	GOTO XA_CorwinPregnant2_GoodNews
END

IF ~~ THEN BEGIN XA_CorwinPregnant2_BabyNow
	SAY @1532 /* ~I'm going to have this baby. Don't ask me not to. The timing is terrible I know, but I can still do everything that I need to, on or off the battlefield. Once I start showing, that might change ...~ */
	
	IF ~~ THEN 
	GOTO XA_CorwinPregnant2_GoHome_Medic
	
	IF ~
		Global("XA_CorwinPregnantAerie", "GLOBAL", 1)
	~ THEN GOTO XA_CorwinPregnant2_GoHome_Aerie
	
	IF ~
		Global("XA_CorwinPregnantJaheira", "GLOBAL", 1)
	~ THEN GOTO XA_CorwinPregnant2_GoHome_Jaheira
END

IF ~~ THEN BEGIN XA_CorwinPregnant2_DontLookPregnant
	SAY @1520 /* ~I'm certain. I'm late this month, and a couple of days ago the morning sickness started. It's the same as when I was pregnant with Rohma. I won't start showing for probably six to eight weeks, but I'm definitely with child.~ */
	
	IF ~~ THEN REPLY @1521 /* ~Schael, that's wonderful news!~ */
	GOTO XA_CorwinPregnant2_GoodNews
	
	IF ~
		!Global("XA_PregnantHow", "LOCALS", 1)
	~ THEN REPLY @1523 /* But... how can that be? */
	DO ~
		SetGlobal("XA_PregnantHow", "LOCALS", 1)
	~
	GOTO XA_CorwinPregnant2_How
	
	IF ~~ THEN REPLY @1533 /* ~Schael, you know that I love you. But a baby, now?~ */
	GOTO XA_CorwinPregnant2_BabyNow
END

IF ~~ THEN BEGIN XA_CorwinPregnant2_How
	SAY @1524 /* ~What do you mean, how? We were intimate two or three times a week for over a month. It was bound to happen.~ */
	
	IF ~~ THEN REPLY @1521 /* ~Schael, that's wonderful news!~ */
	GOTO XA_CorwinPregnant2_GoodNews
	
	IF ~
		!Global("XA_PregnantSure", "LOCALS", 1)
	~ THEN REPLY @1519 /* ~What? But you don't look pregnant — are you sure?~ */
	DO ~
		SetGlobal("XA_PregnantSure", "LOCALS", 1)
	~
	GOTO XA_CorwinPregnant2_DontLookPregnant
	
	IF ~~ THEN REPLY @1533 /* ~Schael, you know that I love you. But a baby, now?~ */
	GOTO XA_CorwinPregnant2_BabyNow
	
END

IF ~~ THEN BEGIN XA_CorwinPregnant2_GoodNews
	SAY @1522 /* ~It is. I'm so happy to be carrying our child. You're going to make a great father.~ */
	
	IF ~~ THEN REPLY @1525 /* ~But Schael ... We need to find a way to get you home. We can't risk the safety of our child.~*/
	GOTO XA_CorwinPregnant2_GoHome
	
	IF ~~ THEN REPLY @1534 /* ~It's too dangerous for you to remain here.~*/
	GOTO XA_CorwinPregnant2_GoHome
END

IF ~~ THEN BEGIN XA_CorwinPregnant2_GoHome
	SAY @1527 /* ~No, I won't leave your side. At least not yet. The timing is terrible of course, but I can still do everything that I need to, on or off the battlefield. Once I start showing, that might change ...~*/
	
	IF ~~ THEN 
	GOTO XA_CorwinPregnant2_GoHome_Medic
	
	IF ~
		Global("XA_CorwinPregnantAerie", "GLOBAL", 1)
	~ THEN GOTO XA_CorwinPregnant2_GoHome_Aerie
	
	IF ~
		Global("XA_CorwinPregnantJaheira", "GLOBAL", 1)
	~ THEN GOTO XA_CorwinPregnant2_GoHome_Jaheira
END

IF ~~ THEN BEGIN XA_CorwinPregnant2_Questions
	SAY @1566 /* ~She told me that a baby in its mothers womb will remain healthy so long as the mother is. Even if I'm killed, once I'm resurrected, our baby will be as well.~ */
	
	IF ~
		!IsValidForPartyDialogue("Jan")
		!Global("XA_Pregnant_NeedAnything", "LOCALS", 1)
	~ THEN REPLY @1536 /* ~Is there anything that I can do for you? I hear pregnant women get some odd cravings from time to time.~ */
	DO ~
		SetGlobal("XA_Pregnant_NeedAnything", "LOCALS", 1)
	~
	GOTO XA_CorwinPregnant2_NeedAnything
	
	IF ~
		IsValidForPartyDialogue("Jan")
		!Global("XA_Pregnant_NeedAnything", "LOCALS", 1)
	~ THEN REPLY @1536 /* ~Is there anything that I can do for you? I hear pregnant women get some odd cravings from time to time.~ */
	DO ~
		SetGlobal("XA_Pregnant_NeedAnything", "LOCALS", 1)
	~
	GOTO XA_CorwinPregnant2_NeedAnything_Jan
	
	IF ~
		!Global("XA_Pregnant_Gender", "LOCALS", 1)
		OR(2)
			GlobalGT("XA_CorwinPregnantAerie", "GLOBAL", 0)
			GlobalGT("XA_CorwinPregnantJaheira", "GLOBAL", 0)
	~ THEN REPLY @1550 /* ~Did she tell you if it was a boy or a girl?~ */
	DO ~
		SetGlobal("XA_Pregnant_Gender", "LOCALS", 1)
	~
	GOTO XA_CorwinPregnant2_BabyGender
	
	IF ~
		!Global("XA_Pregnant_DueDate", "LOCALS", 1)
		OR(2)
			GlobalGT("XA_CorwinPregnantAerie", "GLOBAL", 0)
			GlobalGT("XA_CorwinPregnantJaheira", "GLOBAL", 0)
	~ THEN REPLY @1554 /* ~Did she give you a due date?~ */
	DO ~
		SetGlobal("XA_Pregnant_DueDate", "LOCALS", 1)
	~
	GOTO XA_CorwinPregnant2_DueDate
	
	IF ~
		!Global("XA_Pregnant_DueDate", "LOCALS", 1)
		GlobalLT("XA_CorwinPregnantAerie", "GLOBAL", 1)
		GlobalLT("XA_CorwinPregnantJaheira", "GLOBAL", 1)
	~ THEN REPLY @1565 /* ~Do you know when you're expecting?~ */
	DO ~
		SetGlobal("XA_Pregnant_DueDate", "LOCALS", 1)
	~
	GOTO XA_CorwinPregnant2_DueDate
	
	IF ~
		!Global("XA_Pregnant_NeedAnything", "LOCALS", 1)
	~ THEN REPLY @1563 /* ~I'm here for you, my love. If there's anything you require, you need only ask.~*/
	DO ~
		SetGlobal("XA_Pregnant_NeedAnything", "LOCALS", 1)
	~
	GOTO XA_CorwinPregnant2_NeedAnything
END

IF ~~ THEN BEGIN XA_CorwinPregnant2_GoHome_Jaheira
	SAY @1529 /*~But, I did speak to Jaheira about this... I think you might've overheard some of our discussion.*/
	
	IF ~~ THEN REPLY @1567 /*~What did she say?~*/
	GOTO XA_CorwinPregnant2_Questions
END

IF ~~ THEN BEGIN XA_CorwinPregnant2_GoHome_Aerie
	SAY @1528 /*~But, I did speak to Aerie about this... I think you might've overheard some of our discussion.*/
	
	IF ~~ THEN REPLY @1567 /*~What did she say?~*/
	GOTO XA_CorwinPregnant2_Questions
END

IF ~~ THEN BEGIN XA_CorwinPregnant2_GoHome_Medic
	SAY @1530 /*~~Before we left Baldur's Gate, I spoke with Helena, one of the Fist's medics, just as a precaution.~ */
	
	IF ~~ THEN REPLY @1567 /*~What did she say?~*/
	GOTO XA_CorwinPregnant2_Questions
END

IF ~~ THEN BEGIN XA_CorwinPregnant2_NeedAnything_Jan
	SAY @1564 /*  ~Funny you mention that. When I was pregnant with Rohma, one night I had the strongest craving for roasted turnips. Not mashed, diced, or boiled, they *had* to be roasted. The market was closed, so my father had to go to the greengrocer's house in the middle of the night to buy some, then come back and cook them. I guess Jan would have us covered this time around, should that particular craving return. There is one thing that I ask, though ...~ */
	
	IF ~~ THEN
	GOTO XA_CorwinPregnant2_DontTell
	
	IF ~
		Global("XA_CorwinPregnantAerie", "GLOBAL", 1)
	~ THEN
	GOTO XA_CorwinPregnant2_DontTell_Aerie
	
	IF ~
		Global("XA_CorwinPregnantJaheira", "GLOBAL", 1)
	~ THEN
	GOTO XA_CorwinPregnant2_DontTell_Jaheira 
END

IF ~~ THEN BEGIN XA_CorwinPregnant2_DueDate
	SAY @1562 /* ~No, but I figure I'm between four and six weeks in. Probably closer to six, which means I'll likely start showing ten to twelve weeks from now. We still have time to do what we need to here.~*/
	
		IF ~
		!IsValidForPartyDialogue("Jan")
		!Global("XA_Pregnant_NeedAnything", "LOCALS", 1)
	~ THEN REPLY @1536 /* ~Is there anything that I can do for you? I hear pregnant women get some odd cravings from time to time.~ */
	DO ~
		SetGlobal("XA_Pregnant_NeedAnything", "LOCALS", 1)
	~
	GOTO XA_CorwinPregnant2_NeedAnything
	
	IF ~
		IsValidForPartyDialogue("Jan")
		!Global("XA_Pregnant_NeedAnything", "LOCALS", 1)
	~ THEN REPLY @1536 /* ~Is there anything that I can do for you? I hear pregnant women get some odd cravings from time to time.~ */
	DO ~
		SetGlobal("XA_Pregnant_NeedAnything", "LOCALS", 1)
	~
	GOTO XA_CorwinPregnant2_NeedAnything_Jan
	
	IF ~
		!Global("XA_Pregnant_Gender", "LOCALS", 1)
		OR(2)
			GlobalGT("XA_CorwinPregnantAerie", "GLOBAL", 0)
			GlobalGT("XA_CorwinPregnantJaheira", "GLOBAL", 0)
	~ THEN REPLY @1550 /* ~Did she tell you if it was a boy or a girl?~ */
	DO ~
		SetGlobal("XA_Pregnant_Gender", "LOCALS", 1)
	~
	GOTO XA_CorwinPregnant2_BabyGender
	
	
	IF ~
		!Global("XA_Pregnant_NeedAnything", "LOCALS", 1)
	~ THEN REPLY @1563 /* ~I'm here for you, my love. If there's anything you require, you need only ask.~*/
	DO ~
		SetGlobal("XA_Pregnant_NeedAnything", "LOCALS", 1)
	~
	GOTO XA_CorwinPregnant2_NeedAnything
END



IF ~~ THEN BEGIN XA_CorwinPregnant2_BabyGender
	SAY @1552 /* ~No, I didn't ask her. It's better not to know, I think. Speaking of ...~  */
	
	IF ~
		!IsValidForPartyDialogue("Jan")
		!Global("XA_Pregnant_NeedAnything", "LOCALS", 1)
	~ THEN REPLY @1536 /* ~Is there anything that I can do for you? I hear pregnant women get some odd cravings from time to time.~ */
	DO ~
		SetGlobal("XA_Pregnant_NeedAnything", "LOCALS", 1)
	~
	GOTO XA_CorwinPregnant2_NeedAnything
	
	IF ~
		IsValidForPartyDialogue("Jan")
		!Global("XA_Pregnant_NeedAnything", "LOCALS", 1)
	~ THEN REPLY @1536 /* ~Is there anything that I can do for you? I hear pregnant women get some odd cravings from time to time.~ */
	DO ~
		SetGlobal("XA_Pregnant_NeedAnything", "LOCALS", 1)
	~
	GOTO XA_CorwinPregnant2_NeedAnything_Jan
	
	IF ~
		!Global("XA_Pregnant_DueDate", "LOCALS", 1)
		OR(2)
			GlobalGT("XA_CorwinPregnantAerie", "GLOBAL", 0)
			GlobalGT("XA_CorwinPregnantJaheira", "GLOBAL", 0)
	~ THEN REPLY @1554 /* ~Did she give you a due date?~ */
	DO ~
		SetGlobal("XA_Pregnant_DueDate", "LOCALS", 1)
	~
	GOTO XA_CorwinPregnant2_DueDate
	
	IF ~
		!Global("XA_Pregnant_DueDate", "LOCALS", 1)
		GlobalLT("XA_CorwinPregnantAerie", "GLOBAL", 1)
		GlobalLT("XA_CorwinPregnantJaheira", "GLOBAL", 1)
	~ THEN REPLY @1565 /* ~Do you know when you're expecting?~ */
	DO ~
		SetGlobal("XA_Pregnant_DueDate", "LOCALS", 1)
	~
	GOTO XA_CorwinPregnant2_DueDate
	
	IF ~
		!Global("XA_Pregnant_NeedAnything", "LOCALS", 1)
	~ THEN REPLY @1563 /* ~I'm here for you, my love. If there's anything you require, you need only ask.~*/
	DO ~
		SetGlobal("XA_Pregnant_NeedAnything", "LOCALS", 1)
	~
	GOTO XA_CorwinPregnant2_NeedAnything
END

IF ~~ THEN BEGIN XA_CorwinPregnant2_NeedAnything
	SAY @1537 /* ~Thank you, but I'm fine love. If I need anything, I'll let you know. But ... since you mentioned it, there is one thing ...~*/
	
	IF ~~ THEN
	GOTO XA_CorwinPregnant2_DontTell
	
	IF ~
		Global("XA_CorwinPregnantAerie", "GLOBAL", 1)
	~ THEN
	GOTO XA_CorwinPregnant2_DontTell_Aerie
	
	IF ~
		Global("XA_CorwinPregnantJaheira", "GLOBAL", 1)
	~ THEN
	GOTO XA_CorwinPregnant2_DontTell_Jaheira
END

IF ~~ THEN BEGIN XA_CorwinPregnant2_DontTell_Aerie
	SAY @1561 /*~The fewer people who learn of this, the better.~ [XA100088]*/
	
	= @1539 /* ~I don't want anyone to give me any special treatment. Aerie knows, but I don't want the rest to know I'm pregnant. Eventually they'll find out of course, but for now, let's keep it between us.~ */
	
	IF ~~ THEN REPLY @1541 /* ~As you wish, dear.~*/
	GOTO XA_CorwinPregnant2_End
	
	IF ~
		InParty("Imoen2")
	~ THEN REPLY @1546 /* ~Not even Imoen?~ */
	GOTO XA_CorwinPregnant2_Imoen
END

IF ~~ THEN BEGIN XA_CorwinPregnant2_Imoen
	SAY @1547 /* ~Well, sure. She's your sister after all, and I know she can keep a secret. But no one else, please. Auntie Imoen ... has a nice ring to it, eh? ~ */
	
	IF ~~ THEN REPLY @1548 /* ~It does. She's going to be thrilled when she hears the news.~ */
	DO ~
		SetGlobalTimer("XA_CorwinPregnantImoenTimer", "GLOBAL", TWO_DAYS)
		SetGlobal("XA_CorwinPregnantImoen", "GLOBAL", 1)
	~
	GOTO XA_CorwinPregnant2_End
	
	IF ~~ THEN REPLY @1555 /* ~I'm going to be a father ...~*/
	DO ~
		SetGlobalTimer("XA_CorwinPregnantImoenTimer", "GLOBAL", TWO_DAYS)
		SetGlobal("XA_CorwinPregnantImoen", "GLOBAL", 1)
	~
	GOTO XA_CorwinPregnant2_End
	
END

IF ~~ THEN BEGIN XA_CorwinPregnant2_DontTell_Jaheira
	SAY @1561 /*~The fewer people who learn of this, the better.~ [XA100088]*/
	
	= @1540 /* ~I don't want anyone to give me any special treatment. Jaheira knows, but I don't want the rest to know I'm pregnant. Eventually they'll find out of course, but for now, let's keep it between us.~*/
	
	IF ~~ THEN REPLY @1541 /* ~As you wish, dear.~*/
	GOTO XA_CorwinPregnant2_End
	
	IF ~
		InParty("Imoen2")
	~ THEN REPLY @1546 /* ~Not even Imoen?~ */
	GOTO XA_CorwinPregnant2_Imoen
END

IF ~~ THEN BEGIN XA_CorwinPregnant2_DontTell
	SAY @1561 /*~The fewer people who learn of this, the better.~ [XA100088]*/
	
	= @1538 /* ~I don't want anyone to give me any special treatment, or to even know I'm pregnant. Eventually they'll find out of course, but for now, let's keep it between us.~*/
	
	IF ~~ THEN REPLY @1541 /* ~As you wish, dear.~*/
	GOTO XA_CorwinPregnant2_End
	
	IF ~
		InParty("Imoen2")
	~ THEN REPLY @1546 /* ~Not even Imoen?~ */
	GOTO XA_CorwinPregnant2_Imoen
END

IF ~~ THEN BEGIN XA_CorwinPregnant2_End
	SAY @1542 /* ~Come here, hero.~*/
	
	= @1545 /* ~(You share a warm embrace, followed by a passionate kiss.)~*/
	
	= @1543 /* ~I love you. More than you know.~ */
	
	IF ~~ THEN REPLY @1544 /* ~And I love you */
	DO ~
		SetGlobalTimer("XA_CorwinPregnantTimer", "GLOBAL", ONE_MONTH)
	~
	EXIT
END
 //}

//{ Dialog J-70 - CC OK
IF ~
	Global("XA_SaradushDestroyed", "GLOBAL", 1)
~ THEN BEGIN XA_SaradushDestroyed
	SAY @1507 /* ~Stand ready — this place has been overrun by giants.~ */
	
	IF ~~ THEN REPLY @1508 /* ~The city's been completely destroyed.~ */
	DO ~
		SetGlobal("XA_SaradushDestroyed", "GLOBAL", 2)
	~
	GOTO XA_TimeToGrieveLater
	
	IF ~~ THEN REPLY @1509 /* ~I haven't seen destruction like this since Caelar's crusade.~ */
	DO ~
		SetGlobal("XA_SaradushDestroyed", "GLOBAL", 2)
	~
	GOTO XA_TimeToGrieveLater
	
	IF ~
		IsValidForPartyDialogue("Jaheira")
	~ THEN
	DO ~
		SetGlobal("XA_SaradushDestroyed", "GLOBAL", 2)
	~
	EXTERN JAHEIRAJ XA_SaradushDestroyed 
	
	IF ~
		IsValidForPartyDialogue("Imoen2")
	~ THEN
	DO ~
		SetGlobal("XA_SaradushDestroyed", "GLOBAL", 2)
	~
	EXTERN IMOEN2J XA_SaradushDestroyed
	
	IF ~
		IsValidForPartyDialogue("Neera")
	~ THEN
	DO ~
		SetGlobal("XA_SaradushDestroyed", "GLOBAL", 2)
	~
	EXTERN NEERAJ XA_SaradushDestroyed
	
	IF ~
		IsValidForPartyDialogue("Aerie")
	~ THEN
	DO ~
		SetGlobal("XA_SaradushDestroyed", "GLOBAL", 2)
	~
	EXTERN AERIEJ XA_SaradushDestroyed
END

IF ~~ THEN BEGIN XA_TimeToGrieveLater
	SAY @1504 /* @1504 = ~There'll be time to grieve later. This is what the Five likely have in store for the rest of the Sword Coast, including Baldur's Gate. We have to stop them.~ */
	
	IF ~~ THEN REPLY @1505 /* ~We will. First Yaga-Shura, then the rest.~ */
	EXIT
	
	IF ~~ THEN REPLY @1506 /* Right */
	EXIT
END
//}

//{ Sarvolo
IF ~~ THEN BEGIN XA_Corwin_Sarvolo
	SAY @1603 /* ~You make it sound as though we're heroes out of some legend. To be honest, I've never given much thought to what people would say about us. About what we've accomplished together...~*/
	
	IF ~~ THEN
	EXTERN SARVOLO XA_Corwin_Sarvolo_END 
END

IF ~~ THEN BEGIN XA_Schael_Sarvolo
	SAY @1604 /* ~Volo, <CHARNAME> is the only hero here. To be honest, I've never given much thought to what people would say about us, <CHARNAME>. About what we've accomplished together... and our love for one another...~*/
	
	IF ~~ THEN
	EXTERN SARVOLO XA_Schael_Sarvolo_END 
END
//}

//{ Dialog J-69 - CC OK
IF ~
	Global("XA_CorwinComplainSarevok", "GLOBAL", 2)
~ THEN BEGIN XA_CorwinComplainSarevokInit
	SAY @1472 /* ~We need to talk.~ [BD54471]*/
	
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1473 /* ~What's on your mind, love.~ */
	DO ~
		SetGlobal("XA_CorwinComplainSarevok", "GLOBAL", 3)
	~
	GOTO XA_CorwinComplainSarevok
	
	IF ~
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1474 /* ~What's on your mind, Major?~ */
	DO ~
		SetGlobal("XA_CorwinComplainSarevok", "GLOBAL", 3)
	~
	GOTO XA_CorwinComplainSarevok
	
	IF ~~ THEN REPLY @1475 /* ~This isn't a good time.~*/
	DO ~
		SetGlobal("XA_CorwinComplainSarevok", "GLOBAL", 3)
	~
	GOTO XA_NotAGoodTime
END

IF ~~ THEN BEGIN XA_NotAGoodTime
	SAY @1476 /*  ~No, this is the perfect time.~ */
	
	IF ~~ THEN GOTO XA_CorwinComplainSarevok
END

IF ~~ THEN BEGIN XA_CorwinComplainSarevok
	SAY @1477 /* ~I can't believe you allowed Sarevok, of all people, to join us. I've learned to trust your judgment, but I can't help thinking that you've made a grave mistake.~ */
	
	IF ~~ THEN REPLY @1479 /* ~The truth is, you're probably right. I don't trust him, but we need his strength and his knowledge.~ */
	GOTO XA_CorwinComplainSarevok2B
	
	IF ~~ THEN REPLY @1478 /* ~I understand your concern, and I share them to some extent. He has paid for his crimes, however.~ */
	GOTO XA_CorwinComplainSarevok2B
	
	IF ~~ THEN REPLY @1481 /* ~Everyone deserves a second chance. Even Sarevok.~ */
	GOTO XA_CorwinComplainSarevok2B
END

IF ~~ THEN BEGIN XA_CorwinComplainSarevok2B
	SAY @1480 /* ~Maybe ... but how many more innocents will suffer, now that he's returned? Men like him never change — he'll always be a bloodthirsty maniac.~ */
	
	IF ~~ THEN REPLY @1482 /* ~I'll keep him on a short leash, don't worry.~ */
	GOTO XA_CorwinComplainSarevok_2B1
	
	IF ~~ THEN REPLY @1483 /* ~That's why I need you to keep an eye on him. If there's any indication of betrayal, you need to let me know immediately. He's died by my hand once, and he shall do so again if the need arises.~ */
	GOTO XA_CorwinComplainSarevok_2B2_END
	
	IF ~
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1493 /* ~Major, I have to believe that people can change, that they can forge a new destiny. If not, I'm doomed to follow in my father's footsteps.~ */
	GOTO XA_ChangeDestiny_NR
	
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @1494 /* ~Schael, I have to believe that people can change, that they can forge a new destiny. If not, I'm doomed to follow in my father's footsteps.~*/
	GOTO XA_ChangeDestiny_R
END

IF ~~ THEN BEGIN XA_ChangeDestiny_NR
	SAY @1496 /* ~I ... I understand where you're coming from. I didn't mean to imply that you were anything like him.~ */
	
	IF ~~ THEN REPLY @1497 /*~But I am like him. Were it not for the actions of Gorion in rescuing me, who is to say that I'd not have ended up the same as him?~*/
	GOTO XA_ChangeDestiny_NR_END
END

IF ~~ THEN BEGIN XA_ChangeDestiny_R
	SAY @1495 /* ~I ... understand. I didn't mean to imply that you were anything like him, love.~ */
	
	IF ~~ THEN REPLY @1497 /*~But I am like him. Were it not for the actions of Gorion in rescuing me, who is to say that I'd not have ended up the same as him?~*/
	GOTO XA_ChangeDestiny_R_END
END

IF ~~ THEN BEGIN XA_ChangeDestiny_R_END
	SAY @1498 /* ~... Perhaps you're right. Still, I'm going to keep a close eye on him. If I sense even for a moment that he's planning to betray us, I'll take action.~ */
	
	IF ~~ THEN REPLY @1499 /* ~Thank you, love. Let's get moving.~ */
	EXIT
	
	IF ~~ THEN REPLY @1500 /* ~He's my brother, and my responsibility, love. If the need arises, I will end his life as I did once before. Let's go.~ */
	EXIT
END

IF ~~ THEN BEGIN XA_ChangeDestiny_NR_END
	SAY @1498 /* ~... Perhaps you're right. Still, I'm going to keep a close eye on him. If I sense even for a moment that he's planning to betray us, I'll take action.~ */
	
	IF ~~ THEN REPLY @1501 /* ~Thank you, Schael. Let's get moving.~*/
	EXIT
	
	IF ~~ THEN REPLY @1502 /* ~He's my brother, and my responsibility, Major. If the need arises, I will end his life as I did once before. Let's go.~ */
	EXIT
END

IF ~~ THEN BEGIN XA_CorwinComplainSarevok_2B1
	SAY @1486 /* ~We need to keep our eyes on him at all times. If I get any sense that he's going to break his word, I swear I'll —~*/
	
	IF ~~ THEN REPLY @1490 /* ~I appreciate your vigilance.~ */
	GOTO XA_CorwinComplainSarevok_2B1_END
	
	IF ~~ THEN REPLY @1491 /*  ~Not if I kill him first.~ */
	GOTO XA_CorwinComplainSarevok_2B1_END
END

IF ~~ THEN BEGIN XA_CorwinComplainSarevok_2B1_END
	SAY @1492 /* ~Right. Let's go.~*/
	
	IF ~~ THEN
	EXIT
END

IF ~~ THEN BEGIN XA_CorwinComplainSarevok_2B2_END
	SAY @1492 /* ~Right. You can count on me.~*/
	
	IF ~~ THEN
	EXIT 
	
END

//}

IF ~~ THEN BEGIN XA_SAREV_10
	SAY @38 /* ~You've got to be kidding me. A deal? With you?~*/
	
	IF ~~ THEN EXTERN SAREV25A 14
END


//{ Wraith Interaction
IF ~~ THEN BEGIN XA_Corwin_Wraith
	SAY @1605 /* ~Love must dare to risk. Otherwise, it isn't love at all.~ */
	
	IF ~~ THEN
	EXTERN HGWRA01 24
END

IF ~~ THEN BEGIN XA_Corwin_Wraith2
	SAY @1325 /*~Have I killed before? Yes — but never in cold blood. Never without cause.~ */
	
	IF ~~ THEN 
	EXTERN HGWRA01 XA_Corwin_Wraith3
END

IF ~~ THEN BEGIN XA_RohmaWraithChain_END
	SAY @1613 /* ~N-no, Rohma! I love you more than anything! Oh, gods, no...~*/
	
	IF ~~ THEN REPLY @1611 /* ~Schael, calm yourself! Rohma is safe with your father at the Ducal palace. Whatever this thing is, it isn't your daughter.~ */
	EXTERN HGWRA01 25
	
	IF ~~ THEN REPLY @1614 /*~Enough! I won't allow this to continue!~ */
	EXTERN HGWRA01 25
	
	IF ~~ THEN REPLY @1615 /*~Whatever you are, enough! She doesn't deserve this!~*/
	EXTERN HGWRA01 25
END
//}

//{ Dialog J-57 - CC OK
IF ~
	InParty(Myself)
	Global("XA_CorwinHexxat", "GLOBAL", 5)
	IsValidForPartyDialogue("Hexxat")
	OR(6)
		IsValidForPartyDialogue("Mazzy")
		IsValidForPartyDialogue("Anomen")
		IsValidForPartyDialogue("Aerie")
		IsValidForPartyDialogue("Keldorn")
		IsValidForPartyDialogue("XACAELAR")
		IsValidForPartyDialogue("Jaheira")
~ THEN BEGIN XA_CorwinHexxat3
	SAY @137 /* ~Your time has come, vampire. Allies, to me! Let's rid ourselves of this beast once and for all! ~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_CorwinHexxat", "GLOBAL", 6)
		SetGlobal("XA_CorwinHexxatFight", "GLOBAL", 1)
	~
	EXIT
END
//}


//{ Dialog J-58 - CC OK
IF ~
	InParty(Myself)
	Global("XA_CorwinHexxat", "GLOBAL", 5)
	IsValidForPartyDialogue("Hexxat")
	!IsValidForPartyDialogue("Mazzy")
	!IsValidForPartyDialogue("Anomen")
	!IsValidForPartyDialogue("Aerie")
	!IsValidForPartyDialogue("Keldorn")
	!IsValidForPartyDialogue("XACAELAR")
~ THEN BEGIN XA_CorwinHexxat3
	SAY @138 /* ~Your time has come, vampire. Draw steel! ~ */
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_CorwinHexxat", "GLOBAL", 6)
		SetGlobal("XA_CorwinHexxatFight", "GLOBAL", 1)
	~
	EXIT
END
//}

//{ Dialog J-59 - CC OK
IF ~
	Global("XA_CorwinHexxat", "GLOBAL", 1)
~ THEN BEGIN XA_CorwinHexxat1
	SAY @130 /* ~<CHARNAME>. We need to talk.~ */
	
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @132 /* ~Of course love, what's on your mind? */
	DO ~
		SetGlobal("XA_CorwinHexxat", "GLOBAL", 2)
		SetGlobalTimer("XA_CorwinHexxatTimer", "LOCALS", ONE_DAY)
	~
	GOTO XAA38
	
	IF ~
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		!Global("XA_CorwinPromoted", "GLOBAL", 1)
	~ THEN REPLY @131 /*  ~What is it, Captain?~*/
	DO ~
		SetGlobal("XA_CorwinHexxat", "GLOBAL", 2)
		SetGlobalTimer("XA_CorwinHexxatTimer", "LOCALS", ONE_DAY)
	~
	GOTO XAA38
	
	IF ~
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		Global("XA_CorwinPromoted", "GLOBAL", 1)
	~ THEN REPLY @312 /*  What is it, Major?~*/
	DO ~
		SetGlobal("XA_CorwinHexxat", "GLOBAL", 2)
		SetGlobalTimer("XA_CorwinHexxatTimer", "LOCALS", ONE_DAY)
	~
	GOTO XAA38
END

IF ~~ THEN BEGIN XAA38
	SAY @133 /* ~The vampire. Hexxat. You allow this beast to travel with us?~ */
	
	IF ~~ THEN REPLY @134 /* ~We need her, Schael.~ */
	GOTO XAA39
	
	IF ~~ THEN REPLY @135 /* ~And what of it?~ */
	GOTO XAA39	
END

IF ~~ THEN BEGIN XAA39
	SAY @136 /* ~You're going to have to make a decision, and soon, or I will make it for you. I trust that I've made myself clear.~ */
	
	IF ~~ THEN
	EXIT
END
//}

//{ Player is Lich
IF ~
	Global("XA_LC_CorwinLeaveLich", "GLOBAL", 2)
~ THEN BEGIN XA_CorwinLeaveLich
	SAY @1838 /*~I can't bear to fight at your side any longer. A word of warning, lich — set foot in Baldur's Gate again and I'll crush your bones to dust. Goodbye.~*/
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_CorwinDepart", "GLOBAL", 3)
		SetGlobal("XA_LC_CorwinLeaveLich", "GLOBAL", 3)
		ActionOverride(Player1, TakeCreatureItems("XACORWIN", BACKPACK))
		ChangeAIScript("", OVERRIDE)
		ChangeAIScript("", DEFAULT)
		LeaveParty()
		StartCutSceneMode()
		StartCutScene("XA100EX")
	~
	EXIT
END
//}

//{ Tethyr General
IF ~~ THEN BEGIN XA_GeneralTalk_ChainEnd
	SAY @1803 /*~I hoped to talk you out of this madness, but I see words alone won't get this job done. All right then. Let's go.~ [BD39627]*/
	
	IF ~~ THEN
	DO ~
		SetGlobal("TethyrBattleStart","GLOBAL",1)
		ActionOverride("amtgen01", Enemy())
		ActionOverride("amtgen01", Shout(ALERT))
	~
	EXIT
END

IF ~
	Global("XA_GeneralDeadTalk", "LOCALS", 1)
~ THEN BEGIN XA_GeneralDeadTalk
	SAY @1804 /*~This is bad. We better get out of here before the Tethyrian reinforcements arrive. Let's go.~*/
	
	IF ~~ THEN
	DO ~
		SetGlobal("XA_GeneralDeadTalk", "LOCALS", 2)
	~
	EXIT
END
//}

//{ Beno Amkethran
IF ~~ THEN BEGIN XA_TargetPractice2
	SAY @1728 /*~...~ */
	
	=@1729 /*~I, um... I don't know anything about that.~ */
	
	IF ~~ THEN
	EXTERN XALATH01 XA_TargetPractice3
END
//}
CHAIN
	IF ~~ THEN XACORWIJ XA_GeneralTalk_Chain
		@1799 /* ~Peace, General. I'm Major Schael Corwin of the Baldur's Gate Flaming Fist, assisting <CHARNAME> on a special assignment. The Grand Dukes have ordered —~*/
		== AMTGEN01
		@1800 /* ~The Flaming Fist and the Grand Dukes, in league with a Bhaalspawn? Did I hear you correctly?~*/
		== XACORWIJ
		@1801 /* ~We are hunting the members of an organization known as The Five. I can assure you that <CHARNAME> is innocent of the crimes you describe.~*/
		== AMTGEN01
		@1802 /* ~It matters not, I'm afraid. My orders were clear. <CHARNAME>, and any who travel with <PRO_HIMHER>, are to be put to be executed. May the gods have mercy on your soul.~*/
END XACORWIJ XA_GeneralTalk_ChainEnd

CHAIN XACORWIJ XA_RohmaWraithChain
	@1606 /*~R-Rohma!? Honey, what are you doing here?~*/
	
	== XAROHMA4
	@1607 /*~Mommy, why didn't you come home? Why weren't you there to protect us?~*/
	
	== XACORWIJ
	@1608 /*~What ... what do you mean? What happened!~*/
	
	== XAROHMA4
	@1609 /*~They came... they killed grandpa and then they killed me, mommy... You killed me!~*/
	
	= @1612 /* ~You wanted us to die, so that you could start a new family with <CHARNAME>! You never loved me!~*/
	
END XACORWIJ XA_RohmaWraithChain_END

CHAIN XACORWIJ XA_GoodbyeChain
	@1716 /* ~(She turns to your comrades.)~ */
	
	//{ Aerie Goodbye
	== AERIEJ
	IF ~
		IsValidForPartyDialogue("Aerie")
	~
	@1687 /* ~Oh Schael *sob*, I — I'll miss you!~*/
	
	== XACORWIJ
	IF ~
		IsValidForPartyDialogue("Aerie")
	~
	@1688 /* ~I'll miss you too, Aerie. Please look after <CHARNAME> for me while I'm gone.~*/
	//}
	
	//{ Keldorn Goodbye
	== KELDORJ
	IF ~
		IsValidForPartyDialogue("Keldorn")
	~
	@1689 /* ~It's been an honor to fight at your side, Major.~*/
	
	== XACORWIJ
	IF ~
		IsValidForPartyDialogue("Keldorn")
	~
	@1690 /* ~The honor is mine. Thank you, Keldorn.~*/
	//}
	
	//{ Minsc Goodbye
	== MINSCJ
	IF ~
		IsValidForPartyDialogue("Minsc")
	~
	@1709 /*~Major soldier lady, Boo wishes you well, and asks if you would be so kind as to kiss him.~ */
	
	== XACORWIJ
	IF ~
		IsValidForPartyDialogue("Minsc")
	~
	@1710 /*~No. I'm not kissing anyone's rode—, excuse me, 'space-hamster'.~  */
	
	== MINSCJ
	IF ~
		IsValidForPartyDialogue("Minsc")
	~
	@1711 /*  ~In that case, can Boo give you a kiss? Just a peck on the cheek?~*/
	
	== XACORWIJ
	IF ~
		IsValidForPartyDialogue("Minsc")
	~
	@1712 /*~(Sigh.)~ */
	
	== XACORWIJ
	IF ~
		IsValidForPartyDialogue("Minsc")
	~
	@1713 /*~Sure, Minsc.~ */
	
	== MINSCJ
	IF ~
		IsValidForPartyDialogue("Minsc")
	~
	@1714 /* ~(She leans in, and Boo head-bumps her on her cheek.)~*/
	
	== XACORWIJ
	IF ~
		IsValidForPartyDialogue("Minsc")
	~
	@1715 /* ~Ugh...~ */
	//}
	
	//{ Korgan Goodbye
	== KORGANJ
	IF ~
		IsValidForPartyDialogue("Korgan")
	~
	@1691 /* ~Aye girlie, don't ye worry yer sweet little behind. Ole Korgan'll make sure yer <PRO_MANWOMAN> comes home in one piece.~*/
	
	== XACORWIJ
	IF ~
		IsValidForPartyDialogue("Korgan")
	~
	@1692 /* ~I appreciate that. Thank you, Korgan.~*/
	//}
	
	//{ Imoen Goodbye
	== IMOEN2J
	IF ~
		IsValidForPartyDialogue("Imoen2")
	~
	@1693 /* ~Schael! I'll miss you! Please, give Liia my regards.~*/
	
	== XACORWIJ
	IF ~
		IsValidForPartyDialogue("Imoen2")
	~
	@1694 /* ~I will Imoen... and I'll miss you too. Take good care of your <PRO_BROTHERSISTER> for me.~*/
	
	== IMOEN2J
	IF ~
		IsValidForPartyDialogue("Imoen2")
	~
	@1719 /* ~Don't worry, I'll keep <PRO_HIMHER> out of trouble.~*/
	//}
	
	//{ Neera Goodbye
	== NEERAJ
	IF ~
		IsValidForPartyDialogue("Neera")
	~
	@1695 /* ~Good luck with the babies! (Hee-hee)~*/
	
	== XACORWIJ
	IF ~
		IsValidForPartyDialogue("Neera")
	~
	@1696 /* ~Sorry, what was that?~*/
	
	== NEERAJ
	IF ~
		IsValidForPartyDialogue("Neera")
	~
	@1697 /* ~I said, good luck with the baby!~*/
	
	== XACORWIJ
	IF ~
		IsValidForPartyDialogue("Neera")
	~
	@1698 /* ~Thank you, Neera. I appreciate it.~  */
	//}

	//{ Valygar Goodbye
	== VALYGARJ
	IF ~
		IsValidForPartyDialogue("Valygar")
	~
	@1699 /* ~Take care of yourself, Major.~*/
	
	== XACORWIJ
	IF ~
		IsValidForPartyDialogue("Valygar")
	~
	@1700 /* ~You too, Valygar.~ */
	//}

	//{ Rasaad Goodbye
	== RASAADJ
	IF ~
		IsValidForPartyDialogue("Rasaad")
	~
	@1701 /* ~Schael — I shall miss you, my friend.~ */
	
	== XACORWIJ
	IF ~
		IsValidForPartyDialogue("Rasaad")
	~
	@1702 /* ~I'll miss you too Rasaad. Take care of yourself.~ */
	//}
	
	//{ Jaheira Goodbye
	== JAHEIRAJ
	IF ~
		IsValidForPartyDialogue("Jaheira")
	~
	@1703 /* ~Though it must hurt to leave <PRO_HIMHER>, in time you'll realize that you've made the right decision, Schael. The battlefield is no place for an expecting mother.~ */
	
	== XACORWIJ
	IF ~
		IsValidForPartyDialogue("Jaheira")
	~
	@1704 /* ~Right... thank you Jaheira.~*/
	//}
	
	//{ Nalia Goodbye
	== NALIAJ
	IF ~
		IsValidForPartyDialogue("Nalia")
	~
	@1705 /* ~I'll miss our little discussions on the plight of the poor, and how best to tackle the inequality that plagues our cities.~ */
	
	== XACORWIJ
	IF ~
		IsValidForPartyDialogue("Nalia")
	~
	@1706 /* ~I... won't. But I'll miss you, Nalia.~ */
	//}
	
	//{ Mazzy Goodbye
	== MAZZYJ
	IF ~
		IsValidForPartyDialogue("Mazzy")
	~
	@1707 /* ~Schael, I'm fortunate to have been able to fight alongside you these past months. You will be missed, by all of us.~ */
	
	== XACORWIJ
	IF ~
		IsValidForPartyDialogue("Mazzy")
	~
	@1708 /* ~And I'm fortunate to be able to call you a friend, Mazzy. Be well.~*/
	//}
	
	//{ Caelar Goodbye
	== XACAELAJ
	IF ~
		IsValidForPartyDialogue("XACAELAR")
	~
	@346 /* ~Major, you've represented your city and your family with distinction. It has been an honor to stand at your side. Walk in the light, always.~*/
	== XACORWIJ
	IF ~
		IsValidForPartyDialogue("XACAELAR")
	~
	@347  /*~Thank you, Caelar. When the time comes, I'll vouch for your actions. Take care.~ */
	
	//}

	//{ HaerDalis Goodbye
	== HAERDAJ
	IF ~
		IsValidForPartyDialogue("HaerDalis")
	~
	@1717/*  ~Alas, it is time for my raven to take flight and return to her nest.~ */
	
	== XACORWIJ
	IF ~
		IsValidForPartyDialogue("HaerDalis")
	~
	@1718 /* ~Goodbye, Haer'Dalis.~ */
	//}
	
	//{ Jan Goodbye
	== JANJ
	IF ~
		IsValidForPartyDialogue("Jan")
	~
	@1721 /* ~This reminds me of the time when —~*/
	
	== XACORWIJ
	IF ~
		IsValidForPartyDialogue("Jan")
	~
	@1722 /* ~Jan. I'll miss you, too.~*/
	
	== JANJ
	IF ~
		IsValidForPartyDialogue("Jan")
	~
	@1723 /* ~Aye. Before you go Schael, take this recipe. It's for a buttered turnip puree. My children loved it when they were wee small.~*/
	
	== XACORWIJ
	IF ~
		IsValidForPartyDialogue("Jan")
	~
	@1720 /* ~That's very kind of you. Thank you.~*/
	//}
END XACORWIJ XA_GoodbyeChainEnd