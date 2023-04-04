// creator  : weidu (version 24900)
// argument : ANOMENJ.DLG
// game     : .
// source   : ./override/ANOMENJ.DLG
// dialog   : .\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~ANOMENJ~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #9 /* Triggers after states #: 28 32 89 101 110 150 205 207 282 even though they appear after this state */
~  Global("DomainPaladinBattle","GLOBAL",1)
Global("AnomenMonsters","LOCALS",0)
~ THEN BEGIN 0 // from:
  SAY #6187 /* ~Helm's beard! What have we done? A most foul ruse has been played upon this company! Innocents are slain; the lifeblood of the Order stains the ground at my feet! What have we done?~ [ANOMEN99] */
  IF ~~ THEN REPLY #6188 /* ~Something is most assuredly wrong with this situation. What happened?~ */ GOTO 1
  IF ~~ THEN REPLY #6249 /* ~Quit your blubbering! We were attacked and had to defend ourselves.~ */ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 3.0 0.0
  SAY #6250 /* ~It was all an illusion! These are paladins and knights of the Most Noble Order of the Radiant Heart. I know this man, Ajantis. He was a noble man, but now is dead by our hand.~ */
  IF ~  False()
~ THEN REPLY #6251 /* ~As did I, Anomen. ~ */ GOTO 4
  IF ~~ THEN REPLY #6266 /* ~If what you say is true, then we have done a terrible thing. Illusion or not, innocents have died and we are responsible. What do we do now?~ */ GOTO 2
  IF ~~ THEN REPLY #6301 /* ~I don't believe you.~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 4.0 1.1
  SAY #6255 /* ~There is only one option open to us. We must track down the one who played this foul trick upon us and extract our stolen honor from his cursed hide.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.2 0.1
  SAY #6256 /* ~Faithless fool! You do not understand the import of this event. Innocents were slain by our hand, and we are now cursed as forever dishonorable.~ */
  IF ~~ THEN REPLY #6257 /* ~What do you mean by innocents? We slew ogres.~ */ GOTO 1
  IF ~~ THEN REPLY #6258 /* ~You are wrong. I care not for the opinions of others. No one is permitted to judge me.~ */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 1.0
  SAY #6325 /* ~Aye, I had heard Ajantis speak of you. You know what we must do then?~ */
  IF ~~ THEN REPLY #6326 /* ~Obviously, we must make amends. But how shall we do so?~ */ GOTO 2
  IF ~~ THEN REPLY #6327 /* ~I do not believe that we have to do anything. We thought that they were ogres when we killed them.~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.1 3.1
  SAY #6333 /* ~Though dishonor seems to fit you like a well-worn cloak, I do not have the luxury that your lack of morals allows you. We must track down the one who has enacted this ruse!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from:
  SAY #6379 /* ~<CHARNAME>, do not be rude to this man. He is the only witness that we have to show that we did not murder these knights in cold blood. ~ */
  IF ~~ THEN REPLY #6380 /* ~You have a point, Anomen. I will hear this man out.~ */ EXTERN ~GARREN~ 3
  IF ~~ THEN REPLY #6381 /* ~Should I wish to hear your opinion, I will ask for it.~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY #6382 /* ~Do not let your predilection for idiocy cloud your judgment this day. When the Order hears of this, we shall be hunted outlaws with no place to hide ourselves. ~ */
  IF ~~ THEN REPLY #6384 /* ~I know what I'm doing, Anomen. Quiet yourself.~ */ EXTERN ~GARREN~ 4
  IF ~~ THEN REPLY #6385 /* ~I will hear this man out.~ */ EXTERN ~GARREN~ 3
END

IF ~~ THEN BEGIN 8 // from:
  SAY #6432 /* ~This is not an offer to be ignored. We shall find no better sanctuary than that of this man, Garren. Let us base our investigation from his cabin.~ */
  IF ~~ THEN REPLY #6445 /* ~Perhaps you are correct. We shall go with Garren.~ */ EXTERN ~GARREN~ 8
  IF ~~ THEN REPLY #6446 /* ~I'll take my chances.~ */ EXTERN ~GARREN~ 5
END

IF WEIGHT #10 /* Triggers after states #: 28 32 89 101 110 150 205 207 282 even though they appear after this state */
~  Global("AnomenMonsters","LOCALS",1)
Global("Kidnap","GLOBAL",3)
~ THEN BEGIN 9 // from:
  SAY #6448 /* ~Fortune smiles upon us. With this selfless act, we could restore some small part of our stolen honor. Helm has not forgotten us!~ [ANOMENA8] */
  IF ~~ THEN EXIT
END

IF WEIGHT #11 /* Triggers after states #: 28 32 89 101 110 150 205 207 282 even though they appear after this state */
~  False()
~ THEN BEGIN 10 // from:
  SAY #6452 /* ~Methinks it would be wise to rescue this child of Garren's. We must not let an opportunity to restore some measure of our honor pass. ~ [ANOMENA9] */
  IF ~~ THEN REPLY #6455 /* ~I concur. We shall rescue Garren's child.~ */ GOTO 12
  IF ~~ THEN REPLY #6458 /* ~Is that the only reason that you wish to rescue Garren's child, Anomen? To restore your precious honor?~ */ GOTO 11
  IF ~~ THEN REPLY #6462 /* ~I will not be dragged into an affair that is not of my making.~ */ GOTO 13
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY #6460 /* ~No, it is not. The child was kidnapped most evilly. We should begin our journey and find the heart of this evil and save the child.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 12 // from: 13.0 10.0
  SAY #6463 /* ~Excellent! We should begin our journey and find the heart of this evil.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.2
  SAY #6472 /* ~But there is an affair that you must worry about. Your honor shall forever remain in question if you do not repair the damage done by the slaying of the innocent knights.~ */
  IF ~~ THEN REPLY #6475 /* ~I concur. We shall rescue Garren's child.~ */ GOTO 12
  IF ~~ THEN REPLY #6476 /* ~Should I desire to hear your opinion, I shall ask you for it. Quiet yourself, Anomen.~ */ EXIT
END

IF WEIGHT #12 /* Triggers after states #: 28 32 89 101 110 150 205 207 282 even though they appear after this state */
~  Global("ddAnomenWhine","LOCALS",1)
~ THEN BEGIN 14 // from:
  SAY #6482 /* ~I find that I must protest your apparent lack of concern for our situation. The child of Garren Windspear languishes in the clutches of evil. We must save the child should we ever hope to restore our good name.~ [ANOMENB1] */
  IF ~~ THEN REPLY #6499 /* ~We shall save Garren's child at the first opportunity.~ */ DO ~SetGlobal("ddAnomenWhine","LOCALS",0)
~ GOTO 15
  IF ~~ THEN REPLY #6500 /* ~I am well aware of your opinion on the matter. Be silent and I will get to it.~ */ DO ~SetGlobal("ddAnomenWhine","LOCALS",0)
~ GOTO 16
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #6502 /* ~It would be well for the opportunity to present itself immediately. ~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.1
  SAY #6503 /* ~I cannot be silent if you choose not the righteous path. Do not lead us into evil, <CHARNAME>. We must rescue the child soon.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #13 /* Triggers after states #: 28 32 89 101 110 150 205 207 282 even though they appear after this state */
~  False()
~ THEN BEGIN 17 // from:
  SAY #6504 /* ~I believe that it would be wise for us to travel to the cabin. This place is our only sanctuary against the tide that we shall surely face should we return to more civilized lands.~ */
  IF ~~ THEN REPLY #6506 /* ~How could Garren help us?~ */ GOTO 18
  IF ~~ THEN REPLY #6511 /* ~I do believe that you are correct. We should make our way there now. He said that it was just north of the battlefield, did he not?~ */ GOTO 19
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #6926 /* ~As Garren had said, he was once lord of these lands. Perhaps he has contacts of use. He must know something of this Lord Jierdan who seems to have set up the demise of our honor.~ */
  IF ~~ THEN REPLY #7417 /* ~I do believe that you are correct. We should make our way there now. He said that is was just north of the battlefield, did he not?~ */ GOTO 19
  IF ~~ THEN REPLY #7419 /* ~Your opinion is noted. Let us travel onward, for I am ever willing to take my chances.~ */ GOTO 20
END

IF ~~ THEN BEGIN 19 // from: 18.0 17.1
  SAY #7421 /* ~Aye, north of the battlefield as he had said. You make the correct choice, <CHARNAME>.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.1
  SAY #7423 /* ~Do what you will, though I warn you, I shall not stand for this foolishness forever.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 21 // from:
  SAY #7536 /* ~Dire news, say you? What reason would I have to return to my father?~ */
  IF ~~ THEN EXTERN ~TERL~ 1
END

IF ~~ THEN BEGIN 22 // from:
  SAY #7578 /* ~Dead? By Helm! Murdered? How can this be? Why would you say such a thing?~ */
  IF ~~ THEN EXTERN ~TERL~ 2
END

IF ~~ THEN BEGIN 23 // from:
  SAY #7602 /* ~Aye, and right quick. <CHARNAME>, make haste! We must head for my father's home in the Government District of Athkatla!~ */
  IF ~~ THEN REPLY #7603 /* ~As long as I lead this group, we will do no such thing. You can do nothing for her, so let us continue on our present quest.~ */ GOTO 24
  IF ~~ THEN REPLY #7604 /* ~I mourn for the loss of your sister, Anomen. I am truly sorry. We shall make our way to your father's house with all haste.~ */ GOTO 25
  IF ~~ THEN REPLY #7605 /* ~Though I am saddened to hear of your sister's untimely demise, I have other things that I must look to first.~ */ GOTO 26
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #7624 /* ~If you find value in doing that which is righteous, you will go to my home. Do not and I shall leave you to the evil that engulfs you.~ */
  IF ~~ THEN REPLY #7626 /* ~Very well. We shall make our way to your father's home with all haste.~ */ GOTO 25
  IF ~~ THEN REPLY #7627 /* ~Do what you will. I care not.~ */ GOTO 27
END

IF ~~ THEN BEGIN 25 // from: 26.0 24.0 23.1
  SAY #7628 /* ~I must discover the truth about this murder. Let us go.~ */
  IF ~~ THEN DO ~SetGlobalTimer("AnomenHome","GLOBAL",TWO_DAYS)
ActionOverride("Terl",EscapeArea())
~ UNSOLVED_JOURNAL #4997 /* ~Anomen returns home after his sister's death

Anomen has just received word that his sister has been murdered... and I have agreed to return with him to his family's estate in the Government District in Athkatla. We must go quickly.~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 23.2
  SAY #7629 /* ~Your answer does not suffice. You will accompany me to discover the truth about my sister's murder. Fail at this and I shall leave you to the darkness that engulfs you.~ */
  IF ~~ THEN REPLY #7630 /* ~Very well. We shall make our way to your father's home with all haste.~ */ GOTO 25
  IF ~~ THEN REPLY #7631 /* ~Do what you will. I care not.~ */ GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.1 24.1
  SAY #7632 /* ~This is one of the few times that I actually require company and you abandon me. False friend! I cast you from my memory! You are nothing to me and shall remain nothing evermore. ~ */
  IF ~~ THEN DO ~SetGlobal("AnomenLeavesAngry","GLOBAL",1)
ActionOverride("Terl",EscapeArea())
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
LeaveParty()
EscapeArea()
~ SOLVED_JOURNAL #16531 /* ~Anomen returns home after his sister's death

We received word that Anomen's sister has been murdered. I couldn't accompany Anomen to investigate, so he has left the group and gone to his father's home in the Government District of Athkatla.~ */ EXIT
END

IF WEIGHT #0 ~  GlobalTimerExpired("AnomenHome","GLOBAL")
Global("AnomenComplain","LOCALS",0)
~ THEN BEGIN 28 // from:
  SAY #7633 /* ~My sister's body rots in the uncaring earth while you wander aimlessly! I must return to my home immediately so that my sister can be properly mourned.~ [ANOMENA1] */
  IF ~~ THEN REPLY #7634 /* ~We will make our way there now.~ */ DO ~SetGlobal("AnomenComplain","LOCALS",1)
~ GOTO 29
  IF ~~ THEN REPLY #7635 /* ~I will lead us there when I am ready to.~ */ DO ~SetGlobal("AnomenComplain","LOCALS",1)
~ GOTO 30
END

IF ~~ THEN BEGIN 29 // from: 30.0 28.0
  SAY #7636 /* ~Then enough talk. Go! Travel onwards, for my patience is at an end.~ */
  IF ~~ THEN DO ~SetGlobalTimer("AnomenHome","GLOBAL",THREE_DAYS)
~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 28.1
  SAY #7637 /* ~Nay, you WILL lead us now. ~ */
  IF ~~ THEN REPLY #7638 /* ~Very well. We will go now.~ */ GOTO 29
  IF ~~ THEN REPLY #7639 /* ~Do not think to dictate my path, Anomen.~ */ GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.1
  SAY #7640 /* ~Ha! Your true spirit is revealed this day, and it carries the taint of a godless wanderer. Begone from my sight, for I am done with this party.~ */
  IF ~~ THEN DO ~EraseJournalEntry(4997)
EraseJournalEntry(7686)
EraseJournalEntry(34657)
EraseJournalEntry(34658)
EraseJournalEntry(34659)
SetGlobal("AnomenLeavesAngry","GLOBAL",1)
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
LeaveParty()
EscapeArea()
~ SOLVED_JOURNAL #16531 /* ~Anomen returns home after his sister's death

We received word that Anomen's sister has been murdered. I couldn't accompany Anomen to investigate, so he has left the group and gone to his father's home in the Government District of Athkatla.~ */ EXIT
END

IF WEIGHT #1 ~  GlobalTimerExpired("AnomenHome","GLOBAL")
Global("AnomenComplain","LOCALS",1)
~ THEN BEGIN 32 // from:
  SAY #7641 /* ~Curse you for bringing me to this point! I leave now to never return! You false friend. My sister's memory has been dishonored by your twisted ways!~ [ANOMENA2] */
  IF ~~ THEN REPLY #7642 /* ~We are heading to your home right now.~ */ DO ~SetGlobal("AnomenComplain","LOCALS",2)
~ GOTO 33
  IF ~~ THEN REPLY #7643 /* ~I care not. Go on your way, for you are no longer welcome in this party.~ */ DO ~SetGlobal("AnomenComplain","LOCALS",2)
~ GOTO 34
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #7644 /* ~Too late! I've given you more than enough time to take us to my home. Get your cursed face out of my sight, for I am done with this party.~ */
  IF ~~ THEN DO ~EraseJournalEntry(4997)
EraseJournalEntry(7686)
EraseJournalEntry(34657)
EraseJournalEntry(34658)
EraseJournalEntry(34659)
SetGlobal("AnomenLeavesAngry","GLOBAL",1)
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
LeaveParty()
EscapeArea()
~ SOLVED_JOURNAL #16531 /* ~Anomen returns home after his sister's death

We received word that Anomen's sister has been murdered. I couldn't accompany Anomen to investigate, so he has left the group and gone to his father's home in the Government District of Athkatla.~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 32.1
  SAY #7645 /* ~Nor do I have any desire to be. Burn in the Hells and perhaps your cold heart will warm.~ */
  IF ~~ THEN DO ~EraseJournalEntry(4997)
EraseJournalEntry(7686)
EraseJournalEntry(34657)
EraseJournalEntry(34658)
EraseJournalEntry(34659)
SetGlobal("AnomenLeavesAngry","GLOBAL",1)
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
LeaveParty()
EscapeArea()
~ SOLVED_JOURNAL #16531 /* ~Anomen returns home after his sister's death

We received word that Anomen's sister has been murdered. I couldn't accompany Anomen to investigate, so he has left the group and gone to his father's home in the Government District of Athkatla.~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from:
  SAY #7660 /* ~He is angry with me?~ */
  IF ~~ THEN EXTERN ~DELRYNG1~ 2
END

IF ~~ THEN BEGIN 36 // from:
  SAY #7662 /* ~I'd expected as much. Let him vent his bile on me if he so wills it. I am not the child that I used to be. <CHARNAME>, let us enter.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 37 // from:
  SAY #7761 /* ~Speak not of my mother, drunkard. You were never worthy of being her husband.~ [ANOMENB4] */
  IF ~~ THEN DO ~SetGlobal("AnomenComplain","LOCALS",3)
~ EXTERN ~COR~ 1
END

IF ~~ THEN BEGIN 38 // from:
  SAY #7762 /* ~Shut your mouth, Father. We've had this conversation before, and I've not the patience to listen to it again.~ */
  IF ~~ THEN EXTERN ~COR~ 2
END

IF ~~ THEN BEGIN 39 // from:
  SAY #7763 /* ~Yes, Father... I lost my temper, and I apologize.~ */
  IF ~~ THEN EXTERN ~COR~ 3
END

IF ~~ THEN BEGIN 40 // from:
  SAY #7764 /* ~Father, where is Moira, your daughter? What happened to her?~ */
  IF ~~ THEN EXTERN ~COR~ 4
END

IF ~~ THEN BEGIN 41 // from:
  SAY #7765 /* ~How did this happen?~ */
  IF ~~ THEN EXTERN ~COR~ 5
END

IF ~~ THEN BEGIN 42 // from:
  SAY #7766 /* ~But why would he kill her? She has nothing to do with your enmity.~ */
  IF ~~ THEN EXTERN ~COR~ 49
END

IF ~~ THEN BEGIN 43 // from:
  SAY #7767 /* ~Where were the guards? Why was she not protected?~ */
  IF ~~ THEN EXTERN ~COR~ 8
END

IF ~~ THEN BEGIN 44 // from:
  SAY #7768 /* ~He didn't take it, Father. YOU lost it... you lost it...~ */
  IF ~~ THEN EXTERN ~COR~ 9
END

IF ~~ THEN BEGIN 45 // from:
  SAY #7769 /* ~I'm sorry. I... I did not know...~ */
  IF ~~ THEN EXTERN ~COR~ 10
END

IF ~~ THEN BEGIN 46 // from:
  SAY #7770 /* ~What can be done? Moira is dead.~ */
  IF ~~ THEN EXTERN ~COR~ 50
END

IF ~~ THEN BEGIN 47 // from:
  SAY #7771 /* ~I must see Moira's remains first, Father. It will take but a moment.~ */
  IF ~~ THEN EXTERN ~COR~ 12
END

IF ~~ THEN BEGIN 48 // from:
  SAY #7772 /* ~<CHARNAME>, come with me to Moira's urn. I would speak with you.~ */
  IF ~~ THEN REPLY #7773 /* ~Very well, I shall follow you.~ */ GOTO 49
  IF ~~ THEN REPLY #7774 /* ~I would rather not come with you. Cremated remains make me painfully aware of my mortality. It's quite depressing, really.~ */ GOTO 50
END

IF ~~ THEN BEGIN 49 // from: 50.0 48.0
  SAY #7775 /* ~This way.~ */
  IF ~~ THEN DO ~SetGlobal("AnomenDecide","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("Cut10a",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 50 // from: 48.1
  SAY #7776 /* ~It is imperative that I speak with you. Please come to my sister's remains with me.~ */
  IF ~~ THEN REPLY #7841 /* ~Very well, I shall follow you.~ */ GOTO 49
  IF ~~ THEN REPLY #7842 /* ~I will not come with you.~ */ GOTO 51
END

IF ~~ THEN BEGIN 51 // from: 50.1
  SAY #7777 /* ~If you offer no assistance, then you are naught but a hindrance. Leave my home, for you are no longer welcome here.~ */
  IF ~~ THEN DO ~EraseJournalEntry(4997)
SetGlobal("Pissed","LOCALS",1)
LeaveParty()
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
~ SOLVED_JOURNAL #15779 /* ~Anomen returns home after his sister's death

Lord Cor, Anomen's father, has demanded revenge on his daughter's supposed murderer, a merchant named Saerk. I would not help, so Anomen angrily sent me away. I doubt our relationship can be repaired.~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 150.0
  SAY #7843 /* ~Surely if Saerk killed my sister, I must avenge her murder. Yet killing for the purpose of revenge is murder by the tenets of the Order. I know not what I should do.~ */
  IF ~~ THEN REPLY #7846 /* ~Your father is correct... your sister's murder cannot go unpunished. Saerk is clearly evil, and is it not every knight's responsibility to destroy evil?~ */ GOTO 53
  IF ~~ THEN REPLY #7847 /* ~Do not let these thoughts of vengeance cloud your judgment. Killing for revenge is murder. Saerk must be brought to justice, and you must be the one to ensure that it is done.~ */ GOTO 54
  IF ~~ THEN REPLY #7848 /* ~The answer is obvious. Everything that is wrong with this situation is the product of this man Saerk's scheming... your father's poverty and sister's death both. Saerk's life shall surely be forfeit for that of your sister's, and his wealth will become your father's.~ */ GOTO 55
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY #7862 /* ~Do you not think that the killing of Saerk could be considered a revenge murder by the Order?~ */
  IF ~~ THEN REPLY #7864 /* ~Saerk is no less evil than a ghoul or demon, and deserves what you will give him.~ */ GOTO 55
  IF ~~ THEN REPLY #7868 /* ~Perhaps it could, but would you be willing to let your sister's killer go free so that you can join the Order?~ */ GOTO 151
  IF ~~ THEN REPLY #7869 /* ~I won't try to mislead you. It will most likely be seen as a crime by the Order.~ */ GOTO 58
END

IF ~~ THEN BEGIN 54 // from: 52.1
  SAY #7870 /* ~What you say holds truth; yet, as my father says, I am honor-bound to find my sister's killer and take his life.~ */
  IF ~~ THEN REPLY #7873 /* ~If that is how you feel, we will help you find this murderer.~ */ GOTO 55
  IF ~~ THEN REPLY #7876 /* ~You are honor-bound to the vows you made to the Order. The path you are considering is evil, Anomen... Do not take it.~ */ GOTO 152
END

IF ~~ THEN BEGIN 55 // from: 58.1 56.0 54.0 53.0 52.2
  SAY #7877 /* ~So shall it be. We shall set things aright and rid this world of an evil man. Come, <CHARNAME>, I must return to my father.~ */
  IF ~  !IsValidForPartyDialogue("Keldorn")
~ THEN DO ~SetGlobal("AnomenDecide","GLOBAL",2)
StartCutSceneMode()
StartCutSceneEx("Cut10b",FALSE)
~ EXIT
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN DO ~SetGlobal("AnomenDecide","GLOBAL",2)
~ EXTERN ~KELDORJ~ 228
END

IF ~~ THEN BEGIN 56 // from: 151.0
  SAY #7910 /* ~It is exactly in these kinds of situations that my mettle is to be truly tested. It is not so much to join the Order as it is to do what I have sworn to do.~ */
  IF ~~ THEN REPLY #7912 /* ~I agree that you are bound by your vows, but the honor of your family and your sister's memory must come first. Saerk must die for what he has done.~ */ GOTO 55
  IF ~~ THEN REPLY #7922 /* ~I'm sure that many of the Order have faced difficult choices and yet have chosen to keep their vows. Do not take a mission of revenge. ~ */ GOTO 152
END

IF ~~ THEN BEGIN 57 // from: 152.0
  SAY #7913 /* ~He can keep his hatred and drown his sorrows as he has always done. Yet the question of my sister's murder remains.~ */
  IF ~~ THEN REPLY #7914 /* ~This is a matter that is best handled by the local authorities. ~ */ GOTO 153
  IF ~~ THEN REPLY #7915 /* ~To be honest, I'm not sure that I trust your father's version of events. All that he speaks of seems to be colored by his hatred of Saerk. ~ */ GOTO 154
END

IF ~~ THEN BEGIN 58 // from: 53.2
  SAY #7919 /* ~What path shall I choose? If I choose vengeance, I shall avenge my sister's murder but be damned by the act. If I choose to keep my vows, I will dishonor my family. What shall I do?~ */
  IF ~~ THEN REPLY #7920 /* ~I'm sure that many of the Order have faced difficult choices and yet have chosen to keep their vows. Do not take a mission of revenge. ~ */ GOTO 152
  IF ~~ THEN REPLY #7921 /* ~The killer of your sister must not escape justice. Kill Saerk and honor your family and the memory of your sister.~ */ GOTO 55
END

IF ~~ THEN BEGIN 59 // from: 155.0 153.0
  SAY #7923 /* ~Come, let us return to my father. He may yet be convinced to follow the lawful path. It is not my place to take revenge. Such an act would lead to chaos.~ */
  IF ~~ THEN DO ~SetGlobal("AnomenDecide","GLOBAL",3)
StartCutSceneMode()
StartCutSceneEx("Cut10b",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 60 // from:
  SAY #7977 /* ~Nay, Father. It is time for this foolishness to end. ~ [ANOMENB5] */
  IF ~~ THEN DO ~AddexperienceParty(10500)
~ EXTERN ~COR~ 15
END

IF ~~ THEN BEGIN 61 // from:
  SAY #7978 /* ~Only that killing Saerk in vengeance would be murder as surely as my sister's death was.~ */
  IF ~~ THEN EXTERN ~COR~ 16
END

IF ~~ THEN BEGIN 62 // from:
  SAY #7979 /* ~Not in the manner that you suggest. We must take these charges to the magistrate. This is the only way to end this circle of violence that you have trapped us within.~ */
  IF ~~ THEN EXTERN ~COR~ 17
END

IF ~~ THEN BEGIN 63 // from:
  SAY #7980 /* ~Bylanna Ianulin is a good and noble woman. You said this yourself before you slipped into the foul clutch of the drink.~ */
  IF ~~ THEN EXTERN ~COR~ 18
END

IF ~~ THEN BEGIN 64 // from:
  SAY #7981 /* ~I will not allow him to go free! He shall be taken before the courts if he is indeed the one who murdered my sister.~ */
  IF ~~ THEN EXTERN ~COR~ 19
END

IF ~~ THEN BEGIN 65 // from:
  SAY #7982 /* ~Do you have proof, Father?~ */
  IF ~~ THEN EXTERN ~COR~ 20
END

IF ~~ THEN BEGIN 66 // from:
  SAY #8001 /* ~Aye, now I see. Such has always been the case in this household. This is about you and only you. Your daughter's death means nothing beyond how it affects your pride and your comfort.~ */
  IF ~~ THEN EXTERN ~COR~ 21
END

IF ~~ THEN BEGIN 67 // from:
  SAY #8002 /* ~I will not, Father. I suggest no evil. I suggest the lawful path.~ */
  IF ~~ THEN EXTERN ~COR~ 22
END

IF ~~ THEN BEGIN 68 // from:
  SAY #8003 /* ~I have obeyed you all my life and received naught but bitterness in return. My friend and I shall take this matter to the magistrate, as the law requires. ~ */
  IF ~~ THEN EXTERN ~COR~ 23
END

IF ~~ THEN BEGIN 69 // from:
  SAY #8004 /* ~Don't do this, Father...~ */
  IF ~~ THEN EXTERN ~COR~ 24
END

IF ~~ THEN BEGIN 70 // from:
  SAY #8005 /* ~I have been cowering at your feet for all my life. Goodbye, Father. Perhaps I shall see you again before you drink yourself to death.~ [ANOMENB8] */
  IF ~~ THEN EXTERN ~COR~ 25
END

IF ~~ THEN BEGIN 71 // from:
  SAY #8006 /* ~Come, <CHARNAME>, let us leave... we should go and see the magistrate in the Council of Six building and see if anything can be done, despite Father's venom.~ */
  IF ~~ THEN DO ~SetGlobal("AnomenDecide","GLOBAL",4)
~ UNSOLVED_JOURNAL #34658 /* ~Anomen returns home after his sister's death

I advised Anomen not to seek revenge for his father. Instead, we will visit Magistrate Bylanna Ianulin and see if this matter can be resolved within the boundaries of the law. The magistrate can be found in the government building in the Government District.~ */ EXIT
END

IF ~~ THEN BEGIN 72 // from:
  SAY #8031 /* ~So shall it be done, Father. Saerk will die for his deeds. Where might we find him?~ [ANOMENB6] */
  IF ~~ THEN DO ~JoinParty()
~ EXTERN ~COR~ 28
END

IF ~~ THEN BEGIN 73 // from:
  SAY #8032 /* ~We go then.~ */
  IF ~~ THEN EXTERN ~COR~ 29
END

IF ~~ THEN BEGIN 74 // from:
  SAY #8035 /* ~His defenses are many, but he shall soon fall.~ */
  IF ~~ THEN EXTERN ~COR~ 31
END

IF ~~ THEN BEGIN 75 // from:
  SAY #8040 /* ~It... it is done, Father. The murderer is dead, and I pray that Moira's spirit rests easy because of it.~ */
  IF ~~ THEN DO ~AddexperienceParty(10500)
~ EXTERN ~COR~ 33
END

IF ~~ THEN BEGIN 76 // from:
  SAY #8041 /* ~Thank you, Father.~ [ANOMENB7] */
  IF ~~ THEN EXTERN ~COR~ 34
END

IF ~~ THEN BEGIN 77 // from:
  SAY #8042 /* ~I should like to, but my duties call me. I must return to the road.~ */
  IF ~~ THEN EXTERN ~COR~ 52
END

IF ~~ THEN BEGIN 78 // from:
  SAY #8043 /* ~Goodbye, Father. ~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 79 // from:
  SAY #8051 /* ~How may I be of assistance?~ [ANOMENB9] */
  IF ~~ THEN EXTERN ~KAYL1~ 1
END

IF ~~ THEN BEGIN 80 // from:
  SAY #8052 /* ~I greet thee also. The time has come?~ */
  IF ~~ THEN EXTERN ~KAYL1~ 2
END

IF ~~ THEN BEGIN 81 // from:
  SAY #8053 /* ~I shall return and stand in Helm's light to be judged for my deeds and strength of arms.~ */
  IF ~~ THEN EXTERN ~KAYL1~ 3
END

IF ~~ THEN BEGIN 82 // from:
  SAY #8054 /* ~And also thee. ~ */
  IF ~~ THEN EXTERN ~KAYL1~ 4
END

IF ~~ THEN BEGIN 83 // from:
  SAY #8055 /* ~My thanks, Sir Trawl. I look forward to our next meeting.~ */
  IF ~~ THEN DO ~SetGlobal("AnomenGoesTrial","GLOBAL",1)
SetGlobalTimer("AnomenTrial","GLOBAL",TWO_DAYS)
~ EXIT
END

IF WEIGHT #14 /* Triggers after states #: 89 101 110 150 205 207 282 even though they appear after this state */
~  GlobalTimerExpired("AnomenTrial","GLOBAL")
Global("AnomenComplainKnight","LOCALS",0)
~ THEN BEGIN 84 // from:
  SAY #8056 /* ~It is not in my nature to complain, but as you know, I must make my way to the High Hall in Athkatla to be judged for knighthood. I was to have been there by now. Shall we go, or will I be forced to leave the party?~ [ANOMENB2] */
  IF ~~ THEN REPLY #8057 /* ~What are you talking about?~ */ DO ~SetGlobal("AnomenComplainKnight","LOCALS",1)
~ GOTO 85
  IF ~~ THEN REPLY #8059 /* ~Perhaps it is best if you leave. I have no time to take you to Athkatla.~ */ DO ~SetGlobal("AnomenComplainKnight","LOCALS",1)
~ GOTO 86
  IF ~~ THEN REPLY #8067 /* ~There is no need for you to leave. We shall travel there posthaste.~ */ DO ~SetGlobal("AnomenComplainKnight","LOCALS",1)
~ GOTO 87
END

IF ~~ THEN BEGIN 85 // from: 84.0
  SAY #8068 /* ~I refer to, of course, my possible acceptance into the Most Noble Order of the Radiant Heart as a knight. We must travel there soon, else I shall be judged unworthy by default.~ */
  IF ~~ THEN REPLY #8070 /* ~We shall travel to the High Hall now.~ */ GOTO 87
  IF ~~ THEN REPLY #8071 /* ~Perhaps it is best if you leave. I have no time to take you to the Radiant Heart's headquarters.~ */ GOTO 86
END

IF ~~ THEN BEGIN 86 // from: 85.1 84.1
  SAY #8097 /* ~Is that how you repay the assistance that I have offered you? You've nary a loyal bone in your body, <CHARNAME>. So be it. I shall travel to the High Hall on my own.~ */
  IF ~~ THEN DO ~EraseJournalEntry(10928)
SetGlobal("AnomenTrialOnOwn","GLOBAL",1)
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
LeaveParty()
EscapeAreaMove("AR0903",1516,1235,NNE)
~ SOLVED_JOURNAL #20939 /* ~Anomen's judgment

Anomen has left the party to travel to his trial at the Radiant Heart order on his own. He was angry that I did not accompany him, and it is doubtful that he will rejoin me at any point in the future.~ */ EXIT
END

IF ~~ THEN BEGIN 87 // from: 85.0 84.2
  SAY #8099 /* ~Excellent. Let us waste no more time with idle chatter. ~ */
  IF ~~ THEN DO ~SetGlobalTimer("AnomenTrial","GLOBAL",THREE_DAYS)
~ EXIT
END

IF WEIGHT #15 /* Triggers after states #: 89 101 110 150 205 207 282 even though they appear after this state */
~  GlobalTimerExpired("AnomenTrial","GLOBAL")
Global("AnomenComplainKnight","LOCALS",1)
~ THEN BEGIN 88 // from:
  SAY #8100 /* ~I need not put up with this nonsense. I shall set out on my own for the High Hall since you seem intent on keeping me from my commitments! You have caused me to be late in arriving at my own Judgment.~ [ANOMENB3] */
  IF ~~ THEN DO ~SetGlobal("AnomenComplainKnight","LOCALS",2)
EraseJournalEntry(10928)
SetGlobal("AnomenTrialOnOwn","GLOBAL",1)
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
LeaveParty()
EscapeAreaMove("AR0903",1516,1235,NNE)
~ SOLVED_JOURNAL #20939 /* ~Anomen's judgment

Anomen has left the party to travel to his trial at the Radiant Heart order on his own. He was angry that I did not accompany him, and it is doubtful that he will rejoin me at any point in the future.~ */ EXIT
END

IF WEIGHT #2 ~  Global("StartTrial","GLOBAL",1)
See("kayl2")
~ THEN BEGIN 89 // from:
  SAY #8101 /* ~Sir Ryan Trawl! I have arrived and am prepared to be Judged.~ [ANOMENA3] */
  IF ~~ THEN DO ~SetGlobal("AnomenComplainKnight","LOCALS",3)
~ EXTERN ~KAYL2~ 0
END

IF ~~ THEN BEGIN 90 // from:
  SAY #8124 /* ~And also with you.~ */
  IF ~~ THEN EXTERN ~KAYL2~ 1
END

IF ~~ THEN BEGIN 91 // from:
  SAY #8137 /* ~I do wish it. <CHARNAME>, follow me and observe the Judgment.~ */
  IF ~~ THEN DO ~SetGlobal("StartTrial","GLOBAL",2)
StartCutSceneMode()
StartCutSceneEx("cut11b",FALSE)
~ UNSOLVED_JOURNAL #20943 /* ~Anomen's judgment

We have arrived at the Order's headquarters for Anomen's trial. I am to go inside with him and observe the judgment as it takes place.~ */ EXIT
END

IF ~~ THEN BEGIN 92 // from:
  SAY #8141 /* ~Prelate of the Order, I so stand. I pledge my life to the service of justice and righteousness.~ */
  IF ~~ THEN EXTERN ~HPRELATE~ 1
END

IF ~~ THEN BEGIN 93 // from:
  SAY #8143 /* ~I do so stand. ~ */
  IF ~~ THEN EXTERN ~HPRELATE~ 2
END

IF ~~ THEN BEGIN 94 // from:
  SAY #8145 /* ~My past and my actions I lay bare before you. I ask that you judge me as you have been judged.~ */
  IF ~~ THEN EXTERN ~HPRELATE~ 3
END

IF ~~ THEN BEGIN 95 // from:
  SAY #8147 /* ~Thank you, Prelate. I would say that all of my life I have dreamed of this day, and becoming a knight is the culmination of those dreams. Judge me as you have been judged.~ */
  IF ~  !Global("AnomenRomanceActive","GLOBAL",1)
!Global("AnomenRomanceActive","GLOBAL",2)
!Dead("saerk")
ReputationGT(LastTalkedToBy,9)
~ THEN EXTERN ~HPRELATE~ 4
  IF ~  !Global("AnomenRomanceActive","GLOBAL",1)
!Global("AnomenRomanceActive","GLOBAL",2)
OR(2)
ReputationLT(LastTalkedToBy,10)
Dead("saerk")
~ THEN EXTERN ~HPRELATE~ 6
  IF ~  OR(2)
Global("AnomenRomanceActive","GLOBAL",1)
Global("AnomenRomanceActive","GLOBAL",2)
!Dead("saerk")
~ THEN EXTERN ~HPRELATE~ 4
  IF ~  OR(2)
Global("AnomenRomanceActive","GLOBAL",1)
Global("AnomenRomanceActive","GLOBAL",2)
Dead("saerk")
~ THEN EXTERN ~HPRELATE~ 6
END

IF ~~ THEN BEGIN 96 // from:
  SAY #8150 /* ~Under witness of all gathered, I swear to uphold the honor of the Order for as long as I shall live. I pledge my dying breath to the service of good. In Helm's name, I thank thee, Prelate. I swear that I shall never falter 'neath the banner of Helm.~ */
  IF ~~ THEN EXTERN ~HPRELATE~ 5
END

IF ~~ THEN BEGIN 97 // from:
  SAY #8153 /* ~And also thee. <CHARNAME>, I must speak with Sir Ryan Trawl now.~ */
  IF ~~ THEN DO ~EraseJournalEntry(10928)
EraseJournalEntry(20943)
AddexperienceParty(10000)
AddXPObject("Anomen",50000)
ReallyForceSpell(Myself,ANOMEN_TITLE)
MoveToObject(Player1)
Wait(1)
EndCutSceneMode()
~ SOLVED_JOURNAL #7146 /* ~Anomen's judgment

Anomen's trial has been completed, and he has been judged worthy of becoming a full knight within the Most Noble Order of the Radiant Heart. Anomen is understandably pleased.~ */ EXIT
END

IF ~~ THEN BEGIN 98 // from:
  SAY #8168 /* ~You cannot do this! I am not an evil man! I struggle daily in the quest for goodness.~ */
  IF ~  Dead("saerk")
~ THEN EXTERN ~HPRELATE~ 7
  IF ~  !Global("AnomenRomanceActive","GLOBAL",1)
!Global("AnomenRomanceActive","GLOBAL",2)
OR(3)
Global("Kidnap","GLOBAL",1)
Global("Kidnap","GLOBAL",2)
Global("Kidnap","GLOBAL",3)
~ THEN EXTERN ~HPRELATE~ 8
  IF ~  ReputationLT(LastTalkedToBy,10)
~ THEN EXTERN ~HPRELATE~ 9
END

IF ~~ THEN BEGIN 99 // from:
  SAY #8176 /* ~You bastard! I have slaved away for you all of these years and this is the thanks that I get? I spit at your feet, you fool!~ */
  IF ~~ THEN EXTERN ~HPRELATE~ 10
END

IF ~~ THEN BEGIN 100 // from:
  SAY #8177 /* ~As I shall! You are the one who is unworthy. Come, <CHARNAME>. It is time to exit this viper pit. I've no taste for these petty politics any longer! Dogs, one and all!~ */
  IF ~~ THEN DO ~EraseJournalEntry(10928)
EraseJournalEntry(20943)
SetGlobal("AnomenIsNotKnight","GLOBAL",1)
SetGlobal("AnomenUpset","GLOBAL",1)
AddexperienceParty(5000)
ChangeAlignment("Anomen",CHAOTIC_NEUTRAL)
MoveToPointNoInterrupt([852.1235])
EndCutSceneMode()
~ SOLVED_JOURNAL #11855 /* ~Anomen's judgment

Anomen's trial has been completed: He has been found unworthy of being a knight within the Most Noble Order of the Radiant Heart. Anomen blew up, angry at the judgment, and stormed out of the Order's headquarters.~ */ EXIT
END

IF WEIGHT #3 ~  Global("AnomenIsNotKnight","GLOBAL",1)
Global("AnomenUpset","GLOBAL",1)
Global("AnomenBlowsUp","LOCALS",0)
!AreaCheck("AR0903")
~ THEN BEGIN 101 // from:
  SAY #8351 /* ~Helm's beard! I cannot believe this! All my life... all my LIFE, I've slaved for the Order, and now I am cast aside like garbage! Curse them all!~ [ANOMENA4] */
  IF ~~ THEN REPLY #8355 /* ~Calm yourself, Anomen. It is not such a bad thing.~ */ DO ~SetGlobal("AnomenBlowsUp","LOCALS",1)
~ GOTO 102
  IF ~~ THEN REPLY #8357 /* ~Who cares? Life is difficult. Accept it and let us move on.~ */ DO ~SetGlobal("AnomenBlowsUp","LOCALS",1)
~ GOTO 103
  IF ~~ THEN REPLY #8359 /* ~Acting as you do now merely proves that you were never worthy to become a knight anyway. The prelate was right to refuse you.~ */ DO ~SetGlobal("AnomenBlowsUp","LOCALS",1)
~ GOTO 104
END

IF ~~ THEN BEGIN 102 // from: 103.2 101.0
  SAY #8366 /* ~That is incorrect. You do not understand what it is like to have everything torn from your grasp and thrown in your face! Stay calm if you wish. I've no stomach for these games now!~ */
  IF ~~ THEN REPLY #8367 /* ~Acting as you do now merely proves that you were never worthy to become a knight anyway. The prelate was right to refuse you.~ */ GOTO 104
  IF ~~ THEN REPLY #8368 /* ~It would seem that the prelate's decision is irreversible. There is nothing that we can do but move on and return to the road.~ */ GOTO 105
  IF ~~ THEN REPLY #8370 /* ~Who cares? Life is difficult. Accept it and let us move on.~ */ GOTO 103
END

IF ~~ THEN BEGIN 103 // from: 102.2 101.1
  SAY #8371 /* ~Shut your foolish mouth! Everything I've worked for is gone! All that I want is denied me! I cannot simply accept this.~ */
  IF ~~ THEN REPLY #8373 /* ~It would seem that the prelate's decision is irreversible. There is nothing that we can do but move on and return to the road.~ */ GOTO 105
  IF ~~ THEN REPLY #8374 /* ~Acting as you do now merely proves that you were never worthy to become a knight anyway. The prelate was right to refuse you.~ */ GOTO 104
  IF ~~ THEN REPLY #8375 /* ~Calm yourself, Anomen. It is not such a bad thing.~ */ GOTO 102
END

IF ~~ THEN BEGIN 104 // from: 105.2 103.1 102.0 101.2
  SAY #8376 /* ~You bastard! This is your fault! You led us down the evil path, and for that I have been refused. I will kill you!~ */
  IF ~~ THEN DO ~LeaveParty()
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 105 // from: 103.0 102.1
  SAY #8378 /* ~Perhaps. Or perhaps I should slaughter the whole lot of them.~ */
  IF ~~ THEN REPLY #8380 /* ~Get ahold of yourself, Anomen. Let's get away from here before you get yourself killed.~ */ GOTO 106
  IF ~~ THEN REPLY #8382 /* ~That's an excellent idea. Go to it, and I shall wait here until you're finished.~ */ GOTO 107
  IF ~~ THEN REPLY #8383 /* ~Do whatever you want to. I no longer care, for you are hereby kicked out of this party.~ */ GOTO 104
END

IF ~~ THEN BEGIN 106 // from: 105.0
  SAY #8388 /* ~All right. Then go. I will follow.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 107 // from: 105.1
  SAY #8391 /* ~You dare to mock me! You led me down this path! You! I will kill you for this!~ */
  IF ~~ THEN DO ~LeaveParty()
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 108 // from:
  SAY #8396 /* ~I thank you, Paladin Ryan Trawl. I am pleased to serve you with strength of arms and a faith in Torm.~ [ANOMENC1] */
  IF ~~ THEN EXTERN ~KAYL2~ 4
END

IF ~~ THEN BEGIN 109 // from:
  SAY #8399 /* ~I thank you. May Torm also bless thee.~ */
  IF ~~ THEN FLAGS 128 EXIT
END

IF WEIGHT #4 ~  Global("AnomenIsKnight","GLOBAL",1)
Global("AnomenBanter","GLOBAL",0)
!AreaCheck("AR0903")
AreaType(OUTDOOR)
~ THEN BEGIN 110 // from:
  SAY #8400 /* ~It is truly a grand day, my friend.~ [ANOMENA5] */
  IF ~~ THEN REPLY #8401 /* ~You seem very pleased with yourself, Anomen. I see that knighthood agrees with you.~ */ GOTO 111
  IF ~~ THEN REPLY #8402 /* ~It is never a grand day, Anomen.~ */ GOTO 112
  IF ~~ THEN REPLY #8403 /* ~This is not a good time to have a conversation, Anomen. ~ */ GOTO 113
END

IF ~~ THEN BEGIN 111 // from: 110.0
  SAY #8407 /* ~It does. I am well content. When one's dreams have come true, one cannot help but rejoice. So, as I said, it is truly a grand day.~ */
  IF ~~ THEN DO ~SetGlobal("AnomenBanter","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 112 // from: 110.1
  SAY #8408 /* ~For some it is. Perhaps you should seek the enlightened path. With perseverance, you can find contentment. Think on it. For now, let us continue our travels.~ */
  IF ~~ THEN DO ~SetGlobal("AnomenBanter","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 113 // from: 110.2
  SAY #8410 /* ~It is nothing important regardless, <CHARNAME>. It is simply good to be a knight after all this. Let us continue on.~ */
  IF ~~ THEN DO ~SetGlobal("AnomenBanter","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 114 // from:
  SAY #14302 /* ~I am as serious as befits one of my nature. You would do well to think on this yourself, child, if you ever wish to rise above the squalor you live in.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 115 // from:
  SAY #14483 /* ~I know this Brother Keelan. He has gone missing, has he? How very odd, indeed. This is not like the Keelan that I know.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 116 // from:
  SAY #15347 /* ~Away with you, woman! <CHARNAME> is committed to a duty that is far more important than material matters!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 117 // from:
  SAY #20805 /* ~What kind of monstrous blasphemy is this?~ */
  IF ~~ THEN EXTERN ~PROPHET4~ 4
END

IF ~~ THEN BEGIN 118 // from:
  SAY #22312 /* ~You will surely pay for your insolence, fool... in the next life if not in this one.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 119 // from:
  SAY #22393 /* ~I would not blame poor weather on the gods. And were it so, then perhaps the evil throughout this city has earned the gods' displeasure.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 120 // from:
  SAY #22654 /* ~I'll not submit to your foul charms, slattern. By Helm, the rot in this city fills me with bile!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 121 // from:
  SAY #25012 /* ~Of course not! Cheating is the vilest breach of basic trust and humanity. It would be punished most severely!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 122 // from:
  SAY #25462 /* ~Is this nonsense directed at me? What is this? Speak, man!~ */
  IF ~~ THEN EXTERN ~CELVAN~ 1
END

IF ~~ THEN BEGIN 123 // from:
  SAY #25515 /* ~I see at last the serpent slithers out of hiding to reveal himself! Come then, fiend, and prepare to be dealt righteous vengeance!~ */
  IF ~~ THEN EXTERN ~SAERK~ 1
END

IF ~~ THEN BEGIN 124 // from:
  SAY #25522 /* ~You will not speak my father's name!~ */
  IF ~~ THEN EXTERN ~YUSUF~ 0
END

IF ~~ THEN BEGIN 125 // from:
  SAY #25525 /* ~So you admit it! You admit to your part in Moira's murder!~ */
  IF ~~ THEN EXTERN ~SAERK~ 3
END

IF ~~ THEN BEGIN 126 // from:
  SAY #25531 /* ~Calishite demon! I know that you murdered my poor, innocent sister! I will see you dead and rotting for that deed, I swear!~ */
  IF ~~ THEN EXTERN ~SAERK~ 5
END

IF ~~ THEN BEGIN 127 // from:
  SAY #25533 /* ~You spit upon her memory?! Very well, demon... I shall teach you the pain of losing one so dear!~ */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("Cut05b",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 128 // from:
  SAY #25537 /* ~And did Moira beg for her life before it was taken? Was she any less innocent than this girl? Was she too part of your quarrel with my father? I think not!~ */
  IF ~~ THEN GOTO 129
END

IF ~~ THEN BEGIN 129 // from: 128.0
  SAY #25540 /* ~You shall pay for that crime with equal measure!~ */
  IF ~~ THEN EXTERN ~SURAYAH~ 2
END

IF ~~ THEN BEGIN 130 // from:
  SAY #25548 /* ~Yes, honorable magistrate. I am seeking information on the murder of my sister, Moira Delryn.~ */
  IF ~~ THEN EXTERN ~BYLANNA~ 1
END

IF ~~ THEN BEGIN 131 // from:
  SAY #25550 /* ~What do you mean? Surely you have found evidence to link Saerk to her murder? The man will be brought before the courts to meet justice, will he not?~ */
  IF ~~ THEN EXTERN ~BYLANNA~ 2
END

IF ~~ THEN BEGIN 132 // from:
  SAY #25552 /* ~Yes, my father... cannot afford additional guards and servants, it seems. But... is there nothing you can do? Surely you know that Saerk is responsible!~ */
  IF ~~ THEN EXTERN ~BYLANNA~ 3
END

IF ~~ THEN BEGIN 133 // from:
  SAY #25554 /* ~No! There must be something that can be done! Moira's murder cannot go unanswered!~ */
  IF ~~ THEN EXTERN ~BYLANNA~ 4
END

IF ~~ THEN BEGIN 134 // from:
  SAY #25556 /* ~I... I do not know.~ */
  IF ~~ THEN REPLY #25557 /* ~Well, I do. Your sister's murder cannot go unavenged, Anomen. If the courts cannot deal with him, then you must.~ */ GOTO 135
  IF ~~ THEN REPLY #25558 /* ~This Saerk may be innocent, Anomen. You cannot take vengeance on one who might be innocent... you are a knight, after all, first and foremost.~ */ GOTO 174
END

IF ~~ THEN BEGIN 135 // from: 134.0
  SAY #25559 /* ~Yes... yes! It is as you say, <CHARNAME>! Come... let us go to Saerk's demesne, and I shall find justice for my sister!~ */
  IF ~  !IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
~ THEN DO ~SetGlobal("KillSaerk","GLOBAL",1)
SetGlobal("AnomenDecide","GLOBAL",2)
~ UNSOLVED_JOURNAL #34659 /* ~Anomen returns home after his sister's death

Since it seems that the courts can do nothing regarding the death of Anomen's sister, I have advised him to seek out this Saerk and take vengeance. Saerk can be found in a large mansion in the Bridge District.~ */ EXIT
  IF ~  IsValidForPartyDialogue("Jaheira")
~ THEN DO ~SetGlobal("KillSaerk","GLOBAL",1)
SetGlobal("AnomenDecide","GLOBAL",2)
~ UNSOLVED_JOURNAL #34659 /* ~Anomen returns home after his sister's death

Since it seems that the courts can do nothing regarding the death of Anomen's sister, I have advised him to seek out this Saerk and take vengeance. Saerk can be found in a large mansion in the Bridge District.~ */ EXTERN ~JAHEIRAJ~ 495
  IF ~  !IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("HaerDalis")
~ THEN DO ~SetGlobal("KillSaerk","GLOBAL",1)
SetGlobal("AnomenDecide","GLOBAL",2)
~ UNSOLVED_JOURNAL #34659 /* ~Anomen returns home after his sister's death

Since it seems that the courts can do nothing regarding the death of Anomen's sister, I have advised him to seek out this Saerk and take vengeance. Saerk can be found in a large mansion in the Bridge District.~ */ EXTERN ~HAERDAJ~ 132
  IF ~  !IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("HaerDalis")
IsValidForPartyDialogue("Viconia")
~ THEN DO ~SetGlobal("KillSaerk","GLOBAL",1)
SetGlobal("AnomenDecide","GLOBAL",2)
~ UNSOLVED_JOURNAL #34659 /* ~Anomen returns home after his sister's death

Since it seems that the courts can do nothing regarding the death of Anomen's sister, I have advised him to seek out this Saerk and take vengeance. Saerk can be found in a large mansion in the Bridge District.~ */ EXTERN ~VICONIJ~ 166
END

IF ~~ THEN BEGIN 136 // from:
  SAY #25660 /* ~Bitter and poor, my lady. And beyond that, a foul drunkard whose presence I can barely tolerate. Excuse me.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 137 // from:
  SAY #25736 /* ~And he has ended your employment? I am sorry... there is nothing I can do to help you.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 138 // from:
  SAY #27130 /* ~Foul heathen! You disturb the rest of the dead! You shall pay for this evil blasphemy!~ */
  IF ~~ THEN EXTERN ~STEIN~ 5
END

IF ~~ THEN BEGIN 139 // from:
  SAY #27674 /* ~If that's what you believe, fool, then you believe in nothing. Sin is not washed from the soul with a coin, it is purged with temperance and atonement!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 140 // from:
  SAY #27854 /* ~I am, Cadril. And there is no reason for your furtive, suspicious glances either... whether you like me or not.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 141 // from:
  SAY #27860 /* ~Indeed, Lady Irlana. I see you are looking as fair as ever. It is a pleasure to hear the musical tones of your voice once again!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 142 // from:
  SAY #28112 /* ~*sigh* Melvin.~ */
  IF ~~ THEN EXTERN ~HMELVIN~ 7
END

IF ~~ THEN BEGIN 143 // from:
  SAY #28114 /* ~By all that is holy, Melvin, do you not have a latrine to scrub?~ */
  IF ~~ THEN EXTERN ~HMELVIN~ 8
END

IF ~~ THEN BEGIN 144 // from:
  SAY #28116 /* ~By Helm, Melvin! Why are you talking to me? The prelate may be using a soiled latrine this very moment! To it, boy!~ */
  IF ~~ THEN EXTERN ~HMELVIN~ 9
END

IF ~~ THEN BEGIN 145 // from:
  SAY #28118 /* ~(Why do you you test me so, Helm?)~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 146 // from:
  SAY #28954 /* ~It is called the Most Noble Order of the Radiant Heart, fool. And we do more to battle evil than you could comprehend. Look to your own actions first before you look to others'.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 147 // from:
  SAY #29534 /* ~That "commoner" is one of the wealthiest men in the city. Aside from that, it is none of your affair.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 148 // from:
  SAY #30048 /* ~I fight for my holy order only. If you wish to join the military and throw your life away in the service of a greedy nation of merchants, you may certainly do so.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 149 // from:
  SAY #31666 /* ~I shall return when my father is sober.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #5 ~  Global("AnomenDecide","GLOBAL",1)
~ THEN BEGIN 150 // from:
  SAY #37093 /* ~I am well worried by what has gone on in this place. Though the choice seems clear and right, I am hesitant to take it.~ [ANOMENA7] */
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Viconia")
~ THEN GOTO 52
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 227
  IF ~  !IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 493
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 188
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 165
END

IF ~~ THEN BEGIN 151 // from: 53.1
  SAY #37101 /* ~Perhaps you speak the truth, yet I find myself loath to cast off the vows that I have made to the Order so easily.~ */
  IF ~~ THEN GOTO 56
END

IF ~~ THEN BEGIN 152 // from: 58.0 56.1 54.1
  SAY #37102 /* ~Aye. This is right. I feel it in my bones. I've lived under the bitterness of my father's spirit my entire life. It has tainted me to the point where I am willing to partake in it.~ */
  IF ~~ THEN GOTO 57
END

IF ~~ THEN BEGIN 153 // from: 57.0
  SAY #37104 /* ~We shall take this matter before the magistrate. My father's revenge be damned! I have sworn to uphold the law, and unlike him, I shall do so.~ */
  IF ~~ THEN GOTO 59
END

IF ~~ THEN BEGIN 154 // from: 57.1
  SAY #37106 /* ~They have always been mortal enemies. If my sister was indeed murdered, then the magistrate would have investigated.~ */
  IF ~~ THEN GOTO 155
END

IF ~~ THEN BEGIN 155 // from: 154.0
  SAY #37107 /* ~My father's revenge be damned! I have sworn to uphold the law, and unlike him, I shall do so.~ */
  IF ~~ THEN GOTO 59
END

IF ~~ THEN BEGIN 156 // from:
  SAY #38741 /* ~We've no money to waste on vagrants and beggars, m'lady. They would be far better served fending for themselves for once.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 157 // from:
  SAY #38915 /* ~Why do you dote so on an obviously fraudulent beggar, <CHARNAME>? I would not give such unlicensed conning a second glance.~ */
  IF ~  True()
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Nalia")
RandomNum(3,1)
~ THEN EXTERN ~NALIAJ~ 139
  IF ~  IsValidForPartyDialogue("Valygar")
RandomNum(3,2)
~ THEN EXTERN ~VALYGARJ~ 27
  IF ~  IsValidForPartyDialogue("Viconia")
RandomNum(3,3)
~ THEN EXTERN ~VICONIJ~ 27
END

IF ~~ THEN BEGIN 158 // from:
  SAY #38916 /* ~Wealth is wasted on such. It will be spent in a moment and forgotten. If nothing else is done to help such barren souls, giving them coin is not a preferable alternative.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 159 // from:
  SAY #38925 /* ~It is about time someone stood up to those foul thieves. This city could be scoured clean of them by Helm himself, and they would return to infest in minutes like cockroaches.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 160 // from:
  SAY #39166 /* ~Combat between men, is it? Such a practice is vile, <CHARNAME>... surely we will not stand idly and allow such practices to continue?~ */
  IF ~  IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 40
  IF ~  !IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~COPGREET~ 2
END

IF ~~ THEN BEGIN 161 // from:
  SAY #39265 /* ~They will force this man to fight? Justice is cried for here, <CHARNAME>. We cannot sit idly and allow this to continue!~ */
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutSceneEx("Cut02c",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 162 // from:
  SAY #39277 /* ~It is good that you do not trust this piece of rabble, <CHARNAME>. He and his kin are not to be trusted, and we've no time to waste on them.~ */
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Nalia")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 94
  IF ~  !IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Nalia")
~ THEN EXTERN ~NALIAJ~ 145
END

IF ~~ THEN BEGIN 163 // from:
  SAY #39280 /* ~They are desperate criminals, at the very least, who would trample us if they were actually set free. <CHARNAME> has the right of it.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 164 // from:
  SAY #39358 /* ~Aye... and naturally, he shall not put the profits of the inn into depraved entertainments similar to the current ones. Aye, surely we can believe a filthy barbarian.~ */
  IF ~  !IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~HENDAK~ 37
  IF ~  IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 61
  IF ~  !IsValidForPartyDialogue("HaerDalis")
IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 101
END

IF ~~ THEN BEGIN 165 // from:
  SAY #39368 /* ~The man is guilty without question, <CHARNAME>. I say we expedite justice now and ask questions later. Surely you see the need for this.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 166 // from:
  SAY #39377 /* ~Your base appetites will be your destruction, dwarf. I am dismayed that <CHARNAME> has allowed such a creature as you to walk amongst us.~ */
  IF ~~ THEN EXTERN ~KORGANJ~ 50
END

IF ~~ THEN BEGIN 167 // from:
  SAY #39380 /* ~<CHARNAME>, my <PRO_LADYLORD>! You cannot be seriously considering such a depraved practice! You are... just looking for information... correct?~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 168 // from:
  SAY #39395 /* ~No, she is not! Away with you, foul temptress and purveyor of flesh! You will not corrupt the lady with your filthy business!~ */
  IF ~~ THEN DO ~SetGlobal("MadamUpset","GLOBAL",1)
~ EXTERN ~MADAM~ 17
END

IF ~~ THEN BEGIN 169 // from:
  SAY #39420 /* ~<CHARNAME>! Surely you will not stand for this slight to your honor!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 170 // from:
  SAY #40391 /* ~Hmm. If this be the Bolumir I have heard tales of, you should refuse him. He is nothing but trouble, a thorn you shall not be able to remove once he is under your cushion!~ */
  IF ~~ THEN EXTERN ~KPDOMO01~ 65
END

IF ~~ THEN BEGIN 171 // from:
  SAY #41461 /* ~Hmph. I feel little here in the way of an actual curse. No doubt it exists only in their heads. But I will pray to Helm for their benefit, if it will ease their frail minds.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 172 // from:
  SAY #47080 /* ~I... see nothing of myself in your words, woman. A waste of my coin and nothing more.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 173 // from:
  SAY #47314 /* ~<CHARNAME>, my <PRO_LADYLORD>! You cannot be seriously considering such a depraved practice! You are... just looking for information... correct?~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 174 // from: 134.1
  SAY #48022 /* ~Yes, you are likely correct in this, my friend. It wrenches my heart that Moira's death should go unpunished, but there is little that can be done.~ */
  IF ~~ THEN GOTO 175
END

IF ~~ THEN BEGIN 175 // from: 174.0
  SAY #48023 /* ~I should not take vengeance upon a man my father believes is guilty only because of his pride. It could just as easily have been a... a burglar, perhaps.~ */
  IF ~~ THEN GOTO 176
END

IF ~~ THEN BEGIN 176 // from: 175.0
  SAY #48025 /* ~And if it is this Saerk, the gods will punish him even if the courts will not.~ */
  IF ~  !IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Yoshimo")
~ THEN GOTO 177
  IF ~  IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 494
  IF ~  !IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 229
  IF ~  !IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 134
  IF ~  !IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Edwin")
IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 94
END

IF ~~ THEN BEGIN 177 // from: 176.0
  SAY #48026 /* ~I wish I could return to my father and convince him that this is the best way, but I am sure he will not even see me. He is a stubborn, vile man. Perhaps, in time, he shall see the truth of this matter.~ */
  IF ~~ THEN GOTO 178
END

IF ~~ THEN BEGIN 178 // from: 177.0
  SAY #48028 /* ~At least... that is my hope. Ahhhh, <CHARNAME>... let us continue on your quest and leave this behind us. It leaves an ashen taste in my mouth that I would sooner forget.~ */
  IF ~~ THEN DO ~EraseJournalEntry(4997)
EraseJournalEntry(34657)
EraseJournalEntry(34658)
EraseJournalEntry(34659)
AddexperienceParty(7500)
SetGlobal("KillSaerk","GLOBAL",2)
~ SOLVED_JOURNAL #20311 /* ~Anomen refuses to take revenge for his sister's murder

After being told of the death of Anomen's sister, we went to his father's estate. Lord Cor proved a bitter man, demanding that Anomen kill the supposed murderer, a merchant named Saerk who is also a rival of Cor's. Anomen refused, and his father threw him out for disobeying. We went to the magistrate Bylanna, but there is insufficient evidence to implicate Saerk or anyone else. I urged Anomen to forget the incident. Anomen is bitter and sad, but agreed to put this matter, and his father, behind him for now.~ */ EXIT
END

IF ~~ THEN BEGIN 179 // from:
  SAY #48474 /* ~That such outrageous slavery has been allowed to exist in this city for so long sickens me to the stomach. It is a good thing that heroes such as we exist, no?~ */
  IF ~  !IsValidForPartyDialogue("Jaheira")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 349
END

IF ~~ THEN BEGIN 180 // from:
  SAY #48477 /* ~You will question <PRO_HISHER> good actions now, druid? One wonders sometimes if you have a true stand on any point of righteousness! You make me ill, half-elf!~ */
  IF ~~ THEN EXTERN ~JAHEIRAJ~ 350
END

IF ~~ THEN BEGIN 181 // from:
  SAY #48482 /* ~Do not mock me, woman, or mock my faith! I have killed many an infidel in the past, and it would not concern me overly to add another to the list!~ */
  IF ~~ THEN EXTERN ~JAHEIRAJ~ 351
END

IF ~~ THEN BEGIN 182 // from:
  SAY #48538 /* ~Enough, girl! Whether the ogres prey upon the weak or upon this noble's businesses, it is still an evil that must be crushed! Let us deal the justice that is called for.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 183 // from:
  SAY #48557 /* ~What would you know of valor, mage? Your pale and thin skin is all that is important to you, and we are all more than aware of that fact.~ */
  IF ~~ THEN EXTERN ~EDWINJ~ 45
END

IF ~~ THEN BEGIN 184 // from:
  SAY #48583 /* ~Is there nothing you can do to aid us, sir?~ */
  IF ~~ THEN EXTERN ~GARREN~ 23
END

IF ~~ THEN BEGIN 185 // from:
  SAY #48626 /* ~I say this man lies with his every breath! He is a murderer that will say anything to avoid justice! I fight with <CHARNAME>!~ */
  IF ~  !IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Aerie")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Mazzy")
ReactionGT(Player1,13)
~ THEN EXTERN ~MAZZYJ~ 129
  IF ~  IsValidForPartyDialogue("Mazzy")
ReactionLT(Player1,NEUTRAL_UPPER)
~ THEN EXTERN ~MAZZYJ~ 130
  IF ~  !IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("Minsc")
ReactionGT(Player1,13)
~ THEN EXTERN ~MINSCJ~ 102
  IF ~  !IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("Minsc")
ReactionLT(Player1,NEUTRAL_UPPER)
~ THEN EXTERN ~MINSCJ~ 103
  IF ~  !IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Aerie")
ReactionGT(Player1,10)
~ THEN EXTERN ~AERIEJ~ 61
  IF ~  !IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Aerie")
ReactionLT(Player1,11)
~ THEN EXTERN ~AERIEJ~ 60
END

IF ~~ THEN BEGIN 186 // from:
  SAY #48643 /* ~Hah! A liar exposed for the fraud that he is! To use such an excuse as an ill mother only to be revealed... it sickens my stomach to witness such base cunning.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 187 // from:
  SAY #48652 /* ~No doubt you are deserving of your punishment, though this place is probably far emptier than it should be...~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 188 // from:
  SAY #48666 /* ~I do not share that name! I would be against the lot of you were our association not dire necessity. ~ */
  IF ~~ THEN EXTERN ~ARNMAN04~ 1
END

IF ~~ THEN BEGIN 189 // from:
  SAY #48679 /* ~Such treachery and deceit! An outrage to right-thinking people!~ */
  IF ~~ THEN EXTERN ~ARNMAN04~ 19
END

IF ~~ THEN BEGIN 190 // from:
  SAY #48685 /* ~I do not care for your tone, woman.~ */
  IF ~~ THEN EXTERN ~ARNMAN04~ 20
END

IF ~~ THEN BEGIN 191 // from:
  SAY #48694 /* ~Perhaps it is a result of your blasphemy that the gods deny you prosperity! Get yourself to a temple, commoner, and pray for forgiveness for your vile mouth!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 192 // from:
  SAY #48710 /* ~Indeed, I will agree with that. Justice is rarely harsh enough for most to have its memory last longer than a moment. A true pity.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 193 // from:
  SAY #48718 /* ~It goes well enough, Guardian. I am eager to take my test, but until then, I am content in the service of the Great Guard, proving my name with my fellow adventurers here.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 194 // from:
  SAY #48744 /* ~Do you speak to ME?! Begone, harlot! I'll hear none of that vile poison that spills from your tongue! Begone!~ */
  IF ~~ THEN DO ~ActionOverride("bprost1",RunAwayFrom("Anomen",30))
~ EXIT
END

IF ~~ THEN BEGIN 195 // from:
  SAY #48752 /* ~Trouble, eh? I shall show you trouble, vile thief!~ */
  IF ~~ THEN DO ~Attack("bshop01")
~ EXIT
END

IF ~~ THEN BEGIN 196 // from:
  SAY #48881 /* ~I do not know why we must involve ourselves constantly in the problems of others, <CHARNAME>. Are there not more important things for us to do? *sigh* Have it your way.~ */
  IF ~  !IsValidForPartyDialogue("Keldorn")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 123
END

IF ~~ THEN BEGIN 197 // from:
  SAY #48894 /* ~This is a pointless undertaking, <CHARNAME>, even for you. Let us dispense with this matter quickly if you are going to do it at all.~ */
  IF ~  !IsValidForPartyDialogue("Jan")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 110
END

IF ~~ THEN BEGIN 198 // from:
  SAY #48897 /* ~We will do nothing of the sort, <CHARNAME>. This fool is discovered even now. Look.~ */
  IF ~~ THEN EXTERN ~ARNMAN08~ 0
END

IF ~~ THEN BEGIN 199 // from:
  SAY #48921 /* ~This is almost more than I can bear. I will make a point of returning to this place with a troop of cleansing light once our association is no longer a necessity.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 200 // from:
  SAY #48922 /* ~Hmph. Such manner of base scum should be put to death, in my opinion. To be a fully sworn paladin and to turn your back on your sworn oaths is inconceivable.~ */
  IF ~  !IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~KAYL2~ 25
  IF ~  IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 140
END

IF ~~ THEN BEGIN 201 // from:
  SAY #48944 /* ~If you cannot meet justice on your knees, fool, it shall be plunged deep into your heart where it belongs!~ */
  IF ~~ THEN DO ~Attack("kaypala")
~ EXIT
END

IF ~~ THEN BEGIN 202 // from:
  SAY #48962 /* ~I disapprove of charity. The man should be trained and outfitted that he might provide for himself.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 203 // from:
  SAY #48971 /* ~You cannot go far, murderer! Justice has arrived to claim your black, filthy soul and not a moment too soon!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 204 // from:
  SAY #48972 /* ~Do not tempt such fools even in jest, <CHARNAME>! They know no other answer than this!~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #6 ~  AreaCheck("AR0502")
Global("EnteredTanner","AR0502",0)
~ THEN BEGIN 205 // from:
  SAY #48980 /* ~Helm protect us... I can feel the aura of evil here. The wrongfully killed linger... and no doubt the beast has trapped this place well. Step carefully, I warn you.~ */
  IF ~  Global("ToldInspector","GLOBAL",0)
~ THEN DO ~SetGlobal("EnteredTanner","AR0502",1)
~ EXIT
  IF ~  Global("ToldInspector","GLOBAL",1)
~ THEN DO ~SetGlobal("EnteredTanner","AR0502",1)
~ GOTO 206
END

IF ~~ THEN BEGIN 206 // from: 205.1
  SAY #48984 /* ~I have little doubt as well that we shall make a grim discovery here of the inspector's body. Let us hope that I am wrong and that the man has escaped a horrid fate.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #7 ~  PartyHasItem("misc5m")
OR(3)
!InParty("Keldorn")
Dead("Keldorn")
!StateCheck("Keldorn",STATE_SLEEPING)
See(Player1)
Global("FoundAegis","GLOBAL",0)
~ THEN BEGIN 207 // from:
  SAY #48986 /* ~A grim discovery, for the lieutenant seemed an honorable man. When we can, we should turn his body over to the authorities in the Government District.~ */
  IF ~~ THEN DO ~SetGlobal("FoundAegis","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 208 // from:
  SAY #49199 /* ~Or we have mistakenly wandered amidst the dirty and reprehensible. ~ */
  IF ~~ THEN EXTERN ~DFISHER~ 11
END

IF ~~ THEN BEGIN 209 // from:
  SAY #49246 /* ~You let him go?! He is a thief! He will betray you as surely he did his master, and then all will be for naught! You should have slaughtered him and been done with it!~ */
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Yoshimo")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 140
  IF ~  !IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 383
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 58
END

IF ~~ THEN BEGIN 210 // from:
  SAY #49253 /* ~I have proven myself time and again to the Order, Keldorn. Do not compare me to that... that dog.~ */
  IF ~  !IsValidForPartyDialogue("Yoshimo")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 58
END

IF ~~ THEN BEGIN 211 // from:
  SAY #49254 /* ~Shut your worthless mouth, wench! I stand with the righteous and have proven myself time and again. Do not compare me to that... that dog.~ */
  IF ~  !IsValidForPartyDialogue("Yoshimo")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 58
END

IF ~~ THEN BEGIN 212 // from:
  SAY #49283 /* ~More thieves? Am I to be steeped in such unpious activity throughout my association with you, <CHARNAME>? I certainly hope not, as this is all beginning to wear my patience.~ */
  IF ~  !IsValidForPartyDialogue("Edwin")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 64
END

IF ~~ THEN BEGIN 213 // from:
  SAY #49298 /* ~We have been duped into leading an assassin to its target! That such an evil man should die is without question, but I do not relish being tricked into being the instrument!~ */
  IF ~  !IsValidForPartyDialogue("Jan")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 112
END

IF ~~ THEN BEGIN 214 // from:
  SAY #49351 /* ~You wish to speak to the Harpers and rescue this evil man's companion? An odd choice of quest... but I have never trusted the Harpers myself. This may be interesting.~ */
  IF ~  !IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Edwin")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 63
  IF ~  !IsValidForPartyDialogue("Yoshimo")
IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 66
END

IF ~~ THEN BEGIN 215 // from:
  SAY #49372 /* ~This is a despicable act you contemplate, <CHARNAME>, even if I understand your reasoning. I will continue with you... for now... but if we continue such activities, I will not remain.~ */
  IF ~  !IsValidForPartyDialogue("Mazzy")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 144
END

IF ~~ THEN BEGIN 216 // from:
  SAY #49402 /* ~And the power that your fellows obtain while they maintain this balance means nothing? I find it hard to believe that all Harpers are capable of such altruism.~ */
  IF ~~ THEN EXTERN ~MERONIA~ 2
END

IF ~~ THEN BEGIN 217 // from:
  SAY #49494 /* ~Quit your whining, girl! I doubt there is a Cowled Wizard in existence that does not deserve a quick death, and it seems we have little choice.~ */
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Yoshimo")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 144
  IF ~  !IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 70
END

IF ~~ THEN BEGIN 218 // from:
  SAY #49575 /* ~Hmph. If you wish to run some den of thieves, that is your own business. Do not involve me in it. I would sooner see all your guild-fellows dead at the end of my blade.~ */
  IF ~  !IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~RENAL~ 77
  IF ~  IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 74
END

IF ~~ THEN BEGIN 219 // from:
  SAY #49581 /* ~The fool is probably drunk and not even dying, <CHARNAME>. Why must you concern yourself with every delinquent we come across? Ahhh, do as you wish if it concerns you so much.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 220 // from:
  SAY #49610 /* ~We are to run errands for these Harpers now, even after saving one of them? And all for that... that... necromancer's halfling friend?! I say to the Abyss with them all!~ */
  IF ~  !IsValidForPartyDialogue("Yoshimo")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 75
END

IF ~~ THEN BEGIN 221 // from:
  SAY #49777 /* ~Be wary, my friend. This creature is one of darkness... if you intend to deal with her, do so cautiously. I will prepare to call on Helm should signs of treachery arise.~ */
  IF ~~ THEN EXTERN ~BODHI~ 2
END

IF ~~ THEN BEGIN 222 // from:
  SAY #49787 /* ~A strange deal... and yet it would save us much effort, no? It has, however, the feel of a deal with a devil. It would be good, however, to turn the tables on those vile thieves.~ */
  IF ~  !IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~BODHI~ 130
  IF ~  IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 98
  IF ~  !IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 76
END

IF ~~ THEN BEGIN 223 // from:
  SAY #49818 /* ~And she is gone? Just like that? We were drawn here in the night only to receive riddles and excuses from some... evil... creature? How very odd.~ */
  IF ~  !IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Aerie")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 59
  IF ~  !IsValidForPartyDialogue("Viconia")
IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 90
END

IF ~~ THEN BEGIN 224 // from:
  SAY #49872 /* ~Are there not more important adventures we could be undertaking? This manner of... of aid seems quite tedious. This is a task for the garrison, <CHARNAME>.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 225 // from:
  SAY #49941 /* ~You are shivering, my dear. I will stoke the fire, though I fear your chill is not a fault of the air. ~ */
  IF ~~ THEN REPLY #49944 /* ~No, it isn't. Stand back, Anomen. I don't know if I can protect you from this.~ */ DO ~SetGlobal("EndangerLovedOne","GLOBAL",4)
~ GOTO 226
  IF ~~ THEN REPLY #49945 /* ~You endanger yourself by being here. Move, for your own good.~ */ DO ~SetGlobal("EndangerLovedOne","GLOBAL",4)
~ GOTO 226
  IF ~~ THEN REPLY #49946 /* ~Get away from me, fool. You endanger your worthless life!~ */ DO ~SetGlobal("EndangerLovedOne","GLOBAL",4)
~ GOTO 226
END

IF ~~ THEN BEGIN 226 // from: 225.2 225.1 225.0
  SAY #49947 /* ~Your lips move, but no sound emerges. Are you sure you are well... <CHARNAME>? By the gods, <CHARNAME>!~ */
  IF ~~ THEN DO ~ActionOverride(Player1,ReallyForceSpell(Myself,SLAYER_CHANGE))
~ EXIT
END

IF ~~ THEN BEGIN 227 // from:
  SAY #49955 /* ~This is not the time nor the place for one of your pointless anecdotes, gnome.~ */
  IF ~~ THEN EXTERN ~JANJ~ 124
END

IF ~~ THEN BEGIN 228 // from:
  SAY #49960 /* ~Nothing, so long as such enthusiasm is tempered with the knowledge of one's duty. Truly, such optimism makes for a strange credo to constantly hold oneself to.~ */
  IF ~~ THEN EXTERN ~ACOLYTE2~ 2
END

IF ~~ THEN BEGIN 229 // from:
  SAY #49982 /* ~You are a beast within! If I did not know of your true intent, I would be at your throat as we speak.~ */
  IF ~~ THEN GOTO 230
END

IF ~~ THEN BEGIN 230 // from: 229.0
  SAY #49983 /* ~We must put a stop to this. Speak no more of it until we can face those responsible. ~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 231 // from:
  SAY #49997 /* ~You are beneath my notice, fool. You can join my father in Hell, if you like, and gossip with him all you like once you're there.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 232 // from:
  SAY #50027 /* ~I know of Sir Keldorn. I do not doubt that he looks into this cult on his own. He is a veteran paladin of the Order, a fine warrior... if somewhat arrogant and over-pious. ~ */
  IF ~  !IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Jaheira")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 129
  IF ~  !IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 80
  IF ~  !IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Yoshimo")
IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 103
  IF ~  !IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 71
  IF ~  !IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Viconia")
IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 424
END

IF ~~ THEN BEGIN 233 // from:
  SAY #50028 /* ~We may rest if you are in need. I will not force a pained <PRO_MANWOMAN> to travel.~ */
  IF ~~ THEN REPLY #50029 /* ~I am well enough. Just a momentary loss of footing. Press on.~ */ EXIT
  IF ~~ THEN REPLY #50030 /* ~My health is no concern of yours. I am fine, and I will hear no more of it!~ */ EXIT
  IF ~~ THEN REPLY #50031 /* ~It felt like I wasn't in total control of myself for a moment. It has passed.~ */ EXIT
END

IF ~~ THEN BEGIN 234 // from:
  SAY #50035 /* ~You are too far beneath my notice to even acknowledge such a comment. Repeat it, however, and I shall react much differently.~ */
  IF ~  !IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Jaheira")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 71
  IF ~  !IsValidForPartyDialogue("Viconia")
IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 424
END

IF ~~ THEN BEGIN 235 // from:
  SAY #50038 /* ~Excellent! An adventure worthy of the name!~ */
  IF ~~ THEN EXTERN ~BHARVAL~ 27
END

IF ~~ THEN BEGIN 236 // from:
  SAY #50051 /* ~This cult must be investigated, but I find it difficult to respond to a Talassan priest without snarling. It is your business... but I shall have no part of it beyond this task.~ */
  IF ~  !IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Jaheira")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 71
  IF ~  !IsValidForPartyDialogue("Viconia")
IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 424
END

IF ~~ THEN BEGIN 237 // from:
  SAY #50052 /* ~It is disappointing that you choose to align with the faction of the Storm Lord. The Order teaches tolerance... but I shall watch you closely for signs of evil, mark my words.~ */
  IF ~  !IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~BHNALLA~ 53
  IF ~  IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 425
END

IF ~~ THEN BEGIN 238 // from:
  SAY #50059 /* ~You must reconsider, <CHARNAME>! We must perform this service for the Watcher! Such evil cannot be allowed to continue unchecked!~ */
  IF ~~ THEN EXTERN ~BHOISIG~ 22
END

IF ~~ THEN BEGIN 239 // from:
  SAY #50061 /* ~The Watcher is a somber and unforgiving god... and one who places duty above all else. Keep that in mind, <CHARNAME>... but also be welcome.~ */
  IF ~  !IsValidForPartyDialogue("Keldorn")
~ THEN REPLY #50065 /* ~Before I go to Acolyte Byron, Oisig, may I ask you a question?~ */ EXTERN ~BHOISIG~ 50
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 162
END

IF ~~ THEN BEGIN 240 // from:
  SAY #50095 /* ~Desperate words for a desperate demon! Your evil is at an end, foul one! Prepare to join your master in the pits of the Abyss!~ */
  IF ~~ THEN DO ~Attack("Gaal")
~ EXIT
END

IF ~~ THEN BEGIN 241 // from:
  SAY #50114 /* ~It is dishonest, but no less than the cretin deserves for the demands he places upon the church. Sir Sarles could use his pride pricked, I say.~ */
  IF ~  !IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~SCJERLIA~ 13
  IF ~  IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 155
END

IF ~~ THEN BEGIN 242 // from:
  SAY #50125 /* ~This is a god, then, or its avatar? Weakened by lack of faith... and the device that the beholder seeks no longer has great power. I wonder if the beholder knows this?~ */
  IF ~~ THEN EXTERN ~RIFTG03~ 8
END

IF ~~ THEN BEGIN 243 // from:
  SAY #50144 /* ~That is the most ridiculous thing I have ever heard, gnome. Oghma is a serious and wise god that deserves more respect from you... if you're even capable of it.~ */
  IF ~~ THEN EXTERN ~JANJ~ 133
END

IF ~~ THEN BEGIN 244 // from:
  SAY #50304 /* ~Oh. You must be my governess... er... Martha? Marilynn, is it? Good day to you, good woman.~ */
  IF ~  !IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Yoshimo")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 139
  IF ~  !IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 107
  IF ~  !IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 86
END

IF ~~ THEN BEGIN 245 // from:
  SAY #50311 /* ~I shall not be made a fool of in front of my governess! Stop it! Stop it! Stop it!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 246 // from:
  SAY #50392 /* ~I am not here on my father's behalf, cur. If you wish to exclude Lord Cor due to his lack of wealth, that is your own business. I would not wish the foul drunk on anyone.~ */
  IF ~  !Dead("cor")
~ THEN EXIT
  IF ~  Dead("cor")
~ THEN GOTO 247
END

IF ~~ THEN BEGIN 247 // from: 246.1
  SAY #50395 /* ~You may be pleased to discover, however, that my father is now dead and you shall not be forced to worry about explaining your rude exclusion to him. Now begone.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 248 // from:
  SAY #50531 /* ~It seems a dark elf has been caught and is about to be put to the torch. Good. Such a fate is no less than the fiend deserves.~ */
  IF ~~ THEN EXTERN ~VICONI~ 8
END

IF ~~ THEN BEGIN 249 // from:
  SAY #50576 /* ~I had not thought the drow could be so... striking. A beautiful creature, this, if devoid of compassion as I hear. Bring her or send her away, it matters not to me.~ */
  IF ~  !IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~VICONI~ 25
  IF ~  IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 147
END

IF ~~ THEN BEGIN 250 // from:
  SAY #50645 /* ~<CHARNAME>! Such evil radiating from you! Are you... yourself again?~ */
  IF ~~ THEN GOTO 251
END

IF ~~ THEN BEGIN 251 // from: 250.0
  SAY #50646 /* ~The Order taught of Bhaal and his forms... that was... the Slayer? You became a form of a dead god's avatar?~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 252 // from:
  SAY #50668 /* ~We will not want to leave the inmates without direction for long. Quickly, <CHARNAME>, before they act unexpectedly.~ */
  IF ~~ THEN DO ~SetGlobal("playerTalk","AR1515",2)
SetGlobal("AsylumPlot","GLOBAL",54)
StartCutSceneMode()
StartCutSceneEx("Cut41m",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 253 // from:
  SAY #50959 /* ~This is an evil place you have brought us, <CHARNAME>. But I suspect that we must act the eager supplicants if we are to pass inspection, for I feel eyes upon us as we speak.~ */
  IF ~~ THEN GOTO 254
END

IF ~~ THEN BEGIN 254 // from: 253.0
  SAY #50960 /* ~We should step quickly to comply. The suspicion of the drow is almost palpable, and any wrong move will surely bring their foul magics down upon us.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 255 // from:
  SAY #52291 /* ~If this is all the lady has to offer, <CHARNAME>, we must accept. To do otherwise would be dishonorable. We shall aid you, my lady. Tell us what ails your family keep.~ */
  IF ~~ THEN EXTERN ~NALIA~ 50
END

IF ~~ THEN BEGIN 256 // from:
  SAY #52319 /* ~You do a terrible thing here, <CHARNAME>. I can only pray for your salvation, owing to good deeds you have done in the past... but I shall do them from elsewhere. Farewell.~ */
  IF ~~ THEN DO ~LeaveParty()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 257 // from:
  SAY #55198 /* ~He is dead! For all his boasts, he was nothing more than another villain waiting to die at the hands of the righteous!~ */
  IF ~~ THEN EXTERN ~PLAYER1~ 17
END

IF ~~ THEN BEGIN 258 // from:
  SAY #55223 /* ~What manner of place is this? I have died and... and come here?! That pulling... you have brought me with you, <CHARNAME>. Bah! I shall help you here if need be... but I wish to find a way out as well!~ [ANOMENC3] */
  IF ~  !IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Edwin")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 100
  IF ~  !IsValidForPartyDialogue("HaerDalis")
IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 189
  IF ~  !IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Nalia")
~ THEN EXTERN ~NALIAJ~ 268
  IF ~  !IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Nalia")
IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 95
  IF ~  IsValidForPartyDialogue("LCCORWIN")
!Global("CorwinHell","GLOBAL",1)
~ THEN DO ~SetGlobal("CorwinHell","GLOBAL",1)
~ EXTERN ~LCCORWIJ~ 30
END

IF ~~ THEN BEGIN 259 // from:
  SAY #55679 /* ~Just when I'm sick of shades of gray, along comes the purest of black and white. This one is quite clearly insane.~ */
  IF ~~ THEN EXTERN ~PPIRENI1~ 23
END

IF ~~ THEN BEGIN 260 // from:
  SAY #55685 /* ~Well, I do not. It was almost beyond endurance to spend so much time aboard ship near that one... I could not sleep a wink for fear of our lives.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 261 // from:
  SAY #55692 /* ~You DARE?! You consort with the very vampires that we have opposed, laying a trap for us?! You will pay for this, pirate!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 262 // from:
  SAY #55696 /* ~I can think of only one creature that would dare put the pirate up to this. It is the vampire we fought against... Bodhi. Obviously, she seeks some manner of revenge on us.~ */
  IF ~~ THEN EXTERN ~PPSIME~ 7
END

IF ~~ THEN BEGIN 263 // from:
  SAY #55718 /* ~Aye, win we did. And had we fallen, you no doubt would have remained on the wizard's side, harmed not in the slightest for all that we would be dead. Hmph.~ */
  IF ~~ THEN EXTERN ~VALYGARJ~ 36
END

IF ~~ THEN BEGIN 264 // from:
  SAY #55725 /* ~I do believe that he probably looked too far into the business of the gods. It was not his place to do so.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 265 // from:
  SAY #55743 /* ~Bah! Do not listen to the words of a pirate, <CHARNAME>! He seeks to have us destroyed at the hands of those madmen! I say we assault the wizard now, while he is vulnerable!~ */
  IF ~  !IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Viconia")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 106
  IF ~  !IsValidForPartyDialogue("Edwin")
IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 129
END

IF ~~ THEN BEGIN 266 // from:
  SAY #55785 /* ~His ramblings have no meaning. He is raging at enemies long since gone. ~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 267 // from:
  SAY #55789 /* ~Such lies that we are subjected to! You *knew* your ship was destroyed even as you offered us passage, pirate! Admit it!~ */
  IF ~~ THEN EXTERN ~PPSAEM3~ 3
END

IF ~~ THEN BEGIN 268 // from:
  SAY #55812 /* ~Some sights are reserved for the gods alone. It is too complex to fathom...~ */
  IF ~  !IsValidForPartyDialogue("EDWIN")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("EDWIN")
~ THEN EXTERN ~EDWINJ~ 110
END

IF ~~ THEN BEGIN 269 // from:
  SAY #55830 /* ~One more word from these evil creatures of callously killing us or feasting upon our flesh and I will call the wrath of Helm upon them, I swear!~ */
  IF ~~ THEN EXTERN ~SAHPR1~ 37
END

IF ~~ THEN BEGIN 270 // from:
  SAY #55854 /* ~This gets us nowhere! Why are you bothering to do this? If we wish to plague these creatures, let us just leave them to devolve back into eels and be done with it.~ */
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutSceneEx("cut41za",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 271 // from:
  SAY #55911 /* ~You... you *dare* to commit such an atrocity?! I will not stand by you in this! Moreover, I will stop you, fiend!~ */
  IF ~  !IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
~ THEN DO ~LeaveParty()
Enemy()
~ EXTERN ~UDDEMON~ 22
  IF ~  IsValidForPartyDialogue("Jaheira")
~ THEN DO ~LeaveParty()
Enemy()
~ EXTERN ~JAHEIRAJ~ 470
  IF ~  !IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Minsc")
~ THEN DO ~LeaveParty()
Enemy()
~ EXTERN ~MINSCJ~ 170
END

IF ~~ THEN BEGIN 272 // from:
  SAY #55949 /* ~Hmph. I have never heard of this drow, and after our experience in the Underdark, I would be surprised to encounter any dark elf who wasn't worth sending directly to Hell.~ */
  IF ~  !IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~C6DRIZZ1~ 2
  IF ~  IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 145
END

IF ~~ THEN BEGIN 273 // from:
  SAY #55987 /* ~Hah! <CHARNAME> will get on <PRO_HISHER> knees for no one! You've a nerve even thinking of asking <PRO_HIMHER> to do such!~ */
  IF ~~ THEN EXTERN ~C6BRUEN1~ 3
END

IF ~~ THEN BEGIN 274 // from:
  SAY #56029 /* ~Yet he is the one that you hired, fiend. You did not warn us of his untrustworthiness before we left. In fact, you made us perform all manner of tasks for the privilege of sailing with him.~ */
  IF ~~ THEN EXTERN ~ARAN~ 78
END

IF ~~ THEN BEGIN 275 // from:
  SAY #56054 /* ~We won't need your luck. I am sure that the denizens of this place will pose no threat. ~ */
  IF ~  !IsValidForPartyDialogue("VICONIA")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN EXTERN ~VICONIJ~ 154
END

IF ~~ THEN BEGIN 276 // from:
  SAY #56102 /* ~You cannot stop the righteous arrayed against you, wizard! We shall live once again in the light, and you will not stop us!~ [ANOMENC2] */
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Imoen2")
~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("cut85c",FALSE)
~ EXIT
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 214
  IF ~  !IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 159
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 123
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 159
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 126
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
IsValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 168
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 180
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 90
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 482
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 179
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 31
END

IF ~~ THEN BEGIN 277 // from:
  SAY #56150 /* ~Then I see no further need to speak. It shall only make the battle all the harder. ~ */
  IF ~~ THEN EXTERN ~UDSIMYAZ~ 13
END

IF ~~ THEN BEGIN 278 // from:
  SAY #56177 /* ~I have grown tired of chasing you across the realms, Bodhi! Your death will ease the suffering of many!~ */
  IF ~  !IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("MINSC")
~ THEN EXTERN ~C6BODHI~ 14
  IF ~  IsValidForPartyDialogue("HAERDALIS")
~ THEN EXTERN ~HAERDAJ~ 128
  IF ~  IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("HAERDALIS")
~ THEN EXTERN ~KORGANJ~ 158
  IF ~  IsValidForPartyDialogue("MINSC")
!IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~MINSCJ~ 184
  IF ~  IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("MINSC")
!IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~IMOEN2J~ 36
END

IF ~~ THEN BEGIN 279 // from:
  SAY #56405 /* ~It never is with his kind. Would it be enough if he did get all he wanted?~ */
  IF ~~ THEN EXTERN ~SUDEMIN~ 16
END

IF ~~ THEN BEGIN 280 // from:
  SAY #56447 /* ~Hmph. She could be tainted with these shadows, a trap waiting to be sprung. Best to leave her in her cage until we have dealt with the true evil in this place.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 281 // from:
  SAY #56469 /* ~She is no innocent, I tell you. None of this family is. Say what you will, not even the Order will tell me differently! All of these dogs will die!~ */
  IF ~~ THEN EXTERN ~SAERK~ 7
END

IF WEIGHT #8 ~  Dead("saerk")
!Dead("cor")
Global("KillSaerk","GLOBAL",1)
Global("SaerkRevengeDone","LOCALS",0)
~ THEN BEGIN 282 // from:
  SAY #56473 /* ~There. For good or ill, it is done. I want to hear no reprisals either. It was my decision and mine alone. Let us return to my father and tell him what has occurred.~ [ANOMENA6] */
  IF ~~ THEN DO ~SetGlobal("SaerkRevengeDone","LOCALS",1)
~ UNSOLVED_JOURNAL #7686 /* ~Anomen returns home after his sister's death

Anomen murdered Saerk's daughter, and then we did battle with Saerk, his son, and his guards. The son, Yusef, got away, but Saerk is dead. Anomen is in a dark mood. All that remains is to tell Lord Cor that the deed is complete.~ */ EXIT
END

IF ~~ THEN BEGIN 283 // from:
  SAY #56477 /* ~This... this is bad, <CHARNAME>. For Maria to have relations with another man is punishable by imprisonment. Keldorn must be tearing himself up inside...~ */
  IF ~~ THEN EXTERN ~KELDORJ~ 22
END

IF ~~ THEN BEGIN 284 // from:
  SAY #56491 /* ~Hmph. Obviously, these players have broken their own laws and are nothing more than fugitives. Let them face justice in their own land. There is no reason for us to interfere.~ */
  IF ~~ THEN EXTERN ~BOUNHA~ 6
END

IF ~~ THEN BEGIN 285 // from:
  SAY #56496 /* ~Bah! Would that we could visit upon the boy the punishment he deserves! If we do anything, we must find proof of his foulness and ruin him.~ */
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutSceneEx("cut39a",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 286 // from:
  SAY #56504 /* ~Were the life of a child not at stake, I would say leave these mad gnomes to their own devices and forbid them from ever reproducing again.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 287 // from:
  SAY #56510 /* ~A commendable spirit, to help others... although with maturity, girl, you will come to realize that not all are worthy of such attention.~ */
  IF ~  !IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~NALIA~ 66
  IF ~  IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 167
  IF ~  !IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 194
  IF ~  !IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 502
END

IF ~~ THEN BEGIN 288 // from:
  SAY #56511 /* ~A commendable spirit, to help others... although with maturity, girl, you will come to realize that not all are worthy of such attention.~ */
  IF ~  !IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~NALIA~ 53
  IF ~  IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 168
  IF ~  !IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 195
  IF ~  !IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 503
END

IF ~~ THEN BEGIN 289 // from:
  SAY #56519 /* ~You would not pick on such a poor servant, <CHARNAME>, I am sure. Do not upset yourself, young lady. <CHARNAME> has an odd sense of humor, it seems.~ */
  IF ~~ THEN EXTERN ~DALESON~ 14
END

IF ~~ THEN BEGIN 290 // from:
  SAY #56537 /* ~Do not speak to us as if we are all peasants, dear woman. I am Anomen Delryn, son of Lord Cor, and I am not about to be treated as dirt by a woman I have come to save!~ */
  IF ~~ THEN EXTERN ~DELCIA~ 48
END

IF ~~ THEN BEGIN 291 // from:
  SAY #56558 /* ~I am quite confident in <CHARNAME>'s abilities. I will feel no such loss.~ */
  IF ~~ THEN EXTERN ~BODHIAMB~ 19
END

IF ~~ THEN BEGIN 292 // from:
  SAY #56895 /* ~Trinkets? You expect to appease us with a few baubles we could have found at the local bazaar? We have more important things to worry about!~ */
  IF ~~ THEN EXTERN ~ARAN~ 52
END

IF ~~ THEN BEGIN 293 // from:
  SAY #57374 /* ~As short as the lives of these people were to be, it would be a poor thing to subject them to such an end. Let them go... even that is better than what you contemplate.~ */
  IF ~~ THEN EXTERN ~DASLAVE1~ 5
END

IF ~~ THEN BEGIN 294 // from:
  SAY #57458 /* ~Away with you, scoundrel! Veldrin needs no such attentions from any base creature such as yourself!~ */
  IF ~~ THEN EXTERN ~DADROW21~ 3
END

IF ~~ THEN BEGIN 295 // from:
  SAY #57902 /* ~This is a great evil we go to fight. I, for one, do not appreciate fighting battles for those that should stand for themselves. ~ */
  IF ~~ THEN EXTERN ~C6ELHAN2~ 46
END

IF ~~ THEN BEGIN 296 // from:
  SAY #58141 /* ~Keldorn! I cannot believe what I am hearing! You of all people should know we must cleanse the lot of them!~ */
  IF ~~ THEN EXTERN ~KELDORJ~ 247
END

IF ~~ THEN BEGIN 297 // from:
  SAY #58142 /* ~Very well, but this place is just as deserving of our wrath as of our help.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 298 // from:
  SAY #58143 /* ~Devils are devils, and this place is just as worthy of our wrath as of our help. Some other day and we would not be standing here speaking to these curs.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 299 // from:
  SAY #58170 /* ~Things may have changed since I first laid eyes upon you in the tavern, <CHARNAME>, but I refuse to back away from a fight. Whether we are victorious or we fall today, I could not live with myself should I fight with anything less than all I possess.~ */
  IF ~  True()
~ THEN EXTERN ~PLAYER1~ 53
  IF ~  IsValidForPartyDialogue("Aerie")
Global("AerieRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 51
  IF ~  IsValidForPartyDialogue("Viconia")
Global("ViconiaRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 50
  IF ~  IsValidForPartyDialogue("Jaheira")
Global("JaheiraRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 49
END

IF ~~ THEN BEGIN 300 // from:
  SAY #58276 /* ~Nay, lass, nay. If there are words that are to be spoken before we do what we must, let it be I that speaks them.~ */
  IF ~~ THEN GOTO 301
END

IF ~~ THEN BEGIN 301 // from: 300.0
  SAY #58277 /* ~I have said harsh things to you. I have done much that I regret. But you have stayed the course with me throughout it all. More than that, you have saved my life... nay, more... my very soul.~ */
  IF ~~ THEN GOTO 302
END

IF ~~ THEN BEGIN 302 // from: 301.0
  SAY #58278 /* ~I have said more than once that I love you, <CHARNAME>. But those words describe nothing of the ache in my heart I feel for you now. Would that there were some way I could repay you in kind all you have done for me.~ */
  IF ~~ THEN GOTO 303
END

IF ~~ THEN BEGIN 303 // from: 302.0
  SAY #58279 /* ~Let us go now and stop this madman who threatens all. Let us regain your stolen soul. And should one or both of us fall, then that is what the fates will. If not... then we shall speak again, and soon. I swear it.~ */
  IF ~~ THEN EXTERN ~PLAYER1~ 53
END

IF ~~ THEN BEGIN 304 // from:
  SAY #58521 /* ~I could not forgive myself for turning over an honest man to such wizards as these, <CHARNAME>. To do such a thing would be dishonorable, to say the least.~ */
  IF ~  !IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~TOLGER~ 82
  IF ~  IsValidForPartyDialogue("Nalia")
~ THEN EXTERN ~NALIAJ~ 316
  IF ~  !IsValidForPartyDialogue("Nalia")
IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 189
END

IF ~~ THEN BEGIN 305 // from:
  SAY #58533 /* ~I shall not stay and witness this. Your fate is your own, foul <PRO_MANWOMAN>.~ */
  IF ~  !IsValidForPartyDialogue("Valygar")
~ THEN DO ~LeaveParty()
EscapeArea()
StartCutSceneMode()
StartCutSceneEx("Cut61a",FALSE)
~ EXIT
  IF ~  IsValidForPartyDialogue("Valygar")
~ THEN DO ~LeaveParty()
EscapeArea()
StartCutSceneMode()
StartCutSceneEx("Cut61a",FALSE)
~ EXTERN ~VALYGARJ~ 118
END

IF ~~ THEN BEGIN 306 // from:
  SAY #58739 /* ~Such a turn of heart I cannot stand! You will be cut down for this, thief! So do I swear!~ */
  IF ~  !IsValidForPartyDialogue("NALIA")
!IsValidForPartyDialogue("KELDORN")
!IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("EDWIN")
!IsValidForPartyDialogue("MAZZY")
!IsValidForPartyDialogue("JAN")
!IsValidForPartyDialogue("VALYGAR")
!IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("CERND")
!IsValidForPartyDialogue("MINSC")
~ THEN EXTERN ~YOSHJ~ 114
  IF ~  IsValidForPartyDialogue("NALIA")
~ THEN EXTERN ~NALIAJ~ 317
  IF ~  IsValidForPartyDialogue("KELDORN")
!IsValidForPartyDialogue("NALIA")
~ THEN EXTERN ~KELDORJ~ 250
  IF ~  IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("KELDORN")
!IsValidForPartyDialogue("NALIA")
~ THEN EXTERN ~KORGANJ~ 190
  IF ~  IsValidForPartyDialogue("EDWIN")
!IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("KELDORN")
!IsValidForPartyDialogue("NALIA")
~ THEN EXTERN ~EDWINJ~ 161
  IF ~  IsValidForPartyDialogue("MAZZY")
!IsValidForPartyDialogue("EDWIN")
!IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("KELDORN")
!IsValidForPartyDialogue("NALIA")
~ THEN EXTERN ~MAZZYJ~ 201
  IF ~  IsValidForPartyDialogue("JAN")
!IsValidForPartyDialogue("MAZZY")
!IsValidForPartyDialogue("EDWIN")
!IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("KELDORN")
!IsValidForPartyDialogue("NALIA")
~ THEN EXTERN ~JANJ~ 182
  IF ~  IsValidForPartyDialogue("VALYGAR")
!IsValidForPartyDialogue("JAN")
!IsValidForPartyDialogue("MAZZY")
!IsValidForPartyDialogue("EDWIN")
!IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("KELDORN")
!IsValidForPartyDialogue("NALIA")
~ THEN EXTERN ~VALYGARJ~ 119
  IF ~  IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("VALYGAR")
!IsValidForPartyDialogue("JAN")
!IsValidForPartyDialogue("MAZZY")
!IsValidForPartyDialogue("EDWIN")
!IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("KELDORN")
!IsValidForPartyDialogue("NALIA")
~ THEN EXTERN ~HAERDAJ~ 150
  IF ~  IsValidForPartyDialogue("CERND")
!IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("VALYGAR")
!IsValidForPartyDialogue("JAN")
!IsValidForPartyDialogue("MAZZY")
!IsValidForPartyDialogue("EDWIN")
!IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("KELDORN")
!IsValidForPartyDialogue("NALIA")
~ THEN EXTERN ~CERNDJ~ 137
  IF ~  IsValidForPartyDialogue("MINSC")
!IsValidForPartyDialogue("CERND")
!IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("VALYGAR")
!IsValidForPartyDialogue("JAN")
!IsValidForPartyDialogue("MAZZY")
!IsValidForPartyDialogue("EDWIN")
!IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("KELDORN")
!IsValidForPartyDialogue("NALIA")
~ THEN EXTERN ~MINSCJ~ 211
END

IF ~~ THEN BEGIN 307 // from:
  SAY #59880 /* ~The Order has turned me out as the self-righteous fools that they are, a feeling you should know well, Reynald.~ */
  IF ~~ THEN EXTERN ~KAYPAL02~ 25
END

IF ~~ THEN BEGIN 308 // from:
  SAY #59881 /* ~I have, ah... not passed my Test. I am no knight, Reynald, and nothing for you to be concerned over.~ */
  IF ~~ THEN EXTERN ~KAYPAL02~ 25
END

IF ~~ THEN BEGIN 309 // from:
  SAY #61204 /* ~Hmph. This is the home of my father's old enemy, Saerk. It is best if we leave, <CHARNAME>.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 310 // from:
  SAY #70408 /* ~Such foul treachery from those who claim to revere the Watcher demands harsh and swift punishment!~ */
  IF ~~ THEN EXTERN ~GORAPP1~ 7
END

IF ~~ THEN BEGIN 311 // from:
  SAY #70502 /* ~Best be wary, <CHARNAME>. There is a presence that fills this room that I can tell little about. Ancient. Powerful. Evil? I... do not think so.~ */
  IF ~~ THEN EXTERN ~GORDEMO~ 2
END

IF ~~ THEN BEGIN 312 // from:
  SAY #70531 /* ~I am disappointed in you, Brother Odren. You knew this all along. You expected us to die in that place, to be sealed within forever performing your own duty.~ */
  IF ~~ THEN EXTERN ~GORODR1~ 35
END

IF ~~ THEN BEGIN 313 // from:
  SAY #70539 /* ~Oh, Brother Odren... I cannot believe that a fellow Helmite would fall so far as believe that any other person was expendable for the sake of avoiding his own duty. For shame!~ */
  IF ~~ THEN EXTERN ~GORODR1~ 54
END

IF ~~ THEN BEGIN 314 // from:
  SAY #70518 /* ~I have heard of your Order. If you are unable to do as Helm has asked... that must be a cause for great sadness and concern, I would imagine. The god of duty asks much of his followers.~ */
  IF ~~ THEN EXTERN ~GORODR1~ 8
END

IF ~~ THEN BEGIN 315 // from:
  SAY #70504 /* ~You wish to trick the Knights of the Vigil? I... they may have double-crossed us, I do not question your suspicion... but to lead them here to be slaughtered? Do they deserve that fate?~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 316 // from:
  SAY #70513 /* ~The Knights of the Vigil would... never do such a thing as it suggests. Let us leave now and prove it wrong, <CHARNAME>.~ */
  IF ~~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 43
END

IF ~~ THEN BEGIN 317 // from:
  SAY #80743 /* ~Beware, <CHARNAME>. You walk with animals, you get fleas.~ */
  IF ~~ THEN EXIT
  IF ~  IsValidForPartyDialogue("IMOEN2")
~ THEN EXTERN ~IMOEN2J~ 51
END

IF ~~ THEN BEGIN 318 // from:
  SAY #74528 /* ~You told me nothing of having business at the temple.~ */
  IF ~~ THEN REPLY #74529 /* ~I'm not saying I'm going to the temple. I just want to know what'll happen if I do.~ */ EXTERN ~DORN~ 10
END

IF ~~ THEN BEGIN 319 // from:
  SAY #74550 /* ~Whatever this villain has planned for my god's temple, I can't permit it.~ */
  IF ~~ THEN REPLY #74551 /* ~I'm with you, Anomen. Leave this place, Dorn. While you still can.~ */ EXTERN ~DORN~ 8
  IF ~~ THEN REPLY #74552 /* ~You sure there's no way I can talk you out of this? No? All right. Sorry, Dorn. I guess we've got to fight you now.~ */ EXTERN ~DORN~ 8
  IF ~~ THEN REPLY #74553 /* ~I'd like to see you stop it. Seriously. I haven't seen a good fight in ages.~ */ GOTO 321
  IF ~~ THEN REPLY #74554 /* ~You're a fool, Anomen. Don't expect any help from me in this.~ */ GOTO 321
END

IF WEIGHT #16 ~  Global("OHD_anomenkeldorninterject","GLOBAL",1)
~ THEN BEGIN 320 // from:
  SAY #74550 /* ~Whatever this villain has planned for my god's temple, I can't permit it.~ */
  IF ~  InParty("dorn")
~ THEN REPLY #74551 /* ~I'm with you, Anomen. Leave this place, Dorn. While you still can.~ */ DO ~SetGlobal("OHD_anomenkeldorninterject","GLOBAL",2)
~ EXTERN ~DORNJ~ 284
  IF ~  InParty("dorn")
~ THEN REPLY #74552 /* ~You sure there's no way I can talk you out of this? No? All right. Sorry, Dorn. I guess we've got to fight you now.~ */ DO ~SetGlobal("OHD_anomenkeldorninterject","GLOBAL",2)
~ EXTERN ~DORNJ~ 284
  IF ~  !InParty("dorn")
~ THEN REPLY #74551 /* ~I'm with you, Anomen. Leave this place, Dorn. While you still can.~ */ DO ~SetGlobal("OHD_anomenkeldorninterject","GLOBAL",2)
~ EXTERN ~DORN~ 8
  IF ~  !InParty("dorn")
~ THEN REPLY #74552 /* ~You sure there's no way I can talk you out of this? No? All right. Sorry, Dorn. I guess we've got to fight you now.~ */ DO ~SetGlobal("OHD_anomenkeldorninterject","GLOBAL",2)
~ EXTERN ~DORN~ 8
  IF ~~ THEN REPLY #74553 /* ~I'd like to see you stop it. Seriously. I haven't seen a good fight in ages.~ */ DO ~SetGlobal("OHD_anomenkeldorninterject","GLOBAL",2)
~ GOTO 321
  IF ~~ THEN REPLY #74554 /* ~You're a fool, Anomen. Don't expect any help from me in this.~ */ DO ~SetGlobal("OHD_anomenkeldorninterject","GLOBAL",2)
~ GOTO 321
END

IF ~~ THEN BEGIN 321 // from: 320.5 320.4 319.3 319.2
  SAY #74556 /* ~Slay the blackguard!~ */
  IF ~  !InParty("KELDORN")
~ THEN DO ~LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
ActionOverride("ANOMEN",Enemy())
~ EXIT
  IF ~  InParty("KELDORN")
~ THEN DO ~ActionOverride("KELDORN",LeaveParty())
ActionOverride("KELDORN",SetLeavePartyDialogueFile())
ActionOverride("keldorn",ChangeAIScript("",DEFAULT))
ActionOverride("KELDORN",Enemy())
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
ActionOverride("ANOMEN",Enemy())
~ EXIT
END

IF WEIGHT #17 ~  Global("OHD_GORGE_NTRJEX","OH5100",1)
~ THEN BEGIN 322 // from:
  SAY #75704 /* ~Ah! I'll never get these leaves out of my hair.~ */
  IF ~~ THEN REPLY #75705 /* ~You've more important things to worry about, Anomen. Not falling to your death first among them.~ */ GOTO 323
END

IF ~~ THEN BEGIN 323 // from: 322.0
  SAY #75706 /* ~Better to die than be seen looking like some feral animal.~ */
  IF ~~ THEN DO ~SetGlobal("OHD_GORGE_NTRJEX","OH5100",2)
~ EXIT
  IF ~  IsValidForPartyDialogue("hexxat")
~ THEN EXTERN ~HEXXATJ~ 2
  IF ~  IsValidForPartyDialogue("neera")
~ THEN EXTERN ~NEERAJ~ 15
  IF ~  IsValidForPartyDialogue("dorn")
~ THEN EXTERN ~DORNJ~ 502
  IF ~  IsValidForPartyDialogue("viconia")
~ THEN EXTERN ~VICONIJ~ 410
  IF ~  IsValidForPartyDialogue("valygar")
~ THEN EXTERN ~VALYGARJ~ 128
  IF ~  IsValidForPartyDialogue("minsc")
~ THEN EXTERN ~MINSCJ~ 252
  IF ~  IsValidForPartyDialogue("mazzy")
~ THEN EXTERN ~MAZZYJ~ 208
  IF ~  IsValidForPartyDialogue("korgan")
~ THEN EXTERN ~KORGANJ~ 234
  IF ~  IsValidForPartyDialogue("keldorn")
~ THEN EXTERN ~KELDORJ~ 265
  IF ~  IsValidForPartyDialogue("jan")
~ THEN EXTERN ~JANJ~ 192
  IF ~  IsValidForPartyDialogue("jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 539
  IF ~  IsValidForPartyDialogue("imoen2")
~ THEN EXTERN ~IMOEN2J~ 55
  IF ~  IsValidForPartyDialogue("haerdalis")
~ THEN EXTERN ~HAERDAJ~ 161
  IF ~  IsValidForPartyDialogue("edwin")
~ THEN EXTERN ~EDWINJ~ 195
  IF ~  IsValidForPartyDialogue("cernd")
~ THEN EXTERN ~CERNDJ~ 142
END

IF ~~ THEN BEGIN 324 // from:
  SAY #96580 /* ~Touch a hair on her head, half-orc, and I will gut you where you stand. The lady is not interested.~ */
  IF ~~ THEN EXTERN ~DORNJ~ 122
END

IF WEIGHT #18 ~  Global("OHD_sexreactions","GLOBAL",1)
~ THEN BEGIN 325 // from:
  SAY #96638 /* ~You go too far, <CHARNAME>. I refuse to be party to this any longer. You will not see me again.~ */
  IF ~~ THEN DO ~SetGlobal("OHD_sexreactions","GLOBAL",2)
SetGlobal("AnomenRomanceActive","GLOBAL",3)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
EscapeArea()
~ EXIT
  IF ~  IsValidForPartyDialogue("rasaad")
OR(2)
Global("RasaadRomanceActive","GLOBAL",1)
Global("RasaadRomanceActive","GLOBAL",2)
~ THEN DO ~SetGlobal("AnomenRomanceActive","GLOBAL",3)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
EscapeArea()
~ EXTERN ~RASAADJ~ 772
  IF ~  IsValidForPartyDialogue("hexxat")
OR(2)
Global("HexxatRomanceActive","GLOBAL",1)
Global("HexxatRomanceActive","GLOBAL",2)
~ THEN DO ~SetGlobal("AnomenRomanceActive","GLOBAL",3)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
EscapeArea()
~ EXTERN ~HEXXATJ~ 3
  IF ~  IsValidForPartyDialogue("neera")
OR(2)
Global("NeeraRomanceActive","GLOBAL",1)
Global("NeeraRomanceActive","GLOBAL",2)
~ THEN DO ~SetGlobal("AnomenRomanceActive","GLOBAL",3)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
EscapeArea()
~ EXTERN ~NEERAJ~ 19
  IF ~  IsValidForPartyDialogue("jaheira")
OR(2)
Global("JaheiraRomanceActive","GLOBAL",1)
Global("JaheiraRomanceActive","GLOBAL",2)
~ THEN DO ~SetGlobal("AnomenRomanceActive","GLOBAL",3)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
EscapeArea()
~ EXTERN ~JAHEIRAJ~ 541
  IF ~  IsValidForPartyDialogue("aerie")
OR(2)
Global("AerieRomanceActive","GLOBAL",1)
Global("AerieRomanceActive","GLOBAL",2)
~ THEN DO ~SetGlobal("AnomenRomanceActive","GLOBAL",3)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
EscapeArea()
~ EXTERN ~AERIEJ~ 227
END

IF WEIGHT #19 ~  Global("OHD_anomenconflict","GLOBAL",2)
~ THEN BEGIN 326 // from:
  SAY #100099 /* ~You'll not have her, cur. ~ */
  IF ~~ THEN DO ~SetGlobal("OHD_anomenconflict","GLOBAL",3)
~ EXTERN ~DORNJ~ 261
END

IF ~~ THEN BEGIN 327 // from:
  SAY #100101 /* ~I've bested giants before.~ */
  IF ~~ THEN EXTERN ~DORNJ~ 262
END

IF ~~ THEN BEGIN 328 // from:
  SAY #100103 /* ~Tell me you have no intention of courting this half-orc, <CHARNAME>. ~ */
  IF ~~ THEN REPLY #100112 /* ~I've more than an intention, Anomen.~ */ DO ~SetGlobal("AnomenRomanceActive","GLOBAL",3)
~ GOTO 329
  IF ~~ THEN REPLY #100113 /* ~None whatsoever. What in the Nine Hells gave you the idea I'd want to do that?~ */ DO ~SetGlobal("DornRomanceActive","GLOBAL",3)
~ EXTERN ~DORNJ~ 264
END

IF ~~ THEN BEGIN 329 // from: 328.0
  SAY #100104 /* ~Then I will take my leave. I cannot look this murderous brute in the face every day, knowing you are his. Fare thee well.~ */
  IF ~~ THEN DO ~LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
EscapeArea()
~ EXTERN ~DORNJ~ 263
END

IF ~~ THEN BEGIN 330 // from:
  SAY #100107 /* ~The only thing she'll regret is placing her trust in you, dog. ~ */
  IF ~~ THEN EXTERN ~DORNJ~ 265
END

IF WEIGHT #20 ~  Global("OHH_anomenconflict","GLOBAL",2)
~ THEN BEGIN 331 // from:
  SAY #100139 /* ~I would know your intentions towards my lady <CHARNAME>, vampire.~ */
  IF ~~ THEN DO ~SetGlobal("OHH_anomenconflict","GLOBAL",3)
~ EXTERN ~HEXXATJ~ 250
END

IF ~~ THEN BEGIN 332 // from:
  SAY #100141 /* ~If you touch so much as a hair on her head, I swear by Helm, I will end you.~ */
  IF ~~ THEN EXTERN ~HEXXATJ~ 251
END

IF ~~ THEN BEGIN 333 // from:
  SAY #100143 /* ~Well, my lady <CHARNAME>? Tell this parasite you want nothing to do with her.~ */
  IF ~~ THEN REPLY #100151 /* ~I am no lady of yours, Anomen.~ */ DO ~SetGlobal("AnomenRomanceActive","GLOBAL",3)
~ EXTERN ~HEXXATJ~ 252
  IF ~~ THEN REPLY #100152 /* ~Calm yourself, Anomen. We're all friends here.~ */ GOTO 334
  IF ~~ THEN REPLY #100153 /* ~You know I am yours, Anomen. ~ */ DO ~SetGlobal("HexxatRomanceActive","GLOBAL",3)
~ EXTERN ~HEXXATJ~ 253
END

IF ~~ THEN BEGIN 334 // from: 333.1
  SAY #100145 /* ~Friends? With this monster? I would rather die. I would much rather see her die, permanently this time.~ */
  IF ~~ THEN REPLY #100154 /* ~Please forgive Anomen, Hexxat. He is headstrong and terribly rude. I don't know what I see in him.~ */ DO ~SetGlobal("HexxatRomanceActive","GLOBAL",3)
~ EXTERN ~HEXXATJ~ 255
  IF ~~ THEN REPLY #100155 /* ~Stay or leave, the choice is yours. But if you would stay, you must learn to accept Hexxat.~ */ DO ~SetGlobal("AnomenRomanceActive","GLOBAL",3)
~ GOTO 335
END

IF ~~ THEN BEGIN 335 // from: 334.1
  SAY #100147 /* ~You would choose this—this vile perversion of life over me? You disgust me, <CHARNAME>. Goodbye, and good riddance.~ */
  IF ~~ THEN DO ~LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
EscapeArea()
~ EXTERN ~HEXXATJ~ 254
END

IF ~~ THEN BEGIN 336 // from:
  SAY #100150 /* ~Watch yourself, vampire. ~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #21 ~  Global("OHH_anomentalks","GLOBAL",2)
~ THEN BEGIN 337 // from:
  SAY #95251 /* ~What is your plan for the vampire, <CHARNAME>?~ */
  IF ~~ THEN DO ~SetGlobal("OHH_anomentalks","GLOBAL",3)
~ EXTERN ~HEXXATJ~ 585
END

IF ~~ THEN BEGIN 338 // from:
  SAY #95253 /* ~She cannot remain with us.~ */
  IF ~~ THEN REPLY #95262 /* ~Very well. Hexxat, I'm afraid you'll have to leave.~ */ EXTERN ~HEXXATJ~ 588
  IF ~~ THEN REPLY #95263 /* ~I'd ask why not, but I suspect the answer would either bore or anger me.~ */ EXTERN ~HEXXATJ~ 587
  IF ~~ THEN REPLY #95264 /* ~That is my decision to make, Anomen.~ */ EXTERN ~HEXXATJ~ 586
END

IF ~~ THEN BEGIN 339 // from: 341.0 340.0
  SAY #95255 /* ~If she stays, I will have to make a decision—and soon.~ */
  IF ~~ THEN DO ~AddJournalEntry(95271,INFO)
SetGlobal("OHH_anomentalks","GLOBAL",4)
SetGlobalTimer("OHH_anomentalks_timer","GLOBAL",SEVEN_DAYS)
~ EXIT
END

IF ~~ THEN BEGIN 340 // from:
  SAY #95257 /* ~Siding with a vampire is hardly reasonable, <CHARNAME>.~ */
  IF ~~ THEN GOTO 339
END

IF ~~ THEN BEGIN 341 // from:
  SAY #95258 /* ~I have made my feelings on the matter known.~ */
  IF ~~ THEN GOTO 339
END

IF ~~ THEN BEGIN 342 // from:
  SAY #95261 /* ~For you, <CHARNAME>, I shall try.~ */
  IF ~~ THEN DO ~AddJournalEntry(95271,INFO)
SetGlobal("OHH_anomentalks","GLOBAL",4)
SetGlobalTimer("OHH_anomentalks_timer","GLOBAL",SEVEN_DAYS)
~ EXIT
END

IF WEIGHT #22 ~  Global("OHH_anomentalks","GLOBAL",5)
~ THEN BEGIN 343 // from:
  SAY #95273 /* ~I am sorry, <CHARNAME>. I have tried to come to terms with Hexxat's presence, but I can abide no longer.~ */
  IF ~~ THEN REPLY #95282 /* ~Is there nothing I can say to change your mind?~ */ DO ~SetGlobal("OHH_anomentalks","GLOBAL",6)
~ GOTO 344
  IF ~~ THEN REPLY #95283 /* ~Come now, Anomen. Surely it's not as bad as all that.~ */ DO ~SetGlobal("OHH_anomentalks","GLOBAL",6)
~ GOTO 347
  IF ~~ THEN REPLY #95284 /* ~Then you should leave. Hexxat is far too valuable for me to cast aside on your word.~ */ DO ~SetGlobal("OHH_anomentalks","GLOBAL",6)
~ GOTO 346
END

IF ~~ THEN BEGIN 344 // from: 343.0
  SAY #95274 /* ~Say you are done with her.~ */
  IF ~~ THEN REPLY #95285 /* ~Alas, we still have much to do together, she and I.~ */ GOTO 345
  IF ~~ THEN REPLY #95286 /* ~Forgive me, Hexxat. It would seem your time among us is to be shorter than I had hoped.~ */ EXTERN ~HEXXATJ~ 590
  IF ~~ THEN REPLY #95287 /* ~You do not tell me what to say, knight. Count yourself fortunate I'm in a good mood, or I'd have your tongue out for that.~ */ GOTO 348
END

IF ~~ THEN BEGIN 345 // from: 347.0 344.0
  SAY #95275 /* ~And if I was to say I'll not remain with a party that harbors a vampire?~ */
  IF ~~ THEN REPLY #95288 /* ~Then I would—with no little regret—say that Hexxat had to leave.~ */ EXTERN ~HEXXATJ~ 590
  IF ~~ THEN REPLY #95289 /* ~I'd rather you not say that, Anomen.~ */ EXTERN ~HEXXATJ~ 590
  IF ~~ THEN REPLY #95290 /* ~Then I would say you no longer have a place with me.~ */ GOTO 346
END

IF ~~ THEN BEGIN 346 // from: 348.1 345.2 343.2
  SAY #95276 /* ~So that's the way of it. You shall come to rue this day, <CHARNAME>. See if you don't.~ */
  IF ~~ THEN DO ~AddJournalEntry(95298,INFO)
LeaveParty()
SetGlobal("KickedOut","LOCALS",1)
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
EscapeAreaMove("AR0406",1522,1662,S)
~ EXIT
END

IF ~~ THEN BEGIN 347 // from: 343.1
  SAY #95277 /* ~It is bad enough. More than that. I should never have allowed this to proceed as far as I have. Say you are done with her, <CHARNAME>. I beg you.~ */
  IF ~~ THEN REPLY #95291 /* ~Alas, we still have much to do together, she and I.~ */ GOTO 345
END

IF ~~ THEN BEGIN 348 // from: 344.2
  SAY #95280 /* ~Sorry to dampen your mood, but you do have a decision to make. Me or the vampire.~ */
  IF ~~ THEN REPLY #95295 /* ~Obviously, I cannot toss aside an old and cherished friend.~ */ EXTERN ~HEXXATJ~ 590
  IF ~~ THEN REPLY #95296 /* ~When you put it that way, there really is no contest. I advise you to put it some other way, for I will choose Hexxat every time.~ */ GOTO 346
  IF ~~ THEN REPLY #95297 /* ~You have indeed dampened my mood. And you'll pay a high price for that.~ */ GOTO 349
END

IF ~~ THEN BEGIN 349 // from: 348.2
  SAY #95281 /* ~You not only choose to ally yourself with an undead, you would raise your hand against me? This vampire has gotten under your skin, <CHARNAME>, though not as deeply as my sword will.~ */
  IF ~~ THEN DO ~AddJournalEntry(95300,INFO)
LeaveParty()
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 350 // from:
  SAY #93408 /* ~That woman has much to think about. I'd not be her for anything.~ */
  IF ~~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Neera")
~ THEN EXTERN ~NEERAJ~ 58
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 288
END

IF ~~ THEN BEGIN 351 // from:
  SAY #90284 /* ~Are there not greater deeds to be done than this? We save ourselves some trouble and teach the child a valuable lesson about loss if we refuse this task.~ */
  IF ~~ THEN DO ~AddJournalEntry(94465,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 352 // from:
  SAY #88108 /* ~He fancies himself a king; he must be using the royal "we." ~ */
  IF ~~ THEN EXTERN ~OHNKING~ 9
END

IF ~~ THEN BEGIN 353 // from:
  SAY #88458 /* ~I would advise against accompanying a mage with such poor control of her spells. Would it not be better to aid her... from a distance?~ */
  IF ~~ THEN EXTERN ~NEERA~ 22
  IF ~  IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 165
  IF ~  IsValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 135
  IF ~  IsValidForPartyDialogue("Dorn")
~ THEN EXTERN ~DORNJ~ 846
END

IF ~~ THEN BEGIN 354 // from:
  SAY #272607 /* ~Sure is.~ */
  IF ~~ THEN EXTERN ~PLAYER1~ 68
END

IF ~~ THEN BEGIN 355 // from:
  SAY #272437 /* ~A mother's place is at home with her child, not on the battlefield.~ */
  IF ~~ THEN GOTO 356
END

IF ~~ THEN BEGIN 356 // from: 355.0
  SAY #272438 /* ~You are a poor example of a parent.~ */
  IF ~~ THEN EXTERN ~LCCORWIB~ 41
END

IF ~~ THEN BEGIN 357 // from:
  SAY #272441 /* ~Why even join the Flaming Fist? You willingly put your daughter at risk of becoming an orphan!~ */
  IF ~~ THEN EXTERN ~LCCORWIB~ 43
END

IF ~~ THEN BEGIN 358 // from:
  SAY #272443 /* ~I beg your pardon?~ */
  IF ~~ THEN EXTERN ~LCCORWIB~ 44
END

IF ~~ THEN BEGIN 359 // from:
  SAY #272530 /* ~Captain Corwin, I wish to apologize to you for my earlier behaviour.~ */
  IF ~~ THEN GOTO 360
END

IF ~~ THEN BEGIN 360 // from: 359.0
  SAY #272531 /* ~It's just that I'm quite unaccustomed to seeing a woman serve in a military organization, let alone in a leadership position.~ */
  IF ~~ THEN EXTERN ~LCCORWIB~ 46
END

IF ~~ THEN BEGIN 361 // from:
  SAY #272533 /* ~They are fortunate to have you among their ranks. Your skill in battle is among the best I have seen, as is your ability to lead.~ */
  IF ~~ THEN GOTO 362
END

IF ~~ THEN BEGIN 362 // from: 361.0
  SAY #272534 /* ~I have much to learn from your example.~ */
  IF ~~ THEN EXTERN ~LCCORWIB~ 47
END

IF ~~ THEN BEGIN 363 // from:
  SAY #272536 /* ~For what, Captain?~ */
  IF ~~ THEN EXTERN ~LCCORWIB~ 48
END

IF ~~ THEN BEGIN 364 // from:
  SAY #272539 /* ~I understand. In Athkatla especially, there are many families that have acquired their wealth through... less than honorable means. I assure you, however, that my family is not one of them.~ */
  IF ~~ THEN EXTERN ~LCCORWIB~ 50
END

IF ~~ THEN BEGIN 365 // from:
  SAY #272541 /* ~Agreed, Captain.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 366 // from:
  SAY #65915 /* ~What is so inevitable?! <CHARNAME> has fought the greatest foes... there is nothing that could come between us!~ */
  IF ~~ THEN EXTERN ~HGWRA01~ 24
END

IF ~~ THEN BEGIN 367 // from:
  SAY #66008 /* ~Moira! Dearest sister, you... how can this be?!~ [ANOM2547] */
  IF ~~ THEN EXTERN ~LOVEONE4~ 1
END

IF ~~ THEN BEGIN 368 // from:
  SAY #66010 /* ~It was Saerk who had you killed, dear sister, but I... I could not take vengeance! I could not...~ [ANOM2548] */
  IF ~~ THEN EXTERN ~LOVEONE4~ 2
END

IF ~~ THEN BEGIN 369 // from:
  SAY #66011 /* ~Robbers ended your life, my sister, but I could not... I could not take vengeance upon them!~ [ANOM2549] */
  IF ~~ THEN EXTERN ~LOVEONE4~ 2
END

IF ~~ THEN BEGIN 370 // from:
  SAY #66013 /* ~No! No, Moira, do not say such a thing! I never...~ [ANOM2550] */
  IF ~~ THEN EXTERN ~LOVEONE4~ 3
END

IF ~~ THEN BEGIN 371 // from:
  SAY #66015 /* ~I... didn't mean to fail you! Please... please, Moira, I loved you! You... you didn't want to leave Father!~ [ANOM2551] */
  IF ~~ THEN EXTERN ~LOVEONE4~ 4
END

IF ~~ THEN BEGIN 372 // from:
  SAY #66017 /* ~No! No, no! I... I never... by Helm, no! <CHARNAME>, I beg you! Make this stop!~ [ANOM2552] */
  IF ~~ THEN REPLY #66018 /* ~Stop, Moira! He isn't responsible for what happened to you!~ */ EXTERN ~HGWRA01~ 25
  IF ~~ THEN REPLY #66019 /* ~Stop this, Gorion! He doesn't deserve this!~ */ EXTERN ~HGWRA01~ 25
  IF ~~ THEN REPLY #66020 /* ~Enough! I won't allow this to continue!~ */ EXTERN ~HGWRA01~ 25
  IF ~  CheckStatGT(Player1,16,WIS)
~ THEN REPLY #66021 /* ~It's a lie, Anomen! Don't believe it!~ */ EXTERN ~HGWRA01~ 25
END

IF ~~ THEN BEGIN 373 // from:
  SAY #67766 /* ~I've seen her type before—noblewoman looking to ease her own conscience by helping the lower classes.~ */
  IF ~~ THEN EXTERN ~SARBAR01~ 8
END

IF ~~ THEN BEGIN 374 // from:
  SAY #67772 /* ~You believed your love could save him. That is not such a foolish notion.~ */
  IF ~~ THEN EXTERN ~SARTEM01~ 3
END

IF ~~ THEN BEGIN 375 // from:
  SAY #67886 /* ~You believed your love could change what he was. An idealistic, foolish notion.~ */
  IF ~~ THEN EXTERN ~SARTEM01~ 3
END

IF ~~ THEN BEGIN 376 // from:
  SAY #67929 /* ~You would seek to rise up to the ranks where Helm resides? It is astounding that such a thing is even possible! Do as you feel you must, <CHARNAME>... while I would miss your presence, I... I cannot advise you.~ [ANOM2511] */
  IF ~  True()
~ THEN EXTERN ~FINSOL01~ 28
  IF ~  IsValidForPartyDialogue("Valygar")
Global("ValygarRomanceActive","GLOBAL",2)
~ THEN EXTERN ~VALYGARJ~ 139
  IF ~  IsValidForPartyDialogue("Viconia")
Global("ViconiaRomanceActive","GLOBAL",2)
~ THEN EXTERN ~VICONIJ~ 442
  IF ~  IsValidForPartyDialogue("Aerie")
Global("AerieRomanceActive","GLOBAL",2)
~ THEN EXTERN ~AERIEJ~ 274
  IF ~  IsValidForPartyDialogue("Jaheira")
Global("JaheiraRomanceActive","GLOBAL",2)
~ THEN EXTERN ~JAHEIRAJ~ 574
  IF ~  IsValidForPartyDialogue("Valygar")
!Global("ValygarRomanceActive","GLOBAL",2)
~ THEN EXTERN ~VALYGARJ~ 138
END

IF ~~ THEN BEGIN 377 // from:
  SAY #67984 /* ~What I have always feared is now coming to pass. Your birthright catches up with you, my lady... and I may lose you forever as a result. Do you... know what you will do?~ [ANOM2510] */
  IF ~  Alignment("Anomen",MASK_GOOD)
~ THEN REPLY #67985 /* ~I don't want to lose you, Anomen. I love you.~ */ GOTO 378
  IF ~  !Alignment("Anomen",MASK_GOOD)
~ THEN REPLY #67986 /* ~I don't want to lose you, Anomen. I love you.~ */ GOTO 383
  IF ~  Alignment("Anomen",MASK_GOOD)
~ THEN REPLY #67987 /* ~I'm sorry. I feel I should see this through, that I should accept my birthright.~ */ GOTO 378
  IF ~  !Alignment("Anomen",MASK_GOOD)
~ THEN REPLY #67988 /* ~I'm sorry. I feel I should see this through, that I should accept my birthright.~ */ GOTO 383
  IF ~  Alignment("Anomen",MASK_GOOD)
~ THEN REPLY #67989 /* ~No. I don't know what I will do yet.~ */ GOTO 378
  IF ~  !Alignment("Anomen",MASK_GOOD)
~ THEN REPLY #67990 /* ~No. I don't know what I will do yet.~ */ GOTO 383
END

IF ~~ THEN BEGIN 378 // from: 377.4 377.2 377.0
  SAY #67995 /* ~I cannot lie, my love. I desperately wish that you would refuse the power of your sire's blood. To carve a new destiny free of his shroud would be a glorious thing indeed!~ */
  IF ~~ THEN GOTO 379
END

IF ~~ THEN BEGIN 379 // from: 378.0
  SAY #67996 /* ~But I won't fool myself into thinking that I am the only reason you would give up such a future. You have been there for me on many occasions, helping me deal with my father and gain entrance into the Order...~ */
  IF ~~ THEN GOTO 380
END

IF ~~ THEN BEGIN 380 // from: 379.0
  SAY #67997 /* ~I doubt I was very easy to put up with, and yet you did not abandon me. I cannot ask you to give up anything for me... I barely feel worthy of you, my love. You are magnificent beyond measure.~ */
  IF ~~ THEN GOTO 381
END

IF ~~ THEN BEGIN 381 // from: 380.0
  SAY #67998 /* ~If you... if you do decide to stay a mortal, all I can do is pledge my undying love. All you wish shall be yours... but most importantly, we will be together.~ */
  IF ~~ THEN GOTO 382
END

IF ~~ THEN BEGIN 382 // from: 385.0 381.0
  SAY #67999 /* ~And should you decide to leave, then I will let you go. It may be painful, but I will be overjoyed to know my love has achieved such greatness... and I will remember you always.~ */
  IF ~~ THEN EXTERN ~FINSOL01~ 28
END

IF ~~ THEN BEGIN 383 // from: 377.5 377.3 377.1
  SAY #68001 /* ~I adore you with all my heart, <CHARNAME>. But I would be remiss not to encourage you to take up this challenge... who could refuse such an offer?~ */
  IF ~~ THEN GOTO 384
END

IF ~~ THEN BEGIN 384 // from: 383.0
  SAY #68002 /* ~There is nothing that I could give you that would match such an experience, my love. I am a poor substitute for adventure... there has been more than once that I've wondered how you put up with me.~ */
  IF ~~ THEN GOTO 385
END

IF ~~ THEN BEGIN 385 // from: 384.0
  SAY #68006 /* ~If you decide to stay a mortal, then I will endeavor to provide you with everything you desire, with everything that I am capable of with whatever time we have together.~ */
  IF ~~ THEN GOTO 382
END

IF ~~ THEN BEGIN 386 // from:
  SAY #68077 /* ~Aye, then. *sigh* Farewell, my love. Please, keep my ring at your heart, that you will ever remember the love that you once shared with a mere mortal. I... I shall remember you fondly. ~ [ANOM2530] */
  IF ~~ THEN DO ~SetGlobal("AnomenRomanceActive","GLOBAL",3)
~ EXTERN ~FINSOL01~ 33
END

IF ~~ THEN BEGIN 387 // from:
  SAY #68078 /* ~You will remain, my love? Oh! Nothing, *nothing* could make me happier! You will be free of your dark taint, and both of us will be free to live our future together! Oh, joyous day!~ [ANOM2529] */
  IF ~~ THEN EXTERN ~FINSOL01~ 33
END

IF ~~ THEN BEGIN 388 // from:
  SAY #70408 /* ~Such foul treachery from those who claim to revere the Watcher demands harsh and swift punishment!~ */
  IF ~~ THEN EXTERN ~GORAPP1~ 7
END

IF ~~ THEN BEGIN 389 // from:
  SAY #70477 /* ~Not truly dead, not truly alive. This... this *thing* is an abomination, <CHARNAME>. It is not even undead. I hope you know what you are doing.~ */
  IF ~~ THEN EXTERN ~SAREV25A~ 39
END

IF ~~ THEN BEGIN 390 // from:
  SAY #70479 /* ~So you did not know... and you put the life of my love at risk! How dare you, vile beast!~ */
  IF ~~ THEN EXTERN ~SAREV25A~ 42
END

IF ~~ THEN BEGIN 391 // from:
  SAY #70502 /* ~Best be wary, <CHARNAME>. There is a presence that fills this room that I can tell little about. Ancient. Powerful. Evil? I... do not think so.~ */
  IF ~~ THEN EXTERN ~GORDEMO~ 2
END

IF ~~ THEN BEGIN 392 // from:
  SAY #70504 /* ~You wish to trick the Knights of the Vigil? I... they may have double-crossed us, I do not question your suspicion... but to lead them here to be slaughtered? Do they deserve that fate?~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 393 // from:
  SAY #70513 /* ~The Knights of the Vigil would... never do such a thing as it suggests. Let us leave now and prove it wrong, <CHARNAME>.~ */
  IF ~  True()
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 164
END

IF ~~ THEN BEGIN 394 // from:
  SAY #70518 /* ~I have heard of your Order. If you are unable to do as Helm has asked... that must be a cause for great sadness and concern, I would imagine. The god of duty asks much of his followers.~ */
  IF ~~ THEN EXTERN ~GORODR1~ 8
END

IF ~~ THEN BEGIN 395 // from:
  SAY #70531 /* ~I am disappointed in you, Brother Odren. You knew this all along. You expected us to die in that place, to be sealed within forever performing your own duty.~ */
  IF ~~ THEN EXTERN ~GORODR1~ 35
END

IF ~~ THEN BEGIN 396 // from:
  SAY #70539 /* ~Oh, Brother Odren... I cannot believe that a fellow Helmite would fall so far as believe that any other person was expendable for the sake of avoiding his own duty. For shame!~ */
  IF ~~ THEN EXTERN ~GORODR1~ 54
END

IF ~~ THEN BEGIN 397 // from:
  SAY #71360 /* ~My lady, I would not normally condone such behavior. However, I sense this offer is not what it seems. Perhaps this man has information he will only reveal in private. Go with him... but be careful, my love.~ */
  IF ~~ THEN EXTERN ~SARPROVM~ 1
END

IF ~~ THEN BEGIN 398 // from:
  SAY #71390 /* ~Courtly chivalry demands that you soldiers apologize to this woman. Your crude suggestions are not fit for the ears of any lady, be she barmaid or noble duchess! ~ */
  IF ~~ THEN EXTERN ~SARBUL06~ 3
  IF ~  IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 264
END

IF ~~ THEN BEGIN 399 // from:
  SAY #71449 /* ~<CHARNAME>! As a member of the Order of the Radiant Heart, I cannot stand by while you sow evil in your wake. All who oppose evil, join my cause!~ */
  IF ~  True()
~ THEN DO ~LeaveParty()
Enemy()
~ EXIT
  IF ~  IsValidForPartyDialogue("Korgan")
~ THEN DO ~LeaveParty()
Enemy()
~ EXTERN ~KORGANJ~ 265
  IF ~  IsValidForPartyDialogue("Viconia")
~ THEN DO ~LeaveParty()
Enemy()
~ EXTERN ~VICONIJ~ 466
  IF ~  IsValidForPartyDialogue("Edwin")
~ THEN DO ~LeaveParty()
Enemy()
~ EXTERN ~EDWINJ~ 222
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN DO ~LeaveParty()
Enemy()
~ EXTERN ~KELDORJ~ 317
  IF ~  IsValidForPartyDialogue("Mazzy")
~ THEN DO ~LeaveParty()
Enemy()
~ EXTERN ~MAZZYJ~ 219
  IF ~  IsValidForPartyDialogue("Jaheira")
~ THEN DO ~LeaveParty()
Enemy()
~ EXTERN ~JAHEIRAJ~ 603
END

IF ~~ THEN BEGIN 400 // from:
  SAY #71623 /* ~Hmph... a commendable recitation, although I've no need for such flattery. You did spell my name correctly, did you not?~ */
  IF ~~ THEN EXTERN ~SARVOLO~ 9
END

IF ~~ THEN BEGIN 401 // from:
  SAY #72346 /* ~<CHARNAME>! As a member of the Order of the Radiant Heart, I cannot stand by while you sow such evil in your wake. All who oppose evil, join my cause!~ */
  IF ~~ THEN DO ~ActionOverride("Keldorn",LeaveParty())
ActionOverride("Keldorn",Enemy())
ActionOverride("Mazzy",LeaveParty())
ActionOverride("Mazzy",Enemy())
ActionOverride("Jaheira",LeaveParty())
ActionOverride("Jaheira",Enemy())
ActionOverride("Minsc",LeaveParty())
ActionOverride("Minsc",Enemy())
ActionOverride("Valygar",LeaveParty())
ActionOverride("Valygar",Enemy())
ActionOverride("Anomen",LeaveParty())
ActionOverride("Anomen",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 402 // from:
  SAY #72455 /* ~Surely you cannot be considering this vile offer, <CHARNAME>?~ */
  IF ~~ THEN REPLY #72456 /* ~Patience, Anomen. Trust me, this will all work out in the end.~ */ GOTO 403
  IF ~~ THEN REPLY #72457 /* ~If you don't like the way I do things, you can leave anytime!~ */ GOTO 404
END

IF ~~ THEN BEGIN 403 // from: 402.0
  SAY #72458 /* ~Yes, <CHARNAME>, you are right. Patience is a virtue. I will trust you to do the right thing.~ */
  IF ~~ THEN EXTERN ~SARKIS01~ 34
END

IF ~~ THEN BEGIN 404 // from: 402.1
  SAY #72459 /* ~I shame myself by remaining in your presence, <CHARNAME>. I thought you a <PRO_LADYLORD> of virtue, but I see I was a blind fool. We must part ways here.~ */
  IF ~~ THEN DO ~LeaveParty()
EscapeArea()
~ EXTERN ~SARKIS01~ 34
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN DO ~LeaveParty()
EscapeArea()
~ EXTERN ~KELDORJ~ 322
  IF ~  IsValidForPartyDialogue("Mazzy")
~ THEN DO ~LeaveParty()
EscapeArea()
~ EXTERN ~MAZZYJ~ 221
  IF ~  IsValidForPartyDialogue("Jaheira")
~ THEN DO ~LeaveParty()
EscapeArea()
~ EXTERN ~JAHEIRAJ~ 609
END

IF ~~ THEN BEGIN 405 // from:
  SAY #72566 /* ~Why do I continually find myself subjected to these inane conversations? We should focus on shaping the destiny of all Faerûn... and not discussing cheese!~ */
  IF ~~ THEN EXTERN ~BAZEYE01~ 10
END
