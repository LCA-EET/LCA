// creator  : weidu (version 24900)
// argument : PPIRENI1.DLG
// game     : .
// source   : ./override/PPIRENI1.DLG
// dialog   : .\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~PPIRENI1~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #44218 /* ~I trust you have good reason to be entering this place? It's <CHARNAME>, isn't it?~ [IRENIC10] */
  IF ~~ THEN REPLY #44219 /* ~You know my name? How?~ */ DO ~Unlock("Door06")
OpenDoor("Door06")
EraseJournalEntry(11661)
EraseJournalEntry(11681)
EraseJournalEntry(15715)
EraseJournalEntry(15760)
EraseJournalEntry(19364)
EraseJournalEntry(3362)
EraseJournalEntry(9982)
EraseJournalEntry(11681)
EraseJournalEntry(11686)
EraseJournalEntry(11884)
EraseJournalEntry(15783)
EraseJournalEntry(15794)
EraseJournalEntry(16541)
EraseJournalEntry(16677)
EraseJournalEntry(23512)
EraseJournalEntry(5059)
EraseJournalEntry(6934)
EraseJournalEntry(7235)
EraseJournalEntry(10106)
EraseJournalEntry(10107)
EraseJournalEntry(10670)
EraseJournalEntry(10671)
EraseJournalEntry(10933)
EraseJournalEntry(11689)
EraseJournalEntry(11755)
EraseJournalEntry(11904)
EraseJournalEntry(15698)
EraseJournalEntry(15703)
EraseJournalEntry(15801)
EraseJournalEntry(16558)
EraseJournalEntry(20367)
EraseJournalEntry(23504)
EraseJournalEntry(23530)
~ GOTO 1
  IF ~~ THEN REPLY #44220 /* ~Spare your words! I am here for Imoen! Where is she?!~ */ DO ~Unlock("Door06")
OpenDoor("Door06")
EraseJournalEntry(11661)
EraseJournalEntry(11681)
EraseJournalEntry(15715)
EraseJournalEntry(15760)
EraseJournalEntry(19364)
EraseJournalEntry(3362)
EraseJournalEntry(9982)
EraseJournalEntry(11681)
EraseJournalEntry(11686)
EraseJournalEntry(11884)
EraseJournalEntry(15783)
EraseJournalEntry(15794)
EraseJournalEntry(16541)
EraseJournalEntry(16677)
EraseJournalEntry(23512)
EraseJournalEntry(5059)
EraseJournalEntry(6934)
EraseJournalEntry(7235)
EraseJournalEntry(10106)
EraseJournalEntry(10107)
EraseJournalEntry(10670)
EraseJournalEntry(10671)
EraseJournalEntry(10933)
EraseJournalEntry(11689)
EraseJournalEntry(11755)
EraseJournalEntry(11904)
EraseJournalEntry(15698)
EraseJournalEntry(15703)
EraseJournalEntry(15801)
EraseJournalEntry(16558)
EraseJournalEntry(20367)
EraseJournalEntry(23504)
EraseJournalEntry(23530)
~ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #44221 /* ~You made inquiries in town. I have agents and eyes. Security is quite important when dealing with an institution such as this.~ [IRENIC11] */
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0 0.1
  SAY #44222 /* ~I know why you have come; you have been observed since you arrived on the isle. No doubt you are brimming with concern for your "Imoen."~ [IRENIC12] */
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #44223 /* ~She is in good health, and if you will permit me, I will direct you to her. This is not a prison, but an institution of healing... and learning.~ [IRENIC13] */
  IF ~~ THEN REPLY #44224 /* ~Then release her to me. ~ */ GOTO 4
  IF ~~ THEN REPLY #44225 /* ~Then why the overzealous security measures?~ */ GOTO 6
  IF ~~ THEN REPLY #44226 /* ~She was taken here against her will! ~ */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 6.0 5.0 3.0
  SAY #44227 /* ~It is not as simple as that, though it never is, is it? Still, I'm sure you will understand more once I have explained.~ */
  IF ~  !IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("JAN")
!IsValidForPartyDialogue("AERIE")
!IsValidForPartyDialogue("EDWIN")
~ THEN GOTO 7
  IF ~  IsValidForPartyDialogue("JAHEIRA")
~ THEN EXTERN ~JAHEIRAJ~ 451
  IF ~  !IsValidForPartyDialogue("JAHEIRA")
IsValidForPartyDialogue("JAN")
~ THEN EXTERN ~JANJ~ 149
  IF ~  !IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("JAN")
IsValidForPartyDialogue("AERIE")
~ THEN EXTERN ~AERIEJ~ 133
  IF ~  !IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("JAN")
!IsValidForPartyDialogue("AERIE")
IsValidForPartyDialogue("EDWIN")
~ THEN EXTERN ~EDWINJ~ 98
END

IF ~~ THEN BEGIN 5 // from: 3.2
  SAY #44228 /* ~Perhaps at first, for her own safety. The incident she was involved with was violent and distressing, and she needed help.~ */
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 3.1
  SAY #44229 /* ~We deal with dangerous subjects. Imoen was brought here for her own safety, and it would not do for her to be endangered while here, would it?~ */
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 7 // from: 4.0
  SAY #44230 /* ~Please, you have worked so hard to come here. Allow me to show you what I mean. I shall let you examine the facilities, and Imoen, for yourself.~ */
  IF ~~ THEN REPLY #44231 /* ~Lead on then, but I shall be wary of any treachery.~ */ GOTO 8
  IF ~~ THEN REPLY #44232 /* ~Take me to her now! I will not tolerate any delays!~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.1 7.0
  SAY #44237 /* ~This way, <CHARNAME>. I will explain as we go.~ */
  IF ~~ THEN DO ~SetGlobal("AsylumPlot","GLOBAL",12)
~ UNSOLVED_JOURNAL #9682 /* ~Inside the asylum

I have encountered the coordinator of Spellhold. He seems rather friendly enough and has agreed to give a tour as well as bring me to Imoen, who he implies is not ready to leave this place of "healing." I intend to judge for myself.~ */ EXIT
END

IF ~  Global("AsylumPlot","GLOBAL",13)
~ THEN BEGIN 9 // from:
  SAY #44238 /* ~The Residence for the Magically Deviant houses many people, all of whom can benefit from a structured environment.~ [IRENIC14] */
  IF ~~ THEN DO ~SetGlobal("AsylumPlot","GLOBAL",14)
~ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #44239 /* ~They can also be studied, such that what they are capable of is understood better. Take young Dili here. She was cast from her family for her talents.~ [IRENIC15] */
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #44240 /* ~At a remarkably young age, she learned how to shape magical energy, allowing her to change her form as she wishes.~ [IRENIC16] */
  IF ~~ THEN EXTERN ~PPDILI~ 6
END

IF ~~ THEN BEGIN 12 // from:
  SAY #44242 /* ~Here, she is safe, and others have learned something of what she does. It is invaluable information.~ [IRENIC17] */
  IF ~~ THEN DO ~SetGlobal("dilipoly","AR1515",1)
~ EXIT
END

IF ~  Global("AsylumPlot","GLOBAL",14)
~ THEN BEGIN 13 // from:
  SAY #44243 /* ~This is Wanev. He used to be the asylum coordinator before I took the post. Too much exposure to magical forces, I suspect. ~ [IRENIC18] */
  IF ~~ THEN DO ~SetGlobal("AsylumPlot","GLOBAL",15)
~ EXTERN ~PPWANEV~ 3
END

IF ~~ THEN BEGIN 14 // from:
  SAY #44245 /* ~His mind could not handle the energies that circulate this place. A bad reaction to a particular spell unhinged him quite dramatically. ~ [IRENIC19] */
  IF ~  !IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("MAZZY")
!IsValidForPartyDialogue("YOSHIMO")
~ THEN GOTO 15
  IF ~  IsValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~KORGANJ~ 116
  IF ~  IsValidForPartyDialogue("MAZZY")
!IsValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~MAZZYJ~ 167
  IF ~  IsValidForPartyDialogue("YOSHIMO")
!IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("MAZZY")
~ THEN EXTERN ~YOSHJ~ 91
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #44246 /* ~No one foresaw it, but with study, we can prevent it happening again. His career is over though.~ [IRENIC20] */
  IF ~~ THEN EXIT
END

IF ~  Global("AsylumPlot","GLOBAL",15)
~ THEN BEGIN 16 // from:
  SAY #44247 /* ~This is Naljier Skal. Once a great bard of some repute, though now he is little more than a child.~ [IRENIC21] */
  IF ~~ THEN DO ~SetGlobal("AsylumPlot","GLOBAL",16)
~ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #44632 /* ~His last research project was into the nature of the universe and what lies beyond the gods. Something apparently didn't like him looking.~ [IRENIC22] */
  IF ~~ THEN EXTERN ~PPNALJ~ 0
END

IF ~~ THEN BEGIN 18 // from:
  SAY #44635 /* ~Somehow he retains his spellcasting abilities, however, and is incredibly dangerous if unsupervised.~ [IRENIC23] */
  IF ~~ THEN EXIT
END

IF ~  Global("AsylumPlot","GLOBAL",16)
~ THEN BEGIN 19 // from:
  SAY #44638 /* ~This is Aphril, and she sees a bit too much as well. Experiments with planar travel have given her sight that extends beyond the world we know.~ [IRENIC24] */
  IF ~~ THEN DO ~SetGlobal("AsylumPlot","GLOBAL",17)
~ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #44639 /* ~Unfortunately, she can also see the denizens of those other realms. They are quite numerous, apparently, and she is never truly alone.~ [IRENIC25] */
  IF ~~ THEN EXTERN ~PPAPHRIL~ 0
END

IF ~~ THEN BEGIN 21 // from:
  SAY #44646 /* ~She does not sleep much. What use are eyelids when you can see through the planes? She will be studied so that some good may come of her condition.~ [IRENIC26] */
  IF ~~ THEN EXIT
END

IF ~  Global("AsylumPlot","GLOBAL",17)
~ THEN BEGIN 22 // from:
  SAY #44648 /* ~This is Tiax. Not too much is known about him. He was found raving on the side of some road. ~ [IRENIC27] */
  IF ~~ THEN DO ~SetGlobal("AsylumPlot","GLOBAL",18)
~ EXTERN ~PPTIAX~ 6
END

IF ~~ THEN BEGIN 23 // from:
  SAY #44652 /* ~Obviously a danger, as you can see.~ [IRENIC28] */
  IF ~~ THEN EXIT
END

IF ~  Global("AsylumPlot","GLOBAL",18)
~ THEN BEGIN 24 // from:
  SAY #44653 /* ~An aged elven mage is this cell's occupant. Very powerful, though he is incapable of trusting a soul. Dradeel is his name.~ [IRENIC29] */
  IF ~~ THEN DO ~SetGlobal("AsylumPlot","GLOBAL",19)
~ EXTERN ~PPDRADEE~ 0
END

IF ~~ THEN BEGIN 25 // from:
  SAY #44656 /* ~Obviously, he has had some sort of traumatic experience in the past. He cannot be allowed to roam with the power he possesses.~ [IRENIC30] */
  IF ~~ THEN EXIT
END

IF ~  Global("AsylumPlot","GLOBAL",19)
~ THEN BEGIN 26 // from:
  SAY #44657 /* ~And lastly... the one you seek. She is quite well, considering the circumstances.~ [IRENIC31] */
  IF ~~ THEN EXTERN ~PPIMOEN~ 6
END

IF ~~ THEN BEGIN 27 // from:
  SAY #44661 /* ~She does not seem willing to respond right now. Her consciousness comes and goes. It is fortunate you arrived when you did. ~ [IRENIC32] */
  IF ~~ THEN REPLY #44662 /* ~Yes, it is. I'll be leaving with her right now!~ */ GOTO 28
  IF ~~ THEN REPLY #44663 /* ~You monsters! I'll not leave until you tell me what you have done to her!~ */ GOTO 28
  IF ~~ THEN REPLY #44664 /* ~I'll kill you for what you've done here!~ */ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.2 27.1 27.0
  SAY #44665 /* ~Oh, you misunderstand. It is fortunate for *me* that you arrived when you did. I'm quite through with her for the moment. It is *you* that I am after. ~ [IRENIC33] */
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #44666 /* ~I knew you would seek her, and so the path was difficult, but not impossible. All designed to test your potential.~ [IRENIC34] */
  IF ~~ THEN REPLY #44668 /* ~What are you talking about? Is this another Cowled Wizard trick?~ */ GOTO 30
  IF ~~ THEN REPLY #44669 /* ~A foolish plan! I am quite capable of countering any Cowled Wizard ambush.~ */ GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.1 29.0
  SAY #44667 /* ~The Cowled Wizards no longer run the asylum. With Bodhi's aid, I was able to take control quite quickly. She is a fine sibling, if a touch predatory. I trust you remember my name now?~ */
  IF ~~ THEN REPLY #44671 /* ~That I do. You are Irenicus, and I owe you a great debt of pain.~ */ GOTO 32
  IF ~~ THEN REPLY #44672 /* ~The monster Irenicus that I have sworn to kill!~ */ GOTO 32
  IF ~~ THEN REPLY #44673 /* ~A lowlife knobgoblin that deserves only death!~ */ GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.2
  SAY #44670 /* ~Typical. If I had a sense of humor left, I might find that funny. I do not, on both accounts. ~ */
  IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.0 30.1 30.0
  SAY #44674 /* ~You are intent on revenge or justice or whatever. I care not. You can do nothing I do not wish.~ */
  IF ~  IsValidForPartyDialogue("YOSHIMO")
~ THEN GOTO 35
  IF ~  InPartyAllowDead("Yoshimo")
!IsValidForPartyDialogue("YOSHIMO")
~ THEN GOTO 39
  IF ~  !InPartyAllowDead("YOSHIMO")
~ THEN GOTO 40
END

IF ~~ THEN BEGIN 33 // from: 40.2 40.1 40.0 38.2 38.1 38.0
  SAY #44675 /* ~You will find you are powerless. I have taken precautions that you will not be damaged. Rage would be wasted. ~ */
  IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #44676 /* ~There is no battle, no heroics. Only sleep.~ */
  IF ~~ THEN DO ~SetGlobal("AsylumPlot","GLOBAL",20)
DisplayString(Myself,50707)
Spell(Myself,DO_NOTHING)
StartCutSceneMode()
StartCutSceneEx("Cut41g",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 35 // from: 32.0
  SAY #49356 /* ~Yoshimo, I trust everything is as I instructed?~ */
  IF ~~ THEN REPLY #58684 /* ~Lies! You're not going to turn us against each other with your little mind games.~ */ GOTO 44
  IF ~~ THEN REPLY #58685 /* ~What are you talking about, Irenicus? You have no allies in my group.~ */ GOTO 43
  IF ~~ THEN REPLY #58686 /* ~What is he talking about, Yoshimo?~ */ EXTERN ~YOSHJ~ 110
END

IF ~~ THEN BEGIN 36 // from:
  SAY #49361 /* ~No traitor, <CHARNAME>. He has proven exceptionally loyal through all of this. Loyal to me.~ */
  IF ~~ THEN EXTERN ~YOSHJ~ 113
END

IF ~~ THEN BEGIN 37 // from:
  SAY #49362 /* ~He speaks of loyalty, <CHARNAME>, loyalty to me through all his trials.~ */
  IF ~~ THEN EXTERN ~YOSHJ~ 113
END

IF ~~ THEN BEGIN 38 // from: 42.0
  SAY #49364 /* ~You may be disappointed, but I am well pleased. My servants have proven to be artists with herbs, as well with deception. Your meals aboard ship were prepared exactly to my specifications. ~ */
  IF ~~ THEN REPLY #49365 /* ~What are you talking about? What's going on here?~ */ GOTO 33
  IF ~~ THEN REPLY #49366 /* ~I will fight you! You will pay for this!~ */ GOTO 33
  IF ~~ THEN REPLY #49367 /* ~I am well prepared for an ambush. Your talk does not worry me.~ */ GOTO 33
END

IF ~~ THEN BEGIN 39 // from: 32.1
  SAY #49369 /* ~I do not see my servant with you. Did you discover Yoshimo's treachery, I wonder? I would be surprised if you did. He was very good.~ */
  IF ~~ THEN REPLY #49387 /* ~What are you talking about? Yours is the only treachery here.~ */ GOTO 41
  IF ~~ THEN REPLY #49388 /* ~Yoshimo? He has been a loyal friend since I encountered him in... your dungeon...~ */ GOTO 41
  IF ~~ THEN REPLY #49389 /* ~I don't believe it. You accuse him when he cannot defend himself. It's a lie.~ */ GOTO 41
END

IF ~~ THEN BEGIN 40 // from: 32.2
  SAY #49370 /* ~Your fate has been sealed since before you arrived. A simple addition to rations and meals by a master of herbs, Mister Saemon Havarian.~ */
  IF ~~ THEN REPLY #49398 /* ~What is this? I will defeat your treachery!~ */ GOTO 33
  IF ~~ THEN REPLY #49399 /* ~That fool? I will track him down after I have killed you!~ */ GOTO 33
  IF ~~ THEN REPLY #49400 /* ~I am prepared for an ambush. Attempting to fight will get you nowhere.~ */ GOTO 33
END

IF ~~ THEN BEGIN 41 // from: 39.2 39.1 39.0
  SAY #49392 /* ~No, you have been usurped from within. Not all in my care were there completely against their will. Yoshimo has certainly proven his worth, with some encouragement. ~ */
  IF ~~ THEN GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #49395 /* ~And if not he, then Saemon Havarian sealed your fate. Either way, you have already lost. ~ */
  IF ~~ THEN GOTO 38
END

IF ~~ THEN BEGIN 43 // from: 35.1
  SAY #58689 /* ~You are mistaken, of course. I have had my interests taken care of from the beginning. ~ */
  IF ~~ THEN EXTERN ~YOSHJ~ 111
END

IF ~~ THEN BEGIN 44 // from: 35.0
  SAY #58690 /* ~I have no need to turn you. Your group is fractured as it is. I have had my interests represented well from the beginning. ~ */
  IF ~~ THEN EXTERN ~YOSHJ~ 112
END

IF ~~ THEN BEGIN 45 // from:
  SAY #58692 /* ~You have done as you must, Yoshimo. I have seen to it. Now, is everything as I asked?~ */
  IF ~~ THEN EXTERN ~YOSHJ~ 64
END

IF ~~ THEN BEGIN 46 // from:
  SAY #58695 /* ~What you earned is of no consequence. I *took* his trust in the beginning. That is all there is to be said.~ */
  IF ~~ THEN EXTERN ~YOSHJ~ 113
END
