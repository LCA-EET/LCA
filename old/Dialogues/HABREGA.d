// creator  : weidu (version 24900)
// argument : HABREGA.DLG
// game     : .
// source   : ./override/HABREGA.DLG
// dialog   : .\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~HABREGA~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Is there somethin' that ye need, citizen?~ [BREGAX02] #30605 */
	IF ~~ THEN REPLY @2 /* ~Who are you?~ #30606 */ GOTO 1
	IF ~  
		PartyHasItem("misc5m")
		Global("ToldInspector","GLOBAL",1)
		!Global("MurdersSolved","GLOBAL",1)
	~ 
	THEN REPLY @3 /* ~I solved the Bridge District murders. Tanner Rejiek did it and killed the inspector too. Here is the body.~ #37775 */ 
	DO ~
		TakePartyItem("misc5m")
	~ 
	GOTO 10
	
	IF ~  
		!PartyHasItem("misc5m")
		Global("ToldInspector","GLOBAL",1)
		!Global("MurdersSolved","GLOBAL",1)
	~ 
	THEN REPLY @4 /* ~I solved the Bridge District murders. Tanner Rejiek did it and killed the inspector too.~ #37776 */ 
	GOTO 11
	
	IF ~  
		PartyHasItem("misc9h")
		!Alignment(LastTalkedToBy,MASK_EVIL)
	~ 
	THEN REPLY @5 /* ~I have the head of the child-killer Neb. He is dead and will bother no one any longer.~ #49926 */ 
	GOTO 23
  
	IF ~  
		PartyHasItem("misc9h")
		Alignment(LastTalkedToBy,MASK_EVIL)
	~ 
	THEN REPLY @6 /* ~I have the head of the child-killing gnome Neb. I expect a bounty for the service of killing him.~ #49931 */ 
	GOTO 23
  
	IF ~  
		GlobalLT("chapter","GLOBAL",16)
	~ 
	THEN REPLY @7 /* ~My friend Imoen was taken by the Cowled Wizards. Do you know where she is or where I could get help?~ #46126 */ 
	GOTO 14
  
	IF ~  
		GlobalLT("chapter","GLOBAL",16)
	~ 
	THEN REPLY @8 /* ~Perhaps you could tell me about the war between the thieves' guilds I've heard so much about.~ #46127 */ 
	GOTO 19
	
	IF ~  
		PartyHasItem("LCSTDAG")
		!Global("MurdersSolved","GLOBAL",1)
		!Alignment(LastTalkedToBy,MASK_EVIL)
	~ 
	THEN REPLY @66 /* ~I need to send this dagger to Baldur's Gate. I believe it is the weapon used to murder the daughter of one of the Grand Dukes.~ */
	GOTO 27 
	
	IF ~  
		PartyHasItem("LCSTDAG")
		Global("MurdersSolved","GLOBAL",1)
		Global("HelpBrega", "GLOBAL", 1)
		!PartyHasItem("LCORW1")
		!PartyHasItem("LCORW2")
		!PartyHasItem("LDUNC")
	~ 
	THEN REPLY @73 /* ~About the dagger - you said you'd send it to Baldur's Gate if I helped solve your case.~ */ 
	GOTO 30 
	
	IF ~  
		PartyHasItem("LCSTDAG")
		Global("MurdersSolved","GLOBAL",1)
		!PartyHasItem("LCORW1")
		!PartyHasItem("LCORW2")
		!PartyHasItem("LDUNC")
	~ 
	THEN REPLY @66 /* ~I need to send this dagger to Baldur's Gate. I believe it is the weapon used to murder the daughter of one of the Grand Dukes.~ */
	GOTO 30 
	
	IF ~  
		PartyHasItem("LCSTDAG")
		Global("MurdersSolved","GLOBAL",1)
		PartyHasItem("LCORW1")
	~ 
	THEN REPLY @73 /* ~About the dagger - you said you'd send it to Baldur's Gate if I helped solve your case.~ */ 
	GOTO 36 
	
	IF ~  
		PartyHasItem("LCSTDAG")
		Global("MurdersSolved","GLOBAL",1)
		PartyHasItem("LCORW2")
	~ 
	THEN REPLY @73 /* ~About the dagger - you said you'd send it to Baldur's Gate if I helped solve your case.~ */ 
	GOTO 36 
	
	IF ~  
		PartyHasItem("LCSTDAG")
		Global("MurdersSolved","GLOBAL",1)
		PartyHasItem("LDUNC")
	~ 
	THEN REPLY @73 /* ~About the dagger - you said you'd send it to Baldur's Gate if I helped solve your case.~ */ 
	GOTO 37 
  
  IF ~~ THEN REPLY @9 /* ~No, I'll be going.~ #30609 */ GOTO 2
  
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @10 /* ~Chief Inspector Brega, at yer service. I work under the magistrate, investigatin' the crimes in the city, and there are plenty that require my attention, believe you me.~ [BREGAX07] #30610 */
  IF ~  Global("knowsmurders","GLOBAL",1)
Global("MurdersSolved","GLOBAL",0)
~ THEN REPLY @11 /* ~What can you tell me of the murders in the Bridge District?~ #30611 */ GOTO 3
  IF ~~ THEN REPLY @12 /* ~I am told that magic is illegal in Athkatla... is this true?~ #30612 */ GOTO 4
  IF ~  PartyHasItem("misc5m")
Global("ToldInspector","GLOBAL",1)
!Global("MurdersSolved","GLOBAL",1)
~ THEN REPLY @3 /* ~I solved the Bridge District murders. Tanner Rejiek did it and killed the inspector too. Here is the body.~ #37781 */ DO ~TakePartyItem("misc5m")
~ GOTO 10
  IF ~  !PartyHasItem("misc5m")
Global("ToldInspector","GLOBAL",1)
!Global("MurdersSolved","GLOBAL",1)
~ THEN REPLY @4 /* ~I solved the Bridge District murders. Tanner Rejiek did it and killed the inspector too.~ #37782 */ GOTO 11
  IF ~  PartyHasItem("misc9h")
!Alignment(LastTalkedToBy,MASK_EVIL)
~ THEN REPLY @13 /* ~I have the head of the child-killer Neb. He will no longer harm anyone.~ #49942 */ GOTO 23
  IF ~  PartyHasItem("misc9h")
Alignment(LastTalkedToBy,MASK_EVIL)
~ THEN REPLY @14 /* ~I have the head of the child-killing gnome Neb. I expect a bounty for killing him.~ #49943 */ GOTO 23
  IF ~  GlobalLT("chapter","GLOBAL",16)
~ THEN REPLY @7 /* ~My friend Imoen was taken by the Cowled Wizards. Do you know where she is or where I could get help?~ #46115 */ GOTO 14
  IF ~  GlobalLT("chapter","GLOBAL",16)
~ THEN REPLY @8 /* ~Perhaps you could tell me about the war between the thieves' guilds I've heard so much about.~ #46116 */ GOTO 19
  IF ~~ THEN REPLY @15 /* ~I'll be going now.~ #30614 */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 8.3 7.3 6.2 5.2 4.3 3.1 1.8 0.7
  SAY @16 /* ~On your way, then.~ #30634 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0
  SAY @17 /* ~Very little. Lieutenant Aegisfield is in the Bridge District as the main investigator. All I can say is to watch yourself at night if you must be out.~ #30635 */
  IF ~~ THEN REPLY @12 /* ~I am told that magic is illegal in Athkatla... is this true?~ #30637 */ GOTO 4
  IF ~~ THEN REPLY @18 /* ~I'll be on my way, then.~ #30640 */ GOTO 2
END

IF ~~ THEN BEGIN 4 // from: 3.0 1.1
  SAY @19 /* ~The use of magic is illegal unless sanctioned by the council, like the Cowled Wizards are. It leads to chaos; just look at the damage in the promenade.~ #30641 */
  IF ~~ THEN REPLY @20 /* ~What happens to people who are arrested by the Cowled Wizards?~ #30642 */ GOTO 5
  IF ~~ THEN REPLY @21 /* ~Where can I find these Cowled Wizards?~ #30643 */ GOTO 6
  IF ~~ THEN REPLY @22 /* ~Do you know anything about that incident in the promenade?~ #30644 */ GOTO 7
  IF ~~ THEN REPLY @23 /* ~I see. Well, I'll be going.~ #30645 */ GOTO 2
END

IF ~~ THEN BEGIN 5 // from: 8.1 7.0 6.0 4.0
  SAY @24 /* ~The handling of magic-users is not my province. Only the Cowled Wizards know for sure... what matters to the council is that they deal with it.~ #30663 */
  IF ~~ THEN REPLY @25 /* ~Where can I find the Cowled Wizards, then?~ #30664 */ GOTO 6
  IF ~~ THEN REPLY @26 /* ~Do you know anything about that incident in the promenade you mentioned?~ #30665 */ GOTO 7
  IF ~~ THEN REPLY @27 /* ~Very well, I'll be going.~ #30666 */ GOTO 2
END

IF ~~ THEN BEGIN 6 // from: 8.2 7.1 5.0 4.1
  SAY @28 /* ~You don't. Nor would I suggest attempting to do so. The Cowled Wizards are dangerous. I would pray that they do not discover your interest.~ #30667 */
  IF ~~ THEN REPLY @29 /* ~What do the Cowled Wizards do with those they arrest?~ #30668 */ GOTO 5
  IF ~~ THEN REPLY @26 /* ~Do you know anything about that incident in the promenade you mentioned?~ #30669 */ GOTO 7
  IF ~~ THEN REPLY @30 /* ~I see. Well, I'll be going, then.~ #30670 */ GOTO 2
END

IF ~~ THEN BEGIN 7 // from: 6.1 5.1 4.2
  SAY @31 /* ~The Cowled Wizards arrested two magic users. Shadow Thieves were also involved, apparently attacking one of the wizards. Beyond that... no, I know very little.~ #30671 */
  IF ~~ THEN REPLY @29 /* ~What do the Cowled Wizards do with those they arrest?~ #30672 */ GOTO 5
  IF ~~ THEN REPLY @32 /* ~How do I find the Cowled Wizards?~ #30673 */ GOTO 6
  IF ~~ THEN REPLY @33 /* ~Why would the Shadow Thieves be interested in attacking a wizard?~ #30674 */ GOTO 8
  IF ~~ THEN REPLY @30 /* ~I see. Well, I'll be going, then.~ #30675 */ GOTO 2
END

IF ~~ THEN BEGIN 8 // from: 7.2
  SAY @34 /* ~Hmph. I don't know. Why don't you ask them?~ #30685 */
  IF ~~ THEN REPLY @35 /* ~Aren't you interested? Isn't that your job?~ #30686 */ GOTO 9
  IF ~~ THEN REPLY @29 /* ~What do the Cowled Wizards do with those they arrest?~ #30687 */ GOTO 5
  IF ~~ THEN REPLY @32 /* ~How do I find the Cowled Wizards?~ #30688 */ GOTO 6
  IF ~~ THEN REPLY @30 /* ~I see. Well, I'll be going, then.~ #30689 */ GOTO 2
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @36 /* ~*sigh* I'll tell you what my job isn't... it isn't being forced to listen to idiots like yourself. Good day.~ #30691 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10 // from: 1.2 0.1
  SAY @37 /* ~This... this is Aegisfield, all right. *sigh* It is too bad... he was a fine and just man. Here... give his body to me.~ #37777 */
  IF ~~ THEN DO ~EraseJournalEntry(@39)
EraseJournalEntry(@40)
EraseJournalEntry(@41)
EraseJournalEntry(@42)
EraseJournalEntry(@43)
EraseJournalEntry(@44)
EraseJournalEntry(@45)
EraseJournalEntry(@46)
EraseJournalEntry(@47)
EraseJournalEntry(@48)
EraseJournalEntry(@49)
DestroyItem("misc5m")
~ SOLVED_JOURNAL @38 /* ~Solve the "skinner" murders in the Bridge District

While I was not able to catch Rejiek Hidesman, I have at least stopped his reign of terror in Athkatla and sent him fleeing. The matter of Lieutenant Aegisfield, the guard whom I inadvertently sent to his death, has also been dealt with. I wonder if this ends now or if I will meet this disgusting murderer once again.~ #47578 */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0 1.3 0.2
  SAY @50 /* ~Your story seems odd... but I can tell if someone's lying. I will check your story... but for now you have the city's thanks for the service you have done us.~ #37778 */
  IF ~  !Dead("tanner")
~ THEN DO ~EraseJournalEntry(@39)
EraseJournalEntry(@40)
EraseJournalEntry(@41)
EraseJournalEntry(@42)
EraseJournalEntry(@43)
EraseJournalEntry(@44)
EraseJournalEntry(@45)
EraseJournalEntry(@46)
EraseJournalEntry(@47)
EraseJournalEntry(@48)
EraseJournalEntry(@49)
DestroyItem("misc5m")
~ SOLVED_JOURNAL @38 /* ~Solve the "skinner" murders in the Bridge District

While I was not able to catch Rejiek Hidesman, I have at least stopped his reign of terror in Athkatla and sent him fleeing. The matter of Lieutenant Aegisfield, the guard whom I inadvertently sent to his death, has also been dealt with. I wonder if this ends now or if I will meet this disgusting murderer once again.~ #47578 */ 
GOTO 12
  IF ~  Dead("tanner")
~ THEN DO ~EraseJournalEntry(@39)
EraseJournalEntry(@40)
EraseJournalEntry(@41)
EraseJournalEntry(@42)
EraseJournalEntry(@43)
EraseJournalEntry(@44)
EraseJournalEntry(@45)
EraseJournalEntry(@46)
EraseJournalEntry(@47)
EraseJournalEntry(@48)
EraseJournalEntry(@49)
DestroyItem("misc5m")
~ GOTO 13
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY @51 /* ~We'll hunt down the murderer, have no fear. He'll not escape justice. I thank you, citizens, for your help. I trust this reward will be ample compensation.~ #37779 */
  IF ~~ THEN DO ~AddexperienceParty(45000)
ActionOverride("Faraji",DestroySelf())
SetGlobal("MurdersSolved","GLOBAL",1)
GiveGoldForce(500)
ReputationInc(1)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.1
  SAY @52 /* ~It is good the tanner is dead... though I would have liked to speak to him first. No matter. I trust this reward will compensate you... thank you again, citizens.~ #37780 */
  IF ~~ THEN DO ~AddexperienceParty(45000)
ActionOverride("Faraji",DestroySelf())
SetGlobal("MurdersSolved","GLOBAL",1)
GiveGoldForce(500)
ReputationInc(1)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 1.6 0.5
  SAY @53 /* ~If you ask me, those damnable wizards have far too much leeway to come and go as they please. The council gave an inch, and they took the proverbial mile.~ #46117 */
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY @54 /* ~And that also means, regrettably, that we can do nothing if we oppose their actions. And still the council deludes itself thinking the Cowled Wizards obey them.~ #46118 */
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY @55 /* ~Bah! You know better, I am sure. Allowing those wizards to take a man indefinitely or worse for casting a magic missile is hardly justice in my eyes!~ #46119 */
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY @56 /* ~But I can't help you or your friend. Nobody knows where the wizards keep their prison, either. All I can say is speak to the magistrate, Bylanna Ianulin.~ #46120 */
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY @57 /* ~She is in this room, but I doubt she can help much either, despite what she might suggest. I... am sorry. I hope this Imoen is well and the wizards take pity.~ #46121 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 19 // from: 1.7 0.6
  SAY @58 /* ~There is little we can do. The Shadow Thieves are entrenched, and this new guild has more power than expected. Both, however, are adept at avoiding authority.~ #46122 */
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY @59 /* ~The best we can hope is to prevent the city going up in flames in the meantime... and that whichever of them remains will be weak enough to push out.~ #46123 */
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY @60 /* ~If you are thinking of dealing with either, don't. A number of bodies have turned up... recruits by either side. I am sure you don't want end like that.~ #46124 */
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY @61 /* ~So take heed and stay off the streets at night. I am sure this will all be over soon enough.~ #46125 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 23 // from: 1.5 1.4 0.4 0.3
  SAY @62 /* ~Let's see what you have there. Yes... despite the, ah, condition of the head, it is obviously the criminal we've been seeking.~ #49932 */
  IF ~~ THEN 
	DO ~
		TakePartyItem("misc9h")
	~ 
	GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY @63 /* ~You have no idea what a despicable creature this Neb was. Or perhaps you do. Regardless, we're thankful for your help. I hope this reward is sufficient.~ #49933 */
  IF ~~ THEN DO ~GiveGoldForce(2500)
ReputationInc(1)
~ GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY @64 /* ~I understand the Flaming Fist was looking for him as well. I'll send them a note explaining your deed so they can stop looking now.~ #49939 */
  IF ~~ THEN DO ~DestroyItem("misc9h")
~ GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY @65 /* ~Thank you again, citizen. You've done well.~ #49940 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 27 
  SAY @67 /* ~A murder weapon, you say? Let me see that. Hm. Tell you what, since you are interested in investigating murders, why don't you see what you can do about a spate of murders we've had in our city? If you are able to help solve my case, I'll be happy to have one of my couriers deliver the dagger to Baldur's Gate.~ */
  IF ~~ THEN REPLY @68 /* ~That seems fair - I will see what I can do. Tell me what you know about these murders.~ */ 
  DO ~
	SetGlobal("HelpBrega", "GLOBAL", 1)
  ~
  GOTO 38
  
  IF ~~ THEN REPLY @69 /* ~Another time, perhaps. I have more pressing matters to attend to.~ */ 
  GOTO 28
  
  IF ~~ THEN REPLY @70 /* ~Are the authorities in this gilded hellhole so incompetent as to rely on passerby to solve crimes? I don't have the time for this.~ */ 
  GOTO 29
END

IF ~~ THEN BEGIN 28 // from: 25.0
  SAY @71 /* ~Suit yourself. You know where to find me should you change your mind.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 29 // from: 25.0
  SAY @72 /* ~There is no need to be rude, traveler. Best be on your way then.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 30
	SAY @74 /* ~Yes, of course. Do you have a letter you'd like to include as well?~ */
	IF ~
		Global("EECorwinContinue", "Global", 2) // continues romance
	~
	THEN GOTO 30a
	
	IF ~
		Global("EECorwinContinue", "Global", 1) // friendship
	~
	THEN GOTO 30b
	
	GOTO 30c
END

IF ~~ THEN BEGIN 30a
	IF ~~ THEN REPLY @75 /* ~Yes, give me a moment. (Write a romantic letter to Captain Schael Corwin of the Flaming Fist).~ */ 
	GOTO 31
	
	IF ~~ THEN REPLY @78 /* ~No, I need some time to think about what I will write. I'll talk to you again when I am ready.~ */ 
	GOTO 35
END

IF ~~ THEN BEGIN 30b
	IF ~~ THEN REPLY @76 /* ~Yes, give me a moment. (Write a letter to Captain Schael Corwin of the Flaming Fist).~ */ 
	GOTO 32
	
	IF ~~ THEN REPLY @78 /* ~No, I need some time to think about what I will write. I'll talk to you again when I am ready.~ */ 
	GOTO 35
END

IF ~~ THEN BEGIN 30c
	IF ~~ THEN REPLY @77 /* ~Yes, give me a moment. (Write a letter to Corporal Bence Duncan of the Flaming Fist).~ */ 
	GOTO 33
	
	IF ~~ THEN REPLY @78 /* ~No, I need some time to think about what I will write. I'll talk to you again when I am ready.~ */ 
	GOTO 35
END

IF ~~ THEN BEGIN 31 
	DO ~
		GiveItemCreate("LCORW1",LastTalkedToBy(Myself),1,0,0)
	~
	GOTO 36a
END

IF ~~ THEN BEGIN 32 
	DO ~ 
		GiveItemCreate("LCORW2",LastTalkedToBy(Myself),1,0,0) 
	~
	GOTO 36b
END

IF ~~ THEN BEGIN 33 
	DO ~ 
		GiveItemCreate("LDUNC",LastTalkedToBy(Myself),1,0,0)
	~
	GOTO 37
END

IF ~~ THEN BEGIN 34 
	DO ~
		TakePartyItem("LCSTDAG")
		TakePartyItem("LCORW1")
		TakePartyItem("LCORW2")
		TakePartyItem("LDUNC")
		DestroyItem("LCSTDAG")
		DestroyItem("LCORW1")
		DestroyItem("LCORW2")
		DestroyItem("LDUNC")
		SetGlobalTimer("STtoBG","GLOBAL",FOUR_DAYS)
		AddexperienceParty(35000)
		EraseJournalEntry(@91)
	~
	SAY @87  /* ~(Brega takes the dagger and the letter) I'll have my courier pick these up first thing in the morning. It will take a few days for it to reach Baldur's Gate. Thank you again for your service, citizen.~ */
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 35 // from: 25.0
	SAY @86  /* ~~Take your time. You know where to find me.~.~ */
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 36a
	SAY @79  /* ~Of course. You are sure that you want to send the letter and dagger to Schael Corwin, Captain of the Flaming Fist, correct?~ */
	IF ~~ THEN REPLY @81 /* ~Yes, that is correct.~ */
	SOLVED_JOURNAL @89
	GOTO 34
	
	IF ~~ THEN REPLY @82 /* ~No, I need some more time to think about it.~ */ 
	GOTO 35
	
	IF ~~ THEN EXIT
END 

IF ~~ THEN BEGIN 36b
	SAY @79  /* ~Of course. You are sure that you want to send the letter and dagger to Schael Corwin, Captain of the Flaming Fist, correct?~ */
	IF ~~ THEN REPLY @81 /* ~Yes, that is correct.~ */
	SOLVED_JOURNAL @90
	GOTO 34
	
	IF ~~ THEN REPLY @82 /* ~No, I need some more time to think about it.~ */ 
	GOTO 35
	
	IF ~~ THEN EXIT
END 

IF ~~ THEN BEGIN 37
	SAY @80  /* ~Of course. You are sure that you want to send the letter and dagger to Corporal Bence Duncan of the Flaming Fist, correct?~ */
	IF ~~ THEN REPLY @81 /* ~Yes, that is correct.~ */
	SOLVED_JOURNAL @88
	GOTO 34
	
	IF ~~ THEN REPLY @82 /* ~No, I need some more time to think about it.~ */ 
	GOTO 35
	
	IF ~~ THEN EXIT
END 

IF ~~ THEN BEGIN 38
	UNSOLVED_JOURNAL @91
	GOTO 3
END 