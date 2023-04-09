// creator  : weidu (version 24900)
// argument : BDSCHAE2.DLG
// game     : .
// source   : ./override/BDSCHAE2.DLG
// dialog   : .\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~BDSCHAE2~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 63 even though they appear after this state */
~  AreaCheck("bd0104")
Global("bd_jail_visitors","bd0104",2)
Global("bd_corwin_romanceactive","global",2)
~ THEN BEGIN 0 // from:
  SAY #254610 /* ~<CHARNAME>. How are you?~ [BD54610] */
  IF ~~ THEN REPLY #254611 /* ~I've had better days.~ */ DO ~SetGlobal("bd_jail_visitors","bd0104",6)
SetGlobal("bd_visit_player","locals",1)
~ GOTO 1
  IF ~~ THEN REPLY #254612 /* ~Corwin. Thank the gods. You've got to get me out of here.~ */ DO ~SetGlobal("bd_jail_visitors","bd0104",6)
SetGlobal("bd_visit_player","locals",1)
~ GOTO 6
  IF ~~ THEN REPLY #254613 /* ~You shouldn't be here, Corwin. Go, now.~ */ DO ~SetGlobal("bd_jail_visitors","bd0104",6)
SetGlobal("bd_visit_player","locals",1)
~ GOTO 22
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #254614 /* ~You could have worse. Eltan and Belt moved mountains to keep you alive and out of Entar's hands.~ [BD54614] */
  IF ~  Global("bd_player_exiled","global",0)
~ THEN REPLY #254615 /* ~I need your help, Schael. Let me out of this cell. Let me find Skie Silvershield's killer, let me prove my innocence. Please.~ */ GOTO 6
  IF ~  Global("bd_player_exiled","global",1)
~ THEN REPLY #254615 /* ~I need your help, Schael. Let me out of this cell. Let me find Skie Silvershield's killer, let me prove my innocence. Please.~ */ GOTO 16
  IF ~  Global("bd_player_exiled","global",0)
~ THEN REPLY #254617 /* ~If you expect me to thank the Grand Dukes for their hospitality, you're going to be gravely disappointed.~ */ GOTO 4
  IF ~  Global("bd_player_exiled","global",1)
~ THEN REPLY #254617 /* ~If you expect me to thank the Grand Dukes for their hospitality, you're going to be gravely disappointed.~ */ GOTO 3
  IF ~~ THEN REPLY #254618 /* ~Let Entar come. I'll send him to join his wretched daughter.~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.4
  SAY #254619 /* ~Gods help me. How could I have missed this? How did I never see you for the monster you are?~ [BD54619] */
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 3 // from: 1.3
  SAY #254620 /* ~I was gravely disappointed before I ever came here.~ [BD54620] */
  IF ~~ THEN REPLY #270317 /* ~I'm truly sorry you've had to endure this, Schael.~ */ GOTO 13
  IF ~~ THEN REPLY #270318 /* ~Imagine how I feel.~ */ GOTO 12
  IF ~~ THEN REPLY #270319 /* ~And so you came here seeking solace. I've none to give, and wouldn't offer it to you even if I did. Get out. You sicken me. Go!~ */ GOTO 21
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY #254620 /* ~I was gravely disappointed before I ever came here.~ [BD54620] */
  IF ~~ THEN REPLY #254621 /* ~Yet you did come here. Why?~ */ GOTO 11
  IF ~~ THEN REPLY #254622 /* ~I'm not thrilled myself.~ */ GOTO 12
  IF ~~ THEN REPLY #254623 /* ~And yet here you are. Why? Not to free me, I know. You'd never defy your beloved Flaming Fist.~ */ GOTO 5
  IF ~~ THEN REPLY #254624 /* ~And what, you came here seeking solace? I've none to give. I wouldn't offer it to you even if I did. Get out. Your face sickens me. The wretched platitudes you spout make my gut churn. Go!~ */ GOTO 23
END

IF ~~ THEN BEGIN 5 // from: 4.2
  SAY #254625 /* ~I would have, you know. If you'd asked me, I would have followed you anywhere, happily. It wasn't so long ago.~ [BD54625] */
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 6 // from: 1.0 0.1
  SAY #254626 /* ~I can't do it. I'm sorry, <CHARNAME>. There's only one way you're leaving here.~ [BD54626] */
  IF ~  Global("bd_player_exiled","global",0)
~ THEN REPLY #254627 /* ~I didn't kill Skie. You can't believe I'd ever do something like that.~ */ GOTO 7
  IF ~  Global("bd_player_exiled","global",1)
~ THEN REPLY #254627 /* ~I didn't kill Skie. You can't believe I'd ever do something like that.~ */ GOTO 16
  IF ~~ THEN REPLY #254628 /* ~We can leave here together—take Rohma and go some place no one will ever find us. Please, Schael, don't give up. There's still a future for us—if you want it.~ */ GOTO 10
  IF ~~ THEN REPLY #254629 /* ~Aye. Over the bodies of your friends and colleagues. And yours too, if you stand in my way.~ */ GOTO 23
  IF ~  Global("bd_player_exiled","global",0)
~ THEN REPLY #254630 /* ~If you've not come to help me, why are you here?~ */ GOTO 11
  IF ~  Global("bd_player_exiled","global",1)
~ THEN REPLY #254630 /* ~If you've not come to help me, why are you here?~ */ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #254631 /* ~I don't know what to believe anymore.~ [BD54631] */
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 8 // from: 6.5
  SAY #270320 /* ~I needed to see you one last time. Needed to tell you how I feel...~ */
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #270321 /* ~It doesn't matter. I wish it did, but in the end, it doesn't.~ [BD70321] */
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 10 // from: 6.2
  SAY #254636 /* ~You think I'd turn my back on the Flaming Fist? On my father? I thought you knew me.~ [BD54636] */
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 11 // from: 6.4 4.0
  SAY #254637 /* ~I could kill you, <CHARNAME>. If it weren't for Rohma, I'd do it, you know. I would. You need to know how angry I am, to understand the rage I feel.~ [BD54637] */
  IF ~~ THEN REPLY #254638 /* ~I didn't kill the girl.~ */ GOTO 13
  IF ~~ THEN REPLY #254639 /* ~I'm not exactly doing a jig here, you know. ~ */ GOTO 12
  IF ~~ THEN REPLY #254640 /* ~You come to me and speak of rage? Come closer, Corwin. I would touch you one last time, and show you what true rage is.~ */ GOTO 23
END

IF ~~ THEN BEGIN 12 // from: 11.1 4.1 3.1
  SAY #254641 /* ~Your glib tongue betrays you, <CHARNAME>. A girl lies dead, her blood on your hands, and all you offer is another quip. Skie deserves better than that. As do I.~ [BD54641] */
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 13 // from: 11.0 7.0 3.0
  SAY #254642 /* ~It doesn't matter. I wish it did, but in the end, it doesn't. If it weren't this, it would have been something else. I thought we could be together, that you and Rohma and I had a future...~ [BD54642] */
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0 12.0 10.0 9.0 5.0 2.0
  SAY #254643 /* ~Even after everything that's happened in my life, I'm still just a stupid girl, blinded by—whatever it was I thought we had.~ [BD54643] */
  IF ~  Global("bd_player_exiled","global",0)
~ THEN REPLY #254644 /* ~It was love, Schael. It was real.~ */ GOTO 19
  IF ~  Global("bd_player_exiled","global",1)
~ THEN REPLY #254644 /* ~It was love, Schael. It was real.~ */ GOTO 16
  IF ~  Global("bd_player_exiled","global",0)
~ THEN REPLY #254645 /* ~Love makes fools of us all.~ */ GOTO 15
  IF ~  Global("bd_player_exiled","global",1)
~ THEN REPLY #254645 /* ~Love makes fools of us all.~ */ GOTO 16
  IF ~  Global("bd_player_exiled","global",0)
~ THEN REPLY #254646 /* ~You know what we had. Deny it if you must. I know the truth.~ */ GOTO 19
  IF ~  Global("bd_player_exiled","global",1)
~ THEN REPLY #254646 /* ~You know what we had. Deny it if you must. I know the truth.~ */ GOTO 17
END

IF ~~ THEN BEGIN 15 // from: 14.2
  SAY #254647 /* ~You say you loved me. I want to believe it. I do. But I can't.~ [BD54647] */
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 16 // from: 14.3 14.1 6.1 1.1
  SAY #270322 /* ~I... believe you. And I love you, too. I hope you'll find some comfort in that. We're just two people. Our feelings mean little beyond these walls.~ */
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 17 // from: 14.5
  SAY #270323 /* ~I'll not deny my feelings for you. Not ever. But how I feel means little beyond these walls.~ */
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0 16.0
  SAY #254648 /* ~Love conquers all. I'm not feeling particularly victorious right now. Are you?~ [BD54648] */
  IF ~~ THEN REPLY #270324 /* ~Do not succumb to despair, Schael. This isn't over yet.~ */ GOTO 23
  IF ~~ THEN REPLY #270325 /* ~So long as you love me, I have hope.~ */ GOTO 20
  IF ~~ THEN REPLY #270326 /* ~Let's see how we're feeling after you release me from this wretched cell.~ */ GOTO 21
END

IF ~~ THEN BEGIN 19 // from: 14.4 14.0
  SAY #254648 /* ~Love conquers all. I'm not feeling particularly victorious right now. Are you?~ [BD54648] */
  IF ~~ THEN REPLY #254649 /* ~I don't. But I still have hope.~ */ GOTO 20
  IF ~~ THEN REPLY #254650 /* ~Don't turn away from me, Schael. I need you.~ */ GOTO 24
  IF ~~ THEN REPLY #254651 /* ~All I feel is the sting of betrayal from one I believed felt for me as I did her.~ */ GOTO 22
END

IF ~~ THEN BEGIN 20 // from: 19.0 18.1
  SAY #254652 /* ~Would that I could say the same. But hope is a luxury I can't allow myself. Not anymore.~ [BD54652] */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 18.2 3.2
  SAY #270327 /* ~I can't. Forgive me. I've got to get out of here, out of this place...~ [BD70327] */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 19.2 0.2
  SAY #254653 /* ~We had something, didn't we? I wasn't just fooling myself.~ [BD54653] */
  IF ~~ THEN REPLY #254654 /* ~We had everything. And whoever stole it from us will pay a terrible price.~ */ GOTO 23
  IF ~~ THEN REPLY #254655 /* ~If you fooled yourself, I did the same.~ */ GOTO 24
  IF ~~ THEN REPLY #254656 /* ~You tell me. What you do for me here and now—or don't do for me—will let us both know how deep and true your feelings are. Open the door, Corwin. Let me out.~ */ GOTO 24
END

IF ~~ THEN BEGIN 23 // from: 22.0 18.0 11.2 6.3 4.3
  SAY #254657 /* ~Defiant until the end. But you must know this is the end. I'd give anything for that not to be the case, but it is. Accept it, as I have. Find some peace while you're still able.~ [BD54657] */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 22.2 22.1 19.1 15.0
  SAY #254658 /* ~I—I can't do this. I've got to get out of here, out of this place... Forgive me.~ [BD54658] */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 63 even though they appear after this state */
~  AreaCheck("bd0104")
Global("bd_jail_visitors","bd0104",2)
!Global("bd_corwin_romanceactive","global",2)
~ THEN BEGIN 25 // from:
  SAY #239419 /* ~Good morning, <CHARNAME>.~ [BD39419] */
  IF ~~ THEN REPLY #239420 /* ~Is it morning? It's hard to tell in here.~ */ DO ~SetGlobal("bd_jail_visitors","bd0104",3)
SetGlobal("bd_visit_player","locals",1)
~ GOTO 30
  IF ~~ THEN REPLY #239421 /* ~You're half right. Why have you come here?~ */ DO ~SetGlobal("bd_jail_visitors","bd0104",3)
SetGlobal("bd_visit_player","locals",1)
~ GOTO 31
  IF ~~ THEN REPLY #239422 /* ~What do you want, traitor?~ */ DO ~SetGlobal("bd_jail_visitors","bd0104",3)
SetGlobal("bd_visit_player","locals",1)
~ GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 25.2
  SAY #239423 /* ~You call me a traitor? That's rich. ~ */
  IF ~~ THEN REPLY #239424 /* ~I am accused of a senseless murder and none defend me. I am betrayed by all I once cared for.~ */ GOTO 27
  IF ~~ THEN REPLY #239425 /* ~Why are you here?~ */ GOTO 31
  IF ~~ THEN REPLY #239426 /* ~After everything we've endured, everything I've done for this damned city, you believe I murdered Skie Silvershield. I called you traitor, but treachery I might forgive. Stupidity is another matter.~ */ GOTO 35
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #239428 /* ~Not true. Your friend Imoen has been hounding the Grand Dukes relentlessly, begging them to pardon you.~ */
  IF ~~ THEN REPLY #239429 /* ~Thank the gods, someone believes me.~ */ GOTO 37
  IF ~~ THEN REPLY #239430 /* ~Imoen! Damn me, in all the uproar, I hadn't given her a moment's consideration. How is she?~ */ GOTO 28
  IF ~~ THEN REPLY #239431 /* ~An innocent <PRO_MANWOMAN> should need no pardon.~ */ GOTO 35
END

IF ~~ THEN BEGIN 28 // from: 27.1
  SAY #239432 /* ~Fully recovered from the wounds she took at the crusade's hands. Your circumstances cut her deeper than that, though.~ */
  IF ~~ THEN REPLY #239433 /* ~I must see her.~ */ GOTO 29
  IF ~~ THEN REPLY #239434 /* ~Damn it. She probably blames herself for all this... Can I talk to her?~ */ GOTO 29
  IF ~~ THEN REPLY #239435 /* ~She'll survive.~ */ GOTO 36
END

IF ~~ THEN BEGIN 29 // from: 28.1 28.0
  SAY #239436 /* ~Duke Belt doesn't believe she'd willingly leave here without you. He can't allow that, no matter how much he might wish otherwise. For her sake, she must stay away.~ */
  IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 30 // from: 25.0
  SAY #239437 /* ~I'm not here to discuss the time. I'm here to ask you to end this madness. The city's endured much of late—the iron crisis, Sarevok, the crusade... Now this.~ */
  IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 31 // from: 26.1 25.1
  SAY #239438 /* ~I'm here to ask you to end this madness. The city's endured much of late—the iron crisis, Sarevok, the crusade... Now this.~ */
  IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 36.0 35.0 31.0 30.0
  SAY #239439 /* ~The dark days must end. And they won't, not with you languishing here claiming innocence. If you care for Baldur's Gate, even a little... admit your crime. Accept the punishment given you.~ */
  IF ~~ THEN REPLY #239440 /* ~I've fought and bled for Baldur's Gate. I've nearly died for it more times than I can count. I care about the city—but I also care about justice.~ */ GOTO 33
  IF ~~ THEN REPLY #239441 /* ~I'd be more than happy to declare my innocence while languishing somewhere else.~ */ GOTO 33
  IF ~~ THEN REPLY #239442 /* ~You'd have me throw myself on the sword for what? The benefit of those who betrayed me?~ */ GOTO 38
END

IF ~~ THEN BEGIN 33 // from: 32.1 32.0
  SAY #239443 /* ~Maybe you are innocent. Maybe the eyes of all those who saw you standing over Skie's corpse deceived them. It doesn't matter. The city is all that matters now. My father taught me that a hero—a real hero—is prepared to sacrifice <PRO_HIMHER>self for the greater good. They called you the hero of Baldur's Gate. Now you have the chance to earn the name.~ */
  IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 38.0 33.0
  SAY #259733 /* ~Goodbye, <CHARNAME>.~ */
  IF ~~ THEN DO ~AddJournalEntry(259858,INFO)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 35 // from: 27.2 26.2
  SAY #239445 /* ~You don't get it, do you? You can't see beyond yourself to understand what's truly at stake here. This isn't about you. It's about Baldur's Gate. The city's been through so much of late—the iron crisis, Sarevok, the crusade... and now this.~ */
  IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 36 // from: 37.0 29.0 28.2
  SAY #239446 /* ~I'm not here to talk about Imoen. I came to ask you to end this madness. The city's endured much of late—the iron crisis, Sarevok, the crusade... Now this.~ */
  IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 37 // from: 27.0
  SAY #239447 /* ~She has the luxury of doubt. She wasn't there. She didn't see you standing over the body, a bloody dagger in hand...~ */
  IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 38 // from: 32.2
  SAY #239448 /* ~For the benefit of those who still believe in you. They called you the hero of Baldur's Gate. A true hero will sacrifice <PRO_HIMHER>self for the greater good. Give the city a chance to heal. Please.~ */
  IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 39 // from:
  SAY #239613 /* ~Hands in the air. Get away from the opening.~ [BD39613] */
  IF ~~ THEN REPLY #239614 /* ~I don't want to fight you, Corwin. I'm INNOCENT. You have to believe me!~ */ EXTERN ~BDBENCE~ 86
  IF ~  Global("bd_corwin_romanceactive","global",2)
Alignment(Player1,MASK_GOOD)
~ THEN REPLY #239615 /* ~Schael, please, I beg you, don't do this. I love you.~ */ GOTO 40
  IF ~  Global("bd_corwin_romanceactive","global",2)
Alignment(Player1,MASK_LCNEUTRAL)
~ THEN REPLY #239616 /* ~You would prevent my escape? I thought we had something, you and I.~ */ GOTO 40
  IF ~  Global("bd_corwin_romanceactive","global",2)
Alignment(Player1,MASK_EVIL)
~ THEN REPLY #239617 /* ~After all we've been through, this is what it comes to. I should have known you'd betray me in the end.~ */ GOTO 46
  IF ~  !Global("bd_corwin_romanceactive","global",2)
~ THEN REPLY #239618 /* ~Don't try to stop me, Corwin. I need to get out of here if I'm to have any chance of proving my innocence.~ */ EXTERN ~BDBENCE~ 86
  IF ~~ THEN REPLY #239619 /* ~And if I don't, what will you do? Cut me down? Is that any worse than what I can expect from Entar Silvershield?~ */ EXTERN ~BDBENCE~ 87
END

IF ~~ THEN BEGIN 40 // from: 39.2 39.1
  SAY #239620 /* ~You think I want to do this? You think this isn't killing me? We should be together in my bedchamber or a meadow under a cloudless blue sky—ANYWHERE but here!~ [BD39620] */
  IF ~~ THEN GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #239621 /* ~But here we are. I have a job to do. You know me. You know I can't let you go.~ [BD39621] */
  IF ~  CheckStatGT(Player1,15,CHR)
~ THEN REPLY #239623 /* ~I know who murdered Skie. Come with me. Help me find him.~ */ GOTO 42
  IF ~  CheckStatLT(Player1,16,CHR)
~ THEN REPLY #239623 /* ~I know who murdered Skie. Come with me. Help me find him.~ */ GOTO 59
  IF ~~ THEN REPLY #239624 /* ~You know what I'm capable of, Corwin. Please, don't try to stop me.~ */ GOTO 49
  IF ~~ THEN REPLY #239625 /* ~Rohma's already lost a father. Don't make her lose a mother too.~ */ GOTO 53
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #239626 /* ~You'd have me turn my back on the Fist? On my family?~ [BD39626] */
  IF ~~ THEN REPLY #265152 /* ~Would that I could, for your presence is all I that desire in this world. But no. I never knew my mother. I'll not deprive Rohma of hers.~ */ GOTO 60
  IF ~  CheckStatGT(Player1,16,CHR)
~ THEN REPLY #265153 /* ~I'd have you come with me. What do you say?~ */ GOTO 45
  IF ~  CheckStatLT(Player1,17,CHR)
~ THEN REPLY #265153 /* ~I'd have you come with me. What do you say?~ */ GOTO 58
  IF ~~ THEN REPLY #265154 /* ~These things do nothing but drag you down. Think of all you could accomplish at my side.~ */ GOTO 43
END

IF ~~ THEN BEGIN 43 // from: 42.3
  SAY #265155 /* ~You don't know me at all, do you? On your knees, hands behind your head. Let's go.~ [BD65155] */
  IF ~~ THEN EXTERN ~BDBENCE~ 90
END

IF ~~ THEN BEGIN 44 // from: 54.1 49.1 47.2 47.1 46.4
  SAY #239627 /* ~I hoped to talk you out of this madness, but I see words alone won't get this job done. All right then. Let's go.~ [BD39627] */
  IF ~~ THEN EXTERN ~BDBENCE~ 90
END

IF ~~ THEN BEGIN 45 // from: 42.1
  SAY #265159 /* ~This is bigger than us, <CHARNAME>. Bigger than the Flaming Fist, or even my family. You don't know what's happening up above... Skie's murder—at the hand of Sarevok Anchev's sibling, no less—has thrown Baldur's Gate into turmoil.~ [BD65159] */
  IF ~~ THEN GOTO 51
END

IF ~~ THEN BEGIN 46 // from: 51.1 39.3
  SAY #239634 /* ~I know what I saw. You were standing over the body of Skie Silvershield. Duke Entar's daughter. His DAUGHTER.~ [BD39634] */
  IF ~~ THEN REPLY #239635 /* ~Ah. I understand now. This is about Rohma.~ */ GOTO 48
  IF ~  !Alignment(Player1,MASK_EVIL)
~ THEN REPLY #239636 /* ~Do you truly believe me so mad that I would, that I could even be capable of doing this thing I'm accused of? Do you truly think so little of me?~ */ GOTO 50
  IF ~  Alignment(Player1,MASK_EVIL)
~ THEN REPLY #239636 /* ~Do you truly believe me so mad that I would, that I could even be capable of doing this thing I'm accused of? Do you truly think so little of me?~ */ GOTO 49
  IF ~~ THEN REPLY #239637 /* ~And how many people have you slain, Corwin? Everyone is someone's child.~ */ GOTO 47
  IF ~~ THEN REPLY #239638 /* ~I'm not going to argue with you, Captain. I will, however, kill you, if you don't get out of my way.~ */ GOTO 44
END

IF ~~ THEN BEGIN 47 // from: 46.3
  SAY #239639 /* ~Have I killed before? Yes—but never a defenseless girl. Never in cold blood. Never without cause. Don't give me cause now. Surrender.~ [BD39639] */
  IF ~~ THEN REPLY #239645 /* ~I've done things I regret in my life, Schael. Making an orphan of Rohma won't be one of them. I surrender.~ */ GOTO 60
  IF ~~ THEN REPLY #239642 /* ~I don't WANT to fight you, but I will, if you make me.~ */ GOTO 44
  IF ~~ THEN REPLY #239643 /* ~Never. Not while this body still draws breath.~ */ GOTO 44
END

IF ~~ THEN BEGIN 48 // from: 46.0
  SAY #239644 /* ~Don't bring her into this. You won't like where that ends.~ [BD39644] */
  IF ~~ THEN REPLY #239645 /* ~I've done things I regret in my life, Schael. Making an orphan of Rohma won't be one of them. I surrender.~ */ GOTO 60
  IF ~  !Alignment(Player1,MASK_EVIL)
~ THEN REPLY #239646 /* ~Listen, just listen to me, please. Do you truly believe me so mad that I would, that I could even be capable of doing this thing I'm accused of? Do you truly think so little of me?~ */ GOTO 54
  IF ~  Alignment(Player1,MASK_EVIL)
~ THEN REPLY #239646 /* ~Listen, just listen to me, please. Do you truly believe me so mad that I would, that I could even be capable of doing this thing I'm accused of? Do you truly think so little of me?~ */ GOTO 49
  IF ~~ THEN REPLY #239647 /* ~Rohma's already lost one parent, Captain Corwin. Don't let your pride cost her another.~ */ GOTO 53
END

IF ~~ THEN BEGIN 49 // from: 48.2 46.2 41.2
  SAY #239649 /* ~I know EXACTLY what you're capable of. I've seen it. Now put your hands behind your head and get on your knees or by the gods I swear I will put you down.~ [BD39649] */
  IF ~~ THEN REPLY #239650 /* ~If that's the only way to end this... Very well. I didn't kill Skie Silvershield. I'll not have your death on my conscience.~ */ GOTO 60
  IF ~~ THEN REPLY #239651 /* ~I don't WANT to fight you, Corwin. But I will, if you make me. If you make me, I will kill you.~ */ GOTO 44
  IF ~~ THEN REPLY #239662 /* ~Rohma's already lost a father, Captain Corwin. Would you have her lose a mother too?~ */ GOTO 53
END

IF ~~ THEN BEGIN 50 // from: 46.1
  SAY #265160 /* ~What I believe doesn't matter. All that matters is Baldur's Gate. What's happening can't be allowed to go on.~ [BD65160] */
  IF ~~ THEN GOTO 54
END

IF ~~ THEN BEGIN 51 // from: 45.0
  SAY #239658 /* ~The city's tearing itself apart. It has to stop. It HAS to. And it won't until someone pays for what happened at Dragonspear. If you know anything about me, anything at all, you know I can't let you go.~ [BD39658] */
  IF ~~ THEN REPLY #239659 /* ~Very well. For the sake of the city that once called me hero, I surrender.~ */ GOTO 60
  IF ~  !Global("bd_corwin_romanceactive","global",2)
CheckStatGT(Player1,15,CHR)
~ THEN REPLY #239660 /* ~This is madness. I tell you I'm INNOCENT. You have to believe me!~ */ GOTO 46
  IF ~  !Global("bd_corwin_romanceactive","global",2)
CheckStatLT(Player1,16,CHR)
~ THEN REPLY #239660 /* ~This is madness. I tell you I'm INNOCENT. You have to believe me!~ */ GOTO 59
  IF ~  Global("bd_corwin_romanceactive","global",2)
CheckStatGT(Player1,17,CHR)
~ THEN REPLY #265161 /* ~Please, Schael. If you ever felt anything for me, you can't—you CAN'T believe I did these things.~ */ GOTO 55
  IF ~  Global("bd_corwin_romanceactive","global",2)
CheckStatLT(Player1,18,CHR)
~ THEN REPLY #265161 /* ~Please, Schael. If you ever felt anything for me, you can't—you CAN'T believe I did these things.~ */ GOTO 59
  IF ~~ THEN REPLY #239662 /* ~Rohma's already lost a father, Captain Corwin. Would you have her lose a mother too?~ */ GOTO 53
END

IF ~~ THEN BEGIN 52 // from:
  SAY #239667 /* ~Damn you, <CHARNAME>...! All right, then. Let's go.~ [BD39667] */
  IF ~~ THEN DO ~AddJournalEntry(259863,QUEST)
ActionOverride("bdschae2",Enemy())
ChangeSpecifics("bdschae2",CRUSADERS)
~ EXIT
END

IF ~~ THEN BEGIN 53 // from: 54.2 51.5 49.2 48.3 41.3
  SAY #239668 /* ~You threaten my daughter, <CHARNAME>? You just made your last mistake. Take <PRO_HIMHER>!~ [BD39668] */
  IF ~~ THEN EXTERN ~BDBENCE~ 90
END

IF ~~ THEN BEGIN 54 // from: 58.0 50.0 48.1
  SAY #239669 /* ~It has to stop. It HAS to. And that won't happen until you answer for Skie. Now get on your knees, hands behind your head. Do it.~ [BD39669] */
  IF ~~ THEN REPLY #239670 /* ~If that's the only way to end this... Very well. I surrender. I didn't kill Skie Silvershield. I'll not kill you.~ */ GOTO 60
  IF ~~ THEN REPLY #239671 /* ~I don't WANT to fight you, but I will, if you make me. Don't do this. ~ */ GOTO 44
  IF ~~ THEN REPLY #239672 /* ~Think about your family, Captain. Think of Rohma. Walk away from this; leave me to deal with these others. No one ever has to know.~ */ GOTO 53
END

IF ~~ THEN BEGIN 55 // from: 51.3
  SAY #265162 /* ~Damn it, <CHARNAME>. Damn it!~ [BD65162] */
  IF ~~ THEN GOTO 56
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #265163 /* ~...Run.~ [BD65163] */
  IF ~~ THEN EXTERN ~BDBENCE~ 88
END

IF ~~ THEN BEGIN 57 // from:
  SAY #265165 /* ~Get out of here, <CHARNAME>! The cavern beyond the falls will get you out of the city—I'll hold them off!~ [BD65165] */
  IF ~~ THEN EXTERN ~BDBENCE~ 89
END

IF ~~ THEN BEGIN 58 // from: 42.2
  SAY #262567 /* ~I believe you. I wish that mattered. But all that matters is Baldur's Gate. You have no idea of the chaos Skie's murder unleashed. The people loved you, and now they learn their hero is a child of Bhaal like Sarevok? The city is tearing itself apart because of you.~ [BD62567] */
  IF ~~ THEN GOTO 54
END

IF ~~ THEN BEGIN 59 // from: 51.4 51.2 41.1
  SAY #239673 /* ~What I believe doesn't matter anymore. You tried to escape. And now we have to do what we must. Let's go.~ [BD39673] */
  IF ~~ THEN EXTERN ~BDBENCE~ 90
END

IF ~~ THEN BEGIN 60 // from: 54.0 51.0 49.0 48.0 47.0 42.0
  SAY #239674 /* ~Thank the gods... On your knees, hands behind your head.~ [BD39674] */
  IF ~  Gender(Player1,FEMALE)
~ THEN EXTERN ~BDBENCE~ 91
  IF ~  Gender(Player1,MALE)
~ THEN EXTERN ~BDBENCE~ 92
END

IF ~~ THEN BEGIN 61 // from:
  SAY #239676 /* ~Damn it, Duncan! Run, <CHARNAME>! The cavern beyond the opening will get you out of the city! Go!~ */
  IF ~~ THEN DO ~AddJournalEntry(259863,QUEST)
SetGlobal("bd_MDD1725_corwin","global",1)
ChangeSpecifics("bdschae2",ALLIES)
ChangeEnemyAlly("bdschae2",GOODBUTBLUE)
~ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 63 even though they appear after this state */
~  AreaCheck("bd6000")
Global("bd_plot","global",650)
~ THEN BEGIN 62 // from:
  SAY #265168 /* ~Run, <CHARNAME>! The cavern beyond the falls will get you out of the city. Jump!~ [BD65168] */
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~  Global("EECorwBelievePC","Global",1)
AreaCheck("bd0104")
Global("bd_jail_visitors","bd0104",2)
~ THEN BEGIN 63 // from:
  SAY #271760 /* ~I don't believe in your guilt, <CHARNAME>, I had to come and tell you at least this.~ */
  IF ~~ THEN DO ~SetGlobal("bd_jail_visitors","bd0104",6)
SetGlobal("bd_visit_player","locals",1)
~ GOTO 64
END

IF ~~ THEN BEGIN 64 // from: 63.0
  SAY #254610 /* ~<CHARNAME>. How are you?~ [BD54610] */
  IF ~~ THEN REPLY #254611 /* ~I've had better days.~ */ GOTO 65
  IF ~~ THEN REPLY #254612 /* ~Corwin. Thank the gods. You've got to get me out of here.~ */ GOTO 71
  IF ~~ THEN REPLY #254613 /* ~You shouldn't be here, Corwin. Go, now.~ */ GOTO 65
END

IF ~~ THEN BEGIN 65 // from: 64.2 64.0
  SAY #254614 /* ~You could have worse. Eltan and Belt moved mountains to keep you alive and out of Entar's hands.~ [BD54614] */
  IF ~  Global("bd_player_exiled","global",0)
~ THEN REPLY #254615 /* ~I need your help, Schael. Let me out of this cell. Let me find Skie Silvershield's killer, let me prove my innocence. Please.~ */ GOTO 71
  IF ~  Global("bd_player_exiled","global",1)
Global("bd_corwin_romanceactive","global",2)
~ THEN REPLY #254615 /* ~I need your help, Schael. Let me out of this cell. Let me find Skie Silvershield's killer, let me prove my innocence. Please.~ */ GOTO 83
  IF ~  Global("bd_player_exiled","global",1)
!Global("bd_corwin_romanceactive","global",2)
~ THEN REPLY #254615 /* ~I need your help, Schael. Let me out of this cell. Let me find Skie Silvershield's killer, let me prove my innocence. Please.~ */ GOTO 85
  IF ~  Global("bd_player_exiled","global",0)
~ THEN REPLY #254617 /* ~If you expect me to thank the Grand Dukes for their hospitality, you're going to be gravely disappointed.~ */ GOTO 68
  IF ~  Global("bd_player_exiled","global",1)
~ THEN REPLY #254617 /* ~If you expect me to thank the Grand Dukes for their hospitality, you're going to be gravely disappointed.~ */ GOTO 67
  IF ~~ THEN REPLY #254618 /* ~Let Entar come. I'll send him to join his wretched daughter.~ */ GOTO 66
END

IF ~~ THEN BEGIN 66 // from: 65.5
  SAY #254619 /* ~Gods help me. How could I have missed this? How did I never see you for the monster you are?~ [BD54619] */
  IF ~~ THEN GOTO 81
END

IF ~~ THEN BEGIN 67 // from: 65.4
  SAY #254620 /* ~I was gravely disappointed before I ever came here.~ [BD54620] */
  IF ~~ THEN REPLY #270317 /* ~I'm truly sorry you've had to endure this, Schael.~ */ GOTO 79
  IF ~~ THEN REPLY #270318 /* ~Imagine how I feel.~ */ GOTO 78
  IF ~~ THEN REPLY #270319 /* ~And so you came here seeking solace. I've none to give, and wouldn't offer it to you even if I did. Get out. You sicken me. Go!~ */ GOTO 87
END

IF ~~ THEN BEGIN 68 // from: 65.3
  SAY #254620 /* ~I was gravely disappointed before I ever came here.~ [BD54620] */
  IF ~~ THEN REPLY #254621 /* ~Yet you did come here. Why?~ */ GOTO 74
  IF ~~ THEN REPLY #254622 /* ~I'm not thrilled myself.~ */ GOTO 78
  IF ~  Global("bd_corwin_romanceactive","global",2)
~ THEN REPLY #254623 /* ~And yet here you are. Why? Not to free me, I know. You'd never defy your beloved Flaming Fist.~ */ GOTO 69
  IF ~  !Global("bd_corwin_romanceactive","global",2)
~ THEN REPLY #254623 /* ~And yet here you are. Why? Not to free me, I know. You'd never defy your beloved Flaming Fist.~ */ GOTO 70
  IF ~~ THEN REPLY #254624 /* ~And what, you came here seeking solace? I've none to give. I wouldn't offer it to you even if I did. Get out. Your face sickens me. The wretched platitudes you spout make my gut churn. Go!~ */ GOTO 87
END

IF ~~ THEN BEGIN 69 // from: 68.2
  SAY #254625 /* ~I would have, you know. If you'd asked me, I would have followed you anywhere, happily. It wasn't so long ago.~ [BD54625] */
  IF ~~ THEN GOTO 81
END

IF ~~ THEN BEGIN 70 // from: 68.3
  SAY #271761 /* ~I never promised I would. That doesn't mean I lost my faith in you being a good person beneath your hard shell.~ */
  IF ~~ THEN GOTO 82
END

IF ~~ THEN BEGIN 71 // from: 65.0 64.1
  SAY #254626 /* ~I can't do it. I'm sorry, <CHARNAME>. There's only one way you're leaving here.~ [BD54626] */
  IF ~  Global("bd_player_exiled","global",0)
~ THEN REPLY #254627 /* ~I didn't kill Skie. You can't believe I'd ever do something like that.~ */ GOTO 72
  IF ~  Global("bd_player_exiled","global",1)
Global("bd_corwin_romanceactive","global",2)
~ THEN REPLY #254627 /* ~I didn't kill Skie. You can't believe I'd ever do something like that.~ */ GOTO 83
  IF ~  Global("bd_player_exiled","global",1)
!Global("bd_corwin_romanceactive","global",2)
~ THEN REPLY #254627 /* ~I didn't kill Skie. You can't believe I'd ever do something like that.~ */ GOTO 85
  IF ~  Global("bd_corwin_romanceactive","global",2)
~ THEN REPLY #271762 /* ~We can leave here together - take Rohma and go some place no one will ever find us. Please, Schael, don't give up. There's still a future for us - if you want it.~ */ GOTO 77
  IF ~~ THEN REPLY #254629 /* ~Aye. Over the bodies of your friends and colleagues. And yours too, if you stand in my way.~ */ GOTO 87
  IF ~~ THEN REPLY #254630 /* ~If you've not come to help me, why are you here?~ */ GOTO 74
END

IF ~~ THEN BEGIN 72 // from: 71.0
  SAY #271763 /* ~But I do believe you. What you need to understand is that it doesn't matter what I think and know. Not until the day we can prove that you're not Skie's murderer.~ */
  IF ~~ THEN GOTO 73
END

IF ~~ THEN BEGIN 73 // from: 72.0
  SAY #271764 /* ~We can scream and shout but until we have evidence, you're not save in this town and neither me nor the Flaming Fist nor those Dukes who think like me can protect you.~ */
  IF ~  Global("bd_corwin_romanceactive","global",2)
~ THEN GOTO 79
  IF ~  !Global("bd_corwin_romanceactive","global",2)
~ THEN GOTO 80
END

IF ~~ THEN BEGIN 74 // from: 71.5 68.0
  SAY #271765 /* ~I needed to see you one last time. Needed to tell you how I feel...and what I really think.~ */
  IF ~~ THEN GOTO 75
END

IF ~~ THEN BEGIN 75 // from: 74.0
  SAY #271766 /* ~You did not kill her, we both know that.~ */
  IF ~~ THEN GOTO 76
END

IF ~~ THEN BEGIN 76 // from: 75.0
  SAY #270321 /* ~It doesn't matter. I wish it did, but in the end, it doesn't.~ [BD70321] */
  IF ~  Global("bd_corwin_romanceactive","global",2)
~ THEN GOTO 81
  IF ~  !Global("bd_corwin_romanceactive","global",2)
~ THEN GOTO 82
END

IF ~~ THEN BEGIN 77 // from: 71.3
  SAY #254636 /* ~You think I'd turn my back on the Flaming Fist? On my father? I thought you knew me.~ [BD54636] */
  IF ~~ THEN GOTO 81
END

IF ~~ THEN BEGIN 78 // from: 68.1 67.1
  SAY #254641 /* ~Your glib tongue betrays you, <CHARNAME>. A girl lies dead, her blood on your hands, and all you offer is another quip. Skie deserves better than that. As do I.~ [BD54641] */
  IF ~  Global("bd_corwin_romanceactive","global",2)
~ THEN GOTO 81
  IF ~  !Global("bd_corwin_romanceactive","global",2)
~ THEN GOTO 82
END

IF ~~ THEN BEGIN 79 // from: 73.0 67.0
  SAY #254642 /* ~It doesn't matter. I wish it did, but in the end, it doesn't. If it weren't this, it would have been something else. I thought we could be together, that you and Rohma and I had a future...~ [BD54642] */
  IF ~~ THEN GOTO 81
END

IF ~~ THEN BEGIN 80 // from: 73.1
  SAY #271767 /* ~It doesn't matter. I wish it did, but in the end, it doesn't. If it weren't this, it would have been something else. My duty and Rohma require I stay here but you can't.~ */
  IF ~~ THEN GOTO 82
END

IF ~~ THEN BEGIN 81 // from: 79.0 78.0 77.0 76.0 69.0 66.0
  SAY #271768 /* ~Even after everything that's happened in my life, I'm still just a stupid girl, blinded by - whatever it was I thought we had. I don't doubt your innocence. It doesn't change anything but it's...precious to me.~ [BD54643] */
  IF ~~ THEN REPLY #254644 /* ~It was love, Schael. It was real.~ */ GOTO 83
  IF ~~ THEN REPLY #254645 /* ~Love makes fools of us all.~ */ GOTO 83
  IF ~~ THEN REPLY #254646 /* ~You know what we had. Deny it if you must. I know the truth.~ */ GOTO 83
END

IF ~~ THEN BEGIN 82 // from: 80.0 78.1 76.1 70.0
  SAY #271769 /* ~Even after everything that's happened in my life, I'm still just a stupid girl, it's important for me you know that I don't doubt your innocence. It doesn't change anything but it's...precious to me.~ */
  IF ~~ THEN REPLY #271770 /* ~It is precious for me as well, Schael. ~ */ GOTO 85
  IF ~~ THEN REPLY #271771 /* ~I thought of you as my friend, Schael.~ */ GOTO 85
  IF ~~ THEN REPLY #271772 /* ~We've been through all of this together. Deny it if you must. I know the truth.~ */ GOTO 85
END

IF ~~ THEN BEGIN 83 // from: 81.2 81.1 81.0 71.1 65.1
  SAY #270323 /* ~I'll not deny my feelings for you. Not ever. But how I feel means little beyond these walls.~ */
  IF ~~ THEN GOTO 84
END

IF ~~ THEN BEGIN 84 // from: 83.0
  SAY #254648 /* ~Love conquers all. I'm not feeling particularly victorious right now. Are you?~ [BD54648] */
  IF ~~ THEN REPLY #270324 /* ~Do not succumb to despair, Schael. This isn't over yet.~ */ GOTO 87
  IF ~~ THEN REPLY #270325 /* ~So long as you love me, I have hope.~ */ GOTO 87
  IF ~~ THEN REPLY #270326 /* ~Let's see how we're feeling after you release me from this wretched cell.~ */ GOTO 87
END

IF ~~ THEN BEGIN 85 // from: 82.2 82.1 82.0 71.2 65.2
  SAY #271773 /* ~I'll not deny my friendship for you. Not ever. But how I feel or even what I know means little beyond these walls.~ */
  IF ~~ THEN GOTO 86
END

IF ~~ THEN BEGIN 86 // from: 85.0
  SAY #271774 /* ~Friendship moves mountains and will be victorious in the end. I'm not feeling particularly victorious right now. Are you?~ */
  IF ~~ THEN REPLY #270324 /* ~Do not succumb to despair, Schael. This isn't over yet.~ */ GOTO 87
  IF ~~ THEN REPLY #271775 /* ~So long as I have friends who believe in me, I have hope.~ */ GOTO 87
  IF ~~ THEN REPLY #270326 /* ~Let's see how we're feeling after you release me from this wretched cell.~ */ GOTO 87
END

IF ~~ THEN BEGIN 87 // from: 86.2 86.1 86.0 84.2 84.1 84.0 71.4 68.4 67.2
  SAY #271776 /* ~Don't lose hope ever. In any way let's look at current facts. Only if we get you out of this town we can win the necessary time to proof your innocence and restore your reputation. Face the facts. I do.~ */
  IF ~~ THEN GOTO 88
END

IF ~~ THEN BEGIN 88 // from: 87.0
  SAY #271777 /* ~I must go now, <CHARNAME>. This is not easy for me and I know it's neither for you. Farewell.~ */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END
