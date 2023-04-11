BEGIN ~LCBDSCH2~

IF ~~ THEN BEGIN LCA_CorwinTrial_0
	SAY @60 /* ~<CHARNAME> led the assault on the castle. When the outer wall was breached, the coalition was confronted by the keep's defenders, led by Caelar's lieutenant, Ashatiel.~*/
	= @61 /* ~Ashatiel was a fierce and powerful warrior, and she challenged <CHARNAME> to a duel. <CHARNAME> accepted the challenge and defeated her in single combat.~ */
	= @62 /* ~The remaining crusaders either fled or laid down their weapons once they saw that Ashatiel was killed. Many who took part in the assault owe <CHARNAME> their lives.~ */
	IF ~~ THEN
	DO ~
		IncrementGlobal("bd_trial_hero","bd0035",1)
		IncrementGlobal("bd_trial_evil","bd0035",-1)
		IncrementGlobal("bd_trial_case","bd0035",1)
	~
	EXTERN BDBELT LCA3
END

IF ~~ THEN BEGIN LCA_CorwinTrial_1
	SAY @63 /* ~If I may, sir, I've one more thing to add.~*/
	IF ~~ THEN
	EXTERN BDBELT LCA4
END

IF ~~ THEN BEGIN LCA_CorwinTrial_2
	SAY @64 /* ~I've gotten to know <CHARNAME> over these past months, and in spite of <PRO_HISHER> bloodline, I don't believe that <PRO_HESHE> would ever wittingly murder an innocent like Skie. I can't explain what has happened, but I believe in <CHARNAME>'s innocence.~*/
	= @65 /* ~(For a moment your eyes meet, and your heart is filled with gratitude and hope.)~ */
	
	IF ~~ THEN
	DO ~
		IncrementGlobal("bd_trial_hero","bd0035",1)
		IncrementGlobal("bd_trial_evil","bd0035",-1)
		IncrementGlobal("bd_trial_case","bd0035",1)
	~
	EXTERN BDBELT LCA5
END

IF ~
	AreaCheck("bd0104")
	Global("bd_jail_visitors","bd0104",2)
	Global("bd_corwin_romanceactive","global",2)
	Global("bd_player_exiled","global",1)
~ THEN BEGIN LCA_0104_Greeting_A //Romance, Exile
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
	GOTO LCA_A_6A
	
	IF ~~ THEN REPLY @16 /* ~Love makes fools of us all.~*/
	GOTO LCA_A_6A
	
	IF ~~ THEN REPLY @17 /* ~You know what we had. Deny it if you must. I know the truth.~*/
	GOTO LCA_A_5
END

IF ~~ THEN BEGIN LCA_A_6A
	SAY @77 /* ~I... believe you. And I love you, too. I hope you'll find some comfort in that. We're just two people. Our feelings mean little beyond these walls.~ */
	
	IF ~~ THEN
	GOTO LCA_A_6
END

IF ~~ THEN BEGIN LCA_A_6B
	SAY @77 /* ~I... believe you. And I love you, too. I hope you'll find some comfort in that. We're just two people. Our feelings mean little beyond these walls.~ */
	
	IF ~~ THEN
	GOTO LCA_A_6
END

IF ~~ THEN BEGIN LCA_A_5
	SAY @18 /* ~I'll not deny my feelings for you. Not ever. But how I feel means little beyond these walls.~ */
	
	IF ~~ THEN 
	GOTO LCA_A_6
END

IF ~~ THEN BEGIN LCA_A_6
	SAY @19 /* ~Love conquers all. I'm not feeling particularly victorious right now. Are you?~ [BD54648]  */
	
	IF ~~ THEN REPLY @20 /* ~Do not succumb to despair, Schael. This isn't over yet.~  */
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
	SAY @33 /* ~It's a long shot but we... we may able to convince certain council members that exile is an option.~ [BDSCH3]  */
	
	IF ~~ THEN REPLY @34 /* ~Exile from the city... Schael, there must be another way.~ */
	GOTO LCA_A_12 //OK
	
	IF ~~ THEN REPLY @58 /* ~Which council members? Certainly not Entar.~*/
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
	SAY @45 /* ~Imoen and I haven't stopped advocating for your innocence. There are others, too, who feel execution is not the right answer - not after all you've done for the city.~*/
	
	IF ~~ THEN 
	GOTO LCA_A_11
END

IF ~~ THEN BEGIN LCA_A_18
	SAY @46 /* ~Your glib tongue betrays you, <CHARNAME>. A girl lies dead, her blood on your hands, and all you offer is another quip. Skie deserves better than that. As do I.~ [BD54641] */
	
	IF ~~ THEN 
	GOTO LCA_A_4
END

IF ~~ THEN BEGIN LCA_A_20
	SAY @83 /* ~Gods help me. How could I have missed this? How did I never see you for the monster you are?~ [BD54619]  */
	= @48 /* ~Farewell, <CHARNAME>. I hope you're able to find some peace before the end.~ */
	IF ~~ THEN DO 
	~
		SetGlobal("bd_corwin_romanceactive","global",3)
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
	!Global("bd_corwin_romanceactive","global",2)
	Global("bd_player_exiled","global",1)
~ THEN BEGIN LCA_0104_Greeting_B //Non-Romance, Exile
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
	
	IF ~~ THEN REPLY @58 /* ~Which council members? Certainly not Entar.~*/
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
	SAY @45 /* ~Imoen and I haven't stopped advocating for your innocence. There are others, too, who feel execution is not the right answer - not after all you've done for the city.~*/
	
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
	!Global("bd_corwin_romanceactive","global",2)
	Global("bd_player_exiled","global",0)
~ THEN BEGIN LCA_0104_Greeting_C // Non-Romance, Execution
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

IF ~  
	AreaCheck("bd0104")
	Global("bd_jail_visitors","bd0104",2)
	Global("bd_corwin_romanceactive","global",2)
	Global("bd_player_exiled","global",0)
~ THEN BEGIN LCA_0104_Greeting_D //Romance, Execution 
	SAY @0 /*  ~<CHARNAME>. How are you?~ [BD54610]*/

	IF ~~ THEN REPLY @1 /* ~I've had better days.~ */ 
	DO ~
		SetGlobal("bd_jail_visitors","bd0104",6)
		SetGlobal("bd_visit_player","locals",1)
	~ 
	GOTO LCA_D_1 //OK
	
	IF ~~ THEN REPLY @2 /* ~Schael. Thank the gods. You've got to get me out of here.~ */ 
	DO ~
		SetGlobal("bd_jail_visitors","bd0104",6)
		SetGlobal("bd_visit_player","locals",1)
	~ 
	GOTO LCA_D_6 //OK
	
	IF ~~ THEN REPLY @3 /* ~You shouldn't be here, Schael. Go, now.~ */ 
	DO ~
		SetGlobal("bd_jail_visitors","bd0104",6)
		SetGlobal("bd_visit_player","locals",1)
	~ 
	GOTO LCA_D_3 //OK

END

IF ~~ THEN BEGIN LCA_D_1
	SAY @4 /*  ~You could have worse. Eltan and Belt moved mountains to keep you alive and out of Entar's hands.~ [BD54614]  */
	
	IF ~~ THEN REPLY @5 /* ~I need your help, Schael. Let me out of this cell. Let me find Skie Silvershield's killer, let me prove my innocence. Please.~ */
	GOTO LCA_D_6
	
	IF ~~ THEN REPLY @6 /* ~If you expect me to thank the Grand Dukes for their hospitality, you're going to be gravely disappointed.~ */
	GOTO LCA_D_16
	
	IF ~~ THEN REPLY @7 /* ~Let Entar come. I'll send him to join his wretched daughter.~ */
	GOTO LCA_A_20
END


IF ~~ THEN BEGIN LCA_D_3
	SAY @66 /* ~We had something, didn't we? I wasn't just fooling myself.~ [BD54653] */
	
	IF ~~ THEN REPLY @67 /* ~We had everything. And whoever stole it from us will pay a terrible price.~ */
	GOTO LCA_D_4
	
	IF ~~ THEN REPLY @71 /* ~We *have* something. Don't give up on us, Schael. I haven't.~ */
	GOTO LCA_D_4
	
	IF ~~ THEN REPLY @68 /* ~If you fooled yourself, I did the same.~ */
	GOTO LCA_D_5
	
	IF ~~ THEN REPLY @69 /* ~You tell me. What you do for me here and now—or don't do for me—will let us both know how deep and true your feelings are. Open the door, Schael. Let me out.~ */
	GOTO LCA_D_5
END

IF ~~ THEN BEGIN LCA_D_4
	SAY @72 /* ~Defiant until the end. But you must know this is the end. I'd give anything for that not to be the case, but it is. Accept it, as I have. Find some peace while you're still able.~ [BD54657] */
	IF ~~ THEN 
	DO ~
		EscapeArea()
	~ 
	EXIT
END

IF ~~ THEN BEGIN LCA_D_5
	SAY @73 /* ~I—I can't do this. I've got to get out of here, out of this place... Forgive me.~ [BD54658] */
	
	IF ~~ THEN 
	DO ~
		EscapeArea()
	~ 
	EXIT
END

IF ~~ THEN BEGIN LCA_D_6
	SAY @75 /* ~I can't do it. I'm sorry, <CHARNAME>. There's only one way you're leaving here.~ [BD54626]  */
	
	IF ~~ THEN REPLY @12 /* ~I didn't kill Skie. You can't believe I'd ever do something like that.~ */
	GOTO LCA_D_7
	
	IF ~~ THEN REPLY @9 /*  ~We can leave here together - take Rohma and go some place no one will ever find us. Please, Schael, don't give up. There's still a future for us - if you want it.~  */
	GOTO LCA_D_13
	
	IF ~~ THEN REPLY @10 /* ~Aye. Over the bodies of your friends and colleagues. And yours too, if you stand in my way.~ */
	GOTO LCA_A_20
	
	IF ~~ THEN REPLY @84 /*  ~If you've not come to help me, why are you here?~ */
	GOTO LCA_D_14
END

IF ~~ THEN BEGIN LCA_D_7
	SAY @76 /* ~I don't know what to believe anymore.~ [BD54631] */
	
	IF ~~ THEN 
	GOTO LCA_D_8
END

IF ~~ THEN BEGIN LCA_D_8
	SAY @25 /* ~It doesn't matter. I wish it did, but in the end, it doesn't. If it weren't this, it would have been something else. I thought we could be together, that you and Rohma and I had a future...~ [BD54642]  */
	
	IF ~~ THEN
	GOTO LCA_D_9
END

IF ~~ THEN BEGIN LCA_D_9
	SAY @14 /* ~Even after everything that's happened in my life, I'm still just a stupid girl, blinded by - whatever it was I thought we had.~ [BD54643] */
	
	IF ~~ THEN REPLY @15 /* ~It was love, Schael. It was - it IS - real.~ */
	GOTO LCA_D_10
	
	IF ~~ THEN REPLY @16 /* ~Love makes fools of us all.~ */
	GOTO LCA_D_12
	
	IF ~~ THEN REPLY @17 /* ~You know what we had. Deny it if you must. I know the truth.~ */
	GOTO LCA_D_10
END

IF ~~ THEN BEGIN LCA_D_10
	SAY @19 /* ~Love conquers all. I'm not feeling particularly victorious right now. Are you?~ [BD54648] */
	
	IF ~~ THEN REPLY @78 /* ~I don't. But there's still hope for us, I know it.~*/
	GOTO LCA_D_11 //OK
	
	IF ~~ THEN REPLY @80 /* ~Don't turn away from me, Schael. I need you.~ */
	GOTO LCA_D_5 //OK
	
	IF ~~ THEN REPLY @81 /* ~All I feel is the sting of betrayal from one I believed felt for me as I did her.~ */
	GOTO LCA_D_3 //OK
END

IF ~~ THEN BEGIN LCA_D_11
	SAY @79 /* ~Would that I could say the same. But hope is a luxury I can't allow myself. Not anymore.~ [BD54652] */
	IF ~~ THEN 
	DO ~
		EscapeArea()
	~ 
	EXIT
END

IF ~~ THEN BEGIN LCA_D_12
	SAY @82 /* ~You say you loved me. I want to believe it. I do. But I can't.~ [BD54647] */
	
	IF ~~ THEN 
	GOTO LCA_D_5 //OK
END

IF ~~ THEN BEGIN LCA_D_13
	SAY @13 /*~You think I'd turn my back on the Flaming Fist? On my father? I thought you knew me.~ [BD54636]  */
	
	IF ~~ THEN
	GOTO LCA_D_9
END

IF ~~ THEN BEGIN LCA_D_14
	SAY @85 /* I could kill you, <CHARNAME>. If it weren't for Rohma, I'd do it, you know. I would. You need to know how angry I am, to understand the rage I feel.~ [BD54637] */
	
	IF ~~ THEN REPLY @86 /* ~I didn't kill the girl.~ */
	GOTO LCA_D_8
	
	IF ~~ THEN REPLY @87 /* ~I'm not exactly doing a jig here, you know. ~ */
	GOTO LCA_D_15
	
	IF ~~ THEN REPLY @88 /* ~You come to me and speak of rage? Come closer, Corwin. I would touch you one last time, and show you what true rage is.~ */
	DO ~
		SetGlobal("bd_corwin_romanceactive","global",3)
	~
	GOTO LCA_D_4
END

IF ~~ THEN LCA_D_15
	SAY @46 /* ~Your glib tongue betrays you, <CHARNAME>. A girl lies dead, her blood on your hands, and all you offer is another quip. Skie deserves better than that. As do I.~ [BD54641] */
	
	IF ~~ THEN
	GOTO LCA_D_9
END

IF ~~ THEN LCA_D_16
	SAY @26 /* ~I was gravely disappointed before I ever came here.~ [BD54620] */
	
	IF ~~ THEN REPLY @89 /* ~Yet you did come here. Why?~ */
	GOTO LCA_D_14
	
	IF ~~ THEN REPLY @90 /* ~I'm not thrilled myself.~  */
	GOTO LCA_D_15
	
	IF ~~ THEN REPLY @91 /* ~And yet here you are. Why? Not to free me, I know. You'd never defy your beloved Flaming Fist.~ */
	GOTO LCA_D_17
	
	IF ~~ THEN REPLY @92 /* ~And what, you came here seeking solace? I've none to give. I wouldn't offer it to you even if I did. Get out. Your face sickens me. The wretched platitudes you spout make my gut churn. Go!~ */
	DO ~
		SetGlobal("bd_corwin_romanceactive","global",3)
	~
	GOTO LCA_D_4
	
END

IF ~~ THEN LCA_D_17
	SAY @93 /* ~I would have, you know. If you'd asked me, I would have followed you anywhere, happily. It wasn't so long ago.~ [BD54625] */
	
	IF ~~ THEN
	GOTO LCA_D_9
END

IF ~
	True()
~ THEN BEGIN LCA_SewerEscape // from:
	SAY #239613 /* ~Hands in the air. Get away from the opening.~ [BD39613] */
	
	IF ~~ THEN REPLY #239614 /* ~I don't want to fight you, Corwin. I'm INNOCENT. You have to believe me!~ */ 
	EXTERN ~LCBDBENC~ 86
  
	IF ~  
		Global("bd_corwin_romanceactive","global",2)
		Alignment(Player1,MASK_GOOD)
	~ THEN REPLY #239615 /* ~Schael, please, I beg you, don't do this. I love you.~ */ 
	GOTO 40 //OK
	
	IF ~  
		Global("bd_corwin_romanceactive","global",2)
		Alignment(Player1,MASK_NEUTRAL)
	~ THEN REPLY #239616 /* ~You would prevent my escape? I thought we had something, you and I.~ */ 
	GOTO 40 //OK
  
	IF ~  
		Global("bd_corwin_romanceactive","global",2)
		Alignment(Player1,MASK_EVIL)
	~ THEN REPLY #239617 /* ~After all we've been through, this is what it comes to. I should have known you'd betray me in the end.~ */ 
	GOTO 46 //OK
  
	IF ~  
		!Global("bd_corwin_romanceactive","global",2)
	~ THEN REPLY #239618 /* ~Don't try to stop me, Corwin. I need to get out of here if I'm to have any chance of proving my innocence.~ */ 
	EXTERN ~LCBDBENC~ 86
  
	IF ~~ THEN REPLY #239619 /* ~And if I don't, what will you do? Cut me down? Is that any worse than what I can expect from Entar Silvershield?~ */ 
	EXTERN ~LCBDBENC~ 87
END

IF ~~ THEN BEGIN 40 // from: 39.2 39.1
	SAY #239620 /* ~You think I want to do this? You think this isn't killing me? We should be together in my bedchamber or a meadow under a cloudless blue sky—ANYWHERE but here!~ [BD39620] */
	
	IF ~~ THEN 
	GOTO 41 //OK
END

IF ~~ THEN BEGIN 41 // from: 40.0
	SAY #239621 /* ~But here we are. I have a job to do. You know me. You know I can't let you go.~ [BD39621] */
	
	IF ~  
		CheckStatGT(Player1,15,CHR)
	~ THEN REPLY #239623 /* ~I know who murdered Skie. Come with me. Help me find him.~ */ 
	GOTO 42 //OK
	
	IF ~  
		CheckStatLT(Player1,16,CHR)
	~ THEN REPLY #239623 /* ~I know who murdered Skie. Come with me. Help me find him.~ */ 
	GOTO 59
  
	IF ~~ THEN REPLY #239624 /* ~You know what I'm capable of, Corwin. Please, don't try to stop me.~ */ GOTO 49
	
	IF ~~ THEN REPLY #239625 /* ~Rohma's already lost a father. Don't make her lose a mother too.~ */ 
	GOTO 53
END

IF ~~ THEN BEGIN 42 // from: 41.0
	SAY #239626 /* ~You'd have me turn my back on the Fist? On my family?~ [BD39626] */
  
	IF ~~ THEN REPLY #265152 /* ~Would that I could, for your presence is all I that desire in this world. But no. I never knew my mother. I'll not deprive Rohma of hers.~ */ 
	GOTO 60
	
	IF ~  
		CheckStatGT(Player1,16,CHR)
	~ THEN REPLY #265153 /* ~I'd have you come with me. What do you say?~ */ 
	GOTO 45
	
	IF ~  
		CheckStatLT(Player1,17,CHR)
	~ THEN REPLY #265153 /* ~I'd have you come with me. What do you say?~ */ 
	GOTO 58
  
	IF ~~ THEN REPLY #265154 /* ~These things do nothing but drag you down. Think of all you could accomplish at my side.~ */ 
	GOTO 43
END

IF ~~ THEN BEGIN 43 // from: 42.3
	SAY #265155 /* ~You don't know me at all, do you? On your knees, hands behind your head. Let's go.~ [BD65155] */
	
	IF ~~ THEN 
	EXTERN ~LCBDBENC~ 90
END

IF ~~ THEN BEGIN 44 // from: 54.1 49.1 47.2 47.1 46.4
	SAY #239627 /* ~I hoped to talk you out of this madness, but I see words alone won't get this job done. All right then. Let's go.~ [BD39627] */
	
	IF ~~ THEN 
	EXTERN ~LCBDBENC~ 90
END

IF ~~ THEN BEGIN 45 // from: 42.1
	SAY #265159 /* ~This is bigger than us, <CHARNAME>. Bigger than the Flaming Fist, or even my family. You don't know what's happening up above... Skie's murder—at the hand of Sarevok Anchev's sibling, no less—has thrown Baldur's Gate into turmoil.~ [BD65159] */
	IF ~~ THEN 
	GOTO 51
END

IF ~~ THEN BEGIN 46 // from: 51.1 39.3
	SAY #239634 /* ~I know what I saw. You were standing over the body of Skie Silvershield. Duke Entar's daughter. His DAUGHTER.~ [BD39634] */
	
	IF ~~ THEN REPLY #239635 /* ~Ah. I understand now. This is about Rohma.~ */ 
	GOTO 48
  
	IF ~  
		!Alignment(Player1,MASK_EVIL)
	~ THEN REPLY #239636 /* ~Do you truly believe me so mad that I would, that I could even be capable of doing this thing I'm accused of? Do you truly think so little of me?~ */ 
	GOTO 50
	
	IF ~  
		Alignment(Player1,MASK_EVIL)
	~ THEN REPLY #239636 /* ~Do you truly believe me so mad that I would, that I could even be capable of doing this thing I'm accused of? Do you truly think so little of me?~ */ 
	GOTO 49
	
	IF ~~ THEN REPLY #239637 /* ~And how many people have you slain, Corwin? Everyone is someone's child.~ */ GOTO 47
	
	IF ~~ THEN REPLY #239638 /* ~I'm not going to argue with you, Captain. I will, however, kill you, if you don't get out of my way.~ */ 
	GOTO 44
END

IF ~~ THEN BEGIN 47 // from: 46.3
	SAY #239639 /* ~Have I killed before? Yes—but never a defenseless girl. Never in cold blood. Never without cause. Don't give me cause now. Surrender.~ [BD39639] */
	
	IF ~~ THEN REPLY #239645 /* ~I've done things I regret in my life, Schael. Making an orphan of Rohma won't be one of them. I surrender.~ */ 
	GOTO 60
	
	IF ~~ THEN REPLY #239642 /* ~I don't WANT to fight you, but I will, if you make me.~ */ 
	GOTO 44
	
	IF ~~ THEN REPLY #239643 /* ~Never. Not while this body still draws breath.~ */ 
	GOTO 44
END

IF ~~ THEN BEGIN 48 // from: 46.0
	SAY #239644 /* ~Don't bring her into this. You won't like where that ends.~ [BD39644] */
	
	IF ~~ THEN REPLY #239645 /* ~I've done things I regret in my life, Schael. Making an orphan of Rohma won't be one of them. I surrender.~ */ 
	GOTO 60
  
	IF ~  
		!Alignment(Player1,MASK_EVIL)
	~ THEN REPLY #239646 /* ~Listen, just listen to me, please. Do you truly believe me so mad that I would, that I could even be capable of doing this thing I'm accused of? Do you truly think so little of me?~ */ 
	GOTO 54
	
	IF ~  
		Alignment(Player1,MASK_EVIL)
	~ THEN REPLY #239646 /* ~Listen, just listen to me, please. Do you truly believe me so mad that I would, that I could even be capable of doing this thing I'm accused of? Do you truly think so little of me?~ */ 
	GOTO 49
  
	IF ~~ THEN REPLY #239647 /* ~Rohma's already lost one parent, Captain Corwin. Don't let your pride cost her another.~ */ 
	GOTO 53
	
	IF ~
		Global("LCA_ToldTruthBhaal", "GLOBAL", 1)
		!Alignment(Player1,MASK_EVIL)
	~ THEN REPLY @105 /* ~Do you seriously think so little of me? That I'd stoop to killing in cold blood? I admitted to you that I was a child of Bhaal - I could've lied to you about my heritage, but I didn't. Sarevok would lie to you. I won't.~ */ 
	GOTO LCA_SG12_1
END

IF ~~ THEN BEGIN 49 // from: 48.2 46.2 41.2
	SAY #239649 /* ~I know EXACTLY what you're capable of. I've seen it. Now put your hands behind your head and get on your knees or by the gods I swear I will put you down.~ [BD39649] */
	
	IF ~~ THEN REPLY #239650 /* ~If that's the only way to end this... Very well. I didn't kill Skie Silvershield. I'll not have your death on my conscience.~ */ 
	GOTO 60
	
	IF ~~ THEN REPLY #239651 /* ~I don't WANT to fight you, Corwin. But I will, if you make me. If you make me, I will kill you.~ */ 
	GOTO 44
	
	IF ~~ THEN REPLY #239662 /* ~Rohma's already lost a father, Captain Corwin. Would you have her lose a mother too?~ */ 
	GOTO 53
END

IF ~~ THEN BEGIN 50 // from: 46.1
	SAY #265160 /* ~What I believe doesn't matter. All that matters is Baldur's Gate. What's happening can't be allowed to go on.~ [BD65160] */
	
	IF ~~ THEN 
	GOTO 54
END

IF ~~ THEN BEGIN 51 // from: 45.0
	SAY #239658 /* ~The city's tearing itself apart. It has to stop. It HAS to. And it won't until someone pays for what happened at Dragonspear. If you know anything about me, anything at all, you know I can't let you go.~ [BD39658] */
  
	IF ~~ THEN REPLY #239659 /* ~Very well. For the sake of the city that once called me hero, I surrender.~ */ 
	GOTO 60
  
	IF ~  
		!Global("bd_corwin_romanceactive","global",2)
		CheckStatGT(Player1,15,CHR)
	~ THEN REPLY #239660 /* ~This is madness. I tell you I'm INNOCENT. You have to believe me!~ */ 
	GOTO 46
  
	IF ~  
		!Global("bd_corwin_romanceactive","global",2)
		CheckStatLT(Player1,16,CHR)
	~ THEN REPLY #239660 /* ~This is madness. I tell you I'm INNOCENT. You have to believe me!~ */ 
	GOTO 59
	
	IF ~  
		Global("bd_corwin_romanceactive","global",2)
		CheckStatGT(Player1,17,CHR)
	~ THEN REPLY #265161 /* ~Please, Schael. If you ever felt anything for me, you can't—you CAN'T believe I did these things.~ */ 
	GOTO 55
	
	IF ~  
		Global("bd_corwin_romanceactive","global",2)
		CheckStatLT(Player1,18,CHR)
	~ THEN REPLY #265161 /* ~Please, Schael. If you ever felt anything for me, you can't—you CAN'T believe I did these things.~ */ 
	GOTO 59
	
	IF ~~ THEN REPLY #239662 /* ~Rohma's already lost a father, Captain Corwin. Would you have her lose a mother too?~ */ 
	GOTO 53
END

IF ~~ THEN BEGIN 52 // from:
	SAY #239667 /* ~Damn you, <CHARNAME>...! All right, then. Let's go.~ [BD39667] */
	IF ~~ THEN 
	DO ~
		AddJournalEntry(259863,QUEST)
		ActionOverride("bdschae2",Enemy())
		ChangeSpecifics("bdschae2",CRUSADERS)
	~ 
	EXIT
END

IF ~~ THEN BEGIN 53 // from: 54.2 51.5 49.2 48.3 41.3
	SAY #239668 /* ~You threaten my daughter, <CHARNAME>? You just made your last mistake. Take <PRO_HIMHER>!~ [BD39668] */
	
	IF ~~ THEN 
	EXTERN ~LCBDBENC~ 90
END

IF ~~ THEN BEGIN 54 // from: 58.0 50.0 48.1
	SAY #239669 /* ~It has to stop. It HAS to. And that won't happen until you answer for Skie. Now get on your knees, hands behind your head. Do it.~ [BD39669] */
	
	IF ~~ THEN REPLY #239670 /* ~If that's the only way to end this... Very well. I surrender. I didn't kill Skie Silvershield. I'll not kill you.~ */ 
	GOTO 60
	
	IF ~~ THEN REPLY #239671 /* ~I don't WANT to fight you, but I will, if you make me. Don't do this. ~ */ 
	GOTO 44
	
	IF ~~ THEN REPLY #239672 /* ~Think about your family, Captain. Think of Rohma. Walk away from this; leave me to deal with these others. No one ever has to know.~ */ 
	GOTO 53
END

IF ~~ THEN BEGIN 55 // from: 51.3
	SAY #265162 /* ~Damn it, <CHARNAME>. Damn it!~ [BD65162] */
	
	IF ~~ THEN 
	GOTO 56
END

IF ~~ THEN BEGIN 56 // from: 55.0
	SAY #265163 /* ~...Run.~ [BD65163] */
	
	IF ~~ THEN 
	EXTERN ~LCBDBENC~ 88
END

IF ~~ THEN BEGIN 57 // from:
	SAY #265165 /* ~Get out of here, <CHARNAME>! The cavern beyond the falls will get you out of the city—I'll hold them off!~ [BD65165] */
	
	IF ~~ THEN 
	EXTERN ~LCBDBENC~ 89
END

IF ~~ THEN BEGIN 58 // from: 42.2
	SAY #262567 /* ~I believe you. I wish that mattered. But all that matters is Baldur's Gate. You have no idea of the chaos Skie's murder unleashed. The people loved you, and now they learn their hero is a child of Bhaal like Sarevok? The city is tearing itself apart because of you.~ [BD62567] */
	IF ~~ THEN 
	GOTO 54
END

IF ~~ THEN BEGIN 59 // from: 51.4 51.2 41.1
	SAY #239673 /* ~What I believe doesn't matter anymore. You tried to escape. And now we have to do what we must. Let's go.~ [BD39673] */
  
	IF ~~ THEN 
	EXTERN ~LCBDBENC~ 90
END

IF ~~ THEN BEGIN 60 // from: 54.0 51.0 49.0 48.0 47.0 42.0
	SAY #239674 /* ~Thank the gods... On your knees, hands behind your head.~ [BD39674] */
  
	IF ~  
		Gender(Player1,FEMALE)
	~ THEN 
	EXTERN ~LCBDBENC~ 91
  
	IF ~  
		Gender(Player1,MALE)
	~ THEN 
	EXTERN ~LCBDBENC~ 92
END

IF ~~ THEN BEGIN LCA_SG12_1
	SAY @106 /* ~It has to stop. It HAS to. And that won't happen until you answer for Skie. Now get on your knees, hands behind your head. Do it.~ [BD39669] */
	
	IF ~~ THEN REPLY @107 /* ~No! The Hooded Man is the killer — he came to gloat shortly after you visited me in my cell.~*/
	EXTERN LCBDBENC LCA_SG12_2
	
	IF ~~ THEN REPLY #239650 /* ~If that's the only way to end this... Very well. I didn't kill Skie Silvershield. I'll not have your death on my conscience.~ */ 
	GOTO 60
	
	IF ~~ THEN REPLY #239672 /* ~Think about your family, Captain. Think of Rohma. Walk away from this; leave me to deal with these others. No one ever has to know.~ */ 
	GOTO 53
END

IF ~~ THEN BEGIN LCA_SG12_3
	SAY @108 /* ~Enough! Hands behind your head and get down on your knees. This is your final warning.~ */
	
	IF ~~ THEN REPLY @118 /* ~Corwin, if you shoot me, you'll become a murderer yourself!~ */
	GOTO LCA_SG12_4
	
	IF ~~ THEN REPLY #239670 /* ~If that's the only way to end this... Very well. I surrender. I didn't kill Skie Silvershield. I'll not kill you.~ */ 
	GOTO 60
	
	IF ~~ THEN REPLY #239671 /* ~I don't WANT to fight you, but I will, if you make me. Don't do this. ~ */ 
	GOTO 44
END

IF ~~ THEN BEGIN LCA_SG12_4
	SAY @109 /* ~(For a brief moment, her expression changes to one of shock. She tries to hide it, but you know her well enough to see that she's unnerved.)~ */
	
	IF ~~ THEN REPLY @114 /* Schael, you need to trust me. If I can recover the dagger, Skie can be restored — but I can't do that if I'm dead!~ */
	GOTO LCA_SG12_5
	
	IF ~~ THEN REPLY @111 /* ~Stop me if you must, but I don't want Skie's murderer to get away with this.~  */
	GOTO LCA_SG12_5
	
	IF ~
		Global("bd_corwin_romanceactive","global",2)
	~ 
	THEN REPLY @120 /* ~My love, I'll prove my innocence to you, and to the city — I swear it. I just need you to give me a chance.~ */
	GOTO LCA_SG12_5
END

IF ~~ THEN BEGIN LCA_SG12_5
	SAY @110 /* ~I...~*/
	= @112 /* (Her hands begin to tremble, and you think you see tears welling in her eyes.)~ */
	
	IF ~~ THEN REPLY @113 /* ~Or, are you fine with living the rest of your life knowing that you killed an innocent <PRO_MANWOMAN>? If you are, you're no better than a Bhaalspawn!~ */
	GOTO LCA_SG12_6
	
	IF ~
		Global("bd_corwin_romanceactive","global",2)
	~ THEN REPLY @121 /* ~Please, Schael!~*/
	GOTO LCA_SG12_6
END

IF ~~ THEN BEGIN LCA_SG12_6
	SAY @115 /* ~(She lowers her bow, and looks down at the ground. You hear what sounds like ... sobbing?)~ */
	
	IF ~~ THEN 
	EXTERN LCBDBENC LCA_SG12_7
END

IF ~~ THEN BEGIN LCA_SG12_8
	SAY @116 /*  ~No... I... I don't know what to do...~ */
	
	IF ~~ THEN 
	EXTERN LCBDBENC LCA_SG12_9
END

IF ~~ THEN BEGIN LCA_SG12_10
	SAY @117 /*  ~No — damnit, Duncan! <CHARNAME>, run!~ */
	
	IF ~
		Global("bd_corwin_romanceactive","global",2)
	~ THEN 
	DO ~
		SetGlobal("LCA_CorwinContinue", "GLOBAL", 2) // continue romance
		ChangeSpecifics("bdschae2",NEUTRALS)
	~
	EXIT
	
	IF ~
		!Global("bd_corwin_romanceactive","global",2)
	~ THEN 
	DO ~
		SetGlobal("LCA_CorwinContinue", "GLOBAL", 1) // continue friendship
		ChangeSpecifics("bdschae2",NEUTRALS)
	~
	EXIT
END

IF ~~ THEN BEGIN 61 // from:
	SAY #239676 /* ~Damn it, Duncan! Run, <CHARNAME>! The cavern beyond the opening will get you out of the city! Go!~ */
	IF ~~ THEN 
	DO ~
		AddJournalEntry(@122,QUEST)
		SetGlobal("bd_MDD1725_corwin","global",1)
		ChangeSpecifics("bdschae2",ALLIES)
		ChangeEnemyAlly("bdschae2",GOODBUTBLUE)
	~ 
	EXIT
END

IF ~  
	AreaCheck("bd6000")
	Global("bd_plot","global",650)
~ THEN BEGIN 62 // from:
	SAY #265168 /* ~Run, <CHARNAME>! The cavern beyond the falls will get you out of the city. Jump!~ [BD65168] */
	
	IF ~~ THEN EXIT
END