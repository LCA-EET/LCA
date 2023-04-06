BEGIN ~LCBDSCH2~

IF ~
	AreaCheck("bd0104")
	Global("bd_jail_visitors","bd0104",2)
	Global("bd_corwin_romanceactive","global",2)
~ THEN BEGIN LCA_Greeting_A
	SAY @0 /* ~<CHARNAME>. How are you?~ [BD54610] */
	
	IF ~~ THEN REPLY @1 /* ~I've had better days.~ */ 
	DO ~
		SetGlobal("bd_jail_visitors","bd0104",6)
		SetGlobal("bd_visit_player","locals",1)
	~ 
	GOTO LCA_A_1 //OK
	
	IF ~~ THEN REPLY @2 /* ~Schael. Thank the gods. You've got to get me out of here.~ */ 
	DO ~
		SetGlobal("bd_jail_visitors","bd0104",6)
		SetGlobal("bd_visit_player","locals",1)
	~ 
	GOTO LCA_A_2 //OK
	
	IF ~~ THEN REPLY @3 /* ~You shouldn't be here, Schael. Go, now.~ */ 
	DO ~
		SetGlobal("bd_jail_visitors","bd0104",6)
		SetGlobal("bd_visit_player","locals",1)
	~ 
	GOTO LCA_A_7 //OK
END

IF ~~ THEN BEGIN LCA_A_1
	SAY @4 /*  ~You could have worse. Eltan and Belt moved mountains to keep you alive and out of Entar's hands.~ [BD54614] */
	
	IF ~~ THEN REPLY @5 /* ~I need your help, Schael. Let me out of this cell. Let me find Skie Silvershield's killer, let me prove my innocence. Please.~ */
	GOTO LCA_A_2 //OK
	
	IF ~~ THEN REPLY @6 /* ~If you expect me to thank the Grand Dukes for their hospitality, you're going to be gravely disappointed.~ */
	GOTO LCA_A_8
END

IF ~~ THEN BEGIN LCA_A_2
	SAY @8 /* ~I can't do it. I'm sorry, <CHARNAME>. If I release you, you'll be hunted down as a fugitive.~ */
	
	IF ~~ THEN REPLY @9 /* ~We can leave here together - take Rohma and go some place no one will ever find us. Please, Schael, don't give up. There's still a future for us - if you want it.~ */
	GOTO LCA_A_3
	
	IF ~~ THEN REPLY @11 /* ~If you've not come to help me, why are you here?~*/
	GOTO LCA_A_7A
	
	IF ~~ THEN REPLY @12 /* ~I didn't kill Skie. You can't believe I'd ever do something like that.~ */
	GOTO LCA_A_2A //OK
END

IF ~~ THEN BEGIN LCA_A_2A
	SAY @42 /* ~I know you didn't. But at the same time, I can't explain what happened. Everyone saw you, dagger in hand, covered in blood. It just doesn't make sense!~ */
	
	IF ~~ THEN
	GOTO LCA_A_4 //OK
END

IF ~~ THEN BEGIN LCA_A_3
	SAY @13 /* ~You think I'd turn my back on the Flaming Fist? On my father? I thought you knew me.~ [BD54636]  */
	IF ~~ THEN GOTO LCA_A_4
END

IF ~~ THEN BEGIN LCA_A_4
	SAY @14 /* ~Even after everything that's happened in my life, I'm still just a stupid girl, blinded by - whatever it was I thought we had. I don't doubt your innocence. It doesn't change anything but it's...precious to me.~ [BD54643] */
	
	IF ~~ THEN REPLY @15 /* ~It was love, Schael. It was - it IS - real.~*/
	GOTO LCA_A_6
	
	IF ~~ THEN REPLY @16 /* ~Love makes fools of us all.~*/
	GOTO LCA_A_6
	
	IF ~~ THEN REPLY @17 /* ~You know what we had. Deny it if you must. I know the truth.~*/
	GOTO LCA_A_6
END

IF ~~ THEN BEGIN LCA_A_5
	SAY @18 /* ~I'll not deny my feelings for you. Not ever. But how I feel means little beyond these walls.~ */
	
	IF ~~ THEN GOTO LCA_A_6
END

IF ~~ THEN BEGIN LCA_A_6
	SAY @19 /* ~Love conquers all. I'm not feeling particularly victorious right now. Are you?~ [BD54648]  */
	
	IF ~~ THEN REPLY @20 /* ~My love, do not succumb to despair. This isn't over yet.~  */
	GOTO LCA_A_10
	
	IF ~~ THEN REPLY @21 /* ~So long as you love me, I have hope.~  */
	GOTO LCA_A_15
	
	IF ~~ THEN REPLY @22 /* ~Let's see how we're feeling after you release me from this wretched cell.~ */
END

IF ~~ THEN BEGIN LCA_A_7
	SAY @23 /* ~But I need to be here...~*/
	IF ~~ THEN GOTO LCA_A_7A
END

IF ~~ THEN BEGIN LCA_A_7A
	SAY @24 /* ~<CHARNAME>... I need you to know that I love you... and that I believe in your innocence.~ */
	IF ~~ THEN
	GOTO LCA_A_9 //OK
END
IF ~~ THEN BEGIN LCA_A_8
	SAY @26 /* ~I was gravely disappointed before I ever came here.~ [BD54620] */
	IF ~~ THEN REPLY @27 /* ~I'm truly sorry you've had to endure this, Schael.~ */ 
	GOTO LCA_A_9 //OK
	
	IF ~~ THEN REPLY @28 /* ~Imagine how I feel.~ */
	GOTO M78 //OK
	
	IF ~~ THEN REPLY @29 /* ~And so you came here seeking solace. I've none to give, and wouldn't offer it to you even if I did. Get out. You sicken me. Go!~ */ 
	GOTO M94 //OK
END

IF ~~ THEN BEGIN LCA_A_9
	SAY @30 /* ~It doesn't matter. I wish it did, but in the end, it doesn't. If it weren't this, it would have been something else. I thought we could be together, that you and Rohma and I had a future...~ [BD54642]  */
	
	IF ~~ THEN REPLY @31 /* ~We can still have that, and more. Don't give up on us Schael. I haven't.~  */
	GOTO LCA_A_10 //OK
	
	IF ~~ THEN REPLY @21 /* ~So long as you love me, I have hope.~  */
	GOTO LCA_A_15
	
	IF ~~ THEN REPLY @22 /* ~Let's see how we're feeling after you release me from this wretched cell.~ */
END

IF ~~ THEN BEGIN LCA_A_10
	SAY @32 /* ~You're right... I haven't given up, love, and I won't. Imoen and I will continue to advocate for your innocence.~*/
	
	IF ~~ THEN 
	GOTO LCA_A_11 //OK 
END

IF ~~ THEN BEGIN LCA_A_11
	SAY @33 /* ~We may yet be able to convince certain council members that exile is an option.~ [BDCOR13] */
	
	IF ~~ THEN REPLY @34 /* ~Exile, from the city? But Schael... there must be another way.~ */
	GOTO LCA_A_12 //OK
END

IF ~~ THEN BEGIN LCA_A_12
	SAY @35 /* ~It's better than the gallows. Once you're safely away from the city, you'll have the time you need to find some way to prove your innocence.~ [BDCOR12]  */
	
	IF ~~ THEN 
	GOTO LCA_A_13 //OK
	
	IF ~
		Global("bd_corwin_romanceactive","global",2)
	~ THEN GOTO LCA_A_14 //OK	
END

IF ~~ THEN BEGIN LCA_A_13
	SAY @40 /* ~I need to go now, <CHARNAME>. I know this is as hard for you as it is for me... Farewell.~ */
	
	IF ~~ THEN 
	DO ~
		SetGlobal("LCA_CorwinContinue","Global",1) /* continue friendship into BG2 */
		EscapeArea()
	~ 
	EXIT
	
	IF ~  
		Global("bd_corwin_romanceactive","global",2)
	~ 
	THEN 
	DO ~
		SetGlobal("LCA_CorwinContinue","Global",2) /* continue romance into BG2 */
		SetGlobal("LCA_CorwinRomanceActive", "Global", 2) /* continue romance into BG2 */
		AddJournalEntry(@39,INFO)
		EscapeArea()
	~ 
	/* @39 = ~Schael

	Words cannot describe the pain and anger that I feel. Schael and I can never be together so long as the city holds me responsible for Skie's death. I must be freed from this cell so that I can find something or someone that can exonerate me, otherwise, I fear I may never see Schael again. My love for her will give me the hope and strength that I'll need to prove my innocence.~*/
	EXIT	
END

IF ~~ THEN BEGIN LCA_A_14
	SAY @36 /* ~Maybe then, <CHARNAME>, we can finally be together.~*/
	
	IF ~~ THEN REPLY @37 /* ~We will be, my love. I swear it.~ */
	GOTO LCA_A_13 //OK
	
	IF ~~ THEN REPLY @38 /* ~I hope so, Schael. Gods willing, I hope so.~ */
	GOTO LCA_A_13 //OK
END

IF ~~ THEN BEGIN LCA_A_15
	SAY @41 /* ~I do love you, and I want you to know that Imoen and I wont't stop advocating for you innocence.~~*/
	
	IF ~~ THEN 
	GOTO LCA_A_11 //OK 
END