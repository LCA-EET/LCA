// creator  : weidu (version 24900)
// argument : BDORN.DLG
// game     : .
// source   : ./override/BDORN.DLG
// dialog   : .\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~BDORN~

IF ~  IsValidForPartyDialogue("Dorn")
IsValidForPartyDialogue("Rasaad")
CombatCounter(0)
See("Rasaad")
!AreaType(DUNGEON)
Global("OHR_dorn","GLOBAL",0)
OR(2)
Global("OHD_azothet_patron","GLOBAL",1)
Global("OHD_urgothoz_patron","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #98930 /* ~I would have words with you, monk.~ */
  IF ~~ THEN DO ~SetGlobal("OHR_dorn","GLOBAL",1)
~ EXTERN ~BRASAAD~ 80
END

IF ~~ THEN BEGIN 1 // from:
  SAY #98932 /* ~I come to you on behalf of my patron, Azothet.~ */
  IF ~~ THEN EXTERN ~BRASAAD~ 83
  IF ~  Global("OHD_urgothoz_patron","GLOBAL",1)
~ THEN GOTO 4
  IF ~  Global("OHD_urgothoz_patron","GLOBAL",1)
~ THEN EXTERN ~BRASAAD~ 82
  IF ~  Global("OHD_urgothoz_patron","GLOBAL",1)
~ THEN GOTO 3
  IF ~  Global("OHD_azothet_patron","GLOBAL",1)
~ THEN GOTO 2
  IF ~  Global("OHD_azothet_patron","GLOBAL",1)
~ THEN EXTERN ~BRASAAD~ 81
END

IF ~~ THEN BEGIN 2 // from: 1.4
  SAY #98936 /* ~For many years, you have walked in Selûne's light. Now, you have chosen to enter darkness. She sees great promise in you.~ */
  IF ~~ THEN EXTERN ~BRASAAD~ 83
  IF ~  Global("OHD_urgothoz_patron","GLOBAL",1)
~ THEN GOTO 4
  IF ~  Global("OHD_urgothoz_patron","GLOBAL",1)
~ THEN EXTERN ~BRASAAD~ 82
  IF ~  Global("OHD_urgothoz_patron","GLOBAL",1)
~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.3 1.3
  SAY #98933 /* ~I bring you an offer from my patron, Ur-Gothoz.~ */
  IF ~~ THEN EXTERN ~BRASAAD~ 83
  IF ~  Global("OHD_urgothoz_patron","GLOBAL",1)
~ THEN GOTO 4
  IF ~  Global("OHD_urgothoz_patron","GLOBAL",1)
~ THEN EXTERN ~BRASAAD~ 82
END

IF ~~ THEN BEGIN 4 // from: 3.1 2.1 1.1
  SAY #98937 /* ~For most of your life, you have walked in Selûne's light. Now, you have embarked down a path of darkness. He sees great potential in you.~ */
  IF ~~ THEN EXTERN ~BRASAAD~ 83
END

IF ~~ THEN BEGIN 5 // from:
  SAY #98939 /* ~You should. And you should hear what is being offered to you.~ */
  IF ~~ THEN EXTERN ~BRASAAD~ 84
END

IF ~~ THEN BEGIN 6 // from:
  SAY #98941 /* ~Power. Great power. Power enough to defeat all who stand against you. Power enough to avenge your—~ */
  IF ~~ THEN EXTERN ~BRASAAD~ 85
END

IF ~~ THEN BEGIN 7 // from:
  SAY #98943 /* ~When your enemies stand over your broken, dying body, you will wish you hadn't been so quick to reject my patron's gift.~ */
  IF ~~ THEN EXTERN ~BRASAAD~ 86
END

IF ~  IsValidForPartyDialogue("Aerie")
IsValidForPartyDialogue("Dorn")
CombatCounter(0)
See("Aerie")
!AreaType(DUNGEON)
Global("OHD_aerie","GLOBAL",0)
~ THEN BEGIN 8 // from:
  SAY #99559 /* ~You. Girl.~ */
  IF ~~ THEN DO ~SetGlobal("OHD_aerie","GLOBAL",1)
~ EXTERN ~BAERIE~ 455
END

IF ~~ THEN BEGIN 9 // from:
  SAY #99561 /* ~Aye. What are you doing here?~ */
  IF ~~ THEN EXTERN ~BAERIE~ 456
END

IF ~~ THEN BEGIN 10 // from:
  SAY #99563 /* ~The Bhaalspawn's side is no place for a simpering child.~ */
  IF ~~ THEN EXTERN ~BAERIE~ 457
END

IF ~~ THEN BEGIN 11 // from:
  SAY #99565 /* ~Spoken like a simpering child. Begone. There's no place for you here.~ */
  IF ~~ THEN EXTERN ~BAERIE~ 458
END

IF ~~ THEN BEGIN 12 // from:
  SAY #99567 /* ~Hah! You've some spirit to you. Maybe you're worthy of the Bhaalspawn's attention after all. MAYBE.~ */
  IF ~~ THEN EXIT
END

IF ~  IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("Dorn")
CombatCounter(0)
See("Anomen")
!AreaType(DUNGEON)
Global("AnomenIsKnight","GLOBAL",1)
Global("OHD_anomen","GLOBAL",0)
~ THEN BEGIN 13 // from:
  SAY #99568 /* ~What is that I smell? Ah, I recognize it now—'tis the stink of righteousness.~ */
  IF ~~ THEN DO ~SetGlobal("OHD_anomen","GLOBAL",1)
~ EXTERN ~BANOMEN~ 595
END

IF ~~ THEN BEGIN 14 // from:
  SAY #99570 /* ~No, no, I am wrong. It's not the stench of righteousness that fills the air. It is hypocrisy.~ */
  IF ~~ THEN EXTERN ~BANOMEN~ 596
END

IF ~~ THEN BEGIN 15 // from:
  SAY #99572 /* ~A holy warrior who walks cheek by jowl with a Bhaalspawn and a blackguard? What else could I call you?~ */
  IF ~~ THEN EXTERN ~BANOMEN~ 597
END

IF ~~ THEN BEGIN 16 // from:
  SAY #99574 /* ~Mind your tone or I'll see to it you never walk again.~ */
  IF ~~ THEN REPLY #99575 /* ~Stop it, Dorn. We're all friends here.~ */ GOTO 24
  IF ~~ THEN REPLY #99576 /* ~Mind yours, Dorn. I won't tolerate this sort of nonsense.~ */ GOTO 18
  IF ~~ THEN REPLY #99577 /* ~Hah! That's something I'd like to see.~ */ EXTERN ~BANOMEN~ 598
END

IF ~~ THEN BEGIN 17 // from:
  SAY #99579 /* ~Show me what you've got, fool!~ */
  IF ~~ THEN DO ~SetGlobal("OHD_anomenfight","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.1
  SAY #99580 /* ~This wretch is no friend of yours, <CHARNAME>. He is an anchor weighing you down.~ */
  IF ~~ THEN REPLY #99581 /* ~He is a good and valued ally.~ */ EXTERN ~BANOMEN~ 600
  IF ~~ THEN REPLY #99582 /* ~Some would say the same of you.~ */ GOTO 26
  IF ~~ THEN REPLY #99583 /* ~Once, perhaps. But those days are at an end.~ */ EXTERN ~BANOMEN~ 599
END

IF ~~ THEN BEGIN 19 // from:
  SAY #99585 /* ~<CHARNAME> has finally realized the error <PRO_HESHE> made in allying <PRO_HIMHER>self with you. Die, you pious gnat!~ */
  IF ~~ THEN DO ~SetGlobal("OHD_anomenfight","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from:
  SAY #99590 /* ~And a pitiful truth it is! ~ */
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 21 // from:
  SAY #99591 /* ~It's a problem for me. ~ */
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0 20.0
  SAY #99592 /* ~Anyone fool enough to ally <PRO_HIMHER>self with this weakling isn't worthy of my company. When you rid yourself of this useless baggage, seek me out, <CHARNAME>.~ */
  IF ~~ THEN DO ~LeaveParty()
SetGlobal("KickedOut","LOCALS",1)
MoveGlobal("AR0900","Dorn",[2550.3394])
~ EXIT
END

IF ~~ THEN BEGIN 23 // from:
  SAY #99598 /* ~You are better off without him, <CHARNAME>. He did naught but hold you back.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 24 // from: 16.0
  SAY #99599 /* ~You call this filth a friend?~ */
  IF ~~ THEN REPLY #99600 /* ~I do.~ */ EXTERN ~BANOMEN~ 600
  IF ~~ THEN REPLY #99601 /* ~Are you deaf, you bloody great lummox?~ */ EXTERN ~BANOMEN~ 600
  IF ~~ THEN REPLY #99602 /* ~I did, when it suited me to do so. But that time is long past.~ */ EXTERN ~BANOMEN~ 601
END

IF ~~ THEN BEGIN 25 // from:
  SAY #99607 /* ~Taste steel, paladin!~ */
  IF ~~ THEN DO ~SetGlobal("OHD_anomenfight","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 18.1
  SAY #99608 /* ~Fools and weaklings, all.~ */
  IF ~~ THEN EXTERN ~BANOMEN~ 604
END

IF ~~ THEN BEGIN 27 // from:
  SAY #99611 /* ~Fallen? It was pushed by a druid fool—though perhaps the phrase "druid fool" is redundant.~ */
  IF ~~ THEN EXTERN ~BCERND~ 104
END

IF ~~ THEN BEGIN 28 // from:
  SAY #99613 /* ~I've seen no evidence to the contrary.~ */
  IF ~~ THEN EXTERN ~BCERND~ 105
END

IF ~~ THEN BEGIN 29 // from:
  SAY #99615 /* ~You do me a disservice. I see many things I'd prefer not to—and then I see them fall beneath my blade.~ */
  IF ~~ THEN EXTERN ~BCERND~ 106
END

IF ~~ THEN BEGIN 30 // from:
  SAY #99617 /* ~Perhaps. But I've yet to encounter one that wasn't.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 31 // from:
  SAY #99619 /* ~What business is he of yours?~ */
  IF ~~ THEN EXTERN ~BEDWIN~ 115
END

IF ~~ THEN BEGIN 32 // from:
  SAY #99620 /* ~What business is she of yours?~ */
  IF ~~ THEN EXTERN ~BEDWIN~ 115
END

IF ~~ THEN BEGIN 33 // from:
  SAY #99622 /* ~I do his bidding; he gives me power. That is all you need know.~ */
  IF ~~ THEN EXTERN ~BEDWIN~ 116
END

IF ~~ THEN BEGIN 34 // from:
  SAY #99623 /* ~I do her bidding, and in return she gives me all the power I require. You need know no more.~ */
  IF ~~ THEN EXTERN ~BEDWIN~ 116
END

IF ~~ THEN BEGIN 35 // from:
  SAY #99626 /* ~Keep talking, mage. I'll carve the answer on your corpse's flesh.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 36 // from:
  SAY #99628 /* ~My name is Dorn Il-Khan. Call me that, or "master," if you prefer.~ */
  IF ~~ THEN EXTERN ~BHAERDA~ 170
END

IF ~~ THEN BEGIN 37 // from:
  SAY #99630 /* ~It's done me well enough till now.~ */
  IF ~~ THEN EXTERN ~BHAERDA~ 171
END

IF ~~ THEN BEGIN 38 // from:
  SAY #99632 /* ~If you would give me a new name, it's only fair that I do the same.~ */
  IF ~~ THEN EXTERN ~BHAERDA~ 172
END

IF ~~ THEN BEGIN 39 // from:
  SAY #99634 /* ~Instead of Haer'Dalis, I think I'll call you "Head'Less." What do you think of that?~ */
  IF ~~ THEN EXTERN ~BHAERDA~ 173
END

IF ~~ THEN BEGIN 40 // from:
  SAY #99648 /* ~I believe the word you're looking for is "magnificent."~ */
  IF ~~ THEN EXTERN ~BIMOEN2~ 12
END

IF ~~ THEN BEGIN 41 // from:
  SAY #99650 /* ~Wrong, girl? Wrong? Who are you to judge me?~ */
  IF ~~ THEN EXTERN ~BIMOEN2~ 13
END

IF ~~ THEN BEGIN 42 // from:
  SAY #99652 /* ~Eyes and a heart, but no brain.~ */
  IF ~~ THEN EXTERN ~BIMOEN2~ 14
END

IF ~~ THEN BEGIN 43 // from:
  SAY #99654 /* ~You called me cruel and violent and frightening. I am all these things. And for that, you should be grateful.~ */
  IF ~~ THEN EXTERN ~BIMOEN2~ 15
END

IF ~~ THEN BEGIN 44 // from:
  SAY #99656 /* ~That <CHARNAME> stands with you, and I stand with <PRO_HIMHER>. We walk a dangerous path, the three of us. To survive, we must be even more dangerous.~ */
  IF ~~ THEN GOTO 45
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #99657 /* ~How many have I killed defending <CHARNAME> and, by extension, you? How many predators gazed upon you, then saw me and turned their attention elsewhere? ~ */
  IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #99658 /* ~Whether you know it or not, I protect you and all those who walk beside the Bhaalspawn. You owe me your thanks, but I'll not linger awaiting it.~ */
  IF ~~ THEN EXTERN ~BIMOEN2~ 16
END

IF ~~ THEN BEGIN 47 // from:
  SAY #99661 /* ~The girl is right, <CHARNAME>.~ */
  IF ~~ THEN EXTERN ~BIMOEN2~ 18
END

IF ~~ THEN BEGIN 48 // from:
  SAY #99663 /* ~I am a fiend, a villain, a blackguard. I am all these things and more, and for that, you should be grateful.~ */
  IF ~~ THEN EXTERN ~BIMOEN2~ 15
END

IF ~~ THEN BEGIN 49 // from:
  SAY #99669 /* ~An aberration? You do me a disservice, druid.~ */
  IF ~~ THEN EXTERN ~BJAHEIR~ 475
END

IF ~~ THEN BEGIN 50 // from:
  SAY #99671 /* ~But it is. Am I not a part of nature?~ */
  IF ~~ THEN EXTERN ~BJAHEIR~ 476
END

IF ~~ THEN BEGIN 51 // from:
  SAY #99673 /* ~I seek to better myself. To make myself stronger that I may survive and thrive. There is nothing more natural than that.~ */
  IF ~~ THEN EXTERN ~BJAHEIR~ 477
END

IF ~~ THEN BEGIN 52 // from:
  SAY #99675 /* ~They may not be to your taste, druid—but they are nevertheless true. If you've a problem with how I live my life—deal with it.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 53 // from:
  SAY #99677 /* ~Tell me, gnome—is there a contraption in that pack of yours that will reattach your endlessly blathering head once I cut it from your shoulders?~ */
  IF ~~ THEN EXTERN ~BJAN~ 130
END

IF ~~ THEN BEGIN 54 // from:
  SAY #99680 /* ~Keep talking and you'll be telling it to the demons of the Abyss.~ */
  IF ~~ THEN EXTERN ~BJAN~ 132
END

IF ~~ THEN BEGIN 55 // from:
  SAY #99685 /* ~A fine tale, dwarf. I'm reminded of the time I slew a pack of lycanthropes in the Wyrm Forest.~ */
  IF ~~ THEN EXTERN ~BKORGAN~ 145
END

IF ~~ THEN BEGIN 56 // from:
  SAY #99687 /* ~I slew a pack of werewolves in the Wyrm Forest.~ */
  IF ~~ THEN EXTERN ~BKORGAN~ 146
END

IF ~~ THEN BEGIN 57 // from:
  SAY #99691 /* ~You and I are cut from the same cloth. We both know the sublime joy that can only be found in unrestrained slaughter.~ */
  IF ~~ THEN EXTERN ~BKORGAN~ 148
END

IF ~~ THEN BEGIN 58 // from:
  SAY #99693 /* ~Indeed. I look forward to it.~ */
  IF ~~ THEN EXIT
END

IF ~  IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("Dorn")
CombatCounter(0)
See("Mazzy")
!AreaType(DUNGEON)
Global("OHD_mazzy","GLOBAL",0)
~ THEN BEGIN 59 // from:
  SAY #99694 /* ~I would speak with you, paladin.~ */
  IF ~~ THEN DO ~SetGlobal("OHD_mazzy","GLOBAL",1)
~ EXTERN ~BMAZZY~ 130
END

IF ~~ THEN BEGIN 60 // from:
  SAY #99696 /* ~Ah yes. The position is beyond your reach. I had forgotten.~ */
  IF ~~ THEN EXTERN ~BMAZZY~ 131
END

IF ~~ THEN BEGIN 61 // from:
  SAY #99698 /* ~You wound me, dear lady.~ */
  IF ~~ THEN EXTERN ~BMAZZY~ 132
END

IF ~~ THEN BEGIN 62 // from:
  SAY #99700 /* ~You are right about that.~ */
  IF ~~ THEN EXTERN ~BMAZZY~ 133
END

IF ~~ THEN BEGIN 63 // from:
  SAY #99702 /* ~I have an offer for you.~ */
  IF ~~ THEN EXTERN ~BMAZZY~ 134
END

IF ~~ THEN BEGIN 64 // from:
  SAY #99704 /* ~My patron might.~ */
  IF ~~ THEN EXTERN ~BMAZZY~ 135
END

IF ~~ THEN BEGIN 65 // from:
  SAY #99706 /* ~My patron is always looking for other beings to empower.~ */
  IF ~~ THEN EXTERN ~BMAZZY~ 136
END

IF ~~ THEN BEGIN 66 // from:
  SAY #99708 /* ~I'll not deny it.~ */
  IF ~~ THEN EXTERN ~BMAZZY~ 137
END

IF ~~ THEN BEGIN 67 // from:
  SAY #99710 /* ~Far from it. To make such an offer is a sign of the deepest respect.~ */
  IF ~~ THEN EXTERN ~BMAZZY~ 138
END

IF ~~ THEN BEGIN 68 // from:
  SAY #99712 /* ~Your loss.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 69 // from:
  SAY #99714 /* ~Your hamster should have more faith.~ */
  IF ~~ THEN EXTERN ~BMINSC~ 106
END

IF ~~ THEN BEGIN 70 // from:
  SAY #99716 /* ~I'll do everything in my power to prove myself worthy of your hamster's trust.~ */
  IF ~~ THEN EXTERN ~BMINSC~ 107
END

IF ~~ THEN BEGIN 71 // from:
  SAY #99718 /* ~Madness...~ */
  IF ~~ THEN REPLY #99719 /* ~I'm surprised you didn't cut Minsc's head off.~ */ GOTO 73
  IF ~~ THEN REPLY #99720 /* ~That was a remarkable—and uncharacteristic—show of restraint.~ */ GOTO 72
  IF ~~ THEN REPLY #99721 /* ~He's insane, but he has his uses.~ */ GOTO 74
END

IF ~~ THEN BEGIN 72 // from: 71.1
  SAY #99722 /* ~There's no joy in matching wits with the witless.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 73 // from: 71.0
  SAY #99723 /* ~The madman's more entertaining alive.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 74 // from: 71.2
  SAY #99724 /* ~A man with no fear can be a useful tool indeed.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 75 // from:
  SAY #99726 /* ~Get out of my sight or by all that's unholy, I swear I'll eat your rat for breakfast!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 76 // from:
  SAY #99736 /* ~Say what you will about <CHARNAME>, <PRO_HESHE>'s no fool. ~ */
  IF ~~ THEN EXTERN ~BVICONI~ 581
END

IF ~~ THEN BEGIN 77 // from:
  SAY #99738 /* ~Only fools would trust us to go against our best interests.~ */
  IF ~~ THEN EXTERN ~BVICONI~ 582
END

IF ~~ THEN BEGIN 78 // from:
  SAY #99740 /* ~They're fortunate that we're here to guide them.~ */
  IF ~~ THEN EXTERN ~BVICONI~ 583
END

IF ~~ THEN BEGIN 79 // from:
  SAY #99742 /* ~Victory and power. What else is there?~ */
  IF ~~ THEN EXTERN ~BVICONI~ 584
END

IF ~~ THEN BEGIN 80 // from:
  SAY #99744 /* ~Love? Have you lost your mind, you—~ */
  IF ~~ THEN GOTO 81
END

IF ~~ THEN BEGIN 81 // from: 80.0
  SAY #99745 /* ~Ah. I get it now.~ */
  IF ~~ THEN EXTERN ~BVICONI~ 585
END

IF ~~ THEN BEGIN 82 // from:
  SAY #99747 /* ~You did, I admit it.~ */
  IF ~~ THEN EXTERN ~BVICONI~ 586
END

IF ~~ THEN BEGIN 83 // from:
  SAY #99749 /* ~I guess I'm just a fool for love.~ */
  IF ~~ THEN EXTERN ~BVICONI~ 587
END

IF ~~ THEN BEGIN 84 // from:
  SAY #99751 /* ~Have mercy, drow! I admitted you got me.~ */
  IF ~~ THEN EXTERN ~BVICONI~ 588
END

IF ~~ THEN BEGIN 85 // from:
  SAY #99753 /* ~Gods help me. I'm doomed.~ */
  IF ~~ THEN EXIT
END

IF ~  IsValidForPartyDialogue("Hexxat")
IsValidForPartyDialogue("Dorn")
CombatCounter(0)
See("Hexxat")
!AreaType(DUNGEON)
Global("OHD_hexxat","GLOBAL",0)
~ THEN BEGIN 86 // from:
  SAY #99792 /* ~A word, Hexxat?~ */
  IF ~~ THEN DO ~SetGlobal("OHD_hexxat","GLOBAL",1)
~ EXTERN ~BHEXXAT~ 13
END

IF ~~ THEN BEGIN 87 // from:
  SAY #99794 /* ~No. If anything, the word will be "please."~ */
  IF ~~ THEN EXTERN ~BHEXXAT~ 14
END

IF ~~ THEN BEGIN 88 // from:
  SAY #99796 /* ~Some things cannot be taken by force.~ */
  IF ~~ THEN EXTERN ~BHEXXAT~ 15
END

IF ~~ THEN BEGIN 89 // from:
  SAY #99798 /* ~Damn it, woman! You know what I want. Would you make me beg?~ */
  IF ~~ THEN EXTERN ~BHEXXAT~ 16
END

IF ~~ THEN BEGIN 90 // from:
  SAY #99800 /* ~Then what must I do?~ */
  IF ~~ THEN EXTERN ~BHEXXAT~ 17
END

IF ~~ THEN BEGIN 91 // from:
  SAY #99802 /* ~You would deny me?~ */
  IF ~~ THEN EXTERN ~BHEXXAT~ 18
END

IF ~~ THEN BEGIN 92 // from:
  SAY #99804 /* ~I have much to offer...~ */
  IF ~~ THEN EXTERN ~BHEXXAT~ 19
END

IF ~~ THEN BEGIN 93 // from:
  SAY #99806 /* ~Hmm. If you change your mind, let me know.~ */
  IF ~~ THEN EXTERN ~BHEXXAT~ 20
END

IF ~~ THEN BEGIN 94 // from:
  SAY #102015 /* ~Your new form is not without advantages, mage. You should make use of them.~ */
  IF ~~ THEN EXTERN ~BEDWIN~ 119
END

IF ~~ THEN BEGIN 95 // from:
  SAY #102044 /* ~A pirate?~ */
  IF ~~ THEN EXTERN ~BIMOEN2~ 20
END

IF ~~ THEN BEGIN 96 // from:
  SAY #102046 /* ~Scouring coasts, burning, destroying, and pillaging all I come across?~ */
  IF ~~ THEN EXTERN ~BIMOEN2~ 21
END

IF ~~ THEN BEGIN 97 // from:
  SAY #102048 /* ~No. Do not speak to me again.~ */
  IF ~~ THEN EXIT
END

IF ~  IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("Dorn")
CombatCounter(0)
See("Valygar")
!AreaType(DUNGEON)
OR(2)
Global("OHD_urgothoz_patron","GLOBAL",1)
Global("OHD_azothet_patron","GLOBAL",1)
Global("OHD_valygar","GLOBAL",0)
~ THEN BEGIN 98 // from:
  SAY #102083 /* ~It takes a certain type of man to kill his parents, Valygar. There is much my patron could offer you.~ */
  IF ~~ THEN DO ~SetGlobal("OHD_valygar","GLOBAL",1)
~ EXTERN ~BVALYGA~ 156
END

IF ~~ THEN BEGIN 99 // from:
  SAY #102085 /* ~A small price to pay for power.~ */
  IF ~~ THEN EXTERN ~BVALYGA~ 157
END

IF ~  IsValidForPartyDialogue("Rasaad")
IsValidForPartyDialogue("Dorn")
CombatCounter(0)
See("Rasaad")
!AreaType(DUNGEON)
Global("OHD_rasaad2","GLOBAL",0)
~ THEN BEGIN 100 // from:
  SAY #102096 /* ~You look troubled, monk.~ */
  IF ~~ THEN DO ~SetGlobal("OHD_rasaad2","GLOBAL",1)
~ GOTO 101
END

IF ~~ THEN BEGIN 101 // from: 100.0
  SAY #102097 /* ~Is your path less sure than it was? Your precious light staining your soul with shadows?~ */
  IF ~~ THEN EXTERN ~BRASAAD~ 119
END

IF ~~ THEN BEGIN 102 // from:
  SAY #102099 /* ~When the moon disappears, Rasaad, all we are left with is truth. No more, no less.~ */
  IF ~~ THEN GOTO 119
END

IF ~~ THEN BEGIN 103 // from:
  SAY #102101 /* ~I said enough!~ */
  IF ~~ THEN EXIT
END

IF ~  IsValidForPartyDialogue("Nalia")
IsValidForPartyDialogue("Dorn")
CombatCounter(0)
See("Nalia")
!AreaType(DUNGEON)
Global("OHD_nalia","GLOBAL",0)
~ THEN BEGIN 104 // from:
  SAY #102126 /* ~Do that again, girl, and I will cut your tongue from your wretched mouth! You will never cast again!~ */
  IF ~~ THEN DO ~SetGlobal("OHD_nalia","GLOBAL",1)
~ EXTERN ~BNALIA~ 57
END

IF ~~ THEN BEGIN 105 // from:
  SAY #102128 /* ~I require no assistance in battle.~ */
  IF ~~ THEN EXTERN ~BNALIA~ 58
END

IF ~~ THEN BEGIN 106 // from:
  SAY #102130 /* ~Just watch your own back rather than mine. We'll both be happier that way.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 107 // from:
  SAY #99263 /* ~You have a problem with me?~ */
  IF ~~ THEN EXTERN ~BMAZZY~ 143
END

IF ~  IsValidForPartyDialogue("Dorn")
IsValidForPartyDialogue("Hexxat")
CombatCounter(0)
See("Hexxat")
!AreaType(DUNGEON)
!Global("DornRomanceActive","GLOBAL",1)
!Global("DornRomanceActive","GLOBAL",2)
Global("OHH_dorn2","GLOBAL",0)
~ THEN BEGIN 108 // from:
  SAY #102149 /* ~Tell me, Hexxat. Is it true what I have heard about vampires and stamina?~ */
  IF ~~ THEN DO ~SetGlobal("OHH_dorn2","GLOBAL",1)
~ EXTERN ~BHEXXAT~ 158
END

IF ~~ THEN BEGIN 109 // from:
  SAY #102151 /* ~And appetite?~ */
  IF ~~ THEN EXTERN ~BHEXXAT~ 159
END

IF ~~ THEN BEGIN 110 // from:
  SAY #102153 /* ~Perhaps you and I could come to an... arrangement.~ */
  IF ~~ THEN EXTERN ~BHEXXAT~ 160
END

IF ~~ THEN BEGIN 111 // from:
  SAY #102155 /* ~You would deny me?~ */
  IF ~~ THEN EXTERN ~BHEXXAT~ 161
END

IF ~~ THEN BEGIN 112 // from:
  SAY #102157 /* ~You don't know what you're missing.~ */
  IF ~~ THEN EXTERN ~BHEXXAT~ 162
END

IF ~  IsValidForPartyDialogue("NEERA")
IsValidForPartyDialogue("DORN")
CombatCounter(0)
See("NEERA")
!AreaType(DUNGEON)
Global("OHN_dorn","GLOBAL",0)
~ THEN BEGIN 113 // from:
  SAY #88845 /* ~You think you have everyone fooled, girl. Not me.~ */
  IF ~~ THEN DO ~SetGlobal("OHN_dorn","GLOBAL",1)
~ EXTERN ~BNEERA~ 152
END

IF ~~ THEN BEGIN 114 // from:
  SAY #88847 /* ~Drop the act. You know what I'm talking about—your false innocence, your carelessness, the way you pretend to value the interests of others.~ */
  IF ~~ THEN EXTERN ~BNEERA~ 153
END

IF ~~ THEN BEGIN 115 // from:
  SAY #88849 /* ~I've seen the look in your eyes, half-elf, when your magic's power increases. I know what it means. I feel the same thing when I slay the weak. Your magic is wild, Neera. You cannot control it, and you cast it anyway. Would someone who was truly good do that?~ */
  IF ~~ THEN EXTERN ~BNEERA~ 154
END

IF ~~ THEN BEGIN 116 // from:
  SAY #88851 /* ~Hah! Your unwillingness to acknowledge the truth damns you. As one of the damned myself, I shall call you sister.~ */
  IF ~~ THEN EXTERN ~BNEERA~ 155
END

IF ~~ THEN BEGIN 117 // from:
  SAY #88853 /* ~Call me what you will; I'll call you what you are. Someday, the evil within you will prevail. As your power increases, your restraint grows weaker and weaker.~ */
  IF ~~ THEN EXTERN ~BNEERA~ 156
END

IF ~~ THEN BEGIN 118 // from:
  SAY #88855 /* ~Hrmm. So imperious! As you wish. I will simply watch... and wait.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 119 // from: 102.0
  SAY #102100 /* ~You know I am right. Every waking moment, every sleeping hour, constant and unceasing, the truth gnaws at the edges of your soul—~ */
  IF ~~ THEN EXTERN ~BRASAAD~ 125
END
