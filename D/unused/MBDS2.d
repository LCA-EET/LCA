//Modifications to IDJINNI.D
//Daniel Valle
//dan@danielvalle.net
/* Revision History

2022-08-25: Initial Commit

*/


ADD_STATE_TRIGGER BDSCHAE2 0
~
	!Global("XA_Override", "Global", 1)
~

ADD_STATE_TRIGGER BDSCHAE2 25
~
	!Global("XA_Override", "Global", 1)
~

ADD_STATE_TRIGGER BDSCHAE2 63
~
	!Global("XA_Override", "Global", 1)
~

APPEND BDSCHAE2

	IF ~  
		Global("EECorwBelievePC","Global",1)
		AreaCheck("bd0104")
		Global("bd_jail_visitors","bd0104",2)
	~ THEN BEGIN M1 // from: 63.0
		SAY @1 /* ~<CHARNAME>. How are you?~ [BD54610] */
		IF ~~ THEN REPLY @2 /* ~I've had better days.~ */ 
		DO ~
			SetGlobal("bd_jail_visitors","bd0104",6)
			SetGlobal("bd_visit_player","locals",1)
		~ 
		GOTO M65
		
		IF ~~ THEN REPLY @3 /* ~Corwin. Thank the gods. You've got to get me out of here.~ */ 
		DO ~
			SetGlobal("bd_jail_visitors","bd0104",6)
			SetGlobal("bd_visit_player","locals",1)
		~ 
		GOTO M71
		
		IF ~~ THEN REPLY @4 /* ~You shouldn't be here, Corwin. Go, now.~ */ 
		DO ~
			SetGlobal("bd_jail_visitors","bd0104",6)
			SetGlobal("bd_visit_player","locals",1)
		~ 
		GOTO M65
	END

	IF ~~ THEN BEGIN M65 // from: 64.2 64.0
		SAY @5 /* ~You could have worse. Eltan and Belt moved mountains to keep you alive and out of Entar's hands.~ [BD54614] */
		IF ~~ THEN REPLY @6 /* ~I need your help, Schael. Let me out of this cell. Let me find Skie Silvershield's killer, let me prove my innocence. Please.~ */ 
		GOTO M71 //OK
		  
		IF ~
			Global("bd_player_exiled","global",0)
		~ 
		THEN REPLY @7 /* ~If you expect me to thank the Grand Dukes for their hospitality, you're going to be gravely disappointed.~ */ 
		GOTO M68 //OK
		
		IF ~
			Global("bd_player_exiled","global",1)
		~ 
		THEN REPLY @7 /* ~If you expect me to thank the Grand Dukes for their hospitality, you're going to be gravely disappointed.~ */ 
		GOTO M67 //OK
		
		IF ~
			!Global("bd_corwin_romanceactive","global",2)
		~ 
		THEN REPLY @8 /* ~Let Entar come. I'll send him to join his wretched daughter.~ */ 
		GOTO M66 //OK
	END
	
	IF ~~ THEN BEGIN M66 // from: 65.5
		SAY @9 /* ~Gods help me. How could I have missed this? How did I never see you for the monster you are?~ [BD54619] */
		IF ~~ THEN GOTO M94 //OK
	END
	
	IF ~~ THEN BEGIN M67 // from: 65.4
		SAY @10 /* ~I was gravely disappointed before I ever came here.~ [BD54620] */
		IF ~~ THEN REPLY @11 /* ~I'm truly sorry you've had to endure this, Schael.~ */ 
		GOTO M79 //OK
		
		IF ~~ THEN REPLY @12 /* ~Imagine how I feel.~ */
		GOTO M78 //OK
		
		IF ~~ THEN REPLY @13 /* ~And so you came here seeking solace. I've none to give, and wouldn't offer it to you even if I did. Get out. You sicken me. Go!~ */ 
		GOTO M94 //OK
	END
	
	IF ~~ THEN BEGIN M68 // from: 65.3
		SAY @10 /* ~I was gravely disappointed before I ever came here.~ [BD54620] */
		IF ~~ THEN REPLY @14 /* ~Yet you did come here. Why?~ */ 
		GOTO M74 //OK
		
		IF ~~ THEN REPLY @15 /* ~I'm not thrilled myself.~ */ 
		GOTO M78 //OK
		
		IF ~  
			Global("bd_corwin_romanceactive","global",2)
		~ 
		THEN REPLY @16 /* ~And yet here you are. Why? Not to free me, I know. You'd never defy your beloved Flaming Fist.~ */ 
		GOTO M69 //OK
		
		IF ~  
			!Global("bd_corwin_romanceactive","global",2)
		~ 
		THEN REPLY @16 /* ~And yet here you are. Why? Not to free me, I know. You'd never defy your beloved Flaming Fist.~ */ 
		GOTO M70 //OK
		
		IF ~~ THEN REPLY @17 /* ~And what, you came here seeking solace? I've none to give. I wouldn't offer it to you even if I did. Get out. Your face sickens me. The wretched platitudes you spout make my gut churn. Go!~ */ 
		GOTO M94 //OK
	END
	
	IF ~~ THEN BEGIN M69 // from: 68.2
		SAY @18 /* ~I would have, you know. If you'd asked me, I would have followed you anywhere, happily. It wasn't so long ago.~ [BD54625] */
		IF ~~ THEN GOTO M81 //OK
	END
	
	IF ~~ THEN BEGIN M70 // from: 68.3
		SAY @60 /* ~I never promised I would. That doesn't mean I lost my faith in you being a good person beneath your hard shell.~ */
		IF ~~ THEN GOTO M82 //OK
	END
	
	IF ~~ THEN BEGIN M71 // from: 65.0 64.1
		SAY @19 /* ~I can't do it. I'm sorry, <CHARNAME>. There's only one way you're leaving here.~ [BD54626] */
		  
		IF ~  
			Global("bd_corwin_romanceactive","global",2)
		~ 
		THEN REPLY @21 /* ~We can leave here together - take Rohma and go some place no one will ever find us. Please, Schael, don't give up. There's still a future for us - if you want it.~ */ 
		GOTO M77 //OK
  
		IF ~~ THEN REPLY @22 /* ~Aye. Over the bodies of your friends and colleagues. And yours too, if you stand in my way.~ */ 
		GOTO M66 //OK
  
		IF ~~ THEN REPLY @23 /* ~If you've not come to help me, why are you here?~ */ 
		GOTO M74 //OK
		
		IF ~~ THEN REPLY @20 /* ~I didn't kill Skie. You can't believe I'd ever do something like that.~ */ 
		GOTO M72 //OK
	END	
	
	IF ~~ THEN BEGIN M72 // from: 71.0
		SAY @24 /* ~I believe you. What you need to understand is that it doesn't matter what I think and know. Not until the day we can prove that you're not Skie's murderer.~ */
		IF ~  
			Global("bd_corwin_romanceactive","global",2)
		~ 
		THEN GOTO M79 //OK
  
		IF ~  
			!Global("bd_corwin_romanceactive","global",2)
		~ 
		THEN GOTO M82 //OK
	END
	
	IF ~~ THEN BEGIN M74 // from: 71.5 68.0
		SAY @26 /* ~I needed to see you and tell you how I feel...and what I really think.~ */
		= @27 /* ~You did not kill her, we both know that.~ */
		IF ~~ THEN GOTO M76 //OK
	END
	
	IF ~~ THEN BEGIN M76 // from: 75.0
		SAY @28 /* ~It doesn't matter. I wish it did, but in the end, it doesn't.~ [BD70321] */
		IF ~  
			Global("bd_corwin_romanceactive","global",2)
		~ 
		THEN GOTO M81 //OK
		
		IF ~  
			!Global("bd_corwin_romanceactive","global",2)
		~ 
		THEN GOTO M82
	END
	
	IF ~~ THEN BEGIN M77 // from: 71.3
		SAY @29 /* ~You think I'd turn my back on the Flaming Fist? On my father? I thought you knew me.~ [BD54636] */
		IF ~~ THEN GOTO M81 //OK
	END
	
	IF ~~ THEN BEGIN M78 // from: 68.1 67.1
		SAY @30 /* ~Your glib tongue betrays you, <CHARNAME>. A girl lies dead, her blood on your hands, and all you offer is another quip. Skie deserves better than that. As do I.~ [BD54641] */
		IF ~  
			Global("bd_corwin_romanceactive","global",2)
		~ 
		THEN GOTO M81 //OK
  
		IF ~  
			!Global("bd_corwin_romanceactive","global",2)
		~ 
		THEN GOTO M82 //OK
	END
	
	IF ~~ THEN BEGIN M79 // from: 73.0 67.0
		SAY @31 /* ~It doesn't matter. I wish it did, but in the end, it doesn't. If it weren't this, it would have been something else. I thought we could be together, that you and Rohma and I had a future...~ [BD54642] */
		IF ~~ THEN REPLY @70 /* ~We can still have that, and more, Schael. Don't give up on us.~ */ 
		GOTO M83 //OK
		
		IF ~~ THEN REPLY @33 /* ~Love makes fools of us all.~ */ 
		GOTO M83 //OK
		
		IF ~~ THEN REPLY @34 /* ~You know what we had. Deny it if you must. I know the truth.~ */ 
		GOTO M83 //OK
	END
	

	IF ~~ THEN BEGIN M81 // from: 79.0 78.0 77.0 76.0 69.0 66.0
		SAY @36 /* ~Even after everything that's happened in my life, I'm still just a stupid girl, blinded by - whatever it was I thought we had. I don't doubt your innocence. It doesn't change anything but it's...precious to me.~ [BD54643] */
		IF ~~ THEN REPLY @32 /* ~It was love, Schael. It was - it IS - real.~ */ 
		GOTO M83 //OK
		
		IF ~~ THEN REPLY @33 /* ~Love makes fools of us all.~ */ 
		GOTO M83 //OK
		
		IF ~~ THEN REPLY @34 /* ~You know what we had. Deny it if you must. I know the truth.~ */ 
		GOTO M83 //OK
	END
	
	IF ~~ THEN BEGIN M82 // from: 80.0 78.1 76.1 70.0
		SAY @46 /* ~I'll not deny our friendship. Not ever. But what I feel and know means little beyond these walls.~ */
		IF ~~ THEN REPLY @38 /* ~Our friendship is precious to me as well, Schael. Do not succumb to despair - this isn't over yet. ~ */ 
		GOTO M91A //OK
		
		IF ~~ THEN REPLY @39 /* ~So long as I have you as a friend, I have hope.~ */ 
		GOTO M91B //OK
		
		IF ~~ THEN REPLY @40 /* ~A true friend would not abandon another in their time of need. Please, release me from this cell.~ */ 
		GOTO M91C //OK
	END
	
	
	IF ~~ THEN BEGIN M83 // from: 81.2 81.1 81.0 79.3 79.2 79.1 71.1 65.1
		SAY @41 /* ~I'll not deny my feelings for you. Not ever. But how I feel means little beyond these walls.~ */
		IF ~~ THEN 
		GOTO M84 //OK
	END
	
	IF ~~ THEN BEGIN M84 // from: 83.0
		SAY @42 /* ~Love conquers all. I'm not feeling particularly victorious right now. Are you?~ [BD54648] */ 
		IF ~~ THEN REPLY @43 /* ~My love, do not succumb to despair. This isn't over yet.~ */ 
		GOTO M93A //OK
  
		IF ~~ THEN REPLY @44 /* ~So long as you love me, I have hope.~ */ 
		GOTO M93B //OK
  
		IF ~~ 
		THEN REPLY @45 /* ~Let's see how we're feeling after you release me from this wretched cell.~ */ 
		GOTO M93C //OK
	END
	
	IF ~~ THEN BEGIN M89 // from: 92.1 90.1 90.0
		SAY @51 /* ~I must go now, <CHARNAME>. I know this is as hard for you as it is for me. Farewell.~ */
		IF ~  
			Global("bd_corwin_romanceactive","global",2)
		~ 
		THEN 
		DO ~
			SetGlobal("XA_CorwinContinue","Global",2) /* continue romance into BG2 */
			SetGlobal("XA_CorwinRomanceActive", "Global", 2) /* continue romance into BG2 */
			AddJournalEntry(@59,INFO)
			EscapeArea()
		~ 
		EXIT	
		
		IF ~~ THEN 
		DO ~
			SetGlobal("XA_CorwinContinue","Global",1) /* continue friendship into BG2 */
			EscapeArea()
		~ 
		EXIT
	END
	
	IF ~~ THEN BEGIN M90 // from: 92.0
		SAY @52 /* ~Maybe then, <CHARNAME>, we can finally be together.~ */
		IF ~~ THEN REPLY @53/* ~We will be, my love. I swear it.~ */ 
		GOTO M89 //OK
		
		IF ~~ THEN REPLY @54 /* ~I hope so, Schael. Gods willing, I hope so.~ */ 
		GOTO M89 //OK
	END
	
	IF ~~ THEN BEGIN M91A // from: 86.5 86.4 86.3 84.5 84.4 84.3
		SAY @62 /* ~I haven't, and I won't. I'll continue to advocate for your innocence.~ */
		IF ~~ THEN GOTO M95 //OK
	END
	
	IF ~~ THEN BEGIN M91B // from: 86.5 86.4 86.3 84.5 84.4 84.3
		SAY @69 /* ~As do I, my friend. I won't stop advocating for your innocence.~  */
		IF ~~ THEN GOTO M95 //OK
	END
	
	IF ~~ THEN BEGIN M91C // from: 86.5 86.4 86.3 84.5 84.4 84.3
		SAY @64 /* ~I am sorry, but I can't do that. The city will see you as a fugitive trying to escape justice.~ */
		IF ~~ THEN GOTO M95 //OK
	END
	
	
	IF ~~ THEN BEGIN M92 // from: 91.0
		SAY @57 /* ~Once you're safely away from the city, you'll have the time you need to find some way to prove your innocence.~ */
		IF ~  
			Global("bd_corwin_romanceactive","global",2)
		~ THEN GOTO M90 //OK
		IF ~~ THEN GOTO M89 //OK
	END
	
	IF ~~ THEN BEGIN M93A
		SAY @61 /* ~I haven't, love, and I won't. I'll continue to advocate for your innocence.~ */
		IF ~~ THEN GOTO M95 //OK
	END
	
	IF ~~ THEN BEGIN M93B // from: 86.5 86.4 86.3 84.5 84.4 84.3
		SAY @55 /* ~As do I, love. I won't stop advocating for your innocence.~  */
		IF ~~ THEN GOTO M95 //OK
	END
	
	IF ~~ THEN BEGIN M93C // from: 86.5 86.4 86.3 84.5 84.4 84.3
		SAY @65 /* ~I am sorry love, but I can't do that. The city, and the Council, will see you as a fugitive trying to escape justice.~ */
		IF ~~ THEN GOTO M95 //OK
	END
	
	IF ~~ THEN BEGIN M94 // from: 86.5 86.4 86.3 84.5 84.4 84.3
		SAY @58 /* ~Farewell, <CHARNAME>. I hope you are able to find some peace before the end.~ */
		IF ~~ THEN
		DO ~
			SetGlobal("bd_corwin_romanceactive","global",0)
		~
		EXIT
	END
	
	IF ~~ THEN BEGIN M95 
		SAY @66 /* ~I may be able to convince certain council members that exile is an option.~ [BDCOR13] */
		IF ~~ THEN REPLY @67 /* ~Exile, from the city? But Schael... there must be another way.~ */
		GOTO M96 //OK
	END
	
	IF ~~ THEN BEGIN M96
		SAY @68 /* ~It's better than the gallows. Once you're safely away from the city, you'll have the time you need to find some way to prove your innocence.~ [BDCOR12] */
		IF ~  
			Global("bd_corwin_romanceactive","global",2)
		~ THEN GOTO M90 //OK
		IF ~~ THEN GOTO M89 //OK
	END
END