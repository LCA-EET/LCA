BEGIN ~LCBDSCH2~

IF ~
	AreaCheck("bd0104")
	Global("bd_jail_visitors","bd0104",2)
	Global("bd_corwin_romanceactive","global",2)
~ THEN BEGIN LCA_0104_Greeting_A //Romance
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
	GOTO LCA_A_8 //OK
END

IF ~~ THEN BEGIN LCA_A_2
	SAY @8 /* ~I can't do it. I'm sorry, <CHARNAME>. If I release you, you'll be hunted down as a fugitive.~ */
	
	IF ~~ THEN REPLY @9 /* ~We can leave here together - take Rohma and go some place no one will ever find us. Please, Schael, don't give up. There's still a future for us - if you want it.~ */
	GOTO LCA_A_3 //OK
	
	IF ~~ THEN REPLY @11 /* ~If you've not come to help me, why are you here?~*/
	GOTO LCA_A_7A //OK
	
	IF ~~ THEN REPLY @12 /* ~I didn't kill Skie. You can't believe I'd ever do something like that.~ */
	GOTO LCA_A_2A //OK
END

IF ~~ THEN BEGIN LCA_A_2A
	SAY @42 /* ~I know you didn't. But at the same time, I can't explain what happened. Everyone saw you, dagger in hand, covered in her blood...~ */
	=@57 /* ~It just doesn't make any sense!~ [BDSCH1]*/ 
	IF ~~ THEN
	GOTO LCA_A_4 //OK
END

IF ~~ THEN BEGIN LCA_A_3
	SAY @13 /* ~You think I'd turn my back on the Flaming Fist? On my father? I thought you knew me.~ [BD54636]  */
	IF ~~ THEN GOTO LCA_A_4 //ok
END

IF ~~ THEN BEGIN LCA_A_4
	SAY @14 /* ~Even after everything that's happened in my life, I'm still just a stupid girl, blinded by - whatever it was I thought we had.~ [BD54643] */
	
	IF ~~ THEN REPLY @15 /* ~It was love, Schael. It was - it IS - real.~*/
	GOTO LCA_A_6
	
	IF ~~ THEN REPLY @16 /* ~Love makes fools of us all.~*/
	GOTO LCA_A_6
	
	IF ~~ THEN REPLY @17 /* ~You know what we had. Deny it if you must. I know the truth.~*/
	GOTO LCA_A_6
END

IF ~~ THEN BEGIN LCA_A_5
	SAY @18 /* ~I'll not deny my feelings for you. Not ever. But how I feel means little beyond these walls.~ */
	
	IF ~~ THEN 
	GOTO LCA_A_6
END

IF ~~ THEN BEGIN LCA_A_6
	SAY @19 /* ~Love conquers all. I'm not feeling particularly victorious right now. Are you?~ [BD54648]  */
	
	IF ~~ THEN REPLY @20 /* ~My love, do not succumb to despair. This isn't over yet.~  */
	GOTO LCA_A_10
	
	IF ~~ THEN REPLY @21 /* ~So long as you love me, I have hope.~  */
	GOTO LCA_A_15
	
	IF ~~ THEN REPLY @22 /* ~Let's see how we're feeling after you release me from this wretched cell.~ */
	GOTO LCA_A_16
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
	GOTO LCA_A_18 //OK
	
	IF ~~ THEN REPLY @29 /* ~And so you came here seeking solace. I've none to give, and wouldn't offer it to you even if I did. Get out. You sicken me. Go!~ */ 
	GOTO LCA_A_20 //OK
END

IF ~~ THEN BEGIN LCA_A_9
	SAY @30 /* ~It doesn't matter. I wish it did, but in the end, it doesn't. If it weren't this, it would have been something else. I thought we could be together, that you and Rohma and I had a future...~ [BD54642]  */
	
	IF ~~ THEN REPLY @31 /* ~We can still have that, and more. Don't give up on us Schael. I haven't.~  */
	GOTO LCA_A_10 //OK
	
	IF ~~ THEN REPLY @21 /* ~So long as you love me, I have hope.~  */
	GOTO LCA_A_15
	
	IF ~~ THEN REPLY @22 /* ~Let's see how we're feeling after you release me from this wretched cell.~ */
	GOTO LCA_A_16 //OK
END

IF ~~ THEN BEGIN LCA_A_10
	SAY @32 /* ~You're right... I haven't given up, love, and I won't. Imoen and I will continue to advocate for your innocence.~*/
	
	IF ~~ THEN 
	GOTO LCA_A_11 //OK 
END

IF ~~ THEN BEGIN LCA_A_11
	SAY @33 /* ~We may yet be able to convince certain council members that exile is an option.~ [BDCOR13] */
	
	IF ~~ THEN REPLY @34 /* ~Exile from the city... Schael, there must be another way.~ */
	GOTO LCA_A_12 //OK
	
	IF ~~ THEN REPLY @59 /* ~Which council members? Certainly not Entar.~*/
	GOTO LCA_A_21 //OK
END

IF ~~ THEN BEGIN LCA_A_12
	SAY @35 /* ~It's better than the gallows. Once you're safely away from the city, you'll have the time you need to find some way to prove your innocence.~ [BDCOR12]  */
	
	IF ~~ THEN GOTO LCA_A_14 //OK	
END

IF ~~ THEN BEGIN LCA_A_13
	SAY @40 /* ~I need to go now, <CHARNAME>. I know this is as hard for you as it is for me... Farewell.~ */

	IF ~~ THEN 
	DO ~
		SetGlobal("LCA_CorwinContinue","Global",2) /* continue romance into BG2 */
		SetGlobal("LCA_CorwinRomanceActive", "Global", 2) /* continue romance into BG2 */
		AddJournalEntry(@39,INFO)
		EscapeArea()
	~ 
	EXIT
	/* @39 = ~Schael

	Words cannot describe the pain and anger that I feel. Schael and I can never be together so long as the city holds me responsible for Skie's death. I must be freed from this cell so that I can find something or someone that can exonerate me, otherwise, I fear I may never see Schael again. My love for her will give me the hope and strength that I'll need to prove my innocence.~*/
		
END

IF ~~ THEN BEGIN LCA_A_14
	SAY @36 /* ~Maybe then, <CHARNAME>, we can finally be together.~*/
	
	IF ~~ THEN REPLY @37 /* ~We will be, my love. I swear it.~ */
	GOTO LCA_A_13 //OK
	
	IF ~~ THEN REPLY @38 /* ~I hope so, Schael. Gods willing, I hope so.~ */
	GOTO LCA_A_13 //OK
END

IF ~~ THEN BEGIN LCA_A_15
	SAY @41 /* ~I do love you, and I want you to know that Imoen and I won't stop advocating for your innocence.~~*/
	
	IF ~~ THEN 
	GOTO LCA_A_11 //OK 
END

IF ~~ THEN BEGIN LCA_A_16
	SAY @43 /* ~I can't. At least, not yet.~ */
	
	IF ~~ THEN REPLY @44 /* ~What do you mean?~ */
	GOTO LCA_A_17
END

IF ~~ THEN BEGIN LCA_A_17
	SAY @5 /* ~Imoen and I haven't stopped advocating for your innocence. There are others, too, who feel execution is not the right answer - not after all you've done for the city.~*/
	
	IF ~~ THEN 
	GOTO LCA_A_11
END

IF ~~ THEN BEGIN LCA_A_18
	SAY @46 /* ~Your glib tongue betrays you, <CHARNAME>. A girl lies dead, her blood on your hands, and all you offer is another quip. Skie deserves better than that. As do I.~ [BD54641] */
	
	IF ~~ THEN 
	GOTO LCA_A_4
END

IF ~~ THEN BEGIN LCA_A_20
	SAY @47 /* ~You heartless... I can't believe I didn't see it before.~ */
	= @48 /* ~Farewell, <CHARNAME>. I hope you are able to find some peace before the end.~ */
	IF ~~ THEN DO 
	~
		SetGlobal("bd_corwin_romanceactive","global",0)
		EscapeArea()
	~ 
	EXIT
END

IF ~~ THEN BEGIN LCA_A_21
	SAY @59 /* ~Duchess Liia, and especially Duke Belt, have been receptive. Duke Eltan is on the fence. He acknowledges the good you've done, but he's against the idea of giving you or anyone else special treatment... and exile, as bad as it is, is not usually seen as a severe enough punishment for a murderer.~  */
	
	IF ~~ THEN REPLY @34 /* ~Exile from the city... Schael, there must be another way.~*/
	GOTO LCA_A_12 //OK
END

IF ~
	AreaCheck("bd0104")
	Global("bd_jail_visitors","bd0104",2)
	Global("bd_player_exiled","global",1)
~ THEN BEGIN LCA_0104_Greeting_B //Non-Romance, Believes in Innocence
	SAY @0 /* ~<CHARNAME>. How are you?~ [BD54610] */
	
	IF ~~ THEN REPLY @1 /* ~I've had better days.~ */ 
	DO ~
		SetGlobal("bd_jail_visitors","bd0104",6)
		SetGlobal("bd_visit_player","locals",1)
	~ 
	GOTO LCA_B_1 //OK
	
	IF ~~ THEN REPLY @2 /* ~Schael. Thank the gods. You've got to get me out of here.~ */ 
	DO ~
		SetGlobal("bd_jail_visitors","bd0104",6)
		SetGlobal("bd_visit_player","locals",1)
	~ 
	GOTO LCA_B_2 //OK
	
	IF ~~ THEN REPLY @3 /* ~You shouldn't be here, Schael. Go, now.~ */ 
	DO ~
		SetGlobal("bd_jail_visitors","bd0104",6)
		SetGlobal("bd_visit_player","locals",1)
	~ 
	GOTO LCA_B_7 //OK
END

IF ~~ THEN BEGIN LCA_B_1
	SAY @4 /*  ~You could have worse. Eltan and Belt moved mountains to keep you alive and out of Entar's hands.~ [BD54614] */
	
	IF ~~ THEN REPLY @5 /* ~I need your help, Schael. Let me out of this cell. Let me find Skie Silvershield's killer, let me prove my innocence. Please.~ */
	GOTO LCA_B_2 //OK
	
	IF ~~ THEN REPLY @6 /* ~If you expect me to thank the Grand Dukes for their hospitality, you're going to be gravely disappointed.~ */
	GOTO LCA_B_8 //OK
END

IF ~~ THEN BEGIN LCA_B_2
	SAY @8 /* ~I can't do it. I'm sorry, <CHARNAME>. If I release you, you'll be hunted down as a fugitive.~ */
	
	IF ~~ THEN REPLY @11 /* ~If you've not come to help me, why are you here?~*/
	GOTO LCA_B_7 //OK
	
	IF ~~ THEN REPLY @12 /* ~I didn't kill Skie. You can't believe I'd ever do something like that.~ */
	GOTO LCA_B_2A //OK
END

IF ~~ THEN BEGIN LCA_B_2A
	SAY @42 /* ~I know you didn't. But at the same time, I can't explain what happened. Everyone saw you, dagger in hand, covered in her blood...~ */
	=@57 /* ~It just doesn't make any sense!~ [BDSCH1]*/ 
	IF ~~ THEN
	GOTO LCA_B_7 //OK
END

IF ~~ THEN BEGIN LCA_B_7
	SAY @49 /* ~<CHARNAME>, listen to me. I need you to know that Imoen and I haven't stopped advocating your innocence. There are others, too, who feel that execution is not the right answer - not after all you've done for the city.~ [BDSCH2]*/
	IF ~~ THEN GOTO LCA_B_11 //OK
END

IF ~~ THEN BEGIN LCA_B_8
	SAY @26 /* ~I was gravely disappointed before I ever came here.~ [BD54620] */
	
	IF ~~ THEN REPLY @5 /* ~I need your help, Schael. Let me out of this cell. Let me find Skie Silvershield's killer, let me prove my innocence. Please.~ */
	GOTO LCA_B_16 //OK
	
	IF ~~ THEN REPLY @28 /* ~Imagine how I feel.~ */
	GOTO LCA_B_18 //OK
	
	IF ~~ THEN REPLY @29 /* ~And so you came here seeking solace. I've none to give, and wouldn't offer it to you even if I did. Get out. You sicken me. Go!~ */ 
	GOTO LCA_B_20 //OK
END

IF ~~ THEN BEGIN LCA_B_11
	SAY @33 /* ~We may yet be able to convince certain council members that exile is an option.~ [BDCOR13] */
	
	IF ~~ THEN REPLY @34 /* ~Exile from the city... Schael, there must be another way.~ */
	GOTO LCA_B_12 //OK
	
	IF ~~ THEN REPLY @59 /* ~Which council members? Certainly not Entar.~*/
	GOTO LCA_B_21 //OK
END

IF ~~ THEN BEGIN LCA_B_12
	SAY @35 /* ~It's better than the gallows. Once you're safely away from the city, you'll have the time you need to find some way to prove your innocence.~ [BDCOR12]  */
	
	IF ~~ THEN REPLY @51 /* ~So long as I have friends like you, Schael, I have hope.~ */
	GOTO LCA_B_13 //OK	
	
	IF ~~ THEN REPLY @52 /* ~You're right... I appreciate all that you've done, Schael. Thank you.~ */
	GOTO LCA_B_13 //OK	
END

IF ~~ THEN BEGIN LCA_B_13
	SAY @40 /* ~I need to go now, <CHARNAME>. I know this is as hard for you as it is for me... Farewell.~ */
	
	IF ~~ THEN 
	DO ~
		SetGlobal("LCA_CorwinContinue","Global",1) /* continue friendship into BG2 */
		AddJournalEntry(@53,INFO)
		EscapeArea()
	~ 
	EXIT
	/* @53 = ~Captain Corwin

	Captain Corwin visited my cell this morning. She told me that there are those in the city that believe in my innocence, and that she and others are pleading with the Dukes on my behalf. If they're successful, my life may be spared, though I'll be forced into exile. Exile, however, would afford me the time that I need to find Skie's murderer and prove my innocence. So long as I have friends like Schael, there is hope.~ */
END


IF ~~ THEN BEGIN LCA_B_16
	SAY @43 /* ~I can't. At least, not yet.~ */
	
	IF ~~ THEN REPLY @44 /* ~What do you mean?~ */
	GOTO LCA_B_17
END

IF ~~ THEN BEGIN LCA_B_17
	SAY @5 /* ~Imoen and I haven't stopped advocating for your innocence. There are others, too, who feel execution is not the right answer - not after all you've done for the city.~*/
	
	IF ~~ THEN 
	GOTO LCA_B_11
END

IF ~~ THEN BEGIN LCA_B_18
	SAY @46 /* ~Your glib tongue betrays you, <CHARNAME>. A girl lies dead, her blood on your hands, and all you offer is another quip. Skie deserves better than that. As do I.~ [BD54641] */
	
	IF ~~ THEN REPLY @54 /* ~Forgive the sarcasm. In all seriousness, I didn't kill Skie. You can't believe I'd ever do something like that. I don't belong in this cell!~*/
	GOTO LCA_B_2A //OK
	
	IF ~~ THEN REPLY @55 /* ~And do I deserve to be locked in this cage like some animal, for a crime that I didn't commit? You have to get me out of here!~ */
	GOTO LCA_B_16
	
	IF ~~ THEN REPLY @56 /* ~We all deserve better. And the perpetrator of this heinous crime deserves what is coming to him. Let me out of here so I can avenge Skie and clear my name!~ */
	GOTO LCA_B_16
END

IF ~~ THEN BEGIN LCA_B_20
	SAY @47 /* ~You heartless... I can't believe I didn't see it before.~ */
	= @48 /* ~Farewell, <CHARNAME>. I hope you are able to find some peace before the end.~ */
	IF ~~ THEN DO 
	~
		EscapeArea()
	~ 
	EXIT
END

IF ~~ THEN BEGIN LCA_B_21
	SAY @59 /* ~Duchess Liia, and especially Duke Belt, have been receptive. Duke Eltan is on the fence. He acknowledges the good you've done, but he's against the idea of giving you or anyone else special treatment... and exile, as bad as it is, is not usually seen as a severe enough punishment for a murderer.~  */
	
	IF ~~ THEN REPLY @34 /* ~Exile from the city... Schael, there must be another way.~*/
	GOTO LCA_B_12 //OK
END

IF ~  
	AreaCheck("bd0104")
	Global("bd_jail_visitors","bd0104",2)
~ THEN BEGIN LCA_0104_Greeting_C // Non-Romance, Believes Guilty
	SAY #239419 /* ~Good morning, <CHARNAME>.~ [BD39419] */
	IF ~~ THEN REPLY #239420 /* ~Is it morning? It's hard to tell in here.~ */ 
	DO ~
		SetGlobal("bd_jail_visitors","bd0104",3)
		SetGlobal("bd_visit_player","locals",1)
	~ GOTO 30
	
	IF ~~ THEN REPLY #239421 /* ~You're half right. Why have you come here?~ */ 
	DO ~
		SetGlobal("bd_jail_visitors","bd0104",3)
		SetGlobal("bd_visit_player","locals",1)
	~ GOTO 31
  
	IF ~~ THEN REPLY #239422 /* ~What do you want, traitor?~ */ 
	DO ~
		SetGlobal("bd_jail_visitors","bd0104",3)
		SetGlobal("bd_visit_player","locals",1)
	~ GOTO 26
END


IF ~~ THEN BEGIN 26 // from: 25.2
	SAY #239423 /* ~You call me a traitor? That's rich. ~ */
	
	IF ~~ THEN REPLY #239424 /* ~I am accused of a senseless murder and none defend me. I am betrayed by all I once cared for.~ */ 
	GOTO 27
	
	IF ~~ THEN REPLY #239425 /* ~Why are you here?~ */ 
	GOTO 31
	
	IF ~~ THEN REPLY #239426 /* ~After everything we've endured, everything I've done for this damned city, you believe I murdered Skie Silvershield. I called you traitor, but treachery I might forgive. Stupidity is another matter.~ */ 
	GOTO 35
END

IF ~~ THEN BEGIN 27 // from: 26.0
	SAY #239428 /* ~Not true. Your friend Imoen has been hounding the Grand Dukes relentlessly, begging them to pardon you.~ */
	
	IF ~~ THEN REPLY #239429 /* ~Thank the gods, someone believes me.~ */ 
	GOTO 37
	
	IF ~~ THEN REPLY #239430 /* ~Imoen! Damn me, in all the uproar, I hadn't given her a moment's consideration. How is she?~ */ 
	GOTO 28
	
	IF ~~ THEN REPLY #239431 /* ~An innocent <PRO_MANWOMAN> should need no pardon.~ */ 
	GOTO 35
END

IF ~~ THEN BEGIN 28 // from: 27.1
	SAY #239432 /* ~Fully recovered from the wounds she took at the crusade's hands. Your circumstances cut her deeper than that, though.~ */
	
	IF ~~ THEN REPLY #239433 /* ~I must see her.~ */ 
	GOTO 29
	
	IF ~~ THEN REPLY #239434 /* ~Damn it. She probably blames herself for all this... Can I talk to her?~ */ 
	GOTO 29
	
	IF ~~ THEN REPLY #239435 /* ~She'll survive.~ */ 
	GOTO 36
END

IF ~~ THEN BEGIN 29 // from: 28.1 28.0
	SAY #239436 /* ~Duke Belt doesn't believe she'd willingly leave here without you. He can't allow that, no matter how much he might wish otherwise. For her sake, she must stay away.~ */
	
	IF ~~ THEN 
	GOTO 36
END

IF ~~ THEN BEGIN 30 // from: 25.0
	SAY #239437 /* ~I'm not here to discuss the time. I'm here to ask you to end this madness. The city's endured much of late—the iron crisis, Sarevok, the crusade... Now this.~ */
	
	IF ~~ THEN 
	GOTO 32
END

IF ~~ THEN BEGIN 31 // from: 26.1 25.1
	SAY #239438 /* ~I'm here to ask you to end this madness. The city's endured much of late—the iron crisis, Sarevok, the crusade... Now this.~ */
	IF ~~ THEN 
	GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 36.0 35.0 31.0 30.0
	SAY #239439 /* ~The dark days must end. And they won't, not with you languishing here claiming innocence. If you care for Baldur's Gate, even a little... admit your crime. Accept the punishment given you.~ */
	
	IF ~~ THEN REPLY #239440 /* ~I've fought and bled for Baldur's Gate. I've nearly died for it more times than I can count. I care about the city—but I also care about justice.~ */ 
	GOTO 33
  
	IF ~~ THEN REPLY #239441 /* ~I'd be more than happy to declare my innocence while languishing somewhere else.~ */ 
	GOTO 33
  
	IF ~~ THEN REPLY #239442 /* ~You'd have me throw myself on the sword for what? The benefit of those who betrayed me?~ */ 
	GOTO 38
END

IF ~~ THEN BEGIN 33 // from: 32.1 32.0
	SAY #239443 /* ~Maybe you are innocent. Maybe the eyes of all those who saw you standing over Skie's corpse deceived them. It doesn't matter. The city is all that matters now. My father taught me that a hero—a real hero—is prepared to sacrifice <PRO_HIMHER>self for the greater good. They called you the hero of Baldur's Gate. Now you have the chance to earn the name.~ */
  
	IF ~~ THEN 
	GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 38.0 33.0
	SAY #259733 /* ~Goodbye, <CHARNAME>.~ */
	IF ~~ THEN 
	DO ~
		AddJournalEntry(259858,INFO)
		EscapeArea()
	~ 
	EXIT
END

IF ~~ THEN BEGIN 35 // from: 27.2 26.2
	SAY #239445 /* ~You don't get it, do you? You can't see beyond yourself to understand what's truly at stake here. This isn't about you. It's about Baldur's Gate. The city's been through so much of late—the iron crisis, Sarevok, the crusade... and now this.~ */
	
	IF ~~ THEN 
	GOTO 32
END

IF ~~ THEN BEGIN 36 // from: 37.0 29.0 28.2
	SAY #239446 /* ~I'm not here to talk about Imoen. I came to ask you to end this madness. The city's endured much of late—the iron crisis, Sarevok, the crusade... Now this.~ */
  
	IF ~~ THEN 
	GOTO 32
END

IF ~~ THEN BEGIN 37 // from: 27.0
	SAY #239447 /* ~She has the luxury of doubt. She wasn't there. She didn't see you standing over the body, a bloody dagger in hand...~ */
	IF ~~ THEN 
	GOTO 36
END

IF ~~ THEN BEGIN 38 // from: 32.2
	SAY #239448 /* ~For the benefit of those who still believe in you. They called you the hero of Baldur's Gate. A true hero will sacrifice <PRO_HIMHER>self for the greater good. Give the city a chance to heal. Please.~ */
	
	IF ~~ THEN 
	GOTO 34
END