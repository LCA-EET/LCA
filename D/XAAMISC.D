//Changes to miscellaneous dialogs (BG1 / SoA / ToB)
//Generally, this file will contain modifications less than 100 lines long. Modifications 100 lines or longer will typically have their own file.
//Daniel Valle
//dan@danielvalle.net
/* Revision History

2022-12-10: Initial Commit

*/

//{ HGWRA01.D
EXTEND_BOTTOM HGWRA01
	IF ~
		Global("XA_CorwinRomanceActive","GLOBAL",2)
		IsValidForPartyDialogue("XACORWIN")
	~ THEN GOTO XA_Corwin
END

APPEND HGWRA01
	IF ~~ THEN BEGIN XA_Corwin
		SAY @287 /* ~What of the inevitable pain you must give to the one you love? The woman you call "Schael."~ */
		IF ~
			
		~ THEN
		EXTERN XACORWIJ XA_Corwin_Wraith
	END
END
//}

//{ SARVOLO.D
EXTEND_TOP SARVOLO 9
	IF ~
		IsValidForPartyDialogue("XACORWIN")
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @279 /* ~Tell me about Schael.~*/
	GOTO XA_Schael
	
	IF ~
		IsValidForPartyDialogue("XACORWIN")
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN REPLY @280 /* ~Tell me about Corwin.~*/
	GOTO XA_Corwin
END

APPEND SARVOLO
	IF ~~ THEN BEGIN XA_Corwin
		SAY @281 /* ~Exceptionally accurate and deadly, Major Schael Corwin represents the best and brightest that the Baldur's Gate Flaming Fist has to offer. She solemnly swore to protect her city from all who would threaten it, and it was this oath that that initially brought her and <CHARNAME> together. The pair have achieved feats that no one could have imagined, and her devotion to <CHARNAME>'s cause has only grown since <PRO_HESHE> helped rescue her daughter from Illasera the Quick. Though no one can say what the future has in store for this duo, one thing is certain — the Major's skill, determination and leadership will continue to prove invaluable.~ */
		
		IF ~~ THEN 
		EXTERN XACORWIJ XA_Corwin_Sarvolo
	END
	
	IF ~~ THEN BEGIN XA_Schael
		SAY @282 /* ~Exceptionally accurate and deadly, Major Schael Corwin represents the best and brightest that the Baldur's Gate Flaming Fist has to offer. She solemnly swore to protect her city from all who would threaten it, and it was this oath that that initially brought her and <CHARNAME> together. <CHARNAME> was smitten by her beauty, and their relationship gradually evolved from friendship into something far more profound. Their fierce devotion toward one another was only strengthened after <CHARNAME> helped rescue her daughter from Illasera the Quick. Their love, to this point, has endured against all odds. Whether it will continue to do so, no one can say, though one thing is certain — the Major's skill, determination and leadership will continue to prove invaluable.~ */
		
		IF ~~ THEN
		EXTERN XACORWIJ XA_Schael_Sarvolo		
	END
	
	IF ~~ THEN BEGIN XA_Corwin_Sarvolo_END
		SAY @283 /* ~Don't sell yourself short, Major. When people read and hear the story of <CHARNAME>, they'll know that <PRO_HESHE> couldn't have succeeded were it not for your bravery and loyalty. You're as much a hero in this story as <PRO_HESHE> is.~   */
		
		IF ~~ THEN
		GOTO 9
		
		IF ~
			IsGabber(Player1)
		~ THEN REPLY @285
		GOTO 9
	END

	IF ~~ THEN BEGIN XA_Schael_Sarvolo_END
		SAY @284 /* ~Don't sell yourself short, Major. When people read and hear the story of <CHARNAME>, they'll know that <PRO_HESHE> couldn't have succeeded were it not for your bravery and loyalty, and more importantly, the love you two have for one another. You're as much a hero in this story as <PRO_HESHE> is.~     */
		
		IF ~~ THEN
		GOTO 9
		
		IF ~
			IsGabber(Player1)
		~ THEN REPLY @285
		GOTO 9
	END	
END
//}

//{ RASAADJ
APPEND RASAADJ
	IF ~~ THEN BEGIN XA_AmkethranCourier_END
		SAY @278 /* ~Major, <CHARNAME> — long ago I rescued a courier based out of this village. He had been beset by brigands on the roads northwest of here. His name was Hamza. If he is here, he will surely help us.~ */
		
		IF ~~ THEN
		EXIT
	END
END
//}

//{ NEERAJ
APPEND NEERAJ
	IF ~~ THEN BEGIN XA_SaradushDestroyed
		SAY @233
		
		IF ~~ THEN
		EXTERN XACORWIJ XA_TimeToGrieveLater
	END
END
//}

//{ AERIEJ
APPEND AERIEJ
	IF ~~ THEN BEGIN XA_SaradushDestroyed
		SAY @234 /* ~The city's been completely d-destroyed... all those people...~ */
		
		IF ~~ THEN
		EXTERN XACORWIJ XA_TimeToGrieveLater
	END
	
	IF ~~ THEN BEGIN XA_CorwinPregnantInitial_Aerie
		SAY @237 /* ~Of course. W-what do you need?~ */
		
		= @239 /* ~(They have a long discussion, but you can't make out the details.)~ */
		
		= @235 /* ~Oh, Schael! That's wonderf—~ */
		
		IF ~~ THEN 
		DO ~
			SetGlobal("XA_CorwinPregnantAerie", "GLOBAL", 1)
		~
		EXTERN XACORWIJ XA_CorwinPregnantInitial_Shh
	END
	
	//{ Dialog J-74
	IF ~
		Global("XA_CorwinPregnantBabyName_Aerie", "GLOBAL", 1)
	~ THEN BEGIN XA_CorwinPregnantBabyName_Aerie
		SAY @253 /* ~<CHARNAME>, I'm so h-happy for you and Schael!~*/
		
		IF ~~ THEN REPLY @254 /* ~Thanks Aerie.~ */
		DO ~
			SetGlobal("XA_CorwinPregnantBabyName_Aerie", "GLOBAL", 2)
		~
		GOTO XA_CorwinPregnantBabyName_Aerie_PickName
		
		IF ~~ THEN REPLY @256 /* ~For what?~ */
		DO ~
			SetGlobal("XA_CorwinPregnantBabyName_Aerie", "GLOBAL", 2)
		~
		GOTO XA_CorwinPregnantBabyName_Aerie_Silly
	END
	
	IF ~~ THEN BEGIN XA_CorwinPregnantBabyName_Aerie_Silly
		SAY @257 /* ~Hee hee, she's pregnant with your child, silly!~ */
		
		IF ~~ THEN REPLY @254 /* ~Thanks Aerie.~*/
		GOTO XA_CorwinPregnantBabyName_Aerie_PickName
	END
	
	IF ~~ THEN BEGIN XA_CorwinPregnantBabyName_Aerie_PickName
		SAY @255 /* Have you given any thought as to the baby's name?~*/
		
		IF ~~ THEN REPLY @242 /* ~If it's a boy, I was thinking of naming him Gorion, to honor our foster father. If it's a girl, Schael wants to name her Ilara, after her mother.~*/
		GOTO XA_CorwinPregnantBabyName_Aerie_GorionIlara

		IF ~~ THEN REPLY @244 /* ~I haven't. Do you have any ideas?~*/
		GOTO XA_CorwinPregnantBabyName_Aerie_Ideas
	END
	
	IF ~~ THEN BEGIN XA_CorwinPregnantBabyName_Aerie_Ideas
		SAY @258 /* ~Hmm... a lot of people n-name their children after people who've had a profound impact on their life. If I ever have a baby boy, I'm going to name him Quayle. Oh, I'm so excited to see your baby!~*/
		
		IF ~~ THEN REPLY @260 /* ~There's still a long way to go. I'll be counting on you to help keep Schael and our unborn child healthy.~*/
		GOTO XA_CorwinPregnantBabyName_Aerie_WontLetDown
	END
	
	IF ~~ THEN BEGIN XA_CorwinPregnantBabyName_Aerie_GorionIlara
		SAY @262 /* ~Those are both beautiful n-names ... oh, I'm so excited to see your baby!*/
		
		IF ~~ THEN REPLY @260 /* ~There's still a long way to go. I'll be counting on you to keep Schael and our unborn child healthy.~ */
		GOTO XA_CorwinPregnantBabyName_Aerie_WontLetDown		
	END
	
	IF ~~ THEN BEGIN XA_CorwinPregnantBabyName_Aerie_WontLetDown
		SAY @261 /* ~I won't let you down. I promise.~ */
		
		IF ~~ THEN REPLY @263 /*~Thank you, Aerie.~ */
		EXIT
	
	END
	//}
	
	
END
//}

//{ SAREV25J
APPEND SAREV25J
	IF ~~ THEN BEGIN XA_SarevokBanter3Chain_END
		SAY @232 /* ~I realize now that I was wrong. Your skill in battle is considerable, as is your ability to lead others.~ */
		
		IF ~
			Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN 
		GOTO XA_SarevokBanter3_Romance_Chain
		
		IF ~
			!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN 
		GOTO XA_SarevokBanter3_NonRomance_Chain
	END
END
//}

//{ LARZE
ADD_TRANS_TRIGGER LARZE 3
~
	!Global("XA_Override", "GLOBAL", 1)
~
DO 1

EXTEND_BOTTOM LARZE 3
	IF ~~ THEN REPLY #218270 /* ~Larze, my poor confused ogre. There is only one thing for you to do. You have to go back and take a closer look at the picture. I'm sure once you've had a second look, you'll know what a big mistake you've made. Now run along, we'll be waiting right here.~ */ 
	DO ~
		SetGlobal("XA_TrickedLarze", "GLOBAL", 1)
	~
	GOTO 5
END
//}

//{ CONNOL
ADD_TRANS_TRIGGER CONNOL 0
~
	!Global("XA_ReturnToBG", "GLOBAL", 1)
~

EXTEND_BOTTOM CONNOL 0
	IF ~
		Global("XA_ReturnToBG", "GLOBAL", 1)
	~ THEN REPLY #219533 /* ~Tell me what the common folk are talking about these days.~ */ 
	GOTO XAA1
	
	IF ~
		Global("XA_ReturnToBG", "GLOBAL", 1)
	~ THEN REPLY #219619 /* ~What have you heard bandied about the bar lately?~ */ 
	GOTO XAA1
END

APPEND CONNOL 
	IF ~~ THEN BEGIN XAA1
		SAY @225 /* ~Aye, remember <CHARNAME>, the so-called hero of Baldur's Gate? The one who was arrested for killing the Duke's daughter? Well, the Dukes are now tellin' everyone now that <PRO_HESHE> was innocent the whole time! What's more, Skie Silvershield is up and about, healthy and lively as ever. Could you believe it? Word on the street is that <PRO_HESHE>'s on <PRO_HISHER> way back to the city as we speak. Good on <PRO_HIMHER>, I s'pose.~ */
		
		IF ~~ THEN 
		DO ~
			EscapeArea()
		~ 
		EXIT
	END
END
//}

ADD_STATE_TRIGGER MCOOK4 1
~
	!Global("XA_ReturnToBG", "GLOBAL", 1)
~

//{ DELTAN2 *Need to Revisit Per Comment on Forums*
ADD_STATE_TRIGGER DELTAN2 0
~
	!Global("XA_Override", "GLOBAL", 1)
~

ADD_STATE_TRIGGER DELTAN2 1
~
	!Global("XA_Override", "GLOBAL", 1)
~

APPEND DELTAN2
	IF ~  
		Global("EltanMove","GLOBAL",1)
	~ THEN BEGIN 1 // from:
		SAY @223 /* ~I should be safe here. In the mean time, you have quite the task ahead of you. If I'm right, the Iron Throne is going to stage a coup. I fear that Nederlok, Corwin and the others won't return in time.  You're the only ones who'll be able to stop the coup.~  */
		
		IF ~~ THEN 
		DO ~
			SetGlobal("EltanMove","GLOBAL",2)
		~ 
		EXIT
	END
	
	IF ~  
		Global("EltanMove","GLOBAL",0)
	~ THEN BEGIN 0 // from:
		
		SAY @224 /* ~I am again in your debt. That creature has kept me helpless for too long. Perhaps if I hadn't been incapacitated, I might have been able to prevent Scar's death. *cough* Angelo will soon hear of my recovery. It is important that you take me away from here; I'm sure Angelo won't want me coherent and among the living. Take me to the Harbor Master's building — he is a good friend of mine. I can rest there, and send word to Nederlok and Corwin to return to the city immediately. They're loyalty is beyond reproach, and they can retake control of the Fist while I recover. Take this letter; I managed to filch it off Rashad when he was "caring" for me. From what I read of it, it seems that Sarevok has dire plans for the city. I fear for the lives of my fellow Dukes, Liia and Belt. If they were to die, Sarevok would take over the city. You must find Slythe and Krystin, and stop them... *cough* Hurry! We must make haste.~  */

		IF ~~ THEN 
		DO ~
			GiveItemCreate("MISC55",LastTalkedToBy,0,0,0)
			GiveItemCreate("SCRL2R",LastTalkedToBy,0,0,0)
			AddJournalEntry(226959,QUEST)
			DestroySelf()
		~ UNSOLVED_JOURNAL #226960 /* ~Slythe and Krystin
		We must travel to the Undercellar and find Slythe and Krystin, two of Sarevok's assassins. Eltan thinks that Sarevok may want to murder the Grand Dukes Belt and Liia. We must make sure that this doesn't happen.~ */ 
		EXIT
		
		IF ~  
			Dead("Krystin")
			Dead("Slythe")
		~ THEN 
		DO ~
			GiveItemCreate("MISC55",LastTalkedToBy,0,0,0)
			GiveItemCreate("SCRL2R",LastTalkedToBy,0,0,0)
			AddJournalEntry(226959,QUEST)
			DestroySelf()
		~ 
		EXIT
	END
END
//}

ADD_STATE_TRIGGER SUTHIE 0
~
	!Global("XA_ReturnToBG", "GLOBAL", 1)
~

ADD_STATE_TRIGGER SUTHIE 7
~
	!Global("XA_ReturnToBG", "GLOBAL", 1)
~

ADD_STATE_TRIGGER SUTHIE 9
~
	!Global("XA_ReturnToBG", "GLOBAL", 1)
~

APPEND SUTHIE
	IF ~
		Global("XA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN XA_Intro
		SAY #203066 /* ~ 'Ere there, a word wit' you I would have. House rules you be needin' to know. This here be Sanctuary, and Silence be our patron saint. You do anythin' to harm either, an' every thief, assassin, and scoundrel within 1,000 leagues will want ye dead. I dunno the magics that keep this place secure, but 'taint nowhere else where a night-sneak can sleep sound. It's neutral ground, and you leave your fightin' outside. Be on yer best behavior, 'cuz banishment for life is the nicest punishment Silence knows.~ */
		  
		IF ~~ THEN EXIT
	END
END

ADD_TRANS_TRIGGER NEB_ 2
~
	!Global("XA_Override", "GLOBAL", 1)
~
DO 1


ADD_TRANS_TRIGGER NEB_ 0
~
	!Global("XA_Override", "GLOBAL", 1)
~
DO 1

EXTEND_BOTTOM NEB_ 2
	IF ~~ THEN REPLY #202157 /* ~So Neb, do you know what's been going on in the city lately?~ */
	GOTO XAA3
END

EXTEND_BOTTOM NEB_ 0
	IF ~~ THEN REPLY #202157 /* ~So Neb, do you know what's been going on in the city lately?~ */
	GOTO XAA3
END

APPEND NEB_
	IF ~~ THEN BEGIN XAA3
		SAY @38 /* ~Oh yeah, lots of stuff. You know about Duke Eltan, don't ya? He's been diseased. That's why Angelo's in charge now. It'd have been Scar, but he went out and got assassinated, and that Corwin bitch who arrested me's on some training exercise up north with Marshal Nederlok. Ya, the city's gone downhill over the last week. Too bad, heh heh.~*/
		
		IF ~~ THEN UNSOLVED_JOURNAL #226846 /* ~Afoul of the Law
		Once Angelo locked me up, I learned from a criminal called Neb that Duke Eltan is sick and Scar has died.~ */
		EXIT
	END
END

ADD_TRANS_TRIGGER ALDETH 23
~
	!Global("XA_Override", "GLOBAL", 1)
~
DO 1

EXTEND_BOTTOM ALDETH 23
	IF ~~ THEN REPLY #202132 /* ~We surrender.~ */ 
	DO ~
		SetGlobal("XA_AldethFF", "GLOBAL", 1)
	~
	JOURNAL #206534 /* ~Aldeth Sashenstar betrayed us to the Flaming Fist!~ */ 
	EXTERN ~FLAMAL~ 1
END

ADD_TRANS_TRIGGER ALANBL 1
~
	!Global("XA_Override", "GLOBAL", 1)
~
DO 1

EXTEND_BOTTOM ALANBL 1
	IF ~~ THEN REPLY #209726 /* ~What will the Flaming Fist do without effective leadership?~ */ 
	GOTO XAA5
END

ADD_TRANS_TRIGGER ALANBL 4
~
	!Global("XA_Override", "GLOBAL", 1)
~
DO 1

EXTEND_BOTTOM ALANBL 4
	IF ~~ THEN REPLY #209726 /* ~What will the Flaming Fist do without effective leadership?~ */ 
	GOTO XAA5
END

APPEND ALANBL
	IF ~~ THEN BEGIN XAA5
		SAY @222 /* ~They still have leadership. How effective it is, I do not know. With Captain Corwin sent on some training exercise up north, I hear Angelo Dosan is now effectively in control. Such a weasel he is. I am surprised he has the support of the troops. He's got powerful friends though, and I hear that he takes orders straight from Sarevok. You've heard of him, right? With Entar dead, the other Dukes have called an emergency election. Sarevok is the frontrunner, and his stand against Amn is very popular. Imagine how much pull he will have if he actually has the Flaming Fist in his back pocket.~*/
		
		IF ~~ THEN REPLY #209745 /* ~Duke Eltan would never stand by and let someone take control of the Flaming Fist.~ */ 
		GOTO 6
	END
END

ADD_TRANS_TRIGGER SORREL 0
~
	!Global("XA_Override", "GLOBAL", 1)
~
DO 1

ADD_TRANS_TRIGGER SORREL 1
~
	!Global("XA_Override", "GLOBAL", 1)
~
DO 0

EXTEND_BOTTOM SORREL 0
	IF ~
		Global("XA_Override", "GLOBAL", 1)
	~ THEN REPLY #209698 /* ~What do you want?~ */
	GOTO XAA2 
END

EXTEND_BOTTOM SORREL 1
	IF ~
		Global("XA_Override", "GLOBAL", 1)
	~ THEN REPLY #209699 /* ~A price on my head? And you'll not take it?~ */ 
	JOURNAL #209705 /* ~Word of my recent misadventures in Candlekeep appear to have reached Baldur's Gate. The Flaming Fist has placed a value on my head and I am sure more than one private mercenary has also taken interest. It would be wise to proceed with caution, I am sure.~ */
	GOTO XAA2 
END

APPEND SORREL
	IF ~~ THEN BEGIN XAA2
		SAY @221 /* ~There's trouble in the Fist, <CHARNAME>, big trouble. Duke Eltan's fallen sick and Scar was killed, supposedly in a simple robbery but I have my doubts... It's all Angelo, he's making a power grab, taking control of the Fist and, with Scar gone and Corwin sent on some bogus errand up north, there's nothing to stop him! I've seen him paying visits to the Iron Throne, too, and I don't like it one bit... There are some of us that are still loyal to Eltan and, lucky for you, I happen to be one of them. Please, for your sake and ours, keep your head down and, if you get the chance, sniff around the Iron Throne's base. If you can find a way to talk to Duke Eltan, even better, but they're keeping him in the middle of Fist headquarters... Damn it, Angelo will pay dearly for this and I hope it's soon...~*/
		
		IF ~~ THEN 
		DO ~
			EscapeArea()
		~ 
		JOURNAL #209703 /* ~Angelo is making a power grab within the Flaming Fist and may be responsible both for Duke Eltan's sickness and Scar's death. His reputed connections to the Iron Throne leave me more than suspicious. It's a question of where to turn. Shall I go back to the Iron Throne and continue my investigations there or should I seek out Duke Eltan at the Flaming Fist compound and test my suspicions regarding his disease?~ */ 
		EXIT
	END
END

ADD_STATE_TRIGGER VAI 6
~
	!Global("XA_Override", "GLOBAL", 1)
~

ADD_STATE_TRIGGER VAI 7
~
	!Global("XA_Override", "GLOBAL", 1)
~


APPEND VAI
	
	IF ~
		Global("XA_VaiExit", "GLOBAL", 1)
	~ THEN BEGIN XA_ExitVai2
		SAY @219 /* ~Let me see that.~ */
		= @220 /* ~Good. <CHARNAME>, I've received new orders from my commanding officer. My contingent and I have been asked to return to Baldur's Gate and make our reports. You will figure prominently in them and I assure you that our accounts will be favorable.~*/
		IF ~~ THEN 
		DO ~
			ReputationInc(1)
			EraseJournalEntry(227501)
			AddJournalEntry(227502,QUEST_DONE)
			EscapeArea()
			ActionOverride("XAVAI2", EscapeArea())
		~ 
		EXIT
	END
	
	
	IF ~
		Global("MetVai","GLOBAL",1)
		GlobalGT("Chapter","GLOBAL",3)
		!PartyHasItem("MISC86")
	~ THEN BEGIN XA_ExitVai
		SAY @218 /* ~Ah, <CHARNAME>. Good to see you again.~ */
		
		IF ~~ THEN
		DO ~
			StartCutSceneMode()
			StartCutScene("XAVAIEX")
		~
		EXIT
	END
	
	IF ~  
		True()
	~ THEN BEGIN 7 // from:
		SAY #219703 /* ~I hope your travels have gone well, <CHARNAME>. Remember, if you want the reward for dead bandits, you have to bring me their scalps. A rather bloody task, but I must have some proof.~ */
		IF ~~ THEN EXIT
	END
END

EXTEND_BOTTOM BART8 0
	IF ~
		GlobalGT("XA_BrevlikSpawn", "GLOBAL", 0)
		!Global("XA_FoundBrevlik", "GLOBAL", 1)
		!Global("XA_AskedAboutBrevlik", "GLOBAL", 1)
	~ THEN REPLY @213 /* ~I'm looking for a gnome named Brevlik. Have you seen him recently?~*/
	DO ~
		SetGlobal("XA_AskedAboutBrevlik", "GLOBAL", 1)
	~
	GOTO XA_Brevlik
END

EXTEND_BOTTOM BART8 1
	IF ~
		GlobalGT("XA_BrevlikSpawn", "GLOBAL", 0)
		!Global("XA_FoundBrevlik", "GLOBAL", 1)
		!Global("XA_AskedAboutBrevlik", "GLOBAL", 1)
	~ THEN REPLY @213 /* ~I'm looking for a gnome named Brevlik. Have you seen him recently?~*/
	DO ~
		SetGlobal("XA_AskedAboutBrevlik", "GLOBAL", 1)
	~
	GOTO XA_Brevlik
END

APPEND BART8
	IF ~~ THEN BEGIN XA_Brevlik
		SAY @214 /* ~Does that little runt owe you money too? He hasn't been allowed here in months, and it'll stay that way so long as he doesn't pay his tab.~*/
		
		IF ~~ THEN REPLY @215 /* ~Do you know where he is?~ */
		GOTO XA_Brevlik2
	END
	
	IF ~~ THEN BEGIN XA_Brevlik2
		SAY @216  /* ~Alls I know is he ain't here, got it? Go check one of the other taverns 'round town.~ */
		
		IF ~~ THEN
		DO ~
			AddJournalEntry(@217, QUEST)
		~
		EXIT
	END
END

EXTEND_BOTTOM PPIRENI2 3
	IF ~
		IsValidForPartyDialog("XACORWIN")
	~ THEN GOTO XA_PPIRENI2_3_CHAIN
END

ADD_TRANS_TRIGGER BDIMOEN 89
~
	GlobalLT("XA_CorwinContinue", "GLOBAL", 1)
~
DO 2 3

EXTEND_BOTTOM BDIMOEN 89
	IF ~
		Global("bd_player_exiled","global",1)
		GlobalGT("XA_CorwinContinue", "GLOBAL", 0)
	~ THEN REPLY #239700 /* ~You and me both.~ */ 
	DO ~
		SetGlobal("bd_plot","global",665)
	~ 
	GOTO XA_CorwinLetter
  
	IF ~
		Global("bd_player_exiled","global",1)
		GlobalGT("XA_CorwinContinue", "GLOBAL", 0)
	~ THEN REPLY #239701 /* ~You should never have doubted I would find a way to freedom. I never did.~ */ 
	DO ~
		SetGlobal("bd_plot","global",665)
	~ 
	GOTO XA_CorwinLetter
END

APPEND BDIMOEN
	IF ~~ THEN BEGIN XA_CorwinLetter
		SAY @209 /* ~Oh! Before I forget — Captain Corwin came to see me. She asked that I give you this letter.~ */
		
		IF ~
			Global("XA_CorwinContinue", "GLOBAL", 2)
		~ THEN 
		DO ~
			GiveItemCreate("XALTRSCH", LastTalkedToBy(Myself),0,0,0)
			GiveItemCreate("XAAMULET", LastTalkedToBy(Myself),0,0,0)
			SetGlobal("XA_GaveCorwinLetter", "GLOBAL", 2)
		~
		GOTO XA_GiveLetter_Schael
		
		IF ~
			Global("XA_CorwinContinue", "GLOBAL", 1)
		~ THEN 
		DO ~
			GiveItemCreate("XALTRCOR", LastTalkedToBy(Myself),0,0,0)
			SetGlobal("XA_GaveCorwinLetter", "GLOBAL", 1)
		~
		GOTO XA_GiveLetter_Corwin
	END
	
	IF ~~ THEN BEGIN XA_GiveLetter_Schael
		SAY @212 /* She said that she's sorry she couldn't see you, but that you'd understand once you've read the letter. */
		
		IF ~~ THEN REPLY @210 /* ~Thank you, Imoen. (Read the letter now).~ */
		EXTERN PLAYER1 XA_ReadCorwinLetter
		
		IF ~~ THEN REPLY @211 /* Thank you, Imoen. (Read the letter later).~ */
		GOTO 92
	END
	
	IF ~~ THEN BEGIN XA_GiveLetter_Corwin
		SAY @212 /* She said that she's sorry she couldn't see you, but that you'd understand once you've read the letter. */
		
		IF ~~ THEN REPLY @210 /* ~Thank you, Imoen. (Read the letter now).~ */
		EXTERN PLAYER1 XA_ReadCorwinLetter
		
		IF ~~ THEN REPLY @211 /* Thank you, Imoen. (Read the letter later).~ */
		GOTO 92
	END
END

EXTEND_BOTTOM FORTHE 9
	IF ~~ THEN 
	DO ~
		GiveGoldForce(200)
		SetGlobal("XA_HelpedForthel_BG1", "GLOBAL", 1)
		EscapeArea()
	~
	EXIT
END

EXTEND_BOTTOM FORTHE 11
	IF ~~ THEN 
	DO ~
		GiveGoldForce(200)
		SetGlobal("XA_HelpedForthel_BG1", "GLOBAL", 1)
		EscapeArea()
	~
	EXIT
END

EXTEND_BOTTOM BDCORWIJ 318
	IF ~~ THEN REPLY @202 /* ~Corwin, these are beautiful. This Neoma... you must be very special to her.~ */
	GOTO XA_Neoma
END

EXTEND_BOTTOM BDCORWIJ 319
	IF ~~ THEN
	DO ~
		SetGlobal("XA_CorwinGaveEarrings", "GLOBAL", 1)
		AddJournalEntry(@207, INFO)
	~
	EXIT
END

EXTEND_BOTTOM BDCORWIJ 320
	IF ~~ THEN 
	DO ~
		SetGlobal("XA_CorwinGaveEarrings", "GLOBAL", 1)
		AddJournalEntry(@207, INFO)
	~
	EXIT
END

APPEND BDCORWIJ
	IF ~~ THEN XA_Neoma
		SAY @203 /*  ~We're good friends. Sometimes, a little more than that...~ */
	
		IF ~  
			!IsValidForPartyDialogue("voghiln")
		~ THEN REPLY @204 /* ~I see. I'm sure Voghiln will appreciate the thought.~*/ 
		GOTO 319
		
		IF ~  
			IsValidForPartyDialogue("voghiln")
		~ THEN REPLY @204 /* ~I'm certain Voghiln will appreciate the thought.~ */ 
		EXTERN ~BDVOGHIJ~ 170
  
		IF ~  
			!IsValidForPartyDialogue("voghiln")
		~ THEN REPLY #252321 /* ~I'd try to talk you out of giving up such a sentimental item, but I can see it would do no good.~ */ 
		GOTO 319
		
		IF ~  
			IsValidForPartyDialogue("voghiln")
		~ THEN REPLY #252321 /* ~I'd try to talk you out of giving up such a sentimental item, but I can see it would do no good.~ */ 
		EXTERN ~BDVOGHIJ~ 170
		
		IF ~~ THEN REPLY @205 /* ~Lucky her.~ */
		GOTO XA_Neoma2
	END
	
	IF ~~ THEN XA_Neoma2
		SAY @206 /* ~Sorry? I didn't catch that.~ */
		
		IF ~  
			!IsValidForPartyDialogue("voghiln")
		~ THEN REPLY @208 /* ~It was nothing. I'm sure Voghiln will appreciate your kindness.~*/ 
		GOTO 319
		
		IF ~  
			IsValidForPartyDialogue("voghiln")
		~ THEN REPLY @208 /* ~It was nothing. I'm sure Voghiln will appreciate your kindness.~ */ 
		EXTERN ~BDVOGHIJ~ 170
  
		IF ~  
			!IsValidForPartyDialogue("voghiln")
		~ THEN REPLY #252321 /* ~I'd try to talk you out of giving up such a sentimental item, but I can see it would do no good.~ */ 
		GOTO 319
		
		IF ~  
			IsValidForPartyDialogue("voghiln")
		~ THEN REPLY #252321 /* ~I'd try to talk you out of giving up such a sentimental item, but I can see it would do no good.~ */ 
		EXTERN ~BDVOGHIJ~ 170
	END
END

EXTEND_BOTTOM BAERIE 112
	IF ~
		GlobalGT("bd_asha_duel", "global", 0)
		!GlobalGT("XA_Banter_CorwinAerie", "GLOBAL", 5)
	~ THEN REPLY @196 /* ~I've met one of your kind before.~ */
	GOTO XA_Ashatiel
	
	IF ~
		GlobalGT("XA_Banter_CorwinAerie", "GLOBAL", 5)
	~ THEN REPLY @199 /* ~Schael's already told you of my experience with Ashatiel. Could you tell me more about your people? Your society?~ */
	GOTO 114
	
	IF ~
		GlobalGT("XA_Banter_CorwinAerie", "GLOBAL", 5)
	~ THEN REPLY @201 /* ~Schael's already told you of my experience with Ashatiel. We really should get moving.~ */
	GOTO 116
END

APPEND BAERIE
	IF ~~ THEN BEGIN XA_Ashatiel
		SAY @197 /* ~R-really? When? What were they l-like?~ */
		
		IF ~~ THEN REPLY @198 /* ~It was during the Dragonspear campaign. Aerie... I'm sorry. I'd rather not talk about it.~ */
		GOTO 116
		
		IF ~~ THEN REPLY @200 /* ~It doesn't matter. Could you tell me more about your people? Your society?~ */
		GOTO 114
	END
END

ADD_TRANS_TRIGGER BDBENCE 85
~
	!Global("XA_Override", "GLOBAL", 1)
~

EXTEND_BOTTOM BDBENCE 85
	IF ~
		Global("XA_Override", "GLOBAL", 1)
	~ THEN 
	DO ~
		SetGlobal("bd_plot","global",650)
		ActionOverride("bdschae2", SetDialog("XABDSCH2"))
		SetDialog("XABDBENC")
		ActionOverride("bdschae2", StartDialog("XABDSCH2", Player1))
	~
	EXIT
END


EXTEND_BOTTOM SAREV25A 10
	IF ~
		IsValidForPartyDialogue("XACORWIN")
	~ THEN 
	EXTERN XACORWIJ XA_SAREV_10
END

EXTEND_BOTTOM SAREV25A 48
	IF ~~ THEN REPLY @183 /* ~I was already on my way to Saradush before I was dragged here.~ */
	GOTO 49
END

APPEND MAZZYJ
	IF ~~ THEN BEGIN BCorwinMazzy2_BREAK
		SAY @226 /* ~It's alright. I know you didn't mean anything by it. Besides, I'm quite happy with the crossbow.~*/
		
		IF ~
			GlobalGT("XA_ReturnToBG", "GLOBAL", 0)
		~ THEN GOTO BCorwinMazzy2_RBG
		
		IF ~
			GlobalLT("XA_ReturnToBG", "GLOBAL", 1)
		~ THEN GOTO BCorwinMazzy2_RESUME		
	END
	
	IF ~~ THEN BEGIN BCorwinMazzy2_RBG
		SAY @227 /* ~Looks like the others are ready... let's get moving.~ */
		
		IF ~~ THEN 
		EXIT
	END
	
	IF ~~ THEN BEGIN XA_MazzyWonCompetition
		SAY @184 /* ~Thank you, Schael. You're one of the toughest competitors I've faced.~ */
		
		IF ~~ THEN REPLY @185 /* ~You both performed well. I'm glad to have such skilled companions at my side.~  */
		GOTO XA_MazzyWonCompetition2
	END
	
	IF ~
		Global("XA_TM_ArcheryChallenge", "GLOBAL", 2)
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~ THEN BEGIN XA_Trademeet_Competition_SchaelWon
		SAY @186 /* ~Schael, congratulations on your victory. That was quite the performance.~ */
	
		IF ~~ THEN 
		EXTERN XACORWIB XA_CorwinWonCompetition
	END
END
//RBALDU

ADD_STATE_TRIGGER RBALDU 5
~
	!Global("XA_ReturnToBG", "GLOBAL", 1)
~

ADD_STATE_TRIGGER RBALDU 14
~
	!Global("XA_ReturnToBG", "GLOBAL", 1)
~
APPEND DORNJ
	IF ~~ THEN BEGIN XA_CorwinDornConflict2
		SAY @229 /* ~It is not your concern.~ */
		
		IF ~~ THEN 
		EXTERN XACORWIB XA_CorwinDornConflict3
	END
	
	IF ~~ THEN BEGIN XA_CorwinDornConflict4
		SAY @193 /* ~Laughable, woman. Stand in my way, and your neck will snap as easily as a tree in the midst of a hurricane.~ */
		
		IF ~~ THEN REPLY @194 /* ~That's enough. Dorn, I don't know what you think exists between us, but I love Schael and nothing is going to change that.~  */
		DO ~
			SetGlobal("XA_CorwinDornConflict", "GLOBAL", 2)
		~
		GOTO XA_ChooseCorwin
		
		IF ~~ THEN REPLY @195 /* ~Stop it, Dorn. You know my affections lie with you.~ */
		DO ~
			SetGlobal("XA_CorwinDornConflict", "GLOBAL", 2)
		~
		EXTERN XACORWIB XA_ChooseDorn
	END
	
	IF ~~ THEN BEGIN XA_ChooseCorwin
		SAY @230 /* ~Bah! To hell with the lot of you!~ */
		
		IF ~~ THEN
		DO ~
			SetGlobal("OHD_corwinconflict","GLOBAL",4)
			SetGlobal("DornRomanceActive", "GLOBAL", 3)
		~
		EXIT
	END
END

APPEND RBALDU
	IF ~
		Global("XA_ReturnToBG", "GLOBAL", 1)
		!AreaCheck("BG0614")
		!AreaCheck("BG0134")
	~ THEN BEGIN XAA0
		SAY @178 /* ~The Duke's have proclaimed that <CHARNAME> was innocent after all. Word is <PRO_HESHE> may be coming back to the city. That would be something, wouldn't it?~*/
		IF ~~ THEN EXIT
	END
	
	IF ~
		Global("XA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN XAA1
		SAY @179 /* ~Been hearing that there's trouble brewing far to the southeast. Fire giants are said to be laying siege to a city... Saradush, I think it was.~*/
		IF ~~ THEN EXIT
	END
	
	IF ~
		Global("XA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN XAA2
		SAY @180 /* ~Lord Winston did a great job in clearing out the refugees from Caelar's crusade, don't you think?~*/
		IF ~~ THEN EXIT
	END
	
	IF ~
		Global("XA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN XAA3
		SAY @181 /* ~You didn't hear it from me, but there's word that Duke Silvershield's daughter hasn't fully recovered from her ordeal.~*/
		IF ~~ THEN EXIT
	END
	
	IF ~
		Global("XA_ReturnToBG", "GLOBAL", 1)
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		!AreaCheck("BG0614")
		!AreaCheck("BG0134")
	~ THEN BEGIN XAA4
		SAY @182 /* ~Word is that <CHARNAME>, the hero of Baldur's Gate, is romantically involved with an officer of the Flaming Fist.~*/
		IF ~~ THEN EXIT
	END
END


//NALIAJ
APPEND NALIAJ
	IF ~~ THEN BEGIN XA_RefuseMeatballs
		SAY @176 /* ~I'll not take part in such decadance while there are poor people starving not 50 paces from this estate.~ */
		
		IF ~~ THEN EXTERN XACOOK XA_NaliaRefused
	END
END
//HOUSG3
ADD_STATE_TRIGGER HOUSG3 0
~
	!Global("XA_ReturnToBG", "GLOBAL", 1)
~

ADD_STATE_TRIGGER HOUSG3 1
~
	!Global("XA_ReturnToBG", "GLOBAL", 1)
~

APPEND HOUSG3
	IF ~
		//IsGabber(Player1)
		IsGabber(Player1)
		RandomNum(2,1)
		Global("XA_ReturnToBG", "GLOBAL", 1)
		!Global("XA_TalkedToSkie", "GLOBAL", 1)
	~ THEN BEGIN XA_PlayerGreeting
		SAY @174 /* ~<CHARNAME> - Lady Silvershield is expecting you.~*/
		
		IF ~~ THEN EXIT
	END
	
	IF ~
		IsGabber("XACORWIN")
		!TimeOfDay(NIGHT)
		Global("XA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN XA_CorwinGreeting1
		SAY @171 /* ~Good day, officer.~*/
		
		IF ~~ THEN EXIT
	END

	IF ~
		IsGabber("XACORWIN")
		TimeOfDay(NIGHT)
		Global("XA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN XA_CorwinGreeting2
		SAY @172 /* ~Good evening, officer.~*/
		
		IF ~~ THEN EXIT
	END
	
	IF ~
		Global("XA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN XA_DefaultGreeting
		SAY @173 /* ~Behave yourselves - you are in the home of Duke Entar Silvershield.~*/
		
		IF ~~ THEN EXIT
	END
	
	
END

//SERVA2
ADD_STATE_TRIGGER SERVA2 0
~
	!Global("XA_ReturnToBG", "GLOBAL", 1)
~

ADD_STATE_TRIGGER SERVA2 11
~
	!Global("XA_ReturnToBG", "GLOBAL", 1)
~

APPEND SERVA2
	IF ~
		//IsGabber(Player1)
		IsGabber(Player1)
		RandomNum(3,1)
		Global("XA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN XA_PlayerGreeting
		SAY @168 /* ~Oh, it's you, the hero. Entar Silvershield's daughter told us you may be stopping by.~*/
		
		IF ~~ THEN EXIT
	END

	IF ~
		//IsGabber(Player1)
		IsGabber(Player1)
		RandomNum(3,2)
		Global("XA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN XA_PlayerGreeting2
		SAY @169 /* ~I'm just a servant.~*/
		
		IF ~~ THEN EXIT
	END

	IF ~
		//IsGabber(Player1)
		IsGabber(Player1)
		RandomNum(3,3)
		Global("XA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN XA_PlayerGreeting3
		SAY @170 /* ~Not to be rude, but I need to get back to work.~*/
		
		IF ~~ THEN EXIT
	END

	IF ~
		IsGabber("XACORWIN")
		!TimeOfDay(NIGHT)
		Global("XA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN XA_CorwinGreeting1
		SAY @171 /* ~Good day, officer.~*/
		
		IF ~~ THEN EXIT
	END

	IF ~
		IsGabber("XACORWIN")
		TimeOfDay(NIGHT)
		Global("XA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN XA_CorwinGreeting2
		SAY @172 /* ~Good evening, officer.~*/
		
		IF ~~ THEN EXIT
	END

	IF ~
		RandomNum(2,1)
		Global("XA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN XA_Greeting1
		SAY @169 /* ~I'm just a servant.~ */
		
		IF ~~ THEN EXIT
	END

	IF ~
		RandomNum(2,2)
		Global("XA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN XA_Greeting2
		SAY @170 /* ~Not to be rude, but I need to get back to work.~*/
		
		IF ~~ THEN EXIT
	END
END

//LOBAR
ADD_STATE_TRIGGER LOBAR 7
~
	!IsGabber("XACORWIN")
~

ADD_STATE_TRIGGER LOBAR 0
~
	!IsGabber("XACORWIN")
~

ADD_STATE_TRIGGER LOBAR 8
~
	!IsGabber("XACORWIN")
~

EXTEND_BOTTOM LOBAR 0
	IF ~
		IsValidForPartyDialog("XACORWIN")
		!Global("XA_CorwinLobarTianna", "GLOBAL", 1)
		!Global("XA_TalkedToTianna", "GLOBAL", 1)
	~ THEN
	DO ~
		SetGlobal("XA_CorwinLobarTianna", "GLOBAL", 1)
	~
	EXTERN XACORWIJ XA_CorwinLobar
END

APPEND LOBAR
	IF ~
		IsGabber("XACORWIN")
		Global("XA_CorwinLobar", "GLOBAL", 1)
	~ THEN BEGIN XA_CorwinGreeting2
		SAY @163 /* ~Hello again, officer. How can the Low Lantern be of assistance?~ */
		
		IF ~~ THEN REPLY @164 /* ~I don't need anything at the moment.~ */
		EXIT
		
		IF ~
			Global("XA_BGSlaverPlot", "GLOBAL", 1)
			!Global("XA_AskedLobarSlaver", "GLOBAL", 1)
		~ THEN REPLY @156 /* ~We're investigating reports of slaver activity in Baldur's Gate. Are you aware of any refugees having been sold into servitude?~ */
		DO ~
			SetGlobal("XA_AskedLobarSlaver", "GLOBAL", 1)
		~
		GOTO XA_SlaverInvestigation
		
		IF ~
			!Global("XA_CorwinLobarTianna", "GLOBAL", 1)
			!Global("XA_TalkedToTianna", "GLOBAL", 1)
		~ THEN REPLY @160 /* ~Is Tianna working?~ */
		DO ~
			SetGlobal("XA_CorwinLobarTianna", "GLOBAL", 1)
		~
		GOTO XA_LobarTianna
	END
	
	IF ~
		IsGabber("XACORWIN")
		!Global("XA_CorwinLobar", "GLOBAL", 1)
	~ THEN BEGIN XA_CorwinGreeting
		SAY @155 /*  ~Greetings officer, and welcome to the Low Lantern. Are you here for business, or for pleasure? Perhaps a little of both?~  */
		
		IF ~
			Global("XA_BGSlaverPlot", "GLOBAL", 1)
			!Global("XA_AskedLobarSlaver", "GLOBAL", 1)
		~ THEN REPLY @156 /* ~We're investigating reports of slaver activity in Baldur's Gate. Are you aware of any refugees having been sold into servitude?~ */
		DO ~
			SetGlobal("XA_CorwinLobar", "GLOBAL", 1)
			SetGlobal("XA_AskedLobarSlaver", "GLOBAL", 1)
		~
		GOTO XA_SlaverInvestigation
		
		IF ~
			!Global("XA_CorwinLobarTianna", "GLOBAL", 1)
			!Global("XA_TalkedToTianna", "GLOBAL", 1)
		~ THEN REPLY @160 /* ~Is Tianna working?~ */
		DO ~
			SetGlobal("XA_CorwinLobar", "GLOBAL", 1)
			SetGlobal("XA_CorwinLobarTianna", "GLOBAL", 1)
		~
		GOTO XA_LobarTianna
	
	END
	
	IF ~~ THEN BEGIN XA_LobarTianna
		SAY @161 /* ~Ah, yes. She's downstairs. Shall I tell her to expect you?~ */
		
		IF ~~ THEN
		EXTERN XACORWIJ XA_CorwinLobarTiannaEnd
	END
	
	IF ~~ THEN BEGIN XA_SlaverInvestigation
		SAY @157 /* ~No, I don't know anything about that. All of the workers here are of their own volition, I assure you.~ */
		
		IF ~~ THEN REPLY @158
		GOTO XA_SlaverInvestigation2
	END
	
	IF ~~ THEN BEGIN XA_SlaverInvestigation2
		SAY @159 /* ~Not at all. We run a.. ah.. reputable establishment.~  */
		
		IF ~~ THEN EXIT
		
		IF ~
			!Global("XA_CorwinLobarTianna", "GLOBAL", 1)
			!Global("XA_TalkedToTianna", "GLOBAL", 1)
		~ THEN REPLY @160 /* ~Is Tianna working?~ */
		DO ~
			SetGlobal("XA_CorwinLobarTianna", "GLOBAL", 1)
		~
		GOTO XA_LobarTianna
	END
END



//NOBW9
ADD_STATE_TRIGGER NOBW9 6
~
	!Global("XA_ReturnToBG", "GLOBAL", 1)
~

ADD_TRANS_TRIGGER NOBW9 0
~
	!Global("XA_ReturnToBG", "GLOBAL", 1)
~
DO 3

EXTEND_BOTTOM NOBW9 0
	IF ~
		Global("XA_ReturnToBG", "GLOBAL", 1)
	~ THEN REPLY @153 /* ~We've just returned after a long adventure in Amn.~*/
	GOTO XAA1
END

APPEND NOBW9
	IF ~
		StateCheck(Myself,STATE_CHARMED)
		Global("XA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN XAA0
		SAY @152 /* ~I've heard quite a bit about what's been going on around town. There are rumors that <CHARNAME> will return, now that <PRO_HISHER> innocence has been established.~ */
		
		IF ~~ THEN EXIT
	END
	
	IF ~~ THEN BEGIN XAA1
		SAY @154 /* ~Adventurers! So you must be in the business of fighting dreadful beasts and such things. All of you must be so very brave to take up such a profession.~*/
		
		IF ~~ THEN EXIT
	END
END

//BART0133
ADD_STATE_TRIGGER BART0133 0
~
	!Global("XA_ReturnToBG", "GLOBAL", 1)
~

APPEND BART0133
	IF ~
		Global("XA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN XAA0
		SAY @149 /* ~Business has been slow since the refugees left. If you've need of anything, don't hesitate to ask.~  */
		
		 IF ~~ THEN REPLY @150 /* ~It's been a long journey back from Amn. What do you have to ease our spirits?~ */ 
		 DO ~
			StartStore("tav0133",LastTalkedToBy(Myself))
		~ EXIT
  
		IF ~~ THEN REPLY @151 /* ~I need nothing at the moment, though your offer is appreciated.~ */ 
		EXIT
	END
END


//PROST3
ADD_STATE_TRIGGER PROST3 2
~
	InMyArea("YAGO")
~

APPEND PROST3
	IF ~
		!Dead("YAGO")
		!InMyArea("YAGO")
		StateCheck(Myself,STATE_CHARMED)
	~ THEN BEGIN XAA0
		SAY @147 /* ~I haven't seen one of our old regulars, Yago, in some time. I wonder how he's doing?~ */
		
		IF ~~ THEN EXIT
	END
	
	IF ~
		Dead("YAGO")
		!InMyArea("YAGO")
		StateCheck(Myself,STATE_CHARMED)
	~ THEN BEGIN XAA1
		SAY @148 /* ~It's a shame what happened to Yago. Can't say I'm surprised though.~ */
		
		IF ~~ THEN EXIT
	END
END



//DILLAR
ADD_STATE_TRIGGER DILLAR 7
~
	!Global("XA_ReturnToBG", "GLOBAL", 1)
~

EXTEND_BOTTOM DILLAR 0
	IF ~
		Global("XA_HelpTianna", "GLOBAL", 1)
		!Global("XA_AskedAboutJasper", "LOCALS", 1)
		!Dead("XAJASPER")
		!Global("XA_TiannaDebtResolved", "GLOBAL", 1)
	~ THEN REPLY @165 /* ~I'm looking for a man named Jasper. I was told that he's here - do you know where I can find him?~ */
	GOTO XA_Jasper
END

APPEND DILLAR
	IF ~  
		StateCheck(Myself,STATE_CHARMED)
		Global("XA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN XAA0 // from:
		SAY @146 /* ~Please, all of my girls are available for friends of mine, so long as they behave themselves.~ */
		IF ~~ THEN EXIT
	END
	
	IF ~
		Global("XA_HelpTianna", "GLOBAL", 1)
		!Global("XA_AskedAboutJasper", "LOCALS", 1)
		!Dead("XAJASPER")
		!Global("XA_TiannaDebtResolved", "GLOBAL", 1)
	~ THEN BEGIN XA_AskAboutJasper
		SAY @167 /* ~Can I help you?~ */
		IF ~~ THEN REPLY @165 /* ~I'm looking for a man named Jasper. I was told that he's here - do you know where I can find him?~ */
		GOTO XA_Jasper
	END
	
	IF ~~ THEN BEGIN XA_Jasper
		SAY @166 /* ~Jasper, yes. He and his girls are set up to the southwest. He wears a bright green coat, you can't miss him.~ */
		IF ~~ THEN
		DO ~
			SetGlobal("XA_AskedAboutJasper", "LOCALS", 1)
		~
		EXIT
	END
END

//PROST8
ADD_STATE_TRIGGER PROST8 3
~
	!Global("XA_ReturnToBG", "GLOBAL", 1)
~

APPEND PROST8
	IF ~  
		StateCheck(Myself,STATE_CHARMED)
		Global("XA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN XAA0 // from:
		SAY @145 /* ~Things have been much better since Slythe and Krystin were killed. Those two were crazy.~ */
		IF ~~ THEN EXIT
	END
END

//PROST7
ADD_STATE_TRIGGER PROST7 6
~
	!Global("XA_ReturnToBG", "GLOBAL", 1)
~

APPEND PROST7
	IF ~  
		StateCheck(Myself,STATE_CHARMED)
		Global("XA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN XAA0 // from:
		SAY @145 /* ~Things have been much better since Slythe and Krystin were killed. Those two were crazy.~ */
		IF ~~ THEN EXIT
	END
END

//PROST6
ADD_STATE_TRIGGER PROST6 2
~
	!Global("XA_ReturnToBG", "GLOBAL", 1)
~

APPEND PROST6
	IF ~  
		StateCheck(Myself,STATE_CHARMED)
		Global("XA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN XAA0 // from:
		SAY @145 /* ~Things have been much better since Slythe and Krystin were killed. Those two were crazy.~ */
		IF ~~ THEN EXIT
	END
END

//PROST5
ADD_STATE_TRIGGER PROST5 4
~
	!Global("XA_ReturnToBG", "GLOBAL", 1)
~

APPEND PROST5
	IF ~  
		StateCheck(Myself,STATE_CHARMED)
		Global("XA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN XAA0 // from:
		SAY @145 /* ~Things have been much better since Slythe and Krystin were killed. Those two were crazy.~ */
		IF ~~ THEN EXIT
	END
END

//KERRAC
EXTEND_BOTTOM KERRAC 3
	IF ~~ THEN
	DO ~
		SetGlobal("XA_MetKerrac", "GLOBAL", 1)
		EscapeArea()
	~
	EXIT
END

EXTEND_BOTTOM KERRAC 4
	IF ~~ THEN
	DO ~
		SetGlobal("XA_MetKerrac", "GLOBAL", 1)
		EscapeArea()
	~
	EXIT
END

EXTEND_BOTTOM KERRAC 5
	IF ~~ THEN
	DO ~
		SetGlobal("XA_MetKerrac", "GLOBAL", 1)
		EscapeArea()
	~
	EXIT
END

EXTEND_BOTTOM KERRAC 6
	IF ~~ THEN
	DO ~
		SetGlobal("XA_MetKerrac", "GLOBAL", 1)
		EscapeArea()
	~
	EXIT
END

//KESHEE
ADD_TRANS_TRIGGER KESHEE 2
~
	!Dead("HAISH2")
~

EXTEND_BOTTOM KESHEE 2
	IF ~~ THEN REPLY @134 /* ~I found out what happened to Balduran... or his ship and crew, anyway.~*/
	GOTO XAA0
END

APPEND KESHEE
	IF ~~ THEN BEGIN XAA0
		SAY @135 /* ~Oh, is that so?~*/
		
		IF ~~ THEN REPLY @136 /* ~Yes. (Tell him the story of the wolfwere island.)~ */
		GOTO XAA1
	END
	
	IF ~~ THEN BEGIN XAA1
		SAY @137 /* ~Har har... you mean to tell me Balduran and his men were transformed into beasts? That's a tall tale if I ever heard one.~*/
		
		IF ~
			PartyHasItem("BOOK87")
		~ THEN REPLY @138 /* ~It's true. Look, here's his logbook.~ */
		GOTO XA_LogBook
		
		IF ~
			!PartyHasItem("BOOK87")
		~ THEN REPLY @142 /* ~It's true.~*/
		GOTO XA_NoEvidence
	END

	IF ~~ THEN BEGIN XA_NoEvidence
		SAY @143 /* ~Oh sure, hah! Thanks for the laughs, friend. You have quite the imagination. I'll let you be on your way.~*/
		
		IF ~~ THEN
		DO ~
			EscapeArea()
		~
		EXIT
	END
	
	IF ~~ THEN BEGIN XA_LogBook
		SAY @139 /* ~Let me see that... it seems to be... wow.~*/
		
		= @140 /* ~I can hardly believe it! Did you find out what happpened to Balduran himself?~*/
		
		IF ~~ THEN REPLY @141 /* ~Unfortunately no, none of the people on the island could offer any explanation as to what happened to him.~*/
		GOTO XA_LogBook_End
	
	END
	
	IF ~~ THEN BEGIN XA_LogBook_End
		SAY @144 /*  ~Tis a shame, then. Thank you for telling me the story. I'm going to go tell all me buddies how <CHARNAME> and his band of adventurers found what happened to Balduran's ship and crew.~*/
		
		IF ~~ THEN
		DO ~
			ReputationInc(2)
			AddExperienceParty(20000)
			EscapeArea()
		~
		EXIT
	END
END

//THIEFM
ADD_STATE_TRIGGER THIEFM 3
~
	!Global("XA_ReturnToBG", "GLOBAL", 1)
~

APPEND THIEFM
	IF ~
		Global("XA_ReturnToBG", "GLOBAL", 1)
		RandomNum(5,3)
	~ THEN BEGIN XAA3
		SAY @133 /* @133 = ~Never had such easy pickings as those refugees, I tell ya. It's a shame they're all gone.~*/
		IF ~~ THEN EXIT
	END
END

//MERLEA
ADD_STATE_TRIGGER MERLEA 0
~
	!Global("XA_ReturnToBG", "GLOBAL", 1)
~
4 5 6

APPEND MERLEA
	IF ~
		Global("XA_ReturnToBG", "GLOBAL", 1)
		RandomNum(6,1)
	~ THEN BEGIN XAA0
		SAY @124 /* ~Leave me be, I've business to attend to.~ */
		IF ~~ THEN
		EXIT
	END

	IF ~
		Global("XA_ReturnToBG", "GLOBAL", 1)
		RandomNum(6,2)
		!AreaCheck("BG0128")
		!Dead("Aldeth")
	~ THEN BEGIN XAA1
		SAY @125 /* ~If you're seeking Aldeth, he's upstairs.~*/
		IF ~~ THEN
		EXIT
	END

	IF ~
		Global("XA_ReturnToBG", "GLOBAL", 1)
		RandomNum(6,2)
	~ THEN BEGIN XAA2
		SAY @126 /* ~Grain futures are lower, with the bandit activity down and all.~  */
		IF ~~ THEN
		EXIT
	END

	IF ~
		Global("XA_ReturnToBG", "GLOBAL", 1)
		RandomNum(6,3)
	~ THEN BEGIN XAA3
		SAY @127 /* ~With the refugee crisis finally dealt with, the strain on the city's economy should lessen.~*/
		IF ~~ THEN
		EXIT
	END

	IF ~
		Global("XA_ReturnToBG", "GLOBAL", 1)
		RandomNum(6,4)
	~ THEN BEGIN XAA4
		SAY @128 /* ~Lumber futures are up, no doubt because of the new construction east of the city.~*/
		IF ~~ THEN
		EXIT
	END

	IF ~
		Global("XA_ReturnToBG", "GLOBAL", 1)
		RandomNum(6,5)
	~ THEN BEGIN XAA5
		SAY @129 /* ~The value of my holdings has doubled since the fall of the Iron Throne.~
	*/
		IF ~~ THEN
		EXIT
	END

	IF ~
		Global("XA_ReturnToBG", "GLOBAL", 1)
		RandomNum(6,6)
	~ THEN BEGIN XAA6
		SAY @130 /* ~Welcome to the Merchant's League. May your stay be a profitable one.~
	*/
		IF ~~ THEN
		EXIT
	END
END

//BRIELB
ADD_STATE_TRIGGER BRIELB 3
~
	!Global("XA_ReturnToBG", "GLOBAL", 1)
~

APPEND BRIELB
	IF WEIGHT #2 /* Triggers after states #: 15 even though they appear after this state */
	~  !InParty("Coran")
		NumTimesTalkedTo(0)
		Global("XA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN XA_Greeting // from:
		SAY @121 /* ~Oh my! You're the hero of Baldur's Gate - please, I need your help!~*/
		IF ~~ THEN REPLY @122 /* ~We've just returned from a long journey, and we're tired.~ */ 
		GOTO 4
		IF ~~ THEN REPLY @123 /* ~What is it?~ */ 
		GOTO 5
	END
END

APPEND VICONIJ
	IF ~~ THEN BEGIN XA_AskDiviner
		SAY @120 /* ~No. I already know what is in store for me, and there is nothing I can do to escape it.~*/
		
		IF ~~ THEN
		DO ~
			SetGlobal("XA_ViconiaAskedDiviner", "GLOBAL", 1)
		~
		EXTERN XADIVINE XA_AskAway
	END
END

APPEND ANOMENJ
	IF ~~ THEN BEGIN XA_AskDiviner
		SAY @115 /* ~No. Let us not waste any of our time and money on this charlatan.~ */
		
		IF ~~ THEN
		DO ~
			SetGlobal("XA_AnomenAskedDiviner", "GLOBAL", 1)
		~
		EXTERN XADIVINE XA_AskAway
	END
	
	IF ~
		Global("XA_BCorwinAnomen1A", "GLOBAL", 1)
	~ THEN BEGIN BCorwinAnomen1A
		SAY @187 /* ~A mother's place is at home with her child, not on the battlefield.~ */
	
		= @188 /* ~You're a poor example of a parent.~ */
		
		IF ~~ THEN REPLY @189 /* ~You're out of line Anomen. Knock it off.~ */
		DO ~
			SetGlobal("XA_BCorwinAnomen1A", "GLOBAL", 2)
		~
		EXTERN XACORWIB BCorwinAnomen1B
		
		IF ~~ THEN REPLY @190 /* ~(Remain silent)~ */
		DO ~
			SetGlobal("XA_BCorwinAnomen1A", "GLOBAL", 2)
		~
		EXTERN XACORWIB BCorwinAnomen1B
		
		IF ~
			!Global("XA_CorwinPromoted", "GLOBAL", 1)
			!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN REPLY @191 /* ~You know little of what you speak. Captain Corwin is a fine mother.~ */
		DO ~
			SetGlobal("XA_BCorwinAnomen1A", "GLOBAL", 2)
			IncrementGlobal("XA_CorwinOpinionOfPlayer", "GLOBAL", 1)
		~
		EXTERN XACORWIB BCorwinAnomen1B
		
		IF ~
			Global("XA_CorwinPromoted", "GLOBAL", 1)
			!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN REPLY @192 /* ~You know little of what you speak. Major Corwin is a fine mother.~ */
		DO ~
			SetGlobal("XA_BCorwinAnomen1A", "GLOBAL", 2)
			IncrementGlobal("XA_CorwinOpinionOfPlayer", "GLOBAL", 1)
		~
		EXTERN XACORWIB BCorwinAnomen1B
		
		IF ~
			Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN REPLY @228 /* ~You know little of what you speak. Schael is a fine mother.~ */
		DO ~
			SetGlobal("XA_BCorwinAnomen1A", "GLOBAL", 2)
			IncrementGlobal("XA_CorwinOpinionOfPlayer", "GLOBAL", 1)
		~
		EXTERN XACORWIB BCorwinAnomen1B
		
	END
END

APPEND JAHEIRAJ
	IF ~~ THEN BEGIN XA_AskDiviner
		SAY @114 /* ~No. To know the future is unnatural and risks upsetting the balance.~ */
		
		IF ~~ THEN
		DO ~
			SetGlobal("XA_JaheiraAskedDiviner", "GLOBAL", 1)
		~
		EXTERN XADIVINE XA_AskAway
	END
	
	IF ~~ THEN BEGIN XA_SaradushDestroyed
		SAY @233
		
		IF ~~ THEN
		EXTERN XACORWIJ XA_TimeToGrieveLater
	END
	
	IF ~~ THEN BEGIN XA_CorwinPregnantInitial_Jaheira
		SAY @238 /* ~Of course. What do you need?~ */
		
		= @239 /* ~(They have a long discussion, but you can't make out the details.)~ */
		
		= @236 /* ~Schael! At a time like this? How could you allow yourself—~ */
		
		IF ~~ THEN 
		DO ~
			SetGlobal("XA_CorwinPregnantJaheira", "GLOBAL", 1)
		~
		EXTERN XACORWIJ XA_CorwinPregnantInitial_Shh
	END
	
	//{ Dialog J-75
	IF ~
		Global("XA_CorwinPregnantBabyName_Jah", "GLOBAL", 1)
	~ THEN BEGIN XA_CorwinPregnantBabyName_Jaheira
		SAY @264 /*~<CHARNAME>. Congratulations.~*/ 
		
		IF ~~ THEN REPLY @275 /*~Thank you, Jaheira.~*/
		DO ~
			SetGlobal("XA_CorwinPregnantBabyName_Jah", "GLOBAL", 2)
		~
		GOTO XA_CorwinPregnantBabyName_Jaheira_BabyName
		
		IF ~~ THEN REPLY @269 /* For? */
		DO ~
			SetGlobal("XA_CorwinPregnantBabyName_Jah", "GLOBAL", 2)
		~
		GOTO XA_CorwinPregnantBabyName_Jaheira_For
	END
	
	IF ~~ THEN BEGIN XA_CorwinPregnantBabyName_Jaheira_For
		SAY @270 /*~Major Cor — Schael's pregancy, of course. It is wonderful news.~*/
		
		IF ~~ THEN REPLY @265 /* ~Is that so? I overheard parts of your conversation, and you didn't sound happy with her at all.~ */
		GOTO XA_CorwinPregnantBabyName_Jaheira_NotHappy
		
		IF ~~ THEN REPLY @275 /*~Thank you, Jaheira.~*/
		GOTO XA_CorwinPregnantBabyName_Jaheira_BabyName
	END
	
	IF ~~ THEN BEGIN XA_CorwinPregnantBabyName_Jaheira_NotHappy
		SAY @266 /* ~Yes. I was surprised that Schael would allow herself to get pregnant under these circumstances. After thinking on it some more however, there was no way you or she could know what was to happen. I cannot in fairness fault her, or you, for the unfortunate timing.~ */
		
		IF ~~ THEN
		GOTO XA_CorwinPregnantBabyName_Jaheira_BabyName
	END
	
	IF ~~ THEN BEGIN XA_CorwinPregnantBabyName_Jaheira_BabyName
		SAY @268 /* ~So, child. Have you given any thought as to the baby's name?~ */
		
		IF ~~ THEN REPLY @242 /* ~If it's a boy, I was thinking of naming him Gorion, to honor our foster father. If it's a girl, Schael wants to name her Ilara, after her mother.~ */
		GOTO XA_CorwinPregnantBabyName_Jaheira_GorionIlara
		
		IF ~~ THEN REPLY @244 /* ~I haven't. Do you have any ideas?~ */
		GOTO XA_CorwinPregnantBabyName_Jaheira_Ideas
	END
	
	IF ~~ THEN BEGIN XA_CorwinPregnantBabyName_Jaheira_Ideas
		SAY @276 /* ~Hmm... many name their children after those who've had a profound impact on their life. Khalid and I often spoke of naming our child after the one who first introduced us to each other.~ */
		
		= @277 /* ~Khalid... he would be pleased to hear this news, and to learn that you've selected such good and strong woman as your mate. The two of you will do a wonderful job as parents.~ */
		
		IF ~~ THEN 
		GOTO XA_CorwinPregnantBabyName_Jaheira_FriendlyArm
	END
	
	IF ~~ THEN BEGIN XA_CorwinPregnantBabyName_Jaheira_GorionIlara
		SAY @271 /* ~Gorion would be honored. He'd also be proud of the man you've become, and that you've chosen such a good and strong woman as your mate. The two of you will do a wonderful job as parents.~*/
		
		IF ~~ THEN 
		GOTO XA_CorwinPregnantBabyName_Jaheira_FriendlyArm
	END
	
	IF ~~ THEN BEGIN XA_CorwinPregnantBabyName_Jaheira_FriendlyArm
		SAY @272 /*~It seems that just yesterday you walked in to the Friendly Arm inn, lost and confused after the murder of your foster father. So much has happened since then...~*/
		
		IF ~~ THEN REPLY @273 /* ~And you've stood by my side through all of it. Now, I must rely on you again to help ensure Schael's health, and the health of our unborn child.~*/
		GOTO XA_CorwinPregnantBabyName_Jaheira_END
	END
	
	IF ~~ THEN BEGIN XA_CorwinPregnantBabyName_Jaheira_END
		SAY @274 /*~You can count on me, now and always, my friend.~*/
		
		IF ~~ THEN REPLY @275 /*~Thank you, Jaheira.~*/
		EXIT
	END
	//}
END

APPEND IMOEN2J
	IF ~~ THEN BEGIN XA_AskDiviner
		SAY @104 /* ~Thanks, but no. Knowing my future won't change it, and it will take away all of the surprise.~ */
		
		IF ~~ THEN
		DO ~
			SetGlobal("XA_ImoenAskedDiviner", "GLOBAL", 1)
		~
		EXTERN XADIVINE XA_AskAway
	END
	
	IF ~~ THEN BEGIN XA_SaradushDestroyed
		SAY @233
		
		IF ~~ THEN
		EXTERN XACORWIJ XA_TimeToGrieveLater
	END
	//{ Dialog J-73
	IF ~
		Global("XA_CorwinPregnantBabyName_Imoen", "GLOBAL", 1)
	~ THEN BEGIN XA_CorwinPregnantBabyName_Imoen
		SAY @240 /* ~Schael just told me the news. I'm so happy for you two!!~ */
		
		IF ~~ THEN REPLY @247 /* ~News?~ */
		DO ~
			SetGlobal("XA_CorwinPregnantBabyName_Imoen", "GLOBAL", 2)
		~
		GOTO XA_CorwinPregnantBabyName_Imoen_WhatNews
		
		IF ~~ THEN REPLY @249 /* ~Thanks, Imoen. I can't believe I'm going to be a dad.~ */
		DO ~
			SetGlobal("XA_CorwinPregnantBabyName_Imoen", "GLOBAL", 2)
		~
		GOTO XA_CorwinPregnantBabyName_Imoen_Dad
	END
	
	IF ~~ THEN BEGIN XA_CorwinPregnantBabyName_Imoen_WhatNews
		SAY @248 /* ~Yes, that she's pregnant! Sheesh!~*/
		
		IF ~~ THEN REPLY @249 /* ~Thanks, Imoen. I can't believe I'm going to be a dad.~ */
		GOTO XA_CorwinPregnantBabyName_Imoen_Dad
	END
	
	IF ~~ THEN BEGIN XA_CorwinPregnantBabyName_Imoen_Dad
		SAY @241 /* ~Have you given any thought as to the baby's name?~ */
		
		IF ~~ THEN REPLY @244 /*~I haven't. Do you have any ideas?~*/
		GOTO XA_CorwinPregnantBabyName_Imoen_Ideas
		
		IF ~~ THEN REPLY @242 /* ~If it's a boy, I was thinking of naming him Gorion, to honor our foster father. If it's a girl, Schael wants to name her Ilara, after her mother.~ */
		GOTO XA_CorwinPregnantBabyName_Imoen_GorionIlara
	END
	
	IF ~~ THEN BEGIN XA_CorwinPregnantBabyName_Imoen_Ideas
		SAY @246 /* ~Hmm... a lot of people name their children after people who've had a profound impact on their life.~ */
		
		IF ~~ THEN 
		GOTO XA_CorwinPregnantBabyName_Imoen_Spoil2
	END
	
	IF ~~ THEN BEGIN XA_CorwinPregnantBabyName_Imoen_GorionIlara
		SAY @243 /* ~Those are great names. Oh, I'm so excited! Gorion would be *so* proud of you.~ */
		
		IF ~~ THEN 
		GOTO XA_CorwinPregnantBabyName_Imoen_Spoil
	END
	
	IF ~~ THEN BEGIN XA_CorwinPregnantBabyName_Imoen_Spoil
		SAY @245 /* ~And just so you know ... I'm going to spoil my niece or nephew rotten!~ */
		
		IF ~~ THEN REPLY @250 /* ~Hahahah. Going to leave all of the disciplining to Schael and I, eh?~*/
		GOTO XA_CorwinPregnantBabyName_Imoen_END
	END
	
	IF ~~ THEN BEGIN XA_CorwinPregnantBabyName_Imoen_Spoil2
		SAY @252 /* ~Whatever you two decide ... I want you know that I'm going to spoil my niece or nephew rotten!~*/
		
		IF ~~ THEN REPLY @250 /* ~Hahahah. Going to leave all of the disciplining to Schael and I, eh?~*/
		GOTO XA_CorwinPregnantBabyName_Imoen_END
	END
	
	IF ~~ THEN BEGIN XA_CorwinPregnantBabyName_Imoen_END
		SAY @251 /* ~You got that right.~ */
		
		IF ~~ THEN EXIT
	END
	//}
END
//KENT
ADD_STATE_TRIGGER KENT 0
~
	!Global("XA_ReturnToBG", "GLOBAL", 1)
~

APPEND KENT
	IF ~
		Global("XA_ReturnToBG", "GLOBAL", 1)
		!Global("XA_KentGreeting", "LOCALS", 1)
	~
	THEN BEGIN XAA0
		SAY @87 /* ~Captain, <CHARNAME>, welcome home.~ */
		
		IF ~~ THEN REPLY @88 /* ~Thank you, Kent. It's good to see you again.~ */
		DO ~
			SetGlobal("XA_KentGreeting", "LOCALS", 1)
		~
		GOTO XAA1
	END
	
	IF ~
		Global("XA_KentGreeting", "LOCALS", 1)
		Global("XA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN XAA1
		SAY @86 /* ~Marshal Nederlok is in his office if you need to see him. First door on my right.~*/
		IF ~~ THEN REPLY @89 /* ~Understood.~ */
		EXIT
	END
END
 
//FLAMBG
ADD_STATE_TRIGGER FLAMBG 0
~
	!Global("XA_ReturnToBG", "GLOBAL", 1)
~
5 6

APPEND FLAMBG
	IF ~
		Global("XA_ReturnToBG", "GLOBAL", 1)
		IsValidForPartyDialogue("XACORWIN")
		RandomNum(2,1)
	~
	THEN BEGIN XAA0
		SAY @83 /* ~Nothing unusual to report, Captain.~ */
		IF ~~ THEN EXIT
	END
	
	IF ~
		Global("XA_ReturnToBG", "GLOBAL", 1)
		!Global("XA_DukesDebriefed", "GLOBAL", 1)
	~
	THEN BEGIN XAA1
		SAY @85 /* ~Good day <CHARNAME>, Captain. If you are looking for Marshal Nederlok, he is in his office upstairs.~ */
		
		IF ~~ THEN EXIT
	END
	

END

//VALYGARJ
APPEND VALYGARJ
	IF ~~ THEN BEGIN XA_WYRM_VALYGAR3
		SAY @82 /* ~It's good to meet you too, sir.~ */
		
		IF ~~ THEN
		EXTERN XANEDERL XA_WYRM_3
	END
END

//THIEFG
ADD_TRANS_TRIGGER THIEFG 0
~
	!Global("XA_ReturnToBG", "GLOBAL", 1)
~
DO 1

EXTEND_BOTTOM THIEFG 0
	
	IF ~
		Global("XA_ReturnToBG", "GLOBAL", 1)
		!Global("XA_ThiefAllowPass", "GLOBAL", 1)
	~ THEN REPLY @70 /* ~Ya, I know the password.~ */
	GOTO XAA0
	
	IF ~
		Global("XA_ReturnToBG", "GLOBAL", 1)
		IsValidForPartyDialogue("XACORWIN")
		!Global("XA_ThiefAllowPass", "GLOBAL", 1)
	~ THEN EXTERN XACORWIJ XA_ThiefGuildEntry
	
	IF ~
		Global("XA_ThiefAllowPass", "GLOBAL", 1)
	~ THEN GOTO XA_MoveAlong
END

APPEND THIEFG
	IF ~~ THEN BEGIN XAA0 // from: 0.1
		SAY @69 /* ~Well, if you know the password, then spill it.~ */
		IF ~~ THEN REPLY #216655 /* ~Darkwell.~ */ GOTO XAA1
		IF ~~ THEN REPLY #216656 /* ~Ravenscar.~ */ GOTO XAA1
		IF ~~ THEN REPLY #216657 /* ~Mask.~ */ GOTO XAA1
		IF ~~ THEN REPLY #216658 /* ~Fafhrd.~ */ GOTO XAA2
		IF ~~ THEN REPLY #216659 /* ~Bodi.~ */ GOTO XAA1
		IF ~~ THEN REPLY #216660 /* ~Mercury.~ */ GOTO XAA1
		IF ~~ THEN REPLY #216661 /* ~Shadow.~ */ GOTO XAA1
	END
	
	IF ~~ THEN BEGIN XAA1
		SAY @68 /* ~Wrong answer. Git outta here 'fore ya get hurt. I might not be able to stop a buncha well-armed adventurers, but if you cause any trouble in the guild, don't be expecting to walk out in one piece.~ */
		
		IF ~~ THEN EXIT
	END
	
	IF ~~ THEN BEGIN XAA2
		SAY @64 /* ~That's the old password, you idiot! Give me the new password!~ */
		
		IF ~
			//!IsGabber(Player1)
			!IsGabber(Player1)
		~ THEN REPLY @65 /* ~I um... don't know the password.~*/
		GOTO 1
		
		IF ~
			//IsGabber(Player1)
			IsGabber(Player1)
		~ THEN REPLY @65 /* ~I um... don't know the password.~*/
		GOTO XAA2A
	END
	
	IF ~~ THEN BEGIN XAA2A
		SAY @66 /* ~(You hear someone yelling from the next room: "Don't you recognize who that is? It's <CHARNAME>, the hero of Baldur's Gate! Let them pass!")~*/
		= @67 /* ~Oh.. right, it's you. Ya all can go in now.~ */
		
		IF ~~ THEN
		DO ~
			SetGlobal("XA_ThiefAllowPass", "GLOBAL", 1)
			SetGlobal("ThiefSecretQuestion","GLOBAL",1)
		~
		EXIT
	END
	
	IF ~~ THEN BEGIN XAA2B
		SAY @131 /* ~(You hear someone yelling from the next room: "It's been a while, Captain! Go ahead, let them through!")~ */
		IF ~~ THEN
		DO ~
			SetGlobal("XA_ThiefAllowPass", "GLOBAL", 1)
			SetGlobal("ThiefSecretQuestion","GLOBAL",1)
		~
		EXIT
	END
	
	IF ~~ THEN BEGIN XA_MoveAlong
		SAY @132 /* ~Oh, it's you again. Well, what're you standin' round for? Go on through!~*/
		
		IF ~~ THEN
		EXIT
	END
END

//FATMBA
ADD_STATE_TRIGGER FATMBA 4
~
	!Global("XA_ReturnToBG", "GLOBAL", 1)
~

APPEND FATMBA
	IF ~  
		RandomNum(4,4)
	~ THEN BEGIN XAA0 // from:
		SAY @63 /* ~You know, I had a fall the other day. No one laughed, but the ground was cracking up.~ */
		IF ~~ THEN 
		EXIT
	END
END


//MICK
ADD_STATE_TRIGGER MICK 0
~
	!Global("XA_ReturnToBG", "GLOBAL", 1)
~

APPEND MICK
	IF ~
		Global("XA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN XAA0
		SAY @62 /* ~Speedy delivery, speedy delivery coming through. Must inform the Grand Dukes that <CHARNAME> and <PRO_HISHER> companions have arrived. Speedy delivery, coming through!~ */
		IF ~~ THEN
		DO ~
			EscapeArea()
		~
		EXIT
	END
END

//OGRELEAD
ADD_STATE_TRIGGER OGRELEAD 0
~
	!Global("XA_ReturnToBG", "GLOBAL", 1)
~

APPEND OGRELEAD
	IF ~
		Global("XA_ReturnToBG", "GLOBAL", 1)
	~ THEN BEGIN XAA0
		SAY @61 /* ~Little pink ones, you shall all die. The Five have offered 25,000 gold for the head of <CHARNAME>, and we shall have it.~ */
		IF ~~ THEN
		DO ~
			EscapeArea()
		~
		EXIT
	END
	
END

/* 
	End of SoA - Ask who wants to go to Baldur's Gate
*/

//SUELLE2
ADD_STATE_TRIGGER SUELLE2 0
~
	!Global("XA_59AOverride", "GLOBAL", 1)
~

EXTEND_BOTTOM SUELLE2 0
	IF ~
		IsValidForPartyDialogue("XACORWIN")
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~
	EXTERN XACORWIJ XA_SUELLE2_0
END

EXTEND_BOTTOM SUELLE2 5
	IF ~
		IsValidForPartyDialogue("XACORWIN")
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~
	EXTERN XACORWIJ XA_SUELLE2_5
END

EXTEND_BOTTOM SUELLE2 8
	IF ~
		IsValidForPartyDialogue("XACORWIN")
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~
	EXTERN XACORWIJ XA_SUELLE2_8
END

EXTEND_BOTTOM SUELLE2 13
	IF ~
		IsValidForPartyDialogue("XACORWIN")
	~
	THEN
	DO ~
		GiveItemCreate("AMUL27",Player1,1,0,0)  // Amulet of Seldarine
	~
	GOTO 15
END

EXTEND_BOTTOM SUELLE2 14
	IF ~
		IsValidForPartyDialogue("XACORWIN")
	~
	THEN
	DO ~
		GiveItemCreate("AMUL27",Player1,1,0,0)  // Amulet of Seldarine
	~
	GOTO 15
END

EXTEND_BOTTOM SUELLE2 18
	IF ~
		IsValidForPartyDialogue("XACORWIN")
		ReputationLT(Player1,10)
	~
	THEN 
	DO ~
		ClearAllActions()
		StartCutSceneMode()
		StartCutSceneEx("XA100a",FALSE)
	~
	EXIT
	
	IF ~
		IsValidForPartyDialogue("XACORWIN")
		ReputationGT(Player1,9)
	~
	THEN 
	DO ~
		ClearAllActions()
		StartCutSceneMode()
		StartCutSceneEx("XA100b",FALSE)
	~
	EXIT
END

APPEND SUELLE2
	IF ~~ THEN BEGIN XA_SUELLE2_0_D
		SAY @59 /* ~(She smiles as she looks at the two of you.)~ */
		= @60 /* ~She never once left your side. I cannot tell you how heartwarming it is to see love blossom in the aftermath of what transpired here.~ */
		
		IF ~  
			ReputationLT(Player1,10)
		~ 
		THEN GOTO 3
  
		IF ~  
			ReputationGT(Player1,9)
		~ 
		THEN GOTO 6
	END
	
END

//SUJON
EXTEND_BOTTOM SUJON 14
	IF ~
		IsValidForPartyDialogue("XACORWIN")
	~
	EXTERN XACORWIJ XA_SUJON_14
END

//UDSVIR03
ADD_TRANS_TRIGGER UDSVIR03 25
~
	!IsValidForPartyDialogue("XACORWIN")
~
DO 0

EXTEND_BOTTOM UDSVIR03 25
	IF ~
		IsValidForPartyDialogue("XACORWIN")
		!Global("XA_CorwinStopSvirFight", "GLOBAL", 1)
	~ THEN REPLY @58 /* ~Saying that was a mistake, fool! I will kill you and take the stone! Forget your deal!~  */
	EXTERN XACORWIJ XA_Svir
END


//UDPHAE01
EXTEND_TOP ~UDPHAE01~ 106
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN REPLY @57 /*  ~My companion, Schael.~ */
	GOTO 110
END

ADD_TRANS_TRIGGER ~UDPHAE01~ 136
~
	!IsValidForPartyDialogue("XACORWIN")
~

EXTEND_BOTTOM ~UDPHAE01~ 136
	IF ~
		IsValidForPartyDialogue("XACORWIN")
	~
	THEN EXTERN ~XACORWIJ~ XAA68
END

//BODHIAMB
EXTEND_BOTTOM BODHIAMB 5
	IF ~
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		InParty("XACORWIN")
	~ 
	THEN GOTO XAA0
END

ADD_TRANS_TRIGGER BODHIAMB 5
~
OR(2)
	!InParty("XACORWIN")
	!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
~ 
DO 0

APPEND BODHIAMB
	IF ~~ THEN BEGIN XAA0
		SAY @54 /* ~You follow in the hopes of retrieving something dear to you. I say that the longer you keep this up, the more you will lose.~ */
		
		IF ~~ THEN GOTO 6
		
		IF ~
			IsValidForPartyDialogue("XACORWIN")
		~ THEN GOTO XAA1
	END
	
	IF ~~ THEN BEGIN XAA1
		SAY @55 /* ~Consider Captain Corwin here. How difficult will it be to lose her, and to know that you were responsible for her daugher growing up without a mother? Leave this place, and treasure what is left of your pathetic existence.~ */
		IF ~~ THEN
		EXTERN XACORWIJ XAA83
	END
	
	IF ~~ THEN BEGIN XAA2
		SAY @56 /* ~Arrogant child. Very well - if it is death you seek, then I will not deny you!~  */
		IF ~~ THEN
		DO ~
			ClearAllActions()
			StartCutSceneMode()
			StartCutSceneEx("XAcs07",FALSE)
		~
		EXIT
	END
END

//SUDEMIN
ADD_TRANS_TRIGGER SUDEMIN 39
~
	!IsValidForPartyDialogue("XACORWIN")
~
DO 0

EXTEND_BOTTOM SUDEMIN 39
	IF ~
		IsValidForPartyDialogue("XACORWIN")
		!Global("XA_CorwinStopDeminFight", "GLOBAL", 1)
	~ THEN REPLY @52 /* ~You asked for it, sister... time for you to die!~  */
	EXTERN XACORWIJ XA_Demin
END

APPEND SUDEMIN
	IF ~~ THEN BEGIN XA_Demin3
		SAY @53 /* ~Thank you for talking some sense into your comrade. Let us focus on the task at hand.~ */
		IF ~~ THEN
		GOTO 41
	END
END

//MADAM
ADD_TRANS_TRIGGER MADAM 0
~
	//!IsGabber("XACORWIN")
	!IsGabber("XACORWIN")
~
DO 1 4

ADD_TRANS_TRIGGER MADAM 7
~
	//!IsGabber("XACORWIN")
	!IsGabber("XACORWIN")
~
DO 3 4

APPEND MADAM
	IF ~  
		IsGabber(Player1)
		Global("XA_CorwinRomanceActive","GLOBAL",2)
		Global("MadamUpset","GLOBAL",0)
	~ THEN BEGIN XA_CorwinMadam // from:
		SAY #39394 /* ~Greetings, my <LADYLORD>. I am Madame Nin, and I am here to ensure you are pleasantly accompanied. Are you interested in companionship, my <LADYLORD>?~ */
		IF ~  
			IsValidForPartyDialogue("XACORWIN")
		~ THEN 
		EXTERN ~XACORWIJ~ XA_CorwinMadam2
		
		IF ~  
			!IsValidForPartyDialogue("XACORWIN")
		~ THEN 
		GOTO 7
	END
	
	IF ~~ THEN BEGIN XA_CorwinMadam3 // from:
		SAY #39396 /* ~I see. Perhaps you should reconsider where you are then... and remember not to bother other customers with your puerile attitude.~ */
		
		IF ~~ THEN
		EXIT
		
		IF ~
			Global("XA_CorwinCanHaveSex", "GLOBAL", 1)
			!Global("XA_CorwinHitOnPlayer", "GLOBAL", 1)
			GlobalLT("XA_TimesHadSex", "GLOBAL", 1)
			Global("XA_CorwinLoveBG2", "GLOBAL", 1) // only for romance that continues from SoD. 
		~ THEN 
		DO ~
			SetGlobal("XA_CorwinHitOnPlayer", "GLOBAL", 1)
			SetGlobal("MadamUpset", "GLOBAL", 1)
		~
		EXTERN ~XACORWIJ~ XAA27A
		
		IF ~
			Global("XA_CorwinCanHaveSex", "GLOBAL", 1)
			!Global("XA_CorwinHitOnPlayer", "GLOBAL", 1)
			GlobalLT("XA_TimesHadSex", "GLOBAL", 1)
			!Global("XA_CorwinLoveBG2", "GLOBAL", 1) // only for romance that continues from SoD. 
		~ THEN 
		DO ~
			SetGlobal("XA_CorwinHitOnPlayer", "GLOBAL", 1)
			SetGlobal("MadamUpset", "GLOBAL", 1)
		~
		EXTERN ~XACORWIJ~ XAA27
	END	
END

//HELLJON
EXTEND_BOTTOM HELLJON 7

	IF ~
		IsValidForPartyDialogue("XACORWIN")
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN EXTERN ~XACORWIJ~ XA_HELLJON_7A
	
	IF ~
		IsValidForPartyDialogue("XACORWIN")
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN EXTERN ~XACORWIJ~ XA_HELLJON_7B
END

EXTEND_BOTTOM HELLJON 8
	IF ~
		IsValidForPartyDialogue("XACORWIN")
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN EXTERN ~XACORWIJ~ XA_HELLJON_8A
	
	IF ~
		IsValidForPartyDialogue("XACORWIN")
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN EXTERN ~XACORWIJ~ XA_HELLJON_8B
END

EXTEND_BOTTOM HELLJON 9
	IF ~
		IsValidForPartyDialogue("XACORWIN")
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN EXTERN ~XACORWIJ~ XA_HELLJON_9A
	
	IF ~
		IsValidForPartyDialogue("XACORWIN")
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN EXTERN ~XACORWIJ~ XA_HELLJON_9B
END

EXTEND_BOTTOM HELLJON 10
	IF ~
		IsValidForPartyDialogue("XACORWIN")
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN EXTERN ~XACORWIJ~ XA_HELLJON_10A
	
	IF ~
		IsValidForPartyDialogue("XACORWIN")
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN EXTERN ~XACORWIJ~ XA_HELLJON_10B
END

//NEB
EXTEND_BOTTOM NEB 2
	IF ~
		IsValidForPartyDialogue("XACORWIN")
	~
	THEN EXTERN ~XACORWIJ~ XA_NEB_2
END

APPEND NEB
	IF ~~ THEN BEGIN XAA0
		SAY @50 /* ~You look familiar... Captain Corwin, yes? You had me arrested just before I could introduce myself to your sweet daughter.~ */
		= @51 /*  ~I don't know how you found me, but I promise that when I'm done with you, I'll be sure to pay her a visit. Die!~ */
		IF ~~ THEN
		DO ~
			SetGlobal("XA_NebFight", "GLOBAL", 1)
			Enemy()
		~
		EXIT
	END
END


//HAERDAJ
APPEND HAERDAJ
	IF ~~ THEN BEGIN XA_CorwinWantsSex5B
		SAY @49 /* ~Bah, hardly. You should read some of my earlier work.~ */
		IF ~~ THEN
		EXTERN XACORWIJ XAA29
	END
END

//GORODR1
EXTEND_BOTTOM GORODR1 17 //OK
	IF ~
		IsValidForPartyDialogue("XACORWIN")
	~
	THEN EXTERN XACORWIJ XA_GORODR1_17_18
END

EXTEND_BOTTOM GORODR1 18 //OK
	IF ~
		IsValidForPartyDialogue("XACORWIN")
	~
	THEN EXTERN XACORWIJ XA_GORODR1_17_18
END

EXTEND_BOTTOM GORODR1 34 //OK
	IF ~
		IsValidForPartyDialogue("XACORWIN")
	~
	THEN EXTERN XACORWIJ XA_GORODR1_34_44
END

EXTEND_BOTTOM GORODR1 39 //OK	
	IF ~
		//GlobalLT("Chapter","GLOBAL",20)
		OR(15)
			IsValidForPartyDialogue("XACORWIN")
			IsValidForPartyDialogue("Aerie")
			IsValidForPartyDialogue("Anomen")
			IsValidForPartyDialogue("Imoen2")
			IsValidForPartyDialogue("Korgan")
			IsValidForPartyDialogue("Keldorn")
			IsValidForPartyDialogue("Nalia")
			IsValidForPartyDialogue("Minsc")
			IsValidForPartyDialogue("Jaheira")
			IsValidForPartyDialogue("Valygar")
			IsValidForPartyDialogue("Mazzy")
			IsValidForPartyDialogue("Viconia")
			IsValidForPartyDialogue("Dorn")
			IsValidForPartyDialogue("Cernd")
			IsValidForPartyDialogue("Edwin")
	~
	THEN REPLY @22 /* ~(You turn to your comrades.) What say you? Should the treacherous cowards live, or should they die?~ */
	
	EXTERN GORODR1 XA_OdrenJudgeSOA
END

EXTEND_BOTTOM GORODR1 44 //OK
	IF ~
		IsValidForPartyDialogue("XACORWIN")
	~
	THEN EXTERN XACORWIJ XA_GORODR1_34_44
END

APPEND GORODR1
	IF ~~ THEN BEGIN XA_OdrenDecision 
		SAY @42 /* ~Please, I ask you once again to forgive us, <CHARNAME>.~ */
		
		IF ~
			GlobalGT("XA_OdrenShouldDie", "GLOBAL", 0)
		~ THEN REPLY @43 /* ~Prepare to die, you treacherous cowards!~  */
		GOTO 45
		
		IF ~
			GlobalLT("XA_OdrenShouldDie", "GLOBAL", 0)
		~ THEN REPLY @44 /* ~We've decided that you and your treacherous comrades will live. Get out of my sight!~  */
		GOTO 55
		
		IF ~
			GlobalLT("XA_OdrenShouldDie", "GLOBAL", 0)
		~ THEN REPLY @45 /* ~We've decided that you and your treacherous comrades will live. Give us our reward, and get out of my sight!~  */
		DO ~
			GiveGoldForce(10000)
			AddXP2DA("PLOT01C")
		~ 
		GOTO 57
		
		IF ~
			Global("XA_OdrenShouldDie", "GLOBAL", 0)
		~
		THEN GOTO XA_OdrenDecisionDecidingVote
	END
	
	IF ~~ THEN BEGIN XA_OdrenDecisionDecidingVote
		SAY @46 /* (Your group is evenly split - half believe the priests should be executed, and the other half want to show them mercy. You must cast the deciding vote.)~ */
		
		IF ~~ THEN REPLY @47 /* We've decided that you and your treacherous comrades will live. Get out of my sight!~  */
		GOTO 55
		
		IF ~~ THEN REPLY @48 /* We've decided that you and your treacherous comrades will live. Give us our reward, and get out of my sight!*/
		DO ~
			GiveGoldForce(10000)
			AddXP2DA("PLOT01C")
		~ 
		GOTO 57
		
		IF ~~ THEN REPLY @43 /* ~Prepare to die, you treacherous cowards!~ */
		GOTO 45
		
	END
END
// DEGARD
ADD_TRANS_TRIGGER DEGARD 4 //OK
~
	!IsValidForPartyDialogue("XACORWIN")
~
DO 1
EXTEND_BOTTOM DEGARD 4 //OK
	IF ~
		IsValidForPartyDialogue("XACORWIN")
	~ THEN REPLY @21 /* ~If I should happen across this "Edwin," I'll be sure to seek you out and let you know where he is.~ */
	DO ~
		SetGlobalTimer("XA_CorwinEdwinThayTimer", "GLOBAL", TWO_ROUNDS)
		//SetGlobal("XA_CorwinEdwinThay", "GLOBAL", 1)
		EscapeArea()
	~
	EXIT
END

// NALIAJ
APPEND NALIAJ
	IF ~~ THEN BEGIN XA_CorwinStruckDelcia
		SAY @20 /* ~(She finally regains her composure)~ */

		= @231 /* How DARE you! That's my aunt you just struck!~ */
		
		IF ~
			Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		~
		THEN REPLY @17 /* ~I can't believe you did that, love.~ */
		EXTERN XACORWIJ XA_DelciaLeft2
		
		IF ~
			Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		~
		THEN REPLY @19 /*  ~She definitely deserved it. Well done, love.~ */
		EXTERN XACORWIJ XA_DelciaLeft2
		
		IF ~
			!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		~
		THEN REPLY @13 /* ~I can't believe you did that, Corwin.~ */
		EXTERN XACORWIJ XA_DelciaLeft2
		
		IF ~
			!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		~
		THEN REPLY @18 /* ~She definitely deserved it. Well done, Captain.~ */
		EXTERN XACORWIJ XA_DelciaLeft2
	END
END

// KELDORJ

APPEND KELDORJ
	IF ~~ THEN BEGIN XA_CorwinStruckDelcia
		SAY @12 /* ~That's... not how I would have handled the matter, Captain, but at least the Lady is out of harm's way.~ */
		
		IF ~
			Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		~
		THEN REPLY @17 /* ~I can't believe you did that, love.~ */
		EXTERN XACORWIJ XA_DelciaLeft2
		
		IF ~
			Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		~
		THEN REPLY @19 /*  ~She definitely deserved it. Well done, love.~ */
		EXTERN XACORWIJ XA_DelciaLeft2
		
		IF ~
			!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		~
		THEN REPLY @13 /* ~I can't believe you did that, Corwin.~ */
		EXTERN XACORWIJ XA_DelciaLeft2
		
		IF ~
			!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		~
		THEN REPLY @18 /* ~She definitely deserved it. Well done, Captain.~ */
		EXTERN XACORWIJ XA_DelciaLeft2
	END
END
// DELCIA

ADD_TRANS_TRIGGER DELCIA 11 //OK
~
	!IsValidForPartyDialogue("XACORWIN")
~

ADD_TRANS_TRIGGER DELCIA 14 //OK
~
	!IsValidForPartyDialogue("XACORWIN")
~

ADD_TRANS_TRIGGER DELCIA 21 //OK
~
	!IsValidForPartyDialogue("XACORWIN")
~

ADD_TRANS_TRIGGER DELCIA 22 //OK
~
	!IsValidForPartyDialogue("XACORWIN")
~

EXTEND_BOTTOM DELCIA 11 //OK
	IF ~
		IsValidForPartyDialogue("XACORWIN")
	~ THEN EXTERN XACORWIJ XA_CorwinDelcia
END

EXTEND_BOTTOM DELCIA 14 //OK
	IF ~
		IsValidForPartyDialogue("XACORWIN")
	~ THEN EXTERN XACORWIJ XA_CorwinDelcia
END

EXTEND_BOTTOM DELCIA 21 //OK
	IF ~
		IsValidForPartyDialogue("XACORWIN")
	~ THEN EXTERN XACORWIJ XA_CorwinDelcia
END

EXTEND_BOTTOM DELCIA 22  //OK
	IF ~
		IsValidForPartyDialogue("XACORWIN")
	~ THEN EXTERN XACORWIJ XA_CorwinDelcia
END

APPEND DELCIA
	IF ~~ THEN BEGIN XA_CorwinLeave
		SAY @11 /* ~(She leaves in a hurry, with her hand covering the bruise on her face.)~ */
		
		IF ~~ THEN
		DO ~
			SetGlobal("XA_DelciaEnd", "GLOBAL", 2)
			SetGlobal("DelceaMove","GLOBAL",1)
			ActionOverride("kpsold01",EscapeArea())
			SetGlobal("DelciaLeave","GLOBAL",1)
			EscapeAreaMove("AR1300",768,3310,N)
			Wait(3)
		~
		EXTERN XACORWIJ XA_DelciaLeft
	END
END
// C6DRIZZ1
EXTEND_BOTTOM C6DRIZZ1 1  //OK
	IF ~
		IsValidForPartyDialogue("XACORWIN")
	~
	THEN EXTERN XACORWIJ XA_CorwinDrizz
END

APPEND C6DRIZZ1
	IF ~~ THEN BEGIN XA_CorwinDrizz2
		SAY @14 /* ~A proposal? I will hear you out, <PRO_RACE>, but I will be wary. Speak, if you wish.~ */
		
		IF ~
			Global("WorkingForBodhi","GLOBAL",1)
		~ THEN REPLY @15 /* ~We seek to defeat a vampire in Athkatla too powerful to face alone. Will you help?~ */
		GOTO 32
		
		IF ~
			Global("WorkingForBodhi","GLOBAL",0)
		~ THEN REPLY @15 /* ~We seek to defeat a vampire in Athkatla too powerful to face alone. Will you help?~ */
		GOTO 33
		
		IF ~~ THEN REPLY @17 /* ~Never mind. We will be on my way.~ */ 
		GOTO 34
	END
END

// IMOEN2
EXTEND_BOTTOM IMOEN2 21 //OK
	IF ~
		IsValidForPartyDialogue("XACORWIN")
	~
	THEN GOTO XA_CorwinImoenReunite	
END

// INSPECT

ADD_TRANS_TRIGGER INSPECT 46 
~
	!IsValidForPartyDialogue("XACORWIN")
~
DO 1

EXTEND_BOTTOM INSPECT 46
	IF ~
		IsValidForPartyDialogue("XACORWIN")
		IsValidForPartyDialogue("Edwin")
	~
	THEN EXTERN EDWINJ XA_EdwinFF1
END

// EDWINJ

APPEND EDWINJ
	IF ~~ THEN BEGIN XA_EdwinFF1
		SAY @9 /* ~Oh yes... we've braved monsters, Flaming Fist --~ */
		IF ~~ THEN
		EXTERN XACORWIJ XA_EdwinFF2
	END
	
	IF ~~ THEN BEGIN XA_EdwinFF3
		SAY @10 /* ~Ah, yes. As I was saying, we've braved monsters, Sarevok's assorted minions, and fanatical crusaders only to fall to a sneak-thief with an over-fondness for flesh. Excellent deduction.~ */
		IF ~  
			!IsValidForPartyDialogue("Yoshimo")
		~ THEN EXIT
  
		IF ~  
			IsValidForPartyDialogue("Yoshimo")
		~ THEN EXTERN ~YOSHJ~ 54
	END
END

// KORGANJ

EXTEND_BOTTOM KORGANJ 151 //OK
	IF ~
		IsValidForPartyDialogue("XACORWIN")
	~
	THEN 
	EXTERN XACORWIJ XA_KORGANJ_151
END

// PIRMUR01

EXTEND_BOTTOM PIRMUR01 2
	IF ~
		IsValidForPartyDialogue("XACORWIN")
	~
	THEN
	EXTERN XACORWIJ XA_PIRMUR01_2
END

// DELTOW01

APPEND DELTOW01
	IF WEIGHT #4 ~  
		IsValidForPartyDialogue("XACORWIB")
		Global("InteractCorwin","LOCALS",0)
		RandomNum(3,2)
	~ THEN BEGIN XA_InteractCorwin // from:
		SAY @7 /* ~A Flaming Fist officer, in Athkatla? You're very far from home! You looking for someone?~ */
		IF ~~ THEN 
		DO ~
			SetGlobal("InteractCorwin","LOCALS",1)
		~ 
		EXTERN ~XACORWIJ~ XA_InteractCorwin2
	END
	
	IF ~~ THEN BEGIN XA_InteractCorwin3
		SAY @8 /* ~I bet it's those bastard mercenaries upstairs. They're a real rude bunch. Good hunting, young lady.~ */
		IF ~~ THEN
		EXIT
	END
END

// BPROST2

APPEND BPROST2
	IF WEIGHT #4 ~  
		Global("BProst2Corwin","LOCALS",0)
		IsValidForPartyDialogue("XACORWIN")
		RandomNum(2,1)
	~ THEN BEGIN XA_ProstCorwin // from:
		SAY @4 /* ~You there... I see you eying me, hon. You some kind of law officer or something?~ */
		= @5 /* ~Or are ye here for some action? I go both ways, ya know.~  */
		IF ~~ THEN 
		DO ~
			SetGlobal("BProst2Corwin","LOCALS",1)
		~ 
		EXTERN ~XACORWIJ~ XA_ProstCorwin2
	END
	
	IF ~~ THEN BEGIN XA_ProstCorwin3
		SAY @6 /* ~Then what are ye lookin at? Get lost!~   */
		IF ~~ THEN
		EXIT
	END
END

// HAEGAN

ADD_TRANS_TRIGGER HAEGAN 0
~
	!IsValidForPartyDialogue("XACORWIN")
~

EXTEND_BOTTOM HAEGAN 0
	IF ~
		IsValidForPartyDialogue("XACORWIN")
	~
	EXTERN XACORWIJ XA_HAEGAN_0_5
END

ADD_TRANS_TRIGGER HAEGAN 5
~
	!IsValidForPartyDialogue("XACORWIN")
~

EXTEND_BOTTOM HAEGAN 5
	IF ~
		IsValidForPartyDialogue("XACORWIN")
	~
	EXTERN XACORWIJ XA_HAEGAN_0_5
END

// DHARLOT2

ADD_TRANS_TRIGGER DHARLOT2 0
~
	!IsValidForPartyDialogue("XACORWIN")
~

EXTEND_BOTTOM DHARLOT2 0
	IF ~
		IsValidForPartyDialogue("XACORWIN")
		!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN EXTERN XACORWIJ XA_DHARLOT2A

	IF ~
		IsValidForPartyDialogue("XACORWIN")
		Global("XA_CorwinRomanceActive", "GLOBAL", 2)
	~
	THEN EXTERN XACORWIJ XA_DHARLOT2B
END

// FFCUST04

APPEND FFCUST04
	IF WEIGHT #4 ~  
		Global("IKFFCustomer4Corwin","GLOBAL",0)
		IsValidForPartyDialogue("XACORWIN")
		RandomNum(2,1)
	~ THEN BEGIN 8 // from:
		SAY @3 /* ~Wow... a beauty like you, in a place like this? Are ye lookin for someone? Perhaps a nice, strong man to keep you warm at night, eh?~  */
		IF ~
			Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN 
		DO ~
			SetGlobal("IKFFCustomer4Corwin","GLOBAL",1)
		~ 
		EXTERN ~XACORWIJ~ XA_FFCUST04A
		
		IF ~
			!Global("XA_CorwinRomanceActive", "GLOBAL", 2)
		~ THEN 
		DO ~
			SetGlobal("IKFFCustomer4Corwin","GLOBAL",1)
		~ 
		EXTERN ~XACORWIJ~ XA_FFCUST04B
	END
END

// DALESON.D

ADD_TRANS_TRIGGER DALESON 9
~
	!IsValidForPartyDialogue("XACORWIN")
~
DO 3

ADD_TRANS_TRIGGER DALESON 10
~
	!IsValidForPartyDialogue("XACORWIN")
~
DO 3

ADD_TRANS_TRIGGER DALESON 11
~
	!IsValidForPartyDialogue("XACORWIN")
~
DO 3

EXTEND_BOTTOM DALESON 9
	IF ~
		IsValidForPartyDialogue("XACORWIN")
	~
	THEN REPLY @0 /* ~I've all I need from you. How about you start running, and we see how far you get?~ */
	UNSOLVED_JOURNAL @1 /* ~The de'Arnise keep has been invaded

Daleson told me that there were about thirty trolls within the keep, and one very large one that seemed to be in charge. He also mentioned the yuan-ti that seem to be here as well, though he did not know their numbers.~ */
	EXTERN XACORWIJ XA_Daleson
END

EXTEND_BOTTOM DALESON 10
	IF ~
		IsValidForPartyDialogue("XACORWIN")
	~
	THEN REPLY @0 /* ~I've all I need from you. How about you start running, and we see how far you get?~ */
	UNSOLVED_JOURNAL @2 /* ~The de'Arnise keep has been invaded

Daleson mentioned that Lord de'Arnise may still be alive, possibly in a dungeon that the man had boarded up long ago. Apparently he was caught trying to collect the pieces to a flail, the heads of which he kept apart throughout the keep, although Daleson didn't know why.~ */
	EXTERN XACORWIJ XA_Daleson
END

EXTEND_BOTTOM DALESON 11
	IF ~
		IsValidForPartyDialogue("XACORWIN")
	~
	THEN REPLY @0 /* ~I've all I need from you. How about you start running, and we see how far you get?~ */
	EXTERN XACORWIJ XA_Daleson
END

CHAIN 
	IF ~~ THEN GORODR1 XA_OdrenJudgeSOA
		@23 /* ~(Odren and his companions look at your party with hope in their eyes.)~ */
		
		== XACORWIJ
		IF ~ 
			IsValidForPartyDialogue("XACORWIN")
		~
		@24 /* ~They deserve to die. Not just for their treachery, but also for their cowardice. There's been so much death already, though... If you decide to spare them, I will understand.~ */
		DO ~
			IncrementGlobal("XA_OdrenShouldDie", "GLOBAL", 1)
		~
		
		== MINSCJ
		IF ~
			IsValidForPartyDialogue("MINSC")
		~
		@29 /* ~(Minsc is engaged in an animated discussion with Boo about the circumstances of Odren's betrayal. You decide to treat this as a vote for life, not just because you don't have the time for this nonsense, but because Minsc is completely insane. It would be wrong, after all, to have a person's life be decided by an abject fool.)~ */
		DO ~
			IncrementGlobal("XA_OdrenShouldDie", "GLOBAL", -1)
		~
		
		== KORGANJ
		IF ~
			IsValidForPartyDialogue("KORGAN")
		~
		@25 /* ~Death, I say. Me axe be waitin' to taste their squirrely innards.~ */
		DO ~
			IncrementGlobal("XA_OdrenShouldDie", "GLOBAL", 1)
		~
		
		== AERIEJ
		IF ~
			IsValidForPartyDialogue("Aerie")
		~
		@30 /* ~I ... I know what they did was wrong... maybe they can learn from this and do some good? They can at least tell o-others not to judge you just because you are a Bhaalspawn. I think we should let them live.~ */
		DO ~
			IncrementGlobal("XA_OdrenShouldDie", "GLOBAL", -1)
		~
		
		== JAHEIRAJ
		IF ~
			IsValidForPartyDialogue("Jaheira")
		~
		@26 /* ~A great evil has been purged from this world. To restore balance, these warriors must be purged as well.~ */
		DO ~
			IncrementGlobal("XA_OdrenShouldDie", "GLOBAL", 1)
		~
		
		== IMOEN2J
		IF ~
			IsValidForPartyDialogue("Imoen2")
		~
		@32 /* ~We've experienced enough bloodshed for one lifetime. Let them go, <CHARNAME>.~*/
		DO ~
			IncrementGlobal("XA_OdrenShouldDie", "GLOBAL", -1)
		~
		
		== VALYGARJ
		IF ~
			IsValidForPartyDialogue("Valygar")
		~
		@27 /* ~These treacherous dogs deserve death. They've shown me nothing to indicate otherwise.~ */
		DO ~
			IncrementGlobal("XA_OdrenShouldDie", "GLOBAL", 1)
		~
		
		== HAERDAJ
		IF ~
			IsValidForPartyDialogue("HaerDalis")
		~
		@34 /* ~Life, I say. Think of the songs the bards will sing! <CHARNAME>, the mighty! <CHARNAME>, the merciful!~   */
		DO ~
			IncrementGlobal("XA_OdrenShouldDie", "GLOBAL", -1)
		~
		
		== DORNJ
		IF ~
			IsValidForPartyDialogue("Dorn")
		~
		@28 /* ~Few things please me more than to shed the blood of sanctimonious hypocrites. Death to them all!~ */
		DO ~
			IncrementGlobal("XA_OdrenShouldDie", "GLOBAL", 1)
		~
			
		== ANOMENJ
		IF ~
			IsValidForPartyDialogue("Anomen")
		~
		@35 /* ~They have betrayed not only us, but their god, and everything they believed in. Let us end their misery and put them to the sword.~ */
		DO ~
			IncrementGlobal("XA_OdrenShouldDie", "GLOBAL", 1)
		~
		
		== MAZZYJ
		IF ~
			IsValidForPartyDialogue("Mazzy")
		~
		@36 /* ~We must choose life. Yes, they've wronged us, but what's done is done. What will killing these priests accomplish?~  */
		DO ~
			IncrementGlobal("XA_OdrenShouldDie", "GLOBAL", -1)
		~
		
		== VICONIJ
		IF ~
			IsValidForPartyDialogue("Viconia")
		~
		@38 /* ~Helmites hunt my kind for sport on the surface. I welcome the opportunity to help even the score.~  */
		DO ~
			IncrementGlobal("XA_OdrenShouldDie", "GLOBAL", -1)
		~
		
		== NALIAJ
		IF ~
			IsValidForPartyDialogue("Nalia")
		~
		@37 /* ~We must choose life. Yes, they've wronged us, but what's done is done. What will killing these priests accomplish?~  */
		DO ~
			IncrementGlobal("XA_OdrenShouldDie", "GLOBAL", -1)
		~
		
		== CERNDJ
		IF ~
			IsValidForPartyDialogue("CERND")
		~
		@40 /* ~Their foolishness could have easily led to the world being utterly ravaged at the hands of Demogorgon. As much as it pains me to say it, death is the only fitting punishment for these scoundrels.~  */
		DO ~
			IncrementGlobal("XA_OdrenShouldDie", "GLOBAL", 1)
		~
		
		== KELDORJ
		IF ~
			IsValidForPartyDialogue("Keldorn")
		~
		@39 /* ~Life, I say. My hope is for these priests to one day redeem themselves in the eyes of Helm, and they cannot do that if they are dead.~  */
		DO ~
			IncrementGlobal("XA_OdrenShouldDie", "GLOBAL", -1)
		~
		
		== EDWINJ
		IF ~
			IsValidForPartyDialogue("Edwin")
		~
		@31 /* ~They must be punished! (Yes, severely!) Die, die, die, die, DIE!~ */
		DO ~
			IncrementGlobal("XA_OdrenShouldDie", "GLOBAL", 1)
		~
END
++@41 GOTO XA_OdrenDecision 

CHAIN
	IF ~~ THEN VALYGARJ XA_AskDiviner
		@108 /* ~Yes. If I had children, would my family's curse be passed to them?~ */
		
		== XADIVINE
		@105 /* ~You are not cursed. If you are referring to your blood's affinity for the magical arts, then yes, your children will possess the gift. That gift, that talent, can be nurtured or stifled. Support it and watch it blossom, or repress it and watch it wither and die.~ */
		
		== VALYGARJ
		@106 /* ~So, what you are saying is that it's my choice.~*/
		
		== XADIVINE
		@107 /* ~Yes.~*/
END XADIVINE XA_AlreadyAsked

CHAIN
	IF ~~ THEN XACORWIJ XA_AskDiviner
		@109 /* ~Yes. Will my daugher understand why I need to be away from home so much?~ */
		
		== XADIVINE
		@110 /* ~Your daughter already understands the reasons for your sacrifice. She is wiser than you give her credit for. She is as proud of you as you are of her.~ */
END XADIVINE XA_AlreadyAsked

CHAIN
	IF ~~ THEN AERIEJ XA_AskDiviner
		@111 /* ~Yes - Is my m-mother still alive?~ */
		
		== XADIVINE
		@112 /* ~Yes, and you will see her again.~ */
		
		== AERIEJ
		@113 /* ~Oh, I hope so... thank you.~ */
END XADIVINE XA_AlreadyAsked

CHAIN
	IF ~~ THEN NALIAJ XA_AskDiviner
		@116 /* ~To this fraudster? No. How many poor people has this soothsayer swindled with his lies?~ */
		DO ~
			SetGlobal("XA_NaliaAskedDiviner", "GLOBAL", 1)
		~
		== XADIVINE
		@117 /* ~The only fraudster here is you, young lady.~ */
		
		== NALIAJ
		@118 /* ~I beg your pardon?~ */
		
		== XADIVINE
		@119 /* ~Continue with your virtue signaling if it makes you feel better. Just know that it does nothing to improve the situation of those you claim to care about.~ */
END XADIVINE XA_AlreadyAsked



