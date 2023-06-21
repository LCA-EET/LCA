// creator  : weidu (version 24900)
// argument : PPIRENI2.DLG
// game     : .
// source   : ./override/PPIRENI2.DLG
// dialog   : .\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~PPIRENI2~

IF ~  Global("AsylumPlot","GLOBAL",20)
~ THEN BEGIN 0 // from:
  SAY #44234 /* ~Well, it would seem that my visitor has awakened! It is as I predicted. It all has been.~ [IRENIC39] */
  IF ~~ THEN DO ~SetGlobal("AsylumPlot","GLOBAL",21)
SetGlobal("Disable1500","GLOBAL",1)
EraseJournalEntry(843)
EraseJournalEntry(293)
EraseJournalEntry(9982)
EraseJournalEntry(15751)
EraseJournalEntry(9682)
~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #44248 /* ~I fear I have had an advantage over you; I have planned your coming from the start. It could be no other way. ~ [IRENIC40] */
  IF ~  See("Yoshimo")
~ THEN DO ~EraseJournalEntry(293)
~ GOTO 49
  IF ~  !See("Yoshimo")
~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #44249 /* ~A bit of treachery by Saemon and a spell component goes into a soup or some other dish. Undetectable, and nothing more than a seasoning until my casting.~ [IRENIC41] */
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 51.0 50.0 2.0
  SAY #44250 /* ~But don't worry—you won't have to think about any of this or that. Your life ends today. ~ [IRENIC42] */
  IF ~~ THEN REPLY #44251 /* ~What are you doing, Irenicus?! What is all of this?~ */ GOTO 5
  IF ~~ THEN REPLY #44252 /* ~Release me! I will kill you, I swear it!~ */ GOTO 4
  IF ~~ THEN REPLY #44253 /* ~Where is Imoen?! What have you done to her?!~ */ GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY #44286 /* ~Yes, I believe that you would. I can't blame you, really, not when I wish the death of others for similar reasons. A pity one of us must be denied. ~ */
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 3.0
  SAY #44288 /* ~That is not for you to know. Suffice to say that I regret what must occur. I know the rage you will feel once I am done. I seek the death of others for similar reasons. ~ */
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0 4.0 3.2
  SAY #44289 /* ~Don't worry, Imoen has already suffered what she must for my cause. She even survived, and this bodes well for you. You are stronger, more focused, and you are *aware*.~ */
  IF ~~ THEN REPLY #44409 /* ~Aware? Aware of what?~ */ GOTO 7
  IF ~~ THEN REPLY #44410 /* ~So you used her relationship with me to get me here, but why torture her?~ */ GOTO 10
  IF ~~ THEN REPLY #44411 /* ~You want me because I am a child of Bhaal. Let her go and then we'll talk.~ */ GOTO 10
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #44476 /* ~Aware of what you are, child of Bhaal. You are aware, and she is not. That makes you more able to focus. You didn't know?~ */
  IF ~~ THEN REPLY #44501 /* ~Are you suggesting that she is a child of Bhaal as well? That is just not possible.~ */ GOTO 8
  IF ~~ THEN REPLY #49406 /* ~This is madness, fool. You are out of your mind!~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 10.1 10.0 7.1 7.0
  SAY #44487 /* ~You must have suspected. Perhaps she felt no symptoms, but the taint was there. She is of similar age and was apparently secluded as a child, just as you were.~ */
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #44488 /* ~This Gorion of yours should have told you about yourselves early on. You might have learned not to fear what you are. ~ */
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 6.2 6.1
  SAY #44490 /* ~Imoen was more than bait, and has served just as you will. She is like you in many ways, and in one very special one.~ */
  IF ~~ THEN REPLY #44505 /* ~Are you suggesting that she is a child of Bhaal as well? That is just not possible.~ */ GOTO 8
  IF ~~ THEN REPLY #49409 /* ~This is madness, fool. You are out of your mind!~ */ GOTO 8
END

IF ~~ THEN BEGIN 11 // from: 9.0
  SAY #44493 /* ~Imoen is indeed a child of Bhaal. I suspect her innocent charm and humor suppressed the darkness. She showed no symptoms because there was no place for shadow in her spirit.~ */
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #44494 /* ~I had to show her some very dark shadows indeed. It is unfortunate that it had to be done, but it was necessary to get what I needed. Now I must focus on you.~ */
  IF ~~ THEN REPLY #44560 /* ~Why turn to me? I won't help you. ~ */ GOTO 13
  IF ~~ THEN REPLY #44561 /* ~So you cast her aside and try to take me? You are vile indeed!~ */ GOTO 14
  IF ~~ THEN REPLY #44562 /* ~I am strong; strong enough to stop you!~ */ GOTO 15
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #44620 /* ~You assume you are a volunteer, but I don't need your cooperation. I will take the essence of you regardless. ~ */
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 14 // from: 12.1
  SAY #44623 /* ~I am done with her. You should be more concerned about yourself. There is a very good chance you are about to die. ~ */
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 15 // from: 12.2
  SAY #44625 /* ~No, <CHARNAME>, you are not. It is much more likely that you are about to die. Unfortunate, but unavoidable.~ */
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0 14.0 13.0
  SAY #44713 /* ~Do you see the Shadow Thieves in the other chambers? They are the fruits of Bodhi's guild war, and their deaths shall force the divine soul from you.~ */
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 17 // from:
  SAY #44718 /* ~Be quiet, woman. He is worthless to me. Take him or throw him out with the trash; I care not.~ */
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 18 // from:
  SAY #44719 /* ~~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.0 16.0
  SAY #44731 /* ~Don't be afraid, <CHARNAME>. I suspect this will be mercifully quick. ~ */
  IF ~  OR(2)
!See("YOSHIMO")
Dead("YOSHIMO")
~ THEN DO ~EraseJournalEntry(15751)
EraseJournalEntry(15752)
EraseJournalEntry(23407)
ActionOverride("Yoshimo",SetDialogue("yoshimox"))
SetGlobal("AsylumPlot","GLOBAL",25)
StartCutSceneMode()
StartCutSceneEx("cut41zh",FALSE)
~ SOLVED_JOURNAL #16535 /* ~Inside the asylum

Irenicus has shown himself. It was his plan all along to bring me here. He has apprehended me through treachery, and he intends to take my "divine soul." He has already done as much to Imoen... who, according to Irenicus, is also a child of Bhaal.

Why did Gorion not tell me? How could she have been a child all this time? True, there was always a connection of sorts... and if Irenicus is to be believed, Imoen's own spirit kept the taint at bay for a long time... but, in the end, it doesn't matter. He said that Imoen barely survived the process he is about to put me through. He doesn't expect me to live.~ */ EXIT
  IF ~  See("YOSHIMO")
!Dead("YOSHIMO")
~ THEN REPLY #58207 /* ~Yoshimo! It's not too late! Help me!~ */ GOTO 61
  IF ~  See("YOSHIMO")
!Dead("YOSHIMO")
~ THEN REPLY #58208 /* ~I curse at you and Bodhi both, Irenicus. And Yoshimo as well!~ */ GOTO 62
  IF ~  See("YOSHIMO")
!Dead("YOSHIMO")
~ THEN REPLY #58209 /* ~Do what you must. I am resigned to the treachery I have suffered.~ */ GOTO 63
END

IF ~  Global("AsylumPlot","GLOBAL",31)
~ THEN BEGIN 20 // from:
  SAY #44855 /* ~Well, you are a strong one indeed! You resist beyond all reason! A pity you are dead on the inside.~ [IRENIC45] */
  IF ~~ THEN REPLY #44857 /* ~Whatever creature you conjured, I have defeated it. You shall be next.~ */ DO ~AddXPObject(Player1,48500)
AddXPObject(Player2,28500)
AddXPObject(Player3,28500)
AddXPObject(Player4,28500)
AddXPObject(Player5,28500)
AddXPObject(Player6,28500)
~ GOTO 21
  IF ~~ THEN REPLY #44858 /* ~Your plans have failed. Release me, and I shall be lenient.~ */ DO ~AddXPObject(Player1,48500)
AddXPObject(Player2,28500)
AddXPObject(Player3,28500)
AddXPObject(Player4,28500)
AddXPObject(Player5,28500)
AddXPObject(Player6,28500)
~ GOTO 21
  IF ~~ THEN REPLY #44859 /* ~You cannot turn me against myself. I have strengths you cannot see.~ */ DO ~AddXPObject(Player1,48500)
AddXPObject(Player2,28500)
AddXPObject(Player3,28500)
AddXPObject(Player4,28500)
AddXPObject(Player5,28500)
AddXPObject(Player6,28500)
~ GOTO 21
  IF ~  See("YOSHIMO")
!Dead("YOSHIMO")
~ THEN REPLY #58215 /* ~Yoshimo's treachery was for naught. I have defeated your little beastie.~ */ DO ~AddXPObject(Player1,48500)
AddXPObject(Player2,28500)
AddXPObject(Player3,28500)
AddXPObject(Player4,28500)
AddXPObject(Player5,28500)
AddXPObject(Player6,28500)
~ GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.3 20.2 20.1 20.0
  SAY #44856 /* ~I don't know what you faced while mired within the spell, but here in the world of the living, my plans have gone just as I wished.~ */
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #44860 /* ~I have drained you—drained you of the very thing that made you special. It is the worst of curses, and I should know. ~ [IRENIC46] */
  IF ~~ THEN REPLY #44861 /* ~What do you intend, Irenicus? What are you up to now?~ */ GOTO 23
  IF ~~ THEN REPLY #44862 /* ~I will fight you at every turn, Irenicus! Whatever you are planning!~ */ GOTO 24
  IF ~~ THEN REPLY #44863 /* ~I will not let you harm Imoen further. I will free us both. ~ */ GOTO 24
  IF ~  See("YOSHIMO")
!Dead("YOSHIMO")
~ THEN REPLY #58214 /* ~I will have revenge for what you and Yoshimo have done!~ */ GOTO 24
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #44864 /* ~No, you warrant no villain's exposition from me. You are barely sentient now; I have taken your very divinity and drained you of your soul.~ [IRENIC47] */
  IF ~~ THEN GOTO 48
END

IF ~~ THEN BEGIN 24 // from: 22.3 22.2 22.1
  SAY #44865 /* ~I have no doubt you would, but you are no longer a living threat. I have taken your very divinity and drained you of your soul. ~ [IRENIC48] */
  IF ~~ THEN GOTO 48
END

IF ~~ THEN BEGIN 25 // from: 48.0
  SAY #44866 /* ~Bodhi, remove this nothing... and Imoen as well. We are restored at their expense and need them no longer. Our revenge to come is now all the sweeter.~ [IRENIC50] */
  IF ~~ THEN EXTERN ~PPBODHI4~ 0
END

IF ~~ THEN BEGIN 26 // from:
  SAY #44868 /* ~Of course. See to it as quickly as possible. I will tell our friends in the dark of our coming. We will plan our assault from here.~ [IRENIC51] */
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 28.0 26.0
  SAY #44869 /* ~I bid you farewell, child of Bhaal; we shall not meet again.~ [IRENIC52] */
  IF ~~ THEN DO ~EraseJournalEntry(7252)
EraseJournalEntry(7253)
EraseJournalEntry(22952)
EraseJournalEntry(23306)
SetGlobal("AsylumPlot","GLOBAL",40)
StartCutSceneMode()
StartCutSceneEx("Cut41j",FALSE)
~ SOLVED_JOURNAL #7255 /* ~The transformation and the dream

While Irenicus cast his spell on me to steal my divinity... my soul... I was mired in a dream in which I fought against the personification of my instinct and prevailed. I awoke. My victory in my dream, however, did not mean victory in reality. Irenicus had successfully taken my soul and stated that now both he and Bodhi were free of the curse which they had been subjected to... and that Imoen and I would both die a slow and withering death.

What he plans to do next he would not say, but he left it to Bodhi to finish me off once and for all.~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from:
  SAY #44870 /* ~I have no time for this, woman! Utter another word, and it shall be your last!~ */
  IF ~~ THEN GOTO 27
END

IF ~  GlobalGT("AsylumPlot","GLOBAL",49)
GlobalLT("AsylumPlot","GLOBAL",54)
~ THEN BEGIN 29 // from:
  SAY #45158 /* ~Bodhi has disappointed me by letting you live, but the results are the same in the end. You should've fled when you had the chance to do so.~ [IRENIC53] */
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #45160 /* ~You were a fool to think you could attack me without help. I know you inside and out. I've taken your very soul. I've no use for the rest of you!~ */
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutSceneEx("Cut41k",FALSE)
~ EXIT
END

IF ~  Global("AsylumPlot","GLOBAL",54)
See("pptiax2")
~ THEN BEGIN 31 // from:
  SAY #45170 /* ~What is this? You have released all of my test subjects? How wonderfully mad of you. I did not expect this in the least, so dangerously risky it is. ~ [IRENIC54] */
  IF ~~ THEN REPLY #45171 /* ~I am glad I amuse you. Now I will end your plans and your life!~ */ GOTO 32
  IF ~~ THEN REPLY #45172 /* ~They have rallied around me! We shall all defeat you!~ */ GOTO 32
  IF ~~ THEN REPLY #45173 /* ~I don't need them, but I thought it fitting that those you tortured help in your fall!~ */ GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.2 31.1 31.0
  SAY #45174 /* ~As overeager as ever, but your boasting is wasted on me. You are no threat, not even with your army of madness.~ */
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #45175 /* ~Your fate has been sealed with the curse I transferred to you. I have the souls of both you and Imoen, and they have healed Bodhi and myself. You will die in our place, or worse.~ */
  IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #45185 /* ~Bodhi tells me you have exhibited a... transformation. With your will slowly fading, perhaps the essence of Bhaal will rise to take you. That would be a sight, I am sure.~ */
  IF ~~ THEN EXTERN ~PPWANEV2~ 4
END

IF ~~ THEN BEGIN 35 // from:
  SAY #45187 /* ~You tortured those here long before I arrived. I merely had more purpose to do it. Bah, I speak with madmen when I should be at my revenge!~ */
  IF ~  !IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Imoen2")
~ THEN GOTO 36
  IF ~  IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 163
  IF ~  !IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 460
  IF ~  !IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 19
END

IF ~~ THEN BEGIN 36 // from: 60.0 35.0
  SAY #45189 /* ~Die, all of you! I have restored my soul and will work my revenge without your interference!~ [IRENIC55] */
  IF ~~ THEN DO ~Enemy()
~ EXIT
END

IF ~  Global("AsylumPlot","GLOBAL",55)
~ THEN BEGIN 37 // from:
  SAY #45191 /* ~Damn you all! Why do I fight over this place when my plans may be laid anywhere?! I must start anew!~ [IRENIC56] */
  IF ~~ THEN FLAGS 128 GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #45193 /* ~Have your victory here then, but know that you are dying on the inside even now! Many will join you before I am done—my home will feel my wrath!~ [IRENIC57] */
  IF ~~ THEN GOTO 39
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #45195 /* ~Here! Fight amongst the mindless assassins I would sacrifice! I shall find others to serve my needs! This place is yours! I hope it is your tomb!~ [IRENIC58] */
  IF ~~ THEN DO ~AddXPObject(Player1,68500)
AddXPObject(Player2,68500)
AddXPObject(Player3,68500)
AddXPObject(Player4,68500)
AddXPObject(Player5,68500)
AddXPObject(Player6,68500)
Unlock("Door01")
Unlock("Door02")
Unlock("Door05")
Unlock("Door06")
Unlock("Door07")
Unlock("Door08")
Unlock("Door10")
OpenDoor("Door01")
OpenDoor("Door02")
OpenDoor("Door05")
OpenDoor("Door06")
OpenDoor("Door07")
OpenDoor("Door08")
OpenDoor("Door10")
SetGlobal("OpenJonBedroom","GLOBAL",1)
SetGlobal("YoshimoTeleport","GLOBAL",1)
ApplySpell(Myself,DRYAD_TELEPORT)
~ UNSOLVED_JOURNAL #23523 /* ~Escaping the asylum

Irenicus saw no point in fighting over the asylum now that the ritual on me has been completed. His "plans" can apparently be done anywhere, and so he left with my soul and Imoen's. He has released the assassins he had enspelled, making this a real madhouse. I must flee this place and find some way off of this island!~ */ EXIT
END

IF ~  GlobalGT("AsylumPlot","GLOBAL",17)
GlobalLT("AsylumPlot","GLOBAL",20)
~ THEN BEGIN 40 // from:
  SAY #46002 /* ~I see you have made yourself at home. I didn't think you would feel out of place here.~ [IRENIC35] */
  IF ~~ THEN DO ~SetGlobal("AsylumPlot","GLOBAL",20)
EraseJournalEntry(3361)
~ GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #46016 /* ~Do not look so surprised; you must have expected to find me near your Imoen.~ [IRENIC36] */
  IF ~~ THEN REPLY #46017 /* ~I am surprised that you are allowed to walk around freely. I would have killed you.~ */ GOTO 42
  IF ~~ THEN REPLY #46018 /* ~You are foolish to approach me so brazenly! No wonder you are in this asylum!~ */ GOTO 42
  IF ~~ THEN REPLY #46019 /* ~You are an afterthought. My concern is Imoen, not your imprisonment. ~ */ GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 41.2 41.1 41.0
  SAY #46021 /* ~Oh, but I'm not incarcerated here—no, I am the new coordinator, and you are in my care... once again.~ [IRENIC37] */
  IF ~~ THEN GOTO 43
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #46023 /* ~It is fortunate you arrived when you did. I am eager to resume my experiments and was growing tired of the waiting.~ [IRENIC38] */
  IF ~~ THEN REPLY #46025 /* ~What are you talking about? Is this another Cowled Wizard trick?~ */ GOTO 44
  IF ~~ THEN REPLY #46026 /* ~A foolish plan. I am quite capable of countering any Cowled Wizard ambush.~ */ GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 43.1 43.0
  SAY #46027 /* ~The Cowled Wizards no longer run the asylum. With Bodhi's aid, I was able to take control quite quickly. She is a fine sibling, if a touch predatory.~ */
  IF ~~ THEN REPLY #46028 /* ~You'll pay for what you've done, Irenicus! I owe you a great debt of pain!~ */ GOTO 45
  IF ~~ THEN REPLY #46029 /* ~Whether inmate or master, you are the monster that I have sworn to kill!~ */ GOTO 45
  IF ~~ THEN REPLY #46030 /* ~I have come for Imoen, and nothing you can do will prevent me from saving her!~ */ GOTO 45
END

IF ~~ THEN BEGIN 45 // from: 44.2 44.1 44.0
  SAY #46031 /* ~You are intent on revenge or justice or whatever, but I don't really care. You can't do anything I don't wish you to.~ */
  IF ~  InParty("YOSHIMO")
!Dead("YOSHIMO")
!StateCheck("YOSHIMO",STATE_SLEEPING)
~ THEN DO ~SetGlobal("YoshimoAndHisBetrayal","GLOBAL",1)
~ GOTO 52
  IF ~  InPartyAllowDead("YOSHIMO")
OR(2)
Dead("YOSHIMO")
StateCheck("YOSHIMO",STATE_SLEEPING)
~ THEN DO ~SetGlobal("YoshimoAndHisBetrayal","GLOBAL",1)
~ GOTO 53
  IF ~  !InPartyAllowDead("YOSHIMO")
~ THEN DO ~SetGlobal("YoshimoAndHisBetrayal","GLOBAL",1)
~ GOTO 54
END

IF ~~ THEN BEGIN 46 // from: 57.2 57.1 57.0 54.2 54.1 54.0
  SAY #46032 /* ~You will find you are powerless. I have taken precautions that you will not be damaged. Your rage is for naught. ~ */
  IF ~~ THEN GOTO 47
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #46033 /* ~There is no battle, no heroics. Only sleep. ~ */
  IF ~~ THEN DO ~SetGlobal("AsylumPlot","GLOBAL",20)
~ EXIT
END

IF ~~ THEN BEGIN 48 // from: 24.0 23.0
  SAY #49420 /* ~The curse that was wrought against Bodhi and I has now ceased, and yours has begun. You will wither, you will wane, and you will die.~ [IRENIC49] */
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 49 // from: 1.0
  SAY #49425 /* ~Had you known of Yoshimo, things might have been different... but a spell component slipped into a soup will still get anyone in the end.~ [IRENIC43] */
  IF ~~ THEN REPLY #58757 /* ~Not even a chance for a stand-up fight. Treacherous and cowardly.~ */ GOTO 50
  IF ~~ THEN REPLY #58758 /* ~I am sure you forced him into whatever deal you have with him. ~ */ GOTO 50
  IF ~~ THEN REPLY #58759 /* ~I have yet to make a judgment on that subject. I'm sure all your words are lies. ~ */ GOTO 50
END

IF ~~ THEN BEGIN 50 // from: 49.2 49.1 49.0
  SAY #49426 /* ~It was his suggestion, really. A fine way to retrieve you unharmed. Of course, your safety is no longer a concern at this point. ~ [IRENIC44] */
  IF ~  Dead("YOSHIMO")
~ THEN GOTO 3
  IF ~  !Dead("YOSHIMO")
~ THEN EXTERN ~YOSHIMOX~ 3
END

IF ~~ THEN BEGIN 51 // from:
  SAY #49428 /* ~Quiet yourself, Yoshimo, and quit babbling about death. You are quite safe now, and my plans for <CHARNAME> go beyond simple murder. You will see soon enough.~ */
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 52 // from: 45.0
  SAY #49430 /* ~Yoshimo, I trust everything is as I instructed?~ */
  IF ~~ THEN REPLY #58721 /* ~Lies! You're not going to turn us against each other with your little mind games.~ */ GOTO 65
  IF ~~ THEN REPLY #58722 /* ~What are you talking about, Irenicus? You have no allies in my group.~ */ GOTO 64
  IF ~~ THEN REPLY #58723 /* ~What is he talking about, Yoshimo?~ */ EXTERN ~YOSHJ~ 115
END

IF ~~ THEN BEGIN 53 // from: 45.1
  SAY #49431 /* ~I do not see my servant with you. Did you discover Yoshimo's treachery, I wonder? I would be surprised if you did. He was very good.~ */
  IF ~~ THEN REPLY #49442 /* ~What are you talking about? Yours is the only treachery here.~ */ GOTO 58
  IF ~~ THEN REPLY #49443 /* ~Yoshimo? He has been a loyal friend since I encountered him in... your dungeon...~ */ GOTO 58
  IF ~~ THEN REPLY #49444 /* ~I don't believe it. You accuse him when he cannot defend himself. It's a lie.~ */ GOTO 58
END

IF ~~ THEN BEGIN 54 // from: 45.2
  SAY #49432 /* ~Your fate has been sealed since before you arrived. A simple addition to rations and meals by a master of herbs, Mister Saemon Havarian.~ */
  IF ~~ THEN REPLY #49447 /* ~What is this? I will defeat your treachery!~ */ GOTO 46
  IF ~~ THEN REPLY #49448 /* ~That fool? I will track him down after I have killed you!~ */ GOTO 46
  IF ~~ THEN REPLY #49449 /* ~I am prepared for an ambush. Attempting to fight will get you nowhere.~ */ GOTO 46
END

IF ~~ THEN BEGIN 55 // from:
  SAY #49436 /* ~No traitor, <CHARNAME>. He has proven exceptionally loyal through all of this. Loyal to me.~ */
  IF ~~ THEN EXTERN ~YOSHJ~ 113
END

IF ~~ THEN BEGIN 56 // from:
  SAY #49437 /* ~He speaks of loyalty, <CHARNAME>, loyalty to me through all his trials.~ */
  IF ~~ THEN EXTERN ~YOSHJ~ 113
END

IF ~~ THEN BEGIN 57 // from: 59.0
  SAY #49438 /* ~You may be disappointed, but I am well pleased. My servants have proven to be artists with herbs, as well with deception. Your meals aboard ship were prepared exactly to my specifications. ~ */
  IF ~~ THEN REPLY #49439 /* ~What are you talking about? What's going on here?~ */ GOTO 46
  IF ~~ THEN REPLY #49440 /* ~I will fight you! You will pay for this!~ */ GOTO 46
  IF ~~ THEN REPLY #49441 /* ~I am well prepared for an ambush. Your talk does not worry me.~ */ GOTO 46
END

IF ~~ THEN BEGIN 58 // from: 53.2 53.1 53.0
  SAY #49445 /* ~No, you have been usurped from within. Not all in my care were there against their will. Yoshimo has certainly proven his worth, with some encouragement.~ */
  IF ~~ THEN GOTO 59
END

IF ~~ THEN BEGIN 59 // from: 58.0
  SAY #49446 /* ~And if not he, then Saemon Havarian sealed your fate. Either way, you have already lost. ~ */
  IF ~~ THEN GOTO 57
END

IF ~~ THEN BEGIN 60 // from:
  SAY #55777 /* ~Bah! Your pathetic mewlings mean even less to me than <CHARNAME>'s!~ */
  IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 61 // from: 19.1
  SAY #58210 /* ~It is too late, <CHARNAME>. He can't help you. I've ensured it, and you will soon be beyond it all anyway.~ */
  IF ~~ THEN DO ~EraseJournalEntry(15731)
EraseJournalEntry(15752)
EraseJournalEntry(23407)
ActionOverride("Yoshimo",SetDialogue("yoshimox"))
SetGlobal("AsylumPlot","GLOBAL",25)
StartCutSceneMode()
StartCutSceneEx("cut41zh",FALSE)
~ SOLVED_JOURNAL #16535 /* ~Inside the asylum

Irenicus has shown himself. It was his plan all along to bring me here. He has apprehended me through treachery, and he intends to take my "divine soul." He has already done as much to Imoen... who, according to Irenicus, is also a child of Bhaal.

Why did Gorion not tell me? How could she have been a child all this time? True, there was always a connection of sorts... and if Irenicus is to be believed, Imoen's own spirit kept the taint at bay for a long time... but, in the end, it doesn't matter. He said that Imoen barely survived the process he is about to put me through. He doesn't expect me to live.~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from: 19.2
  SAY #58211 /* ~Don't bother placing Yoshimo's name next to mine. He is merely a servant. Just go quietly, <CHARNAME>. You might even live.~ */
  IF ~~ THEN DO ~EraseJournalEntry(15731)
EraseJournalEntry(15752)
EraseJournalEntry(23407)
ActionOverride("Yoshimo",SetDialogue("yoshimox"))
SetGlobal("AsylumPlot","GLOBAL",25)
StartCutSceneMode()
StartCutSceneEx("cut41zh",FALSE)
~ SOLVED_JOURNAL #16535 /* ~Inside the asylum

Irenicus has shown himself. It was his plan all along to bring me here. He has apprehended me through treachery, and he intends to take my "divine soul." He has already done as much to Imoen... who, according to Irenicus, is also a child of Bhaal.

Why did Gorion not tell me? How could she have been a child all this time? True, there was always a connection of sorts... and if Irenicus is to be believed, Imoen's own spirit kept the taint at bay for a long time... but, in the end, it doesn't matter. He said that Imoen barely survived the process he is about to put me through. He doesn't expect me to live.~ */ EXIT
END

IF ~~ THEN BEGIN 63 // from: 19.3
  SAY #58212 /* ~So I see, but the brave face is wasted on Yoshimo. He can't help you. Just relax and accept what has to come.~ */
  IF ~~ THEN DO ~EraseJournalEntry(15731)
EraseJournalEntry(15752)
EraseJournalEntry(23407)
ActionOverride("Yoshimo",SetDialogue("yoshimox"))
SetGlobal("AsylumPlot","GLOBAL",25)
StartCutSceneMode()
StartCutSceneEx("cut41zh",FALSE)
~ SOLVED_JOURNAL #16535 /* ~Inside the asylum

Irenicus has shown himself. It was his plan all along to bring me here. He has apprehended me through treachery, and he intends to take my "divine soul." He has already done as much to Imoen... who, according to Irenicus, is also a child of Bhaal.

Why did Gorion not tell me? How could she have been a child all this time? True, there was always a connection of sorts... and if Irenicus is to be believed, Imoen's own spirit kept the taint at bay for a long time... but, in the end, it doesn't matter. He said that Imoen barely survived the process he is about to put me through. He doesn't expect me to live.~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from: 52.1
  SAY #58725 /* ~You are mistaken, of course. I have had my interests taken care of from the beginning. ~ */
  IF ~~ THEN EXTERN ~YOSHJ~ 117
END

IF ~~ THEN BEGIN 65 // from: 52.0
  SAY #58726 /* ~I have no need to turn you. Your group is fractured as it is. I have had my interests represented well from the beginning. ~ */
  IF ~~ THEN EXTERN ~YOSHJ~ 116
END

IF ~~ THEN BEGIN 66 // from:
  SAY #58729 /* ~You have done as you must, Yoshimo. I have seen to it. Now, is everything as I asked?~ */
  IF ~~ THEN EXTERN ~YOSHJ~ 69
END

IF ~~ THEN BEGIN 67 // from:
  SAY #58731 /* ~What you earned is of no consequence. I *took* his trust in the beginning. That is all there is to be said.~ */
  IF ~~ THEN EXTERN ~YOSHJ~ 113
END

IF ~~ THEN BEGIN 68 // from:
  SAY #58760 /* ~~ */
  IF ~~ THEN EXIT
END
