// creator  : weidu (version 24900)
// argument : NALIAJ.DLG
// game     : .
// source   : ./override/NALIAJ.DLG
// dialog   : .\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~NALIAJ~

IF ~  AreaCheck("AR1300")
Global("EnteredAR1300","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #24282 /* ~This is it... wait, there's a palisade here? Then our guards fell back and... the keep has fallen. It will be hard to save now. The palisade is to the west.~ */
  IF ~~ THEN REPLY #24290 /* ~I think you should tell me just what we are up against.~ */ DO ~SetGlobal("EnteredAR1300","GLOBAL",1)
SetGlobalTimer("ArrivedNaliaKeep","GLOBAL",ONE_DAY)
~ GOTO 149
  IF ~~ THEN REPLY #24291 /* ~Damn! Okay, I need to know what we are up against, and I need to know now!~ */ DO ~SetGlobal("EnteredAR1300","GLOBAL",1)
SetGlobalTimer("ArrivedNaliaKeep","GLOBAL",ONE_DAY)
~ GOTO 149
  IF ~~ THEN REPLY #24292 /* ~I can't go another step without knowing who we face. I will not go blind into this. ~ */ DO ~SetGlobal("EnteredAR1300","GLOBAL",1)
SetGlobalTimer("ArrivedNaliaKeep","GLOBAL",ONE_DAY)
~ GOTO 149
  IF ~  Global("NaliaCash","GLOBAL",1)
~ THEN REPLY #49212 /* ~In that case, the price just went up. I want another 500 gold for my services.~ */ DO ~SetGlobal("EnteredAR1300","GLOBAL",1)
SetGlobalTimer("ArrivedNaliaKeep","GLOBAL",ONE_DAY)
~ GOTO 248
END

IF ~~ THEN BEGIN 1 // from: 222.0
  SAY #24283 /* ~Maybe they were driven here by elves, or by the new settlements south of Tethyr. I... I don't know their numbers, I only know we must rescue my family.~ */
  IF ~~ THEN REPLY #24293 /* ~We need more information. A frontal assault would be a slaughter. ~ */ GOTO 4
  IF ~~ THEN REPLY #24294 /* ~We don't know how many they have, or even if there is anyone left alive to rescue. ~ */ GOTO 3
  IF ~~ THEN REPLY #24295 /* ~I don't think this is what I signed on for. You'll have to get someone else to help.~ */ GOTO 269
END

IF ~~ THEN BEGIN 2 // from: 270.0
  SAY #24284 /* ~You'll have to sneak in and rescue someone, anyone. Perhaps... Daleson! Daleson from the stables might be alive! Will you find him?~ */
  IF ~~ THEN REPLY #24296 /* ~Very well, but I ain't going to risk my neck. I need a safe way in.~ */ GOTO 4
  IF ~~ THEN REPLY #24297 /* ~I prefer a direct assault to sneaking around. Only cowards avoid a fight!~ */ GOTO 6
  IF ~~ THEN REPLY #24298 /* ~No, I think I've changed my mind. I'm not staying for your little war.~ */ GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #24285 /* ~I know. Wait! Daleson wouldn't have posed a threat. They may have left him to tend the animals for food. He might know numbers and strengths.~ */
  IF ~~ THEN REPLY #24299 /* ~Perhaps there is a safe way inside? I don't want to have to knock on the front door.~ */ GOTO 4
  IF ~~ THEN REPLY #24300 /* ~I would prefer a direct assault to all this skulduggery. Hiding in the shadows seems a bit cowardly.~ */ GOTO 6
  IF ~~ THEN REPLY #24301 /* ~That sounds reasonable. I shall look for him while I scout the layout of the place.~ */ GOTO 7
END

IF ~~ THEN BEGIN 4 // from: 3.0 2.0 1.0
  SAY #24286 /* ~Enter north of the palisade, through a secret door along the wall of the keep. I used it to sneak out at night. Aunty never approved, but I didn't care.~ */
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 2.2
  SAY #24287 /* ~But... but you... No, I will not argue pointlessly. You think much like the nobles around here. I had thought you better than that. Go. I'll do it myself.~ */
  IF ~~ THEN DO ~LeaveParty()
SetGlobal("NaliaMove","GLOBAL",4)
SetGlobal("SPRITE_IS_DEADNalia","GLOBAL",1)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.1 2.1
  SAY #24288 /* ~Is it cowardly to live through the day? We can storm the front gates if you like, but what happens when the trolls realize we are there? ~ */
  IF ~~ THEN GOTO 295
END

IF ~~ THEN BEGIN 7 // from: 3.2
  SAY #24289 /* ~It is best to avoid a frontal assault. There is a secret door north of the palisade. I use it occasionally when I want to help the peasantry.~ */
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 295.0 7.0 4.0
  SAY #24252 /* ~We should go soon. Waiting will just make it worse. I'll try to lead once we are inside. After we find Daleson, we can concentrate on the trolls.~ */
  IF ~~ THEN UNSOLVED_JOURNAL #10074 /* ~The de'Arnise keep has been invaded

Nalia has told me of the danger facing her keep. Trolls have taken over, aided by some kind of "snake creature." A few surviving guards have set up a palisade outside of the castle. Her family may still be trapped inside. A servant named Daleson may provide useful information if he is still alive. Nalia suggests we track him down first once inside.

The best way to enter the castle is not through the front gate, which is likely closed. A secret entrance in the castle wall is hidden behind a bush, directly north of the palisade.~ */ EXIT
END

IF ~  Global("EnteredAR1300","GLOBAL",0)
Global("Complain","LOCALS",1)
~ THEN BEGIN 9 // from:
  SAY #24376 /* ~Please, you did promise. We need to go to my family's land and join in the defense. If you have changed your mind, please tell me.~ [NALIA69] */
  IF ~~ THEN REPLY #24377 /* ~I am sorry for the delay. We will go there now and do what we can.~ */ DO ~IncrementGlobal("Complain","LOCALS",1)
SetGlobalTimer("ArrivedNaliaKeep","GLOBAL",ONE_DAY)
~ GOTO 10
  IF ~~ THEN REPLY #24378 /* ~Yeah, yeah, I'm going. Don't get your neck in a knot.~ */ DO ~IncrementGlobal("Complain","LOCALS",1)
SetGlobalTimer("ArrivedNaliaKeep","GLOBAL",ONE_DAY)
~ GOTO 10
  IF ~  CheckStatGT(LastTalkedToBy,13,CHR)
~ THEN REPLY #24379 /* ~I fear I need to do a few things first, and there may be delays. I will go soon.~ */ DO ~IncrementGlobal("Complain","LOCALS",1)
SetGlobalTimer("ArrivedNaliaKeep","GLOBAL",ONE_DAY)
~ GOTO 11
  IF ~  CheckStatLT(LastTalkedToBy,14,CHR)
~ THEN REPLY #24380 /* ~I have done the best I can. I still need to do a few things, and we may be delayed. I will go soon.~ */ DO ~IncrementGlobal("Complain","LOCALS",1)
SetGlobalTimer("ArrivedNaliaKeep","GLOBAL",ONE_DAY)
~ GOTO 12
  IF ~~ THEN REPLY #24381 /* ~Actually, I don't intend to help you. I was just killing time.~ */ DO ~IncrementGlobal("Complain","LOCALS",1)
SetGlobalTimer("ArrivedNaliaKeep","GLOBAL",ONE_DAY)
~ GOTO 13
  IF ~~ THEN REPLY #24382 /* ~I am sorry, but I cannot help you. I must refuse.~ */ DO ~IncrementGlobal("Complain","LOCALS",1)
SetGlobalTimer("ArrivedNaliaKeep","GLOBAL",ONE_DAY)
~ GOTO 14
END

IF ~~ THEN BEGIN 10 // from: 9.1 9.0
  SAY #24383 /* ~I thank you. We should really hurry though.~ */
  IF ~~ THEN DO ~SetGlobalTimer("ArrivedNaliaKeep","GLOBAL",THREE_DAYS)
SetGlobal("Complain","LOCALS",2)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.2
  SAY #24384 /* ~I realize that you need to stock up and whatnot, but if we don't go soon, there will be no point in going at all. Please hurry.~ */
  IF ~~ THEN DO ~SetGlobalTimer("ArrivedNaliaKeep","GLOBAL",THREE_DAYS)
SetGlobal("Complain","LOCALS",2)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.3
  SAY #24385 /* ~I am sorry, but I can't wait for you any longer. I will go there and wait for you. Please hurry; there is little that I can do on my own.~ [NALIA70] */
  IF ~~ THEN DO ~SetGlobal("Complain","LOCALS",4)
LeaveParty()
SetDialogue("Nalia")
ChangeAIScript("",DEFAULT)
SetGlobal("NaliaMove","GLOBAL",1)
EscapeAreaMove("AR1300",748,3227,SE)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 9.4
  SAY #24386 /* ~How could you be so cruel?! Goodbye and good riddance! If you ever come by my burned-out keep, remember what you have done here today!~ */
  IF ~~ THEN DO ~SetGlobal("NaliaMove","GLOBAL",4)
SetGlobal("SPRITE_IS_DEADNalia","GLOBAL",1)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 9.5
  SAY #24387 /* ~You could have said so earlier! I need to be there! They may already be... Goodbye and thanks for nothing!~ */
  IF ~~ THEN DO ~SetGlobal("Complain","LOCALS",4)
LeaveParty()
SetDialogue("Nalia")
ChangeAIScript("",DEFAULT)
SetGlobal("NaliaMove","GLOBAL",1)
EscapeAreaMove("AR1300",748,3227,SE)
~ EXIT
END

IF ~  Global("EnteredAR1300","GLOBAL",0)
Global("Complain","LOCALS",3)
~ THEN BEGIN 15 // from:
  SAY #24388 /* ~I'm sorry, but I can't wait any longer. You agreed to help protect my family's land, but we take too long. Follow if you like, but I will wait no longer.~ */
  IF ~~ THEN DO ~SetGlobal("Complain","LOCALS",4)
LeaveParty()
SetDialogue("Nalia")
ChangeAIScript("",DEFAULT)
SetGlobal("NaliaMove","GLOBAL",1)
EscapeAreaMove("AR1300",748,3227,SE)
~ UNSOLVED_JOURNAL #10073 /* ~The de'Arnise keep has been invaded

Nalia has left the party to go to her family's keep. She asked me to go there to meet her, if I could, but she could wait no longer.~ */ EXIT
END

IF ~  Global("EnteredAR1300","GLOBAL",1)
Global("Complain","LOCALS",5)
!Dead("Torgal")
~ THEN BEGIN 16 // from:
  SAY #24389 /* ~We must get to Daleson soon. They may kill him, and then we'll have no idea what we're up against. He should be inside next to the secret door.~ [NALIA71] */
  IF ~~ THEN DO ~SetGlobal("Complain","LOCALS",6)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from:
  SAY #24596 /* ~*sigh* Aunty, please! We have come to rescue you!~ [NALIA92] */
  IF ~~ THEN EXTERN ~DELCIA~ 18
END

IF ~~ THEN BEGIN 18 // from:
  SAY #24600 /* ~Yes, yes, yes, you have told me a hundred times or more about my mother's death. I'll thank you kindly not to do so again.~ */
  IF ~~ THEN EXTERN ~DELCIA~ 19
END

IF ~~ THEN BEGIN 19 // from:
  SAY #24602 /* ~Aunty! Treat them with respect! Would you rather die than accept help from the commoners? We could learn compassion from these people.~ */
  IF ~~ THEN EXTERN ~DELCIA~ 20
END

IF ~~ THEN BEGIN 20 // from:
  SAY #24608 /* ~Oh please, don't get her started.~ */
  IF ~~ THEN EXTERN ~DELCIA~ 44
END

IF ~~ THEN BEGIN 21 // from:
  SAY #24615 /* ~Oh no, please don't get her going...~ */
  IF ~~ THEN EXTERN ~DELCIA~ 46
END

IF ~~ THEN BEGIN 22 // from:
  SAY #24620 /* ~You will not! I won't tolerate this! Tell me you were kidding and that we simply did not understand the joke. Tell me...~ */
  IF ~~ THEN REPLY #24633 /* ~My apologies. We should move on though. Now. Before something... happens.~ */ GOTO 24
  IF ~~ THEN REPLY #24635 /* ~I merely wished to make her realize her status was worthless at the moment. That is all.~ */ GOTO 26
  IF ~~ THEN REPLY #24636 /* ~I do not take kindly to being insulted. She and her haughty attitude should die!~ */ EXTERN ~DELCIA~ 25
END

IF ~~ THEN BEGIN 23 // from:
  SAY #24640 /* ~Aunty!~ */
  IF ~~ THEN EXTERN ~DELCIA~ 23
END

IF ~~ THEN BEGIN 24 // from: 22.0
  SAY #24643 /* ~Hmm? Oh! Yes, we should... really get moving. You will be safe back the way we came, Aunty, but I cannot go with you yet. ~ */
  IF ~~ THEN EXTERN ~DELCIA~ 24
END

IF ~~ THEN BEGIN 25 // from:
  SAY #24646 /* ~They aren't like that! Many are deserving, and... I thought them worthy, but... they are as intolerant as... we are. I... I think I would rather leave it all...~ */
  IF ~~ THEN DO ~SetGlobal("NaliaMove","GLOBAL",4)
SetGlobal("SPRITE_IS_DEADNalia","GLOBAL",1)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 22.1
  SAY #24647 /* ~Understandable, but it is hard enough to convince her of the worth of others without them threatening her. Not that she shouldn't be used to it...~ */
  IF ~~ THEN EXTERN ~DELCIA~ 26
END

IF ~  Global("DelciaLeave","GLOBAL",1)
~ THEN BEGIN 27 // from:
  SAY #24648 /* ~Rather an amusing bit of restraint on your part, and I appreciate that. She's decent enough but very set in her ways and hard to deal with. Come, we must rescue my father.~ [NALIA72] */
  IF ~~ THEN DO ~SetGlobal("DelciaLeave","GLOBAL",2)
~ EXIT
END

IF ~  !Dead("Torgal")
Global("TalkedToDaleson","GLOBAL",1)
~ THEN BEGIN 28 // from:
  SAY #186 /* ~If that is what you wish. It will be safer than waiting here. I will wait outside by the palisade. ~ [NALIA95] */
  IF ~~ THEN DO ~LeaveParty()
ChangeAIScript("",DEFAULT)
SetDialogue("Nalia")
EscapeAreaMove("AR1300",748,3227,SE)
~ EXIT
END

IF ~~ THEN BEGIN 29 // from:
  SAY #187 /* ~Thank you, Daleson, but now is not the time for secrecy. These people are not my family; these are my own hirelings. Keep no secrets here.~ */
  IF ~~ THEN EXTERN ~DALESON~ 18
END

IF ~~ THEN BEGIN 30 // from:
  SAY #188 /* ~Please, you needn't display such deference on my account. My aunty might prefer her servants cowed, but I do not.~ */
  IF ~~ THEN REPLY #571 /* ~Why do you have this man lie for you? What have you to hide?~ */ GOTO 31
  IF ~~ THEN REPLY #572 /* ~You associate with this... stable boy? What can he offer a woman of your standing?~ */ GOTO 32
  IF ~~ THEN REPLY #573 /* ~Go to the stables often, do you? I take it you prefer the company of... common men?~ */ EXTERN ~DALESON~ 19
  IF ~~ THEN REPLY #621 /* ~I do not keep servants at all. Better that people are allowed to work for themselves.~ */ GOTO 43
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #583 /* ~A fair question. I use the door to leave unseen. Aunty prefers no contact with the people we govern, but lack of breeding is no cause for bad treatment.~ */
  IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 32 // from: 30.1
  SAY #584 /* ~It's not a matter of what he has to offer, but what I should offer his kind. I use the door to leave unseen, to dispense charity without Aunty's knowledge.~ */
  IF ~~ THEN GOTO 150
END

IF ~~ THEN BEGIN 33 // from:
  SAY #591 /* ~It's all right, Daleson. It is nothing I have not heard from Aunty already. ~ */
  IF ~~ THEN EXTERN ~DALESON~ 20
END

IF ~~ THEN BEGIN 34 // from:
  SAY #611 /* ~That will do, Daleson! You will not talk of her thus!~ */
  IF ~~ THEN EXTERN ~DALESON~ 21
END

IF ~~ THEN BEGIN 35 // from:
  SAY #615 /* ~I'm certain you didn't. Regardless of her attitude, she is still a noble in this house. Now then, we must set about reclaiming this place for my family.~ */
  IF ~~ THEN EXTERN ~DALESON~ 22
END

IF ~~ THEN BEGIN 36 // from: 297.0 150.0 31.0
  SAY #626 /* ~I find Aunty is quite unreceptive to these ideas. She is old school, and believes lesser classes are best reminded of their position at all times. I disagree.~ */
  IF ~~ THEN EXTERN ~DALESON~ 20
END

IF ~~ THEN BEGIN 37 // from:
  SAY #628 /* ~Cellars! The "cellars" is what they are. I won't have them called otherwise in this day and age, despite their history. It is by my father's order. ~ */
  IF ~~ THEN EXTERN ~DALESON~ 23
END

IF ~~ THEN BEGIN 38 // from:
  SAY #630 /* ~Yes, it is. You are a good man, Daleson.~ */
  IF ~~ THEN REPLY #631 /* ~Enough talk! We must get moving before we are discovered. ~ */ UNSOLVED_JOURNAL #16336 /* ~The de'Arnise keep has been invaded

We encountered Daleson in the keep, and he informed us that Nalia's father likely yet lives... but he has been taken captive and brought to the "cellars," the old dungeon within the keep. It seems he was attempting to gather the heads for a flail, kept separate for reasons Nalia didn't know... but she suggests it might be a good idea to find the pieces if her father didn't.~ */ GOTO 39
  IF ~~ THEN REPLY #632 /* ~We must get moving. If we are through here, we should get to those cellars. ~ */ UNSOLVED_JOURNAL #16336 /* ~The de'Arnise keep has been invaded

We encountered Daleson in the keep, and he informed us that Nalia's father likely yet lives... but he has been taken captive and brought to the "cellars," the old dungeon within the keep. It seems he was attempting to gather the heads for a flail, kept separate for reasons Nalia didn't know... but she suggests it might be a good idea to find the pieces if her father didn't.~ */ GOTO 39
  IF ~~ THEN REPLY #633 /* ~So we should find your father? I need to know what numbers we will be facing.~ */ UNSOLVED_JOURNAL #16336 /* ~The de'Arnise keep has been invaded

We encountered Daleson in the keep, and he informed us that Nalia's father likely yet lives... but he has been taken captive and brought to the "cellars," the old dungeon within the keep. It seems he was attempting to gather the heads for a flail, kept separate for reasons Nalia didn't know... but she suggests it might be a good idea to find the pieces if her father didn't.~ */ EXTERN ~DALESON~ 24
  IF ~~ THEN REPLY #634 /* ~More fools to rescue? Wonderful. Anything you can say that would help at all? ~ */ UNSOLVED_JOURNAL #16336 /* ~The de'Arnise keep has been invaded

We encountered Daleson in the keep, and he informed us that Nalia's father likely yet lives... but he has been taken captive and brought to the "cellars," the old dungeon within the keep. It seems he was attempting to gather the heads for a flail, kept separate for reasons Nalia didn't know... but she suggests it might be a good idea to find the pieces if her father didn't.~ */ EXTERN ~DALESON~ 24
END

IF ~~ THEN BEGIN 39 // from: 38.1 38.0
  SAY #636 /* ~As you wish. I agree we must rescue my father with all haste. Aunty may also be alive, and it would be best if we could get to her as well. Let us go then.~ */
  IF ~~ THEN GOTO 296
END

IF ~~ THEN BEGIN 40 // from:
  SAY #655 /* ~Enough, Daleson! I... I will tell. The cellar is a relic, a leftover from a time when our family... was not as caring as it could have been.~ */
  IF ~~ THEN EXTERN ~DALESON~ 25
END

IF ~~ THEN BEGIN 41 // from:
  SAY #657 /* ~How dare you! I've done so much to make amends... no, no, you are right. The "cellar" is... a dungeon. My father walled it up, but it had seen much use...~ */
  IF ~~ THEN GOTO 151
END

IF ~~ THEN BEGIN 42 // from:
  SAY #659 /* ~Fine, I believe you, but how did they know? Father would not tell. Come, we must go. Daleson, prepare what others you can find for a return to service.~ */
  IF ~~ THEN EXTERN ~DALESON~ 27
END

IF ~~ THEN BEGIN 43 // from: 30.3
  SAY #635 /* ~A quaint notion, and one I would support. I think, however, that it would be hard to convince the old school of the merit of such a change. ~ */
  IF ~~ THEN GOTO 297
END

IF ~  Global("NaliaInLibrary","GLOBAL",1)
!Dead("kpglai01")
~ THEN BEGIN 44 // from:
  SAY #716 /* ~I do not understand. Aside from a few servants, we've seen very few dead. Where are the guards? They would have fought to the last. My father's bodyguard, Glaicus, should have been here in the bedroom, yet I see no body.~ [NALIA73] */
  IF ~~ THEN REPLY #717 /* ~The cowards probably ran away. I bet they were spoiled rotten by rich living.~ */ DO ~SetGlobal("NaliaInLibrary","GLOBAL",2)
~ GOTO 49
  IF ~~ THEN REPLY #718 /* ~They may have been captured for food. Perhaps they are storing the bodies elsewhere?~ */ DO ~SetGlobal("NaliaInLibrary","GLOBAL",2)
~ GOTO 50
  IF ~~ THEN REPLY #719 /* ~How strong was their loyalty to you? Perhaps they simply decided it was not worth the fight.~ */ DO ~SetGlobal("NaliaInLibrary","GLOBAL",2)
~ GOTO 51
  IF ~~ THEN REPLY #720 /* ~Perhaps they were not as effective as you thought they might be.~ */ DO ~SetGlobal("NaliaInLibrary","GLOBAL",2)
~ GOTO 52
END

IF ~~ THEN BEGIN 45 // from:
  SAY #722 /* ~We've come to get you out of my home, monster! You will leave this place or die here!~ [NALIA86] */
  IF ~~ THEN EXTERN ~TORGAL~ 16
END

IF ~~ THEN BEGIN 46 // from:
  SAY #724 /* ~I am here because this is my home! You will pay for this affront to the dignity of this place!~ [NALIA87] */
  IF ~~ THEN EXTERN ~TORGAL~ 17
END

IF ~~ THEN BEGIN 47 // from:
  SAY #726 /* ~What?! What deal? Someone put you up to this? Who was it? My father will have them quartered!~ [NALIA88] */
  IF ~~ THEN EXTERN ~TORGAL~ 18
END

IF ~~ THEN BEGIN 48 // from:
  SAY #728 /* ~No! Tell me who did this. If you are just the hired ruffians, who put you up to it?! Damnation, you will tell me! Make him talk, <CHARNAME>!~ [NALIA89] */
  IF ~~ THEN EXTERN ~TORGAL~ 19
END

IF ~~ THEN BEGIN 49 // from: 44.0
  SAY #730 /* ~I assure you, the servants were not spoiled. Aunty would not have tolerated it. The servants were loyal, I am certain. The guards were different though. ~ */
  IF ~~ THEN UNSOLVED_JOURNAL #23491 /* ~The de'Arnise keep has been invaded

Nalia noted that it is strange that there are no bodies to be found anywhere in the keep. There were numerous guards, as well as her father's loyal bodyguard, Glaicus, but none seem to be found anywhere.~ */ GOTO 298
END

IF ~~ THEN BEGIN 50 // from: 44.1
  SAY #731 /* ~I would not like to think about that. Some of the servants were good acquaintances. They appreciated my charity, I think. ~ */
  IF ~~ THEN UNSOLVED_JOURNAL #23491 /* ~The de'Arnise keep has been invaded

Nalia noted that it is strange that there are no bodies to be found anywhere in the keep. There were numerous guards, as well as her father's loyal bodyguard, Glaicus, but none seem to be found anywhere.~ */ GOTO 299
END

IF ~~ THEN BEGIN 51 // from: 44.2
  SAY #732 /* ~I don't think it was like that. The guards were well paid. It is more likely they are dead, but Glaicus would have given his life out of friendship for my father.~ */
  IF ~~ THEN UNSOLVED_JOURNAL #23491 /* ~The de'Arnise keep has been invaded

Nalia noted that it is strange that there are no bodies to be found anywhere in the keep. There were numerous guards, as well as her father's loyal bodyguard, Glaicus, but none seem to be found anywhere.~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 44.3
  SAY #733 /* ~They were more than capable, I assure you. Father has an eye for such things, and they also came from a well-recommended source. No, they were very competent.~ */
  IF ~~ THEN UNSOLVED_JOURNAL #23491 /* ~The de'Arnise keep has been invaded

Nalia noted that it is strange that there are no bodies to be found anywhere in the keep. There were numerous guards, as well as her father's loyal bodyguard, Glaicus, but none seem to be found anywhere.~ */ GOTO 300
END

IF ~  Dead("Torgal")
Global("NaliaKeepPlot","GLOBAL",0)
AreaCheck("AR1300")
Global("NaliaRaised","GLOBAL",0)
Global("PlayerHasStronghold","GLOBAL",0)
OR(2)
Class(Player1,FIGHTER_ALL)
Kit(Player1,Blackguard)
~ THEN BEGIN 53 // from: 191.1 191.0
  SAY #734 /* ~My... my home. My father... what is left? Someone has done this... but who...?~ [NALIA74] */
  IF ~~ THEN REPLY #735 /* ~I take it that my job here is done? Am I free to leave now?~ */ DO ~EraseJournalEntry(5083)
EraseJournalEntry(5825)
EraseJournalEntry(6549)
EraseJournalEntry(6576)
EraseJournalEntry(7025)
EraseJournalEntry(7079)
EraseJournalEntry(7262)
EraseJournalEntry(9920)
EraseJournalEntry(10073)
EraseJournalEntry(10074)
EraseJournalEntry(11648)
EraseJournalEntry(16002)
EraseJournalEntry(16336)
EraseJournalEntry(16354)
EraseJournalEntry(16542)
EraseJournalEntry(20986)
EraseJournalEntry(23395)
EraseJournalEntry(23489)
EraseJournalEntry(23491)
EraseJournalEntry(40131)
EraseJournalEntry(42371)
EraseJournalEntry(49487)
AddXPObject(Player1,45500)
AddXPObject(Player2,45500)
AddXPObject(Player3,45500)
AddXPObject(Player4,45500)
AddXPObject(Player5,45500)
AddXPObject(Player6,45500)
SetGlobal("NaliaKeepPlot","GLOBAL",1)
TakePartyItem("Key10")
~ SOLVED_JOURNAL #10101 /* ~The de'Arnise keep has been cleared

After a difficult battle, the keep of Nalia's family has finally been cleared of its troll invaders. Unfortunately, Lord de'Arnise could not be rescued and had been killed by the troll leader, TorGal. Nalia, however, remains alive... although her future in her own keep seems anything less than certain.~ */ GOTO 54
  IF ~~ THEN REPLY #736 /* ~I cannot ease your pain. I have done what I could, but there is little else for me to do here.~ */ DO ~EraseJournalEntry(5083)
EraseJournalEntry(5825)
EraseJournalEntry(6549)
EraseJournalEntry(6576)
EraseJournalEntry(7025)
EraseJournalEntry(7079)
EraseJournalEntry(7262)
EraseJournalEntry(9920)
EraseJournalEntry(10073)
EraseJournalEntry(10074)
EraseJournalEntry(11648)
EraseJournalEntry(16002)
EraseJournalEntry(16336)
EraseJournalEntry(16354)
EraseJournalEntry(16542)
EraseJournalEntry(20986)
EraseJournalEntry(23395)
EraseJournalEntry(23489)
EraseJournalEntry(23491)
EraseJournalEntry(40131)
EraseJournalEntry(42371)
EraseJournalEntry(49487)
AddXPObject(Player1,45500)
AddXPObject(Player2,45500)
AddXPObject(Player3,45500)
AddXPObject(Player4,45500)
AddXPObject(Player5,45500)
AddXPObject(Player6,45500)
SetGlobal("NaliaKeepPlot","GLOBAL",1)
TakePartyItem("Key10")
~ SOLVED_JOURNAL #10101 /* ~The de'Arnise keep has been cleared

After a difficult battle, the keep of Nalia's family has finally been cleared of its troll invaders. Unfortunately, Lord de'Arnise could not be rescued and had been killed by the troll leader, TorGal. Nalia, however, remains alive... although her future in her own keep seems anything less than certain.~ */ GOTO 54
  IF ~~ THEN REPLY #737 /* ~I feel as though my work is not done. I could not save your father, and I am sorry.~ */ DO ~EraseJournalEntry(5083)
EraseJournalEntry(5825)
EraseJournalEntry(6549)
EraseJournalEntry(6576)
EraseJournalEntry(7025)
EraseJournalEntry(7079)
EraseJournalEntry(7262)
EraseJournalEntry(9920)
EraseJournalEntry(10073)
EraseJournalEntry(10074)
EraseJournalEntry(11648)
EraseJournalEntry(16002)
EraseJournalEntry(16336)
EraseJournalEntry(16354)
EraseJournalEntry(16542)
EraseJournalEntry(20986)
EraseJournalEntry(23395)
EraseJournalEntry(23489)
EraseJournalEntry(23491)
EraseJournalEntry(40131)
EraseJournalEntry(42371)
EraseJournalEntry(49487)
AddXPObject(Player1,45500)
AddXPObject(Player2,45500)
AddXPObject(Player3,45500)
AddXPObject(Player4,45500)
AddXPObject(Player5,45500)
AddXPObject(Player6,45500)
SetGlobal("NaliaKeepPlot","GLOBAL",1)
TakePartyItem("Key10")
~ SOLVED_JOURNAL #10101 /* ~The de'Arnise keep has been cleared

After a difficult battle, the keep of Nalia's family has finally been cleared of its troll invaders. Unfortunately, Lord de'Arnise could not be rescued and had been killed by the troll leader, TorGal. Nalia, however, remains alive... although her future in her own keep seems anything less than certain.~ */ GOTO 55
  IF ~~ THEN REPLY #738 /* ~Sorry that I can't stick around to figure it out. You did say something about a reward?~ */ DO ~EraseJournalEntry(5083)
EraseJournalEntry(5825)
EraseJournalEntry(6549)
EraseJournalEntry(6576)
EraseJournalEntry(7025)
EraseJournalEntry(7079)
EraseJournalEntry(7262)
EraseJournalEntry(9920)
EraseJournalEntry(10073)
EraseJournalEntry(10074)
EraseJournalEntry(11648)
EraseJournalEntry(16002)
EraseJournalEntry(16336)
EraseJournalEntry(16354)
EraseJournalEntry(16542)
EraseJournalEntry(20986)
EraseJournalEntry(23395)
EraseJournalEntry(23489)
EraseJournalEntry(23491)
EraseJournalEntry(40131)
EraseJournalEntry(42371)
EraseJournalEntry(49487)
AddXPObject(Player1,45500)
AddXPObject(Player2,45500)
AddXPObject(Player3,45500)
AddXPObject(Player4,45500)
AddXPObject(Player5,45500)
AddXPObject(Player6,45500)
SetGlobal("NaliaKeepPlot","GLOBAL",1)
TakePartyItem("Key10")
~ SOLVED_JOURNAL #10101 /* ~The de'Arnise keep has been cleared

After a difficult battle, the keep of Nalia's family has finally been cleared of its troll invaders. Unfortunately, Lord de'Arnise could not be rescued and had been killed by the troll leader, TorGal. Nalia, however, remains alive... although her future in her own keep seems anything less than certain.~ */ GOTO 56
  IF ~~ THEN REPLY #739 /* ~I have done what I can. Might I expect a reward? I do not mean to appear crass.~ */ DO ~EraseJournalEntry(5083)
EraseJournalEntry(5825)
EraseJournalEntry(6549)
EraseJournalEntry(6576)
EraseJournalEntry(7025)
EraseJournalEntry(7079)
EraseJournalEntry(7262)
EraseJournalEntry(9920)
EraseJournalEntry(10073)
EraseJournalEntry(10074)
EraseJournalEntry(11648)
EraseJournalEntry(16002)
EraseJournalEntry(16336)
EraseJournalEntry(16354)
EraseJournalEntry(16542)
EraseJournalEntry(20986)
EraseJournalEntry(23395)
EraseJournalEntry(23489)
EraseJournalEntry(23491)
EraseJournalEntry(40131)
EraseJournalEntry(42371)
EraseJournalEntry(49487)
AddXPObject(Player1,45500)
AddXPObject(Player2,45500)
AddXPObject(Player3,45500)
AddXPObject(Player4,45500)
AddXPObject(Player5,45500)
AddXPObject(Player6,45500)
SetGlobal("NaliaKeepPlot","GLOBAL",1)
TakePartyItem("Key10")
~ SOLVED_JOURNAL #10101 /* ~The de'Arnise keep has been cleared

After a difficult battle, the keep of Nalia's family has finally been cleared of its troll invaders. Unfortunately, Lord de'Arnise could not be rescued and had been killed by the troll leader, TorGal. Nalia, however, remains alive... although her future in her own keep seems anything less than certain.~ */ GOTO 56
END

IF ~~ THEN BEGIN 54 // from: 53.1 53.0
  SAY #740 /* ~You may go if you wish. I will stay... oh no. Wait! Um, could you stay longer? I need... oh forget it. Damn it all, if it's not one thing it's another!~ */
  IF ~~ THEN REPLY #741 /* ~Farewell then. Take care.~ */ GOTO 57
  IF ~~ THEN REPLY #742 /* ~What is it now? Speak up, I've not got all day!~ */ DO ~GiveGoldForce(10650)
~ GOTO 58
  IF ~~ THEN REPLY #743 /* ~What is it? Is there something else I can help you with?~ */ DO ~GiveGoldForce(10650)
~ GOTO 58
END

IF ~~ THEN BEGIN 55 // from: 53.2
  SAY #744 /* ~I am thankful, and I will give you what reward I can. Now that father is gone, I have to... oh no. Uh, could I persuade you to... uh... no. No, forget it.~ */
  IF ~~ THEN REPLY #745 /* ~Thank you, yes. I will just take my reward and go. Farewell and good luck.~ */ GOTO 57
  IF ~~ THEN REPLY #746 /* ~What is it now? Speak up, I'll not lose sleep tonight wondering what you would have said.~ */ DO ~GiveGoldForce(10650)
~ GOTO 58
  IF ~~ THEN REPLY #747 /* ~Is there something else that can be done for you? I am willing to listen.~ */ DO ~GiveGoldForce(10650)
~ GOTO 58
END

IF ~~ THEN BEGIN 56 // from: 53.4 53.3
  SAY #748 /* ~I will see what I can do. Now that Father is gone, I will have to... oh no. Uh, wait! Could you... no. Forget I said anything. You should go.~ */
  IF ~~ THEN REPLY #749 /* ~Thank you. I bid you farewell. ~ */ GOTO 57
  IF ~~ THEN REPLY #750 /* ~Finish what you began, Nalia. I'll not waste sleep wondering what you were about to utter.~ */ DO ~GiveGoldForce(10650)
~ GOTO 58
  IF ~~ THEN REPLY #751 /* ~Is there something else I can do? Speak freely if there is.~ */ DO ~GiveGoldForce(10650)
~ GOTO 58
END

IF ~~ THEN BEGIN 57 // from: 66.4 66.3 56.0 55.0 54.0
  SAY #752 /* ~Here, have what gold is on hand. I care not about it. It doesn't really matter at this point. Goodbye. I wish you well.~ */
  IF ~~ THEN DO ~GiveGoldForce(650)
SetGlobal("RoenalControl","GLOBAL",1)
CreateCreature("QUINT",[3306.2412],SE)
LeaveParty()
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
EscapeAreaMove("AR1300",3234,2477,SE)
~ EXIT
END

IF ~~ THEN BEGIN 58 // from: 56.2 56.1 55.2 55.1 54.2 54.1
  SAY #753 /* ~It's... it's a matter of what happens now. I am... betrothed to a man I do not wish to marry. Father said he would stall as long as I wished him to, but now he is gone.~ */
  IF ~  Gender(Player1,MALE)
~ THEN REPLY #754 /* ~I see. You wish a marriage of convenience to stave off the advances of your intended. ~ */ GOTO 59
  IF ~  Gender(Player1,FEMALE)
~ THEN REPLY #755 /* ~Do you want a marriage of convenience? Interesting, but I doubt it would fool your intended.~ */ GOTO 60
  IF ~~ THEN REPLY #756 /* ~I could kill this man. It would solve your problem in a timely manner.~ */ GOTO 61
  IF ~~ THEN REPLY #757 /* ~Speak on. What is it you are proposing to avoid the proposal? A disappearance?~ */ GOTO 62
END

IF ~~ THEN BEGIN 59 // from: 58.0
  SAY #758 /* ~To you? Nothing so distasteful. That would hardly be an improvement; no one would believe I would prefer the likes of you. Err, no offense intended. Really.~ */
  IF ~~ THEN GOTO 63
END

IF ~~ THEN BEGIN 60 // from: 58.1
  SAY #759 /* ~Imagine the scandal. Who would believe I would have relations with you, even if you were the appropriate sex? I mean, I am charitable, but really... err, no offense intended.~ */
  IF ~~ THEN GOTO 63
END

IF ~~ THEN BEGIN 61 // from: 58.2
  SAY #760 /* ~That is hardly an acceptable solution! I will have no part of that! Though if it were to look like an accident... NO! No, I don't think that will be necessary.~ */
  IF ~~ THEN GOTO 63
END

IF ~~ THEN BEGIN 62 // from: 58.3
  SAY #761 /* ~No, that would solve nothing. I would have to face it eventually, and it would not do for me to be seen avoiding traditional duties.~ */
  IF ~~ THEN GOTO 63
END

IF ~~ THEN BEGIN 63 // from: 62.0 61.0 60.0 59.0
  SAY #763 /* ~No, what I propose is something different. I doubt it will fool many people regardless, but it would save my home from what is sure to be ill use. ~ */
  IF ~~ THEN GOTO 158
END

IF ~~ THEN BEGIN 64 // from: 158.0
  SAY #764 /* ~They epitomize what I hate about nobles. Everyone is beneath their status, and if you wish any respect, you must be of their social number.~ */
  IF ~~ THEN GOTO 159
END

IF ~~ THEN BEGIN 65 // from: 159.0
  SAY #765 /* ~My father was born with a title, but he demanded that people distinguish themselves through deeds. He obeyed etiquette, but he did not hide his distaste for it.~ */
  IF ~~ THEN GOTO 160
END

IF ~~ THEN BEGIN 66 // from: 160.0
  SAY #770 /* ~I was betrothed to Isaea Roenall, a brat of a man. Now they will surely push the arrangement, and I will be forced into a life of quiet nobility.~ */
  IF ~~ THEN REPLY #771 /* ~Well, that certainly sounds horrible. All that luxury. Pardon me if I don't cry you a river.~ */ GOTO 67
  IF ~~ THEN REPLY #772 /* ~And so you will become part of the system you hate. What recourse do you have?~ */ GOTO 161
  IF ~~ THEN REPLY #773 /* ~A long and tedious tale, Nalia. Kindly get to what it is you want from me.~ */ GOTO 68
  IF ~~ THEN REPLY #774 /* ~I really wish I could help, gosh I do. If you are through, I'll take my reward and go.~ */ GOTO 57
  IF ~~ THEN REPLY #775 /* ~I am sorry for your troubles, but I really must be going. Good luck to you, Nalia.~ */ GOTO 57
END

IF ~~ THEN BEGIN 67 // from: 66.0
  SAY #766 /* ~Certainly this might not sound like a crisis to you, but I have spent my life trying to right some of the wrongs that have been done to those of lesser status. ~ */
  IF ~~ THEN GOTO 301
END

IF ~~ THEN BEGIN 68 // from: 66.2
  SAY #767 /* ~I assure you, you need not worry about the task ahead. You can only benefit from it, and with as little effort as you wish.~ */
  IF ~~ THEN GOTO 161
END

IF ~~ THEN BEGIN 69 // from: 161.0
  SAY #768 /* ~It is my right as heir to choose who leads this place. I couldn't stand before the Roenalls effectively. You, with your... talents, would prove a daunting figure.~ */
  IF ~~ THEN REPLY #776 /* ~The Roenalls would accept this? I find that hard to believe.~ */ GOTO 162
  IF ~~ THEN REPLY #777 /* ~And what would I have to do to assume this role? What would be needed of me?~ */ GOTO 163
  IF ~~ THEN REPLY #778 /* ~<PRO_LADYLORD> <CHARNAME>. I like the sound of that.~ */ GOTO 73
  IF ~~ THEN REPLY #780 /* ~You are just trying to saddle your troubles onto me!~ */ GOTO 164
END

IF ~~ THEN BEGIN 70 // from: 162.0
  SAY #781 /* ~Please, this will ensure that the Roenalls do not take control. They are oppressive nobles, and will not direct this place in a way that will honor my father.~ */
  IF ~~ THEN REPLY #785 /* ~It will be an honor to guide this place through its troubles. I shall strive to see it flourish.~ */ GOTO 74
  IF ~~ THEN REPLY #786 /* ~I'll take your offer, and damn those that stand in our way. We'll see this place run proper.~ */ GOTO 74
  IF ~~ THEN REPLY #787 /* ~I cannot accept. There are others that would suit it better, I am sure. I am sorry.~ */ GOTO 75
  IF ~~ THEN REPLY #792 /* ~I'm not having anything to do with this. Find yourself another stooge.~ */ GOTO 75
END

IF ~~ THEN BEGIN 71 // from: 163.0
  SAY #782 /* ~You will do ceremonial things, but nothing overtly stressful. Please, the Roenalls would not use this place in a way that would honor my father. ~ */
  IF ~~ THEN REPLY #788 /* ~I accept. It will be an honor to guide this place through its troubles.~ */ GOTO 74
  IF ~~ THEN REPLY #789 /* ~I'll take your offer, and damn those that stand in our way. We'll see this place run proper.~ */ GOTO 74
  IF ~~ THEN REPLY #790 /* ~I cannot accept. There are others that would suit it better, I am sure. I am sorry.~ */ GOTO 75
  IF ~~ THEN REPLY #791 /* ~I'm not having anything to do with this. Find yourself another stooge.~ */ GOTO 75
END

IF ~~ THEN BEGIN 72 // from: 164.0
  SAY #783 /* ~You will prove a daunting figure, and my servants and I will be shielded from the Roenalls. Please, even Aunty will push for their coming if I do not act quickly.~ */
  IF ~~ THEN REPLY #793 /* ~I accept. It will be an honor to guide this place through its troubles. ~ */ GOTO 74
  IF ~~ THEN REPLY #794 /* ~I'll take your offer, and damn those that stand in our way. We'll see this place run proper.~ */ GOTO 74
  IF ~~ THEN REPLY #795 /* ~I cannot accept. There are others that would suit it better, I am sure. I am sorry.~ */ GOTO 75
  IF ~~ THEN REPLY #796 /* ~I'm not having anything to do with this. Find yourself another stooge.~ */ GOTO 75
END

IF ~~ THEN BEGIN 73 // from: 69.2
  SAY #784 /* ~It's not uncommon for a fighting <PRO_MANWOMAN> to take possession when the lord of the manor is... dead. With you as head, this place will continue to honor my father.~ */
  IF ~~ THEN REPLY #797 /* ~I accept. It will be an honor to guide this place through its troubles.~ */ GOTO 74
  IF ~~ THEN REPLY #798 /* ~I'll take your offer, and damn those that stand in our way. I'll see this place run proper.~ */ GOTO 74
  IF ~~ THEN REPLY #799 /* ~I cannot accept. There are others that would suit it better, I am sure. I am sorry.~ */ GOTO 75
  IF ~~ THEN REPLY #800 /* ~I'm not having anything to do with this. Find yourself another stooge.~ */ GOTO 75
END

IF ~~ THEN BEGIN 74 // from: 73.1 73.0 72.1 72.0 71.1 71.0 70.1 70.0
  SAY #801 /* ~Wonderful! They can't force me out now, and Isaea can forget the blasted betrothal. You are now master, within reason. I remain blood heir and can take it away.~ */
  IF ~~ THEN GOTO 165
END

IF ~~ THEN BEGIN 75 // from: 73.3 73.2 72.3 72.2 71.3 71.2 70.3 70.2
  SAY #802 /* ~But... very well. I will remain here to do what must be done. If you change your mind, there is time before the Roenalls would be able to take over. Think about it.~ */
  IF ~~ THEN DO ~SetGlobal("NaliaAtKeep","GLOBAL",1)
LeaveParty()
ChangeAIScript("",DEFAULT)
SetDialogue("Nalia")
EscapeAreaMove("AR1300",3234,2477,SE)
~ EXIT
END

IF ~~ THEN BEGIN 76 // from:
  SAY #803 /* ~Yes? That is my name. What can I do for you, son?~ */
  IF ~~ THEN EXTERN ~NALIAMES~ 1
END

IF ~~ THEN BEGIN 77 // from:
  SAY #1701 /* ~Of course. You have done well. ~ */
  IF ~~ THEN EXTERN ~NALIAMES~ 2
END

IF ~~ THEN BEGIN 78 // from:
  SAY #1703 /* ~Let's see what this says then, shall we...?~ */
  IF ~~ THEN GOTO 79
END

IF ~~ THEN BEGIN 79 // from: 78.0
  SAY #1704 /* ~Oh my...~ */
  IF ~~ THEN DO ~SetGlobalTimer("NaliaGraveyardTimer","GLOBAL",THREE_DAYS)
~ GOTO 80
END

IF ~~ THEN BEGIN 80 // from: 79.0
  SAY #1705 /* ~I must go to the Graveyard District in Athkatla at once. All other concerns must wait. I am sorry, but I must insist upon this.~ */
  IF ~~ THEN REPLY #1706 /* ~What is your concern? It must be quite grave to cause you such grief.~ */ GOTO 81
  IF ~~ THEN REPLY #1707 /* ~I cannot simply about-face and charge off without first knowing why. ~ */ GOTO 82
  IF ~~ THEN REPLY #1708 /* ~I am sure we will turn back that way eventually. Patience, we have much to do.~ */ GOTO 83
  IF ~~ THEN REPLY #1709 /* ~Another errand of yours that will escalate into siege warfare no doubt. What is it this time?~ */ GOTO 84
END

IF ~~ THEN BEGIN 81 // from: 80.0
  SAY #1710 /* ~You are more correct than you might've wished, but I forgive your ignorance. The message is about my father's funeral. I must go to the Graveyard District.~ */
  IF ~~ THEN REPLY #1714 /* ~Then we shall go as soon as mortally possible. I would not dream of letting you miss it.~ */ GOTO 85
  IF ~~ THEN REPLY #1715 /* ~Very well, I shall head in that direction at the next possible opportunity.~ */ GOTO 86
  IF ~~ THEN REPLY #1716 /* ~I sympathize, but this could not come at a worse time. There are other things to be done.~ */ GOTO 87
  IF ~~ THEN REPLY #1726 /* ~It is simply out of the question. I have not the time, nor the desire. ~ */ GOTO 87
END

IF ~~ THEN BEGIN 82 // from: 80.1
  SAY #1711 /* ~The letter was notification of my father's funeral arrangements, and I will not miss them. I must leave as soon as possible.~ */
  IF ~~ THEN REPLY #1717 /* ~Then that is what we will do. I would not allow you to miss it on my account. ~ */ GOTO 85
  IF ~~ THEN REPLY #1718 /* ~I shall abandon my plans and charge off. I imagine this will take a large amount of time once we are there?~ */ GOTO 86
  IF ~~ THEN REPLY #1719 /* ~While I do sympathize with you, I simply cannot go at this time. ~ */ GOTO 87
  IF ~~ THEN REPLY #1727 /* ~That is not an option at this time. We have things to do that cannot be postponed. ~ */ GOTO 87
END

IF ~~ THEN BEGIN 83 // from: 80.2
  SAY #1712 /* ~In normal circumstances perhaps, but this is not one of those times. The letter is notification of my father's funeral. I must go to Athkatla with all speed.~ */
  IF ~~ THEN REPLY #1720 /* ~Then we shall go as soon as mortally possible. I would not dream of letting you miss it.~ */ GOTO 85
  IF ~~ THEN REPLY #1721 /* ~Very well, I shall head in that direction at the next possible opportunity. ~ */ GOTO 86
  IF ~~ THEN REPLY #1722 /* ~I sympathize with you, but this could not come at a worse time. There are other things to be done.~ */ GOTO 87
  IF ~~ THEN REPLY #1728 /* ~It is simply out of the question. Pay your respects on your own; I have no time.~ */ GOTO 88
END

IF ~~ THEN BEGIN 84 // from: 80.3
  SAY #1713 /* ~I am sorry my concerns are such an inconvenience. The letter was notification of my father's funeral. I must get to Athkatla with all haste.~ */
  IF ~~ THEN REPLY #1723 /* ~Then that is what we will do. I would not allow you to miss it on my account. ~ */ GOTO 85
  IF ~~ THEN REPLY #1724 /* ~All right then, I shall abandon whatever I am doing and charge off as soon as we can. I imaging this will take a large amount of time once we are there?~ */ GOTO 86
  IF ~~ THEN REPLY #1725 /* ~While I do sympathize with you, I simply cannot go at this time. ~ */ GOTO 87
  IF ~~ THEN REPLY #1729 /* ~That is not an option at this time. We have things to do that take priority, and they cannot be postponed. ~ */ GOTO 87
END

IF ~~ THEN BEGIN 85 // from: 87.2 84.0 83.0 82.0 81.0
  SAY #1730 /* ~Thank you, I do appreciate this. It seems I owe you another debt of gratitude.~ */
  IF ~~ THEN UNSOLVED_JOURNAL #7036 /* ~Nalia's father's funeral

A messenger arrived, telling Nalia that she must go to the Graveyard District in Athkatla as soon as possible to attend her father's funeral. I have agreed to accompany her.~ */ EXIT
END

IF ~~ THEN BEGIN 86 // from: 88.0 87.1 84.1 83.1 82.1 81.1
  SAY #1731 /* ~I realize this is an inconvenience, but try not to worry. It will take only a moment to make an appearance. I thank you for understanding, albeit grudgingly.~ */
  IF ~~ THEN UNSOLVED_JOURNAL #7036 /* ~Nalia's father's funeral

A messenger arrived, telling Nalia that she must go to the Graveyard District in Athkatla as soon as possible to attend her father's funeral. I have agreed to accompany her.~ */ EXIT
END

IF ~~ THEN BEGIN 87 // from: 84.3 84.2 83.2 82.3 82.2 81.3 81.2
  SAY #1732 /* ~This is a special circumstance. I don't ask for much... well, besides rescuing my home and routing a legion of trolls. Please, could we at least go soon?~ */
  IF ~~ THEN REPLY #1733 /* ~No, I am sorry, but my decision is firm. We have no time for jaunting off to funerals.~ */ GOTO 88
  IF ~~ THEN REPLY #1734 /* ~That is acceptable. We will go when it is next convenient.~ */ GOTO 86
  IF ~~ THEN REPLY #1735 /* ~If you are that set on the matter, then we shall go right now. ~ */ GOTO 85
END

IF ~~ THEN BEGIN 88 // from: 87.0 83.3
  SAY #1736 /* ~You leave me little choice. Very well... here is the bulk of your gear. If you wish to find me, I should be at the Copper Coronet within a day, once the funeral is over.~ */
  IF ~~ THEN REPLY #1737 /* ~What? Wait! All right, we'll go, but not this instant. It will be soon though.~ */ GOTO 86
  IF ~~ THEN REPLY #1738 /* ~Perhaps that is for the best. I will meet up with you there.~ */ GOTO 89
  IF ~~ THEN REPLY #1739 /* ~Go then! I must be able to expect loyalty and this simply will not do!~ */ GOTO 90
END

IF ~~ THEN BEGIN 89 // from: 88.1
  SAY #1740 /* ~Very well. I do hope you will follow. You do understand why I must go, don't you? I hope so. Until we meet again?~ */
  IF ~~ THEN DO ~GivePartyAllEquipment()
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
SetGlobal("NaliaWentToFuneral","GLOBAL",1)
SetGlobalTimer("NaliaReturnsFromFuneral","GLOBAL",ONE_DAY)
LeaveParty()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 90 // from: 88.2
  SAY #1741 /* ~I follow this group because of the charity we give. I am no soldier, and you are no general. Follow if you wish, but I must go.~ */
  IF ~~ THEN DO ~GivePartyAllEquipment()
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
SetGlobal("NaliaWentToFuneral","GLOBAL",1)
SetGlobalTimer("NaliaReturnsFromFuneral","GLOBAL",ONE_DAY)
LeaveParty()
EscapeArea()
~ EXIT
END

IF ~  GlobalTimerExpired("NaliaGraveyardTimer","GLOBAL")
Global("NaliaGraveComplain","GLOBAL",0)
!AreaCheck("AR0800")
Global("NaliaWentToFuneral","GLOBAL",0)
!Global("IsaeaNalia","GLOBAL",1)
~ THEN BEGIN 91 // from:
  SAY #1742 /* ~I must insist that we go to Athkatla this instant. I'm sorry, but you did say we would go. I will leave on my own if I have to.~ [NALIA75] */
  IF ~~ THEN REPLY #1743 /* ~I am sorry for delaying so long. We shall leave immediately. ~ */ DO ~SetGlobalTimer("NaliaGraveyardTimer","GLOBAL",THREE_DAYS)
SetGlobal("NaliaGraveComplain","GLOBAL",1)
~ GOTO 92
  IF ~~ THEN REPLY #1744 /* ~Just a while longer, Nalia. Don't worry, I will get you there.~ */ DO ~SetGlobalTimer("NaliaGraveyardTimer","GLOBAL",THREE_DAYS)
SetGlobal("NaliaGraveComplain","GLOBAL",1)
~ GOTO 93
  IF ~~ THEN REPLY #1745 /* ~I really don't think we have the time. Do you really need to be there?~ */ DO ~SetGlobalTimer("NaliaGraveyardTimer","GLOBAL",THREE_DAYS)
SetGlobal("NaliaGraveComplain","GLOBAL",1)
~ GOTO 94
END

IF ~~ THEN BEGIN 92 // from: 91.0
  SAY #1746 /* ~Good and good. This is very important to me, and I thank you for helping.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 93 // from: 91.1
  SAY #1747 /* ~I am not worried, because I am leaving. I'm sorry, but this is very important and I won't miss it. I shall be at the Copper Coronet within a day, after the funeral is over.~ */
  IF ~~ THEN DO ~GivePartyAllEquipment()
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
SetGlobal("NaliaWentToFuneral","GLOBAL",1)
SetGlobalTimer("NaliaReturnsFromFuneral","GLOBAL",ONE_DAY)
LeaveParty()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 94 // from: 91.2
  SAY #1748 /* ~To my father's funeral? Yes, I should say so! I cannot abide this delaying tactic any longer. I will be at the Copper Coronet within a day, after the funeral, if you wish to see me again.~ */
  IF ~~ THEN DO ~GivePartyAllEquipment()
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
SetGlobal("NaliaWentToFuneral","GLOBAL",1)
SetGlobalTimer("NaliaReturnsFromFuneral","GLOBAL",ONE_DAY)
LeaveParty()
EscapeArea()
~ EXIT
END

IF ~  GlobalTimerExpired("NaliaGraveyardTimer","GLOBAL")
Global("NaliaGraveComplain","GLOBAL",1)
!AreaCheck("AR0800")
Global("NaliaWentToFuneral","GLOBAL",0)
!Global("IsaeaNalia","GLOBAL",1)
~ THEN BEGIN 95 // from:
  SAY #1749 /* ~I can wait no longer. Whether convenient or not, I must leave right now! I shall be at the Copper Coronet within a day, after the funeral, if you wish to see me again.~ [NALIA76] */
  IF ~~ THEN DO ~SetGlobal("NaliaGraveComplain","GLOBAL",2)
GivePartyAllEquipment()
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
SetGlobal("NaliaWentToFuneral","GLOBAL",1)
SetGlobalTimer("NaliaReturnsFromFuneral","GLOBAL",ONE_DAY)
LeaveParty()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 96 // from:
  SAY #1769 /* ~Oh no! It's Isaea! Let's get out of here.~ [NALIA90] */
  IF ~~ THEN EXTERN ~ISAEA~ 1
END

IF ~~ THEN BEGIN 97 // from:
  SAY #1771 /* ~Kindly place a cork in it, Isaea, I do not "slum." Foppish fools looking for a thrill "slum." I help people.~ */
  IF ~~ THEN EXTERN ~ISAEA~ 2
END

IF ~~ THEN BEGIN 98 // from:
  SAY #1773 /* ~My home has a new head that owes you no allegiance. Do such agreements carry beyond the death of the makers? No, a master of weapons may assume title to...~ */
  IF ~~ THEN EXTERN ~ISAEA~ 4
END

IF ~~ THEN BEGIN 99 // from:
  SAY #1775 /* ~My house? What house? Your family directs my father's holdings as though theirs. That suggests my name has... has lost what nobility it had.~ */
  IF ~~ THEN GOTO 166
END

IF ~~ THEN BEGIN 100 // from:
  SAY #1778 /* ~I thought not. No, I don't think I will be marrying you, Isaea. I do not have to, nor do I need to, and, above all else, I do not find your company enjoyable.~ */
  IF ~~ THEN EXTERN ~ISAEA~ 5
END

IF ~~ THEN BEGIN 101 // from:
  SAY #1780 /* ~No more ridiculous than you forcing the issue of this "betrothal." No, Isaea, I will not marry you. Above all else, I do not find your company enjoyable.~ */
  IF ~~ THEN EXTERN ~ISAEA~ 5
END

IF ~~ THEN BEGIN 102 // from:
  SAY #1787 /* ~Thank you, Lord Roenall. He would be pleased to hear such praise. ~ */
  IF ~~ THEN EXTERN ~FARTHIN~ 1
END

IF ~~ THEN BEGIN 103 // from:
  SAY #1789 /* ~Lord Roenall, you are a positive cad!~ */
  IF ~  Global("PCKeepOwner","GLOBAL",1)
~ THEN EXTERN ~FARTHIN~ 2
  IF ~  Global("PCKeepOwner","GLOBAL",0)
~ THEN EXTERN ~FARTHIN~ 3
END

IF ~~ THEN BEGIN 104 // from:
  SAY #1793 /* ~Isaea said WHAT?! Abandoned?! It was wrested out from under me! What has...~ */
  IF ~~ THEN EXTERN ~ISAEA~ 8
END

IF ~~ THEN BEGIN 105 // from:
  SAY #1794 /* ~I fear you are misinformed, sir. No, with my father's death, it was best to defer to the weaponsmaster that saved the keep. You know the old customs, don't you?~ */
  IF ~~ THEN EXTERN ~FARTHIN~ 4
END

IF ~~ THEN BEGIN 106 // from:
  SAY #1799 /* ~Isaea, what have you told him? That I was run off and afraid to go back? Is that how you intend to take control of my home, my life? I'll not have it!~ */
  IF ~~ THEN EXTERN ~ISAEA~ 9
END

IF ~~ THEN BEGIN 107 // from:
  SAY #1801 /* ~I say... I say take your name and eat it! I'll not be your puppet!~ */
  IF ~~ THEN EXTERN ~ISAEA~ 10
END

IF ~  Global("IsaeaNalia","GLOBAL",1)
Global("NaliaComplainsIsaea","LOCALS",0)
GlobalTimerExpired("FuneralLeaveTimer","GLOBAL")
CombatCounter(0)
~ THEN BEGIN 108 // from:
  SAY #1811 /* ~I'm sorry for that extended exchange, but he is such a... bounder, such a... a manipulating... such a... Oh, to Hades with the manners, he is a complete bastard, and calling him that insults bastards everywhere!~ [NALIA77] */
  IF ~~ THEN REPLY #1812 /* ~Has he always been that... driven? He is quite intent on enforcing your betrothal.~ */ DO ~SetGlobal("NaliaComplainsIsaea","LOCALS",1)
~ GOTO 109
  IF ~~ THEN REPLY #1813 /* ~He did say he could "help or hinder," and "he'd done it before." What's that about?~ */ DO ~SetGlobal("NaliaComplainsIsaea","LOCALS",1)
~ GOTO 110
  IF ~~ THEN REPLY #1814 /* ~It would be quite beneficial to marry him. You have thought of this, haven't you?~ */ DO ~SetGlobal("NaliaComplainsIsaea","LOCALS",1)
~ GOTO 111
  IF ~~ THEN REPLY #1815 /* ~I don't want a role in this mess. Will we be meeting up with that foppish lout again?~ */ DO ~SetGlobal("NaliaComplainsIsaea","LOCALS",1)
~ GOTO 112
END

IF ~~ THEN BEGIN 109 // from: 108.0
  SAY #1816 /* ~I do not understand him. If he were not the son of Lord Roenall, I would think him capable of anything. Anything short of the criminal, of course.~ */
  IF ~~ THEN GOTO 204
END

IF ~~ THEN BEGIN 110 // from: 108.1
  SAY #1817 /* ~What does any of it mean? That he is a rounder, and were he not the son of Lord Roenall, I would think him capable of anything short of the criminal.~ */
  IF ~~ THEN GOTO 204
END

IF ~~ THEN BEGIN 111 // from: 108.2
  SAY #1818 /* ~I am reminded each and every day when I wake up and realize what has changed. Father had everything balanced and stable. Now it's all topsy-turvy.~ */
  IF ~~ THEN GOTO 204
END

IF ~~ THEN BEGIN 112 // from: 108.3
  SAY #1819 /* ~Hopefully, he'll give me space now. Actually, this was the first time I said no directly. Father always handled it. I bet Isaea found him as maddening as me.~ */
  IF ~~ THEN GOTO 204
END

IF ~~ THEN BEGIN 113 // from:
  SAY #14316 /* ~Poor child. I would give you all I could if I had much to spare. That so many should be so poor just doesn't sit well with me.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 114 // from:
  SAY #14482 /* ~That's the way to handle the problem, is it? Just go and kill all the poor, because THEY are the ones behind it, hm?~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 115 // from:
  SAY #14490 /* ~No, I suppose we do not. We are mortal like any other. A lesson the other Families could do to learn, though I would not wish this on my worst enemy.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 116 // from:
  SAY #15021 /* ~They are my friends. And their deeds make them far more worthy than anything related to one's birth.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 117 // from:
  SAY #22385 /* ~You poor man! Like there wasn't enough rich folk in Athkatla to steal from. Hmph.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 118 // from:
  SAY #14724 /* ~Get lost, Salvanas. You know I come here all the time.~ */
  IF ~~ THEN EXTERN ~SALVANAS~ 4
END

IF ~~ THEN BEGIN 119 // from:
  SAY #19747 /* ~That's cute, but that's the same thing you said to Priss last week.~ */
  IF ~~ THEN EXTERN ~SALVANAS~ 5
END

IF ~~ THEN BEGIN 120 // from:
  SAY #19750 /* ~Keep it up and it'll be more than my words that wound you, silly man.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 121 // from:
  SAY #25408 /* ~Why do you say that, old man?~ */
  IF ~~ THEN EXTERN ~YARIN~ 11
END

IF ~~ THEN BEGIN 122 // from:
  SAY #25410 /* ~Maybe you just weren't very good.~ */
  IF ~~ THEN EXTERN ~YARIN~ 12
END

IF ~~ THEN BEGIN 123 // from:
  SAY #25413 /* ~Well, I intend to do some good with my abilities. There are a lot of poor people who I can help... and I can help <CHARNAME> in <PRO_HISHER> quest, too.~ */
  IF ~~ THEN EXTERN ~YARIN~ 14
END

IF ~~ THEN BEGIN 124 // from:
  SAY #25688 /* ~And I could shave your feet with my dagger faster than you could belch, little halfling. But I mean no harm... so relax.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 125 // from:
  SAY #25702 /* ~Go soak your head in the seawater a little longer, sailor boy.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 126 // from:
  SAY #25721 /* ~No... that's not it. I was just wondering if you actually intended fish guts to be part of your outfit.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 127 // from:
  SAY #25823 /* ~Er... I think someone needs to sit down and have a long talk with your mother...~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 128 // from:
  SAY #27643 /* ~If you've enough spare coin to waste on gods rather than extra guards, you no doubt deserve to be trimmed of at least a little of your fat, merchant.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 129 // from:
  SAY #28452 /* ~Hm. This must be why thievery has never been a very hazardous practice in Athkatla.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 130 // from:
  SAY #29536 /* ~And why aren't you decently dead yet?~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 131 // from:
  SAY #29610 /* ~It's just that I can't help but feeling, sir, that we are in the same business somehow.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 132 // from:
  SAY #29691 /* ~*sigh* Don't bother. Truly.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 133 // from:
  SAY #30076 /* ~Look at it this way: Perhaps it is just the gods' way of telling you that there are far more poor who need that coin far more than you, yes?~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 134 // from:
  SAY #30094 /* ~I know how you feel, little boy. You will find some way to express yourself as I did, I am sure.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 135 // from:
  SAY #38736 /* ~Well, I'm not about to refuse you a coin or two, you poor soul. We have plenty, I think... and a few gold can do them a lot more good than it does you, <CHARNAME>!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 136 // from:
  SAY #38740 /* ~That was a nice thing to do, <CHARNAME>. Although I'm sure you could spare a lot more... What are you saving up for? A golden sword?~ */
  IF ~  True()
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Anomen")
RandomNum(2,1)
~ THEN EXTERN ~ANOMENJ~ 156
  IF ~  IsValidForPartyDialogue("Jaheira")
RandomNum(2,2)
~ THEN EXTERN ~JAHEIRAJ~ 310
  IF ~  IsValidForPartyDialogue("Jan")
RandomNum(2,1)
~ THEN EXTERN ~JANJ~ 79
  IF ~  IsValidForPartyDialogue("Keldorn")
RandomNum(2,2)
~ THEN EXTERN ~KELDORJ~ 89
  IF ~  IsValidForPartyDialogue("Yoshimo")
RandomNum(2,1)
~ THEN EXTERN ~YOSHJ~ 21
END

IF ~~ THEN BEGIN 137 // from:
  SAY #38870 /* ~I'm sure it's not so... so terrible... as you describe. If you dislike it so much, what are you doing here?~ */
  IF ~~ THEN EXTERN ~WCUST03~ 3
END

IF ~~ THEN BEGIN 138 // from:
  SAY #38914 /* ~I can't believe the conditions here. The nobility allows the poor to live like this just so long as they are out of their sight... it... it makes me furious!~ */
  IF ~  !IsValidForPartyDialogue("Anomen")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 157
END

IF ~~ THEN BEGIN 139 // from:
  SAY #38917 /* ~I can't believe you are so unfeeling, Anomen!~ */
  IF ~~ THEN EXTERN ~ANOMENJ~ 158
END

IF ~~ THEN BEGIN 140 // from:
  SAY #38929 /* ~Well, that isn't exactly true, is it, <CHARNAME>? Let's just forget our pockets are brimming with gold here in the house of the god of mercy. Hmph.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 141 // from:
  SAY #38956 /* ~Pretty...? You don't mean me, do you?~ */
  IF ~~ THEN EXTERN ~WAYLANE~ 24
END

IF ~~ THEN BEGIN 142 // from:
  SAY #38959 /* ~I'd say you're a pathetic man who should seriously consider finding some honest work for once. Honestly... who do you expect to fall for that line?~ */
  IF ~  !IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Jan")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 73
  IF ~  !IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 85
END

IF ~~ THEN BEGIN 143 // from:
  SAY #38963 /* ~Oh, never mind...~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 144 // from:
  SAY #39175 /* ~He's just a boy, <CHARNAME>, who can't do you any harm. There's no need to treat him so harshly, is there? He's just looking for help.~ */
  IF ~  !IsValidForPartyDialogue("Korgan")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 42
END

IF ~~ THEN BEGIN 145 // from:
  SAY #39279 /* ~Have you no heart, knight? These are men with nothing! And we are in a position to help them!~ */
  IF ~~ THEN EXTERN ~ANOMENJ~ 163
END

IF ~~ THEN BEGIN 146 // from:
  SAY #39354 /* ~I've... heard rumors about the owner of this place before, but I never thought that the truth went to this extent. This place... is repulsive. We must do something!~ */
  IF ~~ THEN EXTERN ~HENDAK~ 6
END

IF ~~ THEN BEGIN 147 // from:
  SAY #39417 /* ~I almost hate to ask this... what, exactly, is wrong with milk baths?~ */
  IF ~~ THEN EXTERN ~JANJ~ 88
END

IF ~  Dead("Torgal")
Global("NaliaKeepPlot","GLOBAL",0)
AreaCheck("AR1300")
Global("NaliaRaised","GLOBAL",0)
~ THEN BEGIN 148 // from: 191.3 191.2
  SAY #39770 /* ~It is done... isn't it? *sigh* But... what is left for... My father dead, my home in shambles... Someone put these creatures up to this... but... but who...?~ [NALIA78] */
  IF ~~ THEN REPLY #39929 /* ~I take it that my job here is done? Am I free to leave now?~ */ DO ~EraseJournalEntry(5083)
EraseJournalEntry(5825)
EraseJournalEntry(6549)
EraseJournalEntry(6576)
EraseJournalEntry(7025)
EraseJournalEntry(7079)
EraseJournalEntry(7262)
EraseJournalEntry(9920)
EraseJournalEntry(10073)
EraseJournalEntry(10074)
EraseJournalEntry(11648)
EraseJournalEntry(16002)
EraseJournalEntry(16336)
EraseJournalEntry(16354)
EraseJournalEntry(16542)
EraseJournalEntry(20986)
EraseJournalEntry(23395)
EraseJournalEntry(23489)
EraseJournalEntry(23491)
EraseJournalEntry(40131)
EraseJournalEntry(42371)
EraseJournalEntry(49487)
AddXPObject(Player1,45500)
AddXPObject(Player2,45500)
AddXPObject(Player3,45500)
AddXPObject(Player4,45500)
AddXPObject(Player5,45500)
AddXPObject(Player6,45500)
SetGlobal("NaliaKeepPlot","GLOBAL",1)
TakePartyItem("Key10")
~ SOLVED_JOURNAL #10101 /* ~The de'Arnise keep has been cleared

After a difficult battle, the keep of Nalia's family has finally been cleared of its troll invaders. Unfortunately, Lord de'Arnise could not be rescued and had been killed by the troll leader, TorGal. Nalia, however, remains alive... although her future in her own keep seems anything less than certain.~ */ GOTO 167
  IF ~~ THEN REPLY #39930 /* ~I cannot ease your pain. I have done what I could, but there is little else for me to do here.~ */ DO ~EraseJournalEntry(5083)
EraseJournalEntry(5825)
EraseJournalEntry(6549)
EraseJournalEntry(6576)
EraseJournalEntry(7025)
EraseJournalEntry(7079)
EraseJournalEntry(7262)
EraseJournalEntry(9920)
EraseJournalEntry(10073)
EraseJournalEntry(10074)
EraseJournalEntry(11648)
EraseJournalEntry(16002)
EraseJournalEntry(16336)
EraseJournalEntry(16354)
EraseJournalEntry(16542)
EraseJournalEntry(20986)
EraseJournalEntry(23395)
EraseJournalEntry(23489)
EraseJournalEntry(23491)
EraseJournalEntry(40131)
EraseJournalEntry(42371)
EraseJournalEntry(49487)
AddXPObject(Player1,45500)
AddXPObject(Player2,45500)
AddXPObject(Player3,45500)
AddXPObject(Player4,45500)
AddXPObject(Player5,45500)
AddXPObject(Player6,45500)
SetGlobal("NaliaKeepPlot","GLOBAL",1)
TakePartyItem("Key10")
~ SOLVED_JOURNAL #10101 /* ~The de'Arnise keep has been cleared

After a difficult battle, the keep of Nalia's family has finally been cleared of its troll invaders. Unfortunately, Lord de'Arnise could not be rescued and had been killed by the troll leader, TorGal. Nalia, however, remains alive... although her future in her own keep seems anything less than certain.~ */ GOTO 167
  IF ~~ THEN REPLY #39931 /* ~I feel as though my work is not done. I could not save your father, and I am sorry.~ */ DO ~EraseJournalEntry(5083)
EraseJournalEntry(5825)
EraseJournalEntry(6549)
EraseJournalEntry(6576)
EraseJournalEntry(7025)
EraseJournalEntry(7079)
EraseJournalEntry(7262)
EraseJournalEntry(9920)
EraseJournalEntry(10073)
EraseJournalEntry(10074)
EraseJournalEntry(11648)
EraseJournalEntry(16002)
EraseJournalEntry(16336)
EraseJournalEntry(16354)
EraseJournalEntry(16542)
EraseJournalEntry(20986)
EraseJournalEntry(23395)
EraseJournalEntry(23489)
EraseJournalEntry(23491)
EraseJournalEntry(40131)
EraseJournalEntry(42371)
EraseJournalEntry(49487)
AddXPObject(Player1,45500)
AddXPObject(Player2,45500)
AddXPObject(Player3,45500)
AddXPObject(Player4,45500)
AddXPObject(Player5,45500)
AddXPObject(Player6,45500)
SetGlobal("NaliaKeepPlot","GLOBAL",1)
TakePartyItem("Key10")
~ SOLVED_JOURNAL #10101 /* ~The de'Arnise keep has been cleared

After a difficult battle, the keep of Nalia's family has finally been cleared of its troll invaders. Unfortunately, Lord de'Arnise could not be rescued and had been killed by the troll leader, TorGal. Nalia, however, remains alive... although her future in her own keep seems anything less than certain.~ */ GOTO 167
  IF ~~ THEN REPLY #39932 /* ~Sorry that I can't stick around to figure it out. You did say something about a reward?~ */ DO ~EraseJournalEntry(5083)
EraseJournalEntry(5825)
EraseJournalEntry(6549)
EraseJournalEntry(6576)
EraseJournalEntry(7025)
EraseJournalEntry(7079)
EraseJournalEntry(7262)
EraseJournalEntry(9920)
EraseJournalEntry(10073)
EraseJournalEntry(10074)
EraseJournalEntry(11648)
EraseJournalEntry(16002)
EraseJournalEntry(16336)
EraseJournalEntry(16354)
EraseJournalEntry(16542)
EraseJournalEntry(20986)
EraseJournalEntry(23395)
EraseJournalEntry(23489)
EraseJournalEntry(23491)
EraseJournalEntry(40131)
EraseJournalEntry(42371)
EraseJournalEntry(49487)
AddXPObject(Player1,45500)
AddXPObject(Player2,45500)
AddXPObject(Player3,45500)
AddXPObject(Player4,45500)
AddXPObject(Player5,45500)
AddXPObject(Player6,45500)
SetGlobal("NaliaKeepPlot","GLOBAL",1)
TakePartyItem("Key10")
~ SOLVED_JOURNAL #10101 /* ~The de'Arnise keep has been cleared

After a difficult battle, the keep of Nalia's family has finally been cleared of its troll invaders. Unfortunately, Lord de'Arnise could not be rescued and had been killed by the troll leader, TorGal. Nalia, however, remains alive... although her future in her own keep seems anything less than certain.~ */ GOTO 167
  IF ~~ THEN REPLY #39933 /* ~I have done what I can. Might I expect a reward? I do not mean to appear crass.~ */ DO ~EraseJournalEntry(5083)
EraseJournalEntry(5825)
EraseJournalEntry(6549)
EraseJournalEntry(6576)
EraseJournalEntry(7025)
EraseJournalEntry(7079)
EraseJournalEntry(7262)
EraseJournalEntry(9920)
EraseJournalEntry(10073)
EraseJournalEntry(10074)
EraseJournalEntry(11648)
EraseJournalEntry(16002)
EraseJournalEntry(16336)
EraseJournalEntry(16354)
EraseJournalEntry(16542)
EraseJournalEntry(20986)
EraseJournalEntry(23395)
EraseJournalEntry(23489)
EraseJournalEntry(23491)
EraseJournalEntry(40131)
EraseJournalEntry(42371)
EraseJournalEntry(49487)
AddXPObject(Player1,45500)
AddXPObject(Player2,45500)
AddXPObject(Player3,45500)
AddXPObject(Player4,45500)
AddXPObject(Player5,45500)
AddXPObject(Player6,45500)
SetGlobal("NaliaKeepPlot","GLOBAL",1)
TakePartyItem("Key10")
~ SOLVED_JOURNAL #10101 /* ~The de'Arnise keep has been cleared

After a difficult battle, the keep of Nalia's family has finally been cleared of its troll invaders. Unfortunately, Lord de'Arnise could not be rescued and had been killed by the troll leader, TorGal. Nalia, however, remains alive... although her future in her own keep seems anything less than certain.~ */ GOTO 167
END

IF ~~ THEN BEGIN 149 // from: 248.0 0.2 0.1 0.0
  SAY #39792 /* ~I should have told you previously, but others abandoned me when they found out. We are beset by trolls. The main assault began just a few nights ago. ~ */
  IF ~~ THEN GOTO 318
END

IF ~~ THEN BEGIN 150 // from: 32.0
  SAY #39820 /* ~It is not right that we should have so much simply because of our breeding. The peasants deserve what extra I can give. They serve well and deserve dignity.~ */
  IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 151 // from: 41.0
  SAY #39830 /* ~I will not see it used as such again. There is no excuse. How did they... Daleson, did you tell these beasts of the cellar?~ */
  IF ~~ THEN EXTERN ~DALESON~ 26
END

IF ~~ THEN BEGIN 152 // from:
  SAY #39852 /* ~I hope he is too. My new friends and I intend to find out and ensure that my home is cleared. Don't worry, Captain Arat, you'll be back at your post in no time.~ */
  IF ~~ THEN EXTERN ~KPCAPT01~ 32
END

IF ~~ THEN BEGIN 153 // from:
  SAY #39903 /* ~Hendron? You're alive! What are you doing here?~ */
  IF ~~ THEN EXTERN ~KPSOLD01~ 9
END

IF ~~ THEN BEGIN 154 // from:
  SAY #39904 /* ~We are here to deal with the invaders, Hendron, and save whoever remains. I... am glad Aunty is still safe. Will you go to the palisade with her, Hendron?~ */
  IF ~~ THEN EXTERN ~KPSOLD01~ 10
END

IF ~~ THEN BEGIN 155 // from:
  SAY #39905 /* ~Aunty is a real pain, huh?~ */
  IF ~~ THEN EXTERN ~KPSOLD01~ 11
END

IF ~~ THEN BEGIN 156 // from:
  SAY #39906 /* ~Don't worry. I'll talk to her.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 157 // from:
  SAY #39908 /* ~G-glaicus? Is that you? Oh no, <CHARNAME>... he must be charmed! He's one of my father's most loyal guards—he would never do this otherwise!~ */
  IF ~~ THEN UNSOLVED_JOURNAL #7079 /* ~The de'Arnise keep has been invaded

We have found Glaicus, Lord de'Arnise's loyal bodyguard. Nalia is sure that he must be charmed or under some kind of magical influence.~ */ EXIT
END

IF ~~ THEN BEGIN 158 // from: 63.0
  SAY #39910 /* ~Here is the problem as I see it. My father... had regular dealings with the Roenalls, though at times I am sure he viewed them with as much distaste as I do.~ */
  IF ~~ THEN GOTO 64
END

IF ~~ THEN BEGIN 159 // from: 64.0
  SAY #39911 /* ~All others are treated as dirt. My father had dealings with them, but he was not like them. They tolerated him because of his wealth and willingness to conform.~ */
  IF ~~ THEN GOTO 65
END

IF ~~ THEN BEGIN 160 // from: 65.0
  SAY #39916 /* ~My father earned his living while others squandered. The Roenalls sought to increase their links to him through marriage. They are powerful, and he reluctantly agreed.~ */
  IF ~~ THEN GOTO 66
END

IF ~~ THEN BEGIN 161 // from: 301.0 68.0 66.1
  SAY #39920 /* ~I propose a partnership, in secret of course, wherein you assume title to this place. You will become the figurehead of the keep, and I will be a ward of sorts.~ */
  IF ~~ THEN GOTO 69
END

IF ~~ THEN BEGIN 162 // from: 69.0
  SAY #39923 /* ~Accept? No, they could not do much. It is not uncommon for a fighting <PRO_MANWOMAN> to take possession of a keep once the lord of the manor is... is dead.~ */
  IF ~~ THEN GOTO 70
END

IF ~~ THEN BEGIN 163 // from: 69.1
  SAY #39925 /* ~Naught but your strength of... character. It's not uncommon to take over a keep once the lord is... is dead. The heirs must merely declare it so.~ */
  IF ~~ THEN GOTO 71
END

IF ~~ THEN BEGIN 164 // from: 69.3
  SAY #39926 /* ~This will benefit us both! You gain status while my home is maintained as befits my father. It is not uncommon to take over a keep when the lord is... is dead.~ */
  IF ~~ THEN GOTO 72
END

IF ~~ THEN BEGIN 165 // from: 74.0
  SAY #39927 /* ~We can leave, though you are welcome to inspect or organize as you see fit. The servants will return this place to order. Again, I thank you.~ */
  IF ~~ THEN DO ~SetGlobal("PCKeepOwner","GLOBAL",1)
SetGlobal("PlayerHasStronghold","GLOBAL",1)
RevealAreaOnMap("AR1304")
HideAreaOnMap("AR1300")
StartCutSceneMode()
StartCutSceneEx("Cut32a",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 166 // from: 99.0
  SAY #39928 /* ~If my rights to control of my father's dealings are void, then why are the conditions that built those dealings not? Do you plan to release control of the keep to me?~ */
  IF ~~ THEN EXTERN ~ISAEA~ 3
END

IF ~~ THEN BEGIN 167 // from: 148.4 148.3 148.2 148.1 148.0
  SAY #39934 /* ~Oh, of course. You have done just as asked, and I wish you well. I will see what there is to pay you and then I will... I will... oh no. Might I ask you to...~ */
  IF ~~ THEN GOTO 168
END

IF ~~ THEN BEGIN 168 // from: 167.0
  SAY #39935 /* ~No, no it is foolish to think such things. I will pay you and return to the life that I must.~ */
  IF ~~ THEN REPLY #39936 /* ~Speak, Nalia. I will lose no sleep wondering what you might have said.~ */ DO ~GiveGoldForce(10650)
~ GOTO 169
  IF ~~ THEN REPLY #39937 /* ~What is it? There is no harm in asking.~ */ DO ~GiveGoldForce(10650)
~ GOTO 169
END

IF ~~ THEN BEGIN 169 // from: 168.1 168.0
  SAY #39938 /* ~It is the matter of what is to become of me. My... my father, lord of this place, is dead. In the circles of nobility, the title of lord falls to the male heir.~ */
  IF ~  Gender(Player1,MALE)
~ THEN REPLY #39939 /* ~So you obviously want me to assume the role. A marriage of convenience perhaps? ~ */ GOTO 170
  IF ~  Gender(Player1,FEMALE)
~ THEN REPLY #39940 /* ~I would assume the role if I could, but obviously I cannot help you in this matter.~ */ GOTO 170
  IF ~~ THEN REPLY #39941 /* ~And what is it that you wish of me?~ */ GOTO 171
  IF ~~ THEN REPLY #39942 /* ~I know little of such things. Speak your mind and speak it plain.~ */ GOTO 171
END

IF ~~ THEN BEGIN 170 // from: 169.1 169.0
  SAY #39943 /* ~What? Oh no, no, no, nothing like that. Goodness no. Perish the thought. Really. That would cause no end of scandal.~ */
  IF ~~ THEN GOTO 171
END

IF ~~ THEN BEGIN 171 // from: 170.0 169.3 169.2
  SAY #39944 /* ~I intend to leave. There is little else for me here. I am... betrothed to a brat of a man, who will certainly try to usurp control of this place from me.~ */
  IF ~~ THEN GOTO 172
END

IF ~~ THEN BEGIN 172 // from: 171.0
  SAY #39945 /* ~Perhaps it's best just to leave. My father always said you could tell a person by their actions, not their possessions. Quaint, but it will help me sleep at night.~ */
  IF ~~ THEN REPLY #39946 /* ~You do not wish to fight for your home? Is there nothing I can do?~ */ GOTO 173
  IF ~~ THEN REPLY #39947 /* ~You are welcome to accompany me if you wish. They will not trouble you on the road.~ */ GOTO 175
  IF ~~ THEN REPLY #39948 /* ~I have no need of your company anymore. You will have to do what you can here.~ */ GOTO 176
END

IF ~~ THEN BEGIN 173 // from: 172.0
  SAY #39949 /* ~Hostility would only bring soldiers. They are not criminals, just repugnant. If you were more a fighting sort, you might serve as figurehead, but you are not.~ */
  IF ~~ THEN GOTO 174
END

IF ~~ THEN BEGIN 174 // from: 173.0
  SAY #39950 /* ~No, I should leave. Could I seek sanctuary in your adventuring company? I yearn to go out among the needy and help them. Life was so sheltered here.~ */
  IF ~~ THEN REPLY #39951 /* ~You can seek sanctuary with me, if you like. The road is a hard life though.~ */ GOTO 175
  IF ~~ THEN REPLY #39952 /* ~I only wanted to have you in the group until your keep was freed. You should leave now.~ */ GOTO 202
END

IF ~~ THEN BEGIN 175 // from: 174.0 172.1
  SAY #39953 /* ~Good, then. I will go with you. It will be sad to see this place go to bad use, but I've no choice. I will not serve the Roenall family in their snobbish deals.~ */
  IF ~~ THEN DO ~SetGlobal("RoenalControl","GLOBAL",1)
CreateCreature("QUINT",[3306.2412],SE)
~ EXIT
END

IF ~~ THEN BEGIN 176 // from: 202.0 172.2
  SAY #39954 /* ~There is little hope for my future. I will be pampered until I am what I hated. Go then, and live your life of adventure. I will waste away here.~ */
  IF ~~ THEN DO ~SetGlobal("NaliaAtKeep","GLOBAL",1)
LeaveParty()
ChangeAIScript("",DEFAULT)
SetDialogue("Nalia")
~ EXIT
END

IF ~~ THEN BEGIN 177 // from:
  SAY #39962 /* ~That's an excellent idea! Thank you, Captain Arat; you have served my father well. <CHARNAME>, we should open the bridge quickly when we've entered.~ */
  IF ~~ THEN EXTERN ~KPCAPT01~ 11
  IF ~  Global("CDAratGaveArrows","GLOBAL",1)
~ THEN EXTERN ~KPCAPT01~ 57
END

IF ~~ THEN BEGIN 178 // from:
  SAY #39980 /* ~I can vouch for him, <CHARNAME>. He's served my family for a long time, and well... and there's nobody else, really, who can do his job around here anyway.~ */
  IF ~~ THEN EXTERN ~KPDOMO01~ 2
END

IF ~~ THEN BEGIN 179 // from:
  SAY #40001 /* ~The people won't stand for much in the way of extra taxes right now, <CHARNAME>... we've just gotten over an invasion by trolls, remember?~ */
  IF ~~ THEN EXTERN ~KPDOMO01~ 12
END

IF ~~ THEN BEGIN 180 // from:
  SAY #40037 /* ~Aunty! <CHARNAME> saved our keep from being overrun by trolls! And <PRO_HESHE> is helping keep our home from being taken over by the Roenalls!~ */
  IF ~~ THEN EXTERN ~DELCIA~ 28
END

IF ~~ THEN BEGIN 181 // from:
  SAY #40044 /* ~I'm sorry, <CHARNAME>... it's... it's my right to do as I wish with the land, and I trust you. She'll get over it. ~ */
  IF ~~ THEN EXTERN ~KPDOMO01~ 20
END

IF ~~ THEN BEGIN 182 // from:
  SAY #40111 /* ~I don't think it's a major problem, <CHARNAME>... just don't do it too often, is all I would suggest.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 183 // from:
  SAY #40112 /* ~This will not please the citizens, <CHARNAME>. You should be careful about taxing them too much!~ */
  IF ~~ THEN EXTERN ~KPDOMO01~ 29
END

IF ~~ THEN BEGIN 184 // from:
  SAY #40113 /* ~I've heard that the people are quite upset. I wouldn't tax them any more, <CHARNAME>... you don't want them to revolt, do you? Father always treated them fairly.~ */
  IF ~~ THEN EXTERN ~KPDOMO01~ 29
END

IF ~~ THEN BEGIN 185 // from:
  SAY #40114 /* ~You can't tax them any more! The people are near revolt already, and well they should, considering what you've been doing here!~ */
  IF ~~ THEN EXTERN ~KPDOMO01~ 29
END

IF ~  !Dead("Torgal")
Global("NaliaRaised","GLOBAL",2)
~ THEN BEGIN 186 // from:
  SAY #40116 /* ~Wha... what happened...? I remember getting hurt and... and then I fell over... where...?~ */
  IF ~~ THEN GOTO 188
END

IF ~  Dead("Torgal")
Global("TalkedDaleson","GLOBAL",1)
Global("NaliaRaised","GLOBAL",2)
~ THEN BEGIN 187 // from:
  SAY #40117 /* ~*cough* Wha... what happened...? I remember getting hurt and... and then I fell over... where...?~ */
  IF ~~ THEN GOTO 190
END

IF ~~ THEN BEGIN 188 // from: 186.0
  SAY #40118 /* ~I... I was dead... wasn't I? That was definitely not a pleasant experience. Was I gone long?~ */
  IF ~~ THEN REPLY #40119 /* ~You are back now, and that's all that matters.~ */ GOTO 189
  IF ~~ THEN REPLY #40120 /* ~Yes, yes, very traumatic. Can we get moving now?~ */ GOTO 189
END

IF ~~ THEN BEGIN 189 // from: 188.1 188.0
  SAY #40121 /* ~What... what of my home? Are the invaders driven from my family's keep yet? Please, we must go there with all haste if the threat remains.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 190 // from: 187.0
  SAY #40122 /* ~I... I was dead... wasn't I? That was definitely not a pleasant experience. Was I gone long?~ */
  IF ~~ THEN REPLY #40123 /* ~You are back now, and that's all that matters.~ */ GOTO 191
  IF ~~ THEN REPLY #40124 /* ~Yes, yes, very traumatic. Can we get moving now?~ */ GOTO 191
END

IF ~~ THEN BEGIN 191 // from: 190.1 190.0
  SAY #40125 /* ~What... what about my family's home...? My memory is fuzzy. What happened? Were the invaders routed?~ */
  IF ~  OR(8)
Class(Player1,FIGHTER)
Class(Player1,FIGHTER_MAGE)
Class(Player1,FIGHTER_CLERIC)
Class(Player1,FIGHTER_THIEF)
Class(Player1,FIGHTER_MAGE_THIEF)
Class(Player1,FIGHTER_DRUID)
Class(Player1,FIGHTER_MAGE_CLERIC)
Kit(Player1,Blackguard)
~ THEN REPLY #40126 /* ~That has all been taken care of. Your home is free. Your father... is dead though.~ */ DO ~EraseJournalEntry(5083)
EraseJournalEntry(5825)
EraseJournalEntry(6549)
EraseJournalEntry(6576)
EraseJournalEntry(7025)
EraseJournalEntry(7079)
EraseJournalEntry(7262)
EraseJournalEntry(9920)
EraseJournalEntry(10073)
EraseJournalEntry(10074)
EraseJournalEntry(11648)
EraseJournalEntry(16002)
EraseJournalEntry(16336)
EraseJournalEntry(16354)
EraseJournalEntry(16542)
EraseJournalEntry(20986)
EraseJournalEntry(23395)
EraseJournalEntry(23489)
EraseJournalEntry(23491)
EraseJournalEntry(40131)
EraseJournalEntry(42371)
~ SOLVED_JOURNAL #10101 /* ~The de'Arnise keep has been cleared

After a difficult battle, the keep of Nalia's family has finally been cleared of its troll invaders. Unfortunately, Lord de'Arnise could not be rescued and had been killed by the troll leader, TorGal. Nalia, however, remains alive... although her future in her own keep seems anything less than certain.~ */ GOTO 53
  IF ~  OR(8)
Class(Player1,FIGHTER)
Class(Player1,FIGHTER_MAGE)
Class(Player1,FIGHTER_CLERIC)
Class(Player1,FIGHTER_THIEF)
Class(Player1,FIGHTER_MAGE_THIEF)
Class(Player1,FIGHTER_DRUID)
Class(Player1,FIGHTER_MAGE_CLERIC)
Kit(Player1,Blackguard)
~ THEN REPLY #40127 /* ~Old news. Your home is free, but your father is dead. Tough break.~ */ DO ~EraseJournalEntry(5083)
EraseJournalEntry(5825)
EraseJournalEntry(6549)
EraseJournalEntry(6576)
EraseJournalEntry(7025)
EraseJournalEntry(7079)
EraseJournalEntry(7262)
EraseJournalEntry(9920)
EraseJournalEntry(10073)
EraseJournalEntry(10074)
EraseJournalEntry(11648)
EraseJournalEntry(16002)
EraseJournalEntry(16336)
EraseJournalEntry(16354)
EraseJournalEntry(16542)
EraseJournalEntry(20986)
EraseJournalEntry(23395)
EraseJournalEntry(23489)
EraseJournalEntry(23491)
EraseJournalEntry(40131)
EraseJournalEntry(42371)
~ SOLVED_JOURNAL #10101 /* ~The de'Arnise keep has been cleared

After a difficult battle, the keep of Nalia's family has finally been cleared of its troll invaders. Unfortunately, Lord de'Arnise could not be rescued and had been killed by the troll leader, TorGal. Nalia, however, remains alive... although her future in her own keep seems anything less than certain.~ */ GOTO 53
  IF ~  !Kit(Player1,Blackguard)
!Class(Player1,FIGHTER)
!Class(Player1,FIGHTER_MAGE)
!Class(Player1,FIGHTER_CLERIC)
!Class(Player1,FIGHTER_THIEF)
!Class(Player1,FIGHTER_MAGE_THIEF)
!Class(Player1,FIGHTER_DRUID)
!Class(Player1,FIGHTER_MAGE_CLERIC)
~ THEN REPLY #40133 /* ~That has all been taken care of. Your home is free. Your father... is dead though.~ */ DO ~EraseJournalEntry(5083)
EraseJournalEntry(5825)
EraseJournalEntry(6549)
EraseJournalEntry(6576)
EraseJournalEntry(7025)
EraseJournalEntry(7079)
EraseJournalEntry(7262)
EraseJournalEntry(9920)
EraseJournalEntry(10073)
EraseJournalEntry(10074)
EraseJournalEntry(11648)
EraseJournalEntry(16002)
EraseJournalEntry(16336)
EraseJournalEntry(16354)
EraseJournalEntry(16542)
EraseJournalEntry(20986)
EraseJournalEntry(23395)
EraseJournalEntry(23489)
EraseJournalEntry(23491)
EraseJournalEntry(40131)
EraseJournalEntry(42371)
~ SOLVED_JOURNAL #10101 /* ~The de'Arnise keep has been cleared

After a difficult battle, the keep of Nalia's family has finally been cleared of its troll invaders. Unfortunately, Lord de'Arnise could not be rescued and had been killed by the troll leader, TorGal. Nalia, however, remains alive... although her future in her own keep seems anything less than certain.~ */ GOTO 148
  IF ~  !Kit(Player1,Blackguard)
!Class(Player1,FIGHTER)
!Class(Player1,FIGHTER_MAGE)
!Class(Player1,FIGHTER_CLERIC)
!Class(Player1,FIGHTER_THIEF)
!Class(Player1,FIGHTER_MAGE_THIEF)
!Class(Player1,FIGHTER_DRUID)
!Class(Player1,FIGHTER_MAGE_CLERIC)
~ THEN REPLY #40134 /* ~Old news. Your home is free, but your father is dead. Tough break.~ */ DO ~EraseJournalEntry(5083)
EraseJournalEntry(5825)
EraseJournalEntry(6549)
EraseJournalEntry(6576)
EraseJournalEntry(7025)
EraseJournalEntry(7079)
EraseJournalEntry(7262)
EraseJournalEntry(9920)
EraseJournalEntry(10073)
EraseJournalEntry(10074)
EraseJournalEntry(11648)
EraseJournalEntry(16002)
EraseJournalEntry(16336)
EraseJournalEntry(16354)
EraseJournalEntry(16542)
EraseJournalEntry(20986)
EraseJournalEntry(23395)
EraseJournalEntry(23489)
EraseJournalEntry(23491)
EraseJournalEntry(40131)
EraseJournalEntry(42371)
~ SOLVED_JOURNAL #10101 /* ~The de'Arnise keep has been cleared

After a difficult battle, the keep of Nalia's family has finally been cleared of its troll invaders. Unfortunately, Lord de'Arnise could not be rescued and had been killed by the troll leader, TorGal. Nalia, however, remains alive... although her future in her own keep seems anything less than certain.~ */ GOTO 148
END

IF ~  GlobalGT("KPRevolt","GLOBAL",9)
~ THEN BEGIN 192 // from:
  SAY #40187 /* ~I... I won't stand for this! This is far worse than if the Roenalls had taken over the keep! I won't let you take my family's land and run it into the ground!~ [NALIA79] */
  IF ~~ THEN DO ~ChangeAIScript("",DEFAULT)
LeaveParty()
EscapeArea()
~ EXIT
END

IF ~  Global("KilledKeepServants","GLOBAL",1)
~ THEN BEGIN 193 // from:
  SAY #40188 /* ~You can't just kill someone! You think you have that right because you run the keep?! What kind of monster ARE you?! Well... I won't stand for it!~ [NALIA80] */
  IF ~~ THEN DO ~SetGlobal("KilledKeepServants","GLOBAL",2)
LeaveParty()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 194 // from:
  SAY #40201 /* ~Thank you, Daleson. Now get out of here. I don't want you getting hurt.~ */
  IF ~~ THEN EXTERN ~DALESON~ 42
END

IF ~~ THEN BEGIN 195 // from:
  SAY #40210 /* ~I've never seen it used. He never said why he didn't wield it more often. We should seek it out if he didn't have it with him. He was taken to the "cellars" then?~ */
  IF ~~ THEN EXTERN ~DALESON~ 44
END

IF ~~ THEN BEGIN 196 // from:
  SAY #40447 /* ~No! <CHARNAME>, you can't let him do this! You can't just give him my father's keep! Please!~ */
  IF ~~ THEN REPLY #40448 /* ~I'm not going to fight a war over this, Nalia. Forget it.~ */ GOTO 197
  IF ~~ THEN REPLY #40449 /* ~I suppose you're right... I suppose the answer will just have to be no, Lord Roenall. Too bad for you.~ */ EXTERN ~KPROEN01~ 3
END

IF ~~ THEN BEGIN 197 // from: 196.0
  SAY #40451 /* ~I... I suppose my faith in you was misplaced then. Well... I'm not going to stick around and watch this happen! Thank you for nothing, <CHARNAME>!~ */
  IF ~~ THEN DO ~LeaveParty()
EscapeArea()
~ EXTERN ~KPROEN01~ 4
END

IF ~~ THEN BEGIN 198 // from:
  SAY #40651 /* ~That... that bastard! He can't trick us out of it, so he's going to do it by force?! And the council won't do anything if he's already conquered it!~ */
  IF ~~ THEN EXTERN ~KPDOMO01~ 116
END

IF ~~ THEN BEGIN 199 // from:
  SAY #40682 /* ~This is what I want, and I've told them all, <CHARNAME>. I wouldn't have a castle at all if it weren't for you. It's my home... but it's your right to rule here.~ */
  IF ~~ THEN EXTERN ~KPDOMO01~ 119
END

IF ~  Global("NaliaAR1302","LOCALS",0)
Global("TalkedDaleson","GLOBAL",0)
AreaCheck("AR1302")
~ THEN BEGIN 200 // from:
  SAY #40851 /* ~*sigh* We've made it in. We should find Daleson first, if he's still alive, and then make our way to the courtyard and open the drawbridge.~ [NALIA81] */
  IF ~~ THEN DO ~SetGlobal("NaliaAR1302","LOCALS",1)
~ EXIT
END

IF ~  Global("NaliaAR1303","LOCALS",0)
AreaCheck("AR1303")
~ THEN BEGIN 201 // from:
  SAY #40853 /* ~We'll have to find my aunt's bedroom. There's a secret passage within that leads to the cellar entrance. Down there is probably where the leader is.~ [NALIA82] */
  IF ~~ THEN DO ~SetGlobal("NaliaAR1303","LOCALS",1)
~ UNSOLVED_JOURNAL #5083 /* ~The de'Arnise keep has been invaded

Nalia tells me that the way into the dungeon of the keep is through a secret passage in her aunt's bedroom on the second floor.~ */ EXIT
END

IF ~~ THEN BEGIN 202 // from: 174.1
  SAY #42680 /* ~The Roenalls have been waiting like vultures over a carcass. I wouldn't be surprised if they have their wagons loaded and ready to move in.~ */
  IF ~~ THEN GOTO 176
END

IF ~~ THEN BEGIN 203 // from:
  SAY #44112 /* ~He looks... odd. It is as though his will is not his own. Be careful, I don't think he's thinking for himself.~ */
  IF ~~ THEN EXTERN ~PPCOWLED~ 2
END

IF ~~ THEN BEGIN 204 // from: 112.0 111.0 110.0 109.0
  SAY #46102 /* ~This has been too much to take in. Let us get away from here and away from him. Lead on.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 205 // from:
  SAY #46161 /* ~He spoke well of you too, Lord Farthington.~ */
  IF ~~ THEN EXTERN ~FARTHIN~ 9
END

IF ~~ THEN BEGIN 206 // from:
  SAY #46171 /* ~I hope so. I'm sure quite a few of his business partners could do without seeing me.~ */
  IF ~~ THEN EXTERN ~FUMIN~ 1
END

IF ~~ THEN BEGIN 207 // from:
  SAY #46173 /* ~I will try, Minister Adelain. ~ */
  IF ~~ THEN EXTERN ~FUMIN~ 2
END

IF ~~ THEN BEGIN 208 // from:
  SAY #46181 /* ~Miss Tandolan? I'm not sure what you mean.~ */
  IF ~~ THEN EXTERN ~FULADY~ 2
END

IF ~~ THEN BEGIN 209 // from:
  SAY #46182 /* ~Oh, he has, has he? He talks far too much for my comfort, Miss Tandolan. If you would excuse me?~ */
  IF ~~ THEN EXTERN ~FULADY~ 3
END

IF ~~ THEN BEGIN 210 // from:
  SAY #46186 /* ~I would have hoped they could have made time.~ */
  IF ~~ THEN EXTERN ~FULORD~ 1
END

IF ~~ THEN BEGIN 211 // from:
  SAY #46188 /* ~Thank you for that, Lord Donderbeg.~ */
  IF ~~ THEN EXTERN ~FULORD~ 2
END

IF ~~ THEN BEGIN 212 // from:
  SAY #46190 /* ~You always were one of the more understanding of father's friends.~ */
  IF ~~ THEN EXTERN ~FULORD~ 3
END

IF ~~ THEN BEGIN 213 // from:
  SAY #46195 /* ~Bonchy? Is that you?~ */
  IF ~~ THEN EXTERN ~FUAGNON~ 1
END

IF ~~ THEN BEGIN 214 // from:
  SAY #46197 /* ~Don't be sorry. Father would love that you came. You scare the nobles something fierce.~ */
  IF ~~ THEN EXTERN ~FUAGNON~ 2
END

IF ~~ THEN BEGIN 215 // from:
  SAY #46199 /* ~Bonchy!~ */
  IF ~~ THEN EXTERN ~FUAGNON~ 3
END

IF ~~ THEN BEGIN 216 // from:
  SAY #46201 /* ~Thanks, Bonchy. You've made me smile.~ */
  IF ~~ THEN EXTERN ~FUAGNON~ 4
END

IF ~~ THEN BEGIN 217 // from:
  SAY #46203 /* ~If you must, Bonchy. Safe travels.~ */
  IF ~~ THEN EXTERN ~FUAGNON~ 5
END

IF ~~ THEN BEGIN 218 // from:
  SAY #46236 /* ~I made my opinion of you quite clear, Isaea. I will not change my mind now.~ [NALIA91] */
  IF ~~ THEN EXTERN ~ISAEA~ 22
END

IF ~~ THEN BEGIN 219 // from:
  SAY #46238 /* ~What?!~ */
  IF ~~ THEN EXTERN ~ISAEA~ 23
END

IF ~~ THEN BEGIN 220 // from:
  SAY #46240 /* ~Who are you to decide that?! By what right?!~ */
  IF ~~ THEN EXTERN ~ISAEA~ 24
END

IF ~~ THEN BEGIN 221 // from:
  SAY #46243 /* ~This is madness! <CHARNAME> will stop you!~ */
  IF ~~ THEN EXTERN ~ISAEA~ 26
END

IF ~~ THEN BEGIN 222 // from: 318.0
  SAY #47200 /* ~Trolls are dangerous enough... I have heard they are permanently killed only by fire or acid. I don't know a thing about the other creatures. ~ */
  IF ~~ THEN GOTO 1
END

IF ~  Dead("Torgal")
Global("TorgalDies","LOCALS",0)
~ THEN BEGIN 223 // from:
  SAY #47533 /* ~Dead! Die, you beast! I will clear this place of any taint you left behind! ...I will... I will...~ [NALIA83] */
  IF ~~ THEN DO ~SetGlobal("TorgalDies","LOCALS",1)
~ GOTO 224
END

IF ~~ THEN BEGIN 224 // from: 223.0
  SAY #47534 /* ~Let's get out of here. I don't want to see my home in this state. We have done what we can...~ */
  IF ~~ THEN GOTO 225
END

IF ~~ THEN BEGIN 225 // from: 224.0
  SAY #47535 /* ~I must think... I will speak more when we have left this place...~ */
  IF ~~ THEN UNSOLVED_JOURNAL #7025 /* ~The de'Arnise keep has been invaded

TorGal is dead, and any remaining trolls and yuan-ti will soon flee without a leader. It is time to leave and restore things here to normal.~ */ EXIT
END

IF ~~ THEN BEGIN 226 // from:
  SAY #48461 /* ~That is a wonderful thing you did, <CHARNAME>. A lesser <PRO_MANWOMAN> would have just let those children free to wander the streets, hungry and penniless.~ */
  IF ~  !IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Korgan")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 38
  IF ~  !IsValidForPartyDialogue("Yoshimo")
IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 57
END

IF ~~ THEN BEGIN 227 // from:
  SAY #48467 /* ~That's a horrible thing to say! I am sure we have enough gold that we can spare a little... It makes a huge difference to them, and your share won't be any the less!~ */
  IF ~~ THEN EXTERN ~KORGANJ~ 58
END

IF ~~ THEN BEGIN 228 // from:
  SAY #48468 /* ~You are such a horrid beast, Korgan!~ */
  IF ~~ THEN EXTERN ~KORGANJ~ 59
END

IF ~~ THEN BEGIN 229 // from:
  SAY #48502 /* ~Hmph. Easy for you to say, <CHARNAME>. He isn't staring at your rear end all day while we march.~ */
  IF ~~ THEN EXTERN ~KORGANJ~ 65
END

IF ~~ THEN BEGIN 230 // from:
  SAY #48514 /* ~Well... he's free now, at least. I wonder how long he's been down here... in the sewers. What an awful thing to have happen to you!~ */
  IF ~~ THEN DO ~ActionOverride("quallo",EscapeArea())
~ EXIT
END

IF ~~ THEN BEGIN 231 // from:
  SAY #48533 /* ~I... I don't know, Jaheira, I've heard about this Lord Jierdan. He's brutal; it's not like him to be so protective of his people. I don't like the sound of this.~ */
  IF ~  !IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 70
  IF ~  !IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 182
END

IF ~~ THEN BEGIN 232 // from:
  SAY #48581 /* ~Now I remember why I had heard of him! He became wealthy and powerful too quickly to be legitimate. I wonder why he's turned his attention to us?~ */
  IF ~~ THEN EXTERN ~GARREN~ 19
END

IF ~~ THEN BEGIN 233 // from:
  SAY #48604 /* ~I feel dirty, <CHARNAME>. I didn't realize journeying with you would involve such grim activities. Let's... let's avoid this kind of thing in the future, okay?~ */
  IF ~~ THEN EXIT
  IF ~  Dead("valygar")
IsValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 99
END

IF ~~ THEN BEGIN 234 // from:
  SAY #48612 /* ~They... they want to use you to get into the sphere. I knew those Cowled Wizards couldn't be trusted! But... they'll hold us to our word, won't they?~ */
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~VALYGAR~ 9
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 109
  IF ~  !IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 127
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 100
END

IF ~~ THEN BEGIN 235 // from:
  SAY #48637 /* ~Well, I don't understand... why wouldn't he want us to actually go and cure his mother? Then he wouldn't have to stand out here and beg, right?~ */
  IF ~  !IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Viconia")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 47
  IF ~  !IsValidForPartyDialogue("Yoshimo")
IsValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 45
  IF ~  !IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 42
END

IF ~~ THEN BEGIN 236 // from:
  SAY #48655 /* ~Did... did you see that?! He took our gold anyway! How rude!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 237 // from:
  SAY #48659 /* ~Rooftops! I would slide along the odd wall, but never had the will to go higher.~ */
  IF ~~ THEN EXTERN ~ARNMAN03~ 15
END

IF ~~ THEN BEGIN 238 // from:
  SAY #48661 /* ~Er, no, thank you.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 239 // from:
  SAY #48677 /* ~No doubt you thought them cheaper than hiring regular poor folk. You disgust me. I almost wish the ogres had finished the job.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 240 // from:
  SAY #48707 /* ~Hmph. I used to love reading at the castle; it's what got me interested in magic. I can't imagine knowledge being destroyed... it just seems so wrong!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 241 // from:
  SAY #48818 /* ~Yes. And you're still an arrogant, cheap, petty aristocrat, are you? Stick it up your ear, my "lord."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 242 // from:
  SAY #48829 /* ~I recall Aunty mentioning that when last you two met, you spilled tea on her dress on purpose, and I find your asking after her now rather insulting. Excuse me.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 243 // from:
  SAY #48885 /* ~Well... maybe we should just try looking for this gong, <CHARNAME>. How long could it take? I don't want to see anyone get hurt over it if we can do something.~ */
  IF ~~ THEN EXTERN ~LOUTCAPT~ 19
END

IF ~~ THEN BEGIN 244 // from:
  SAY #48950 /* ~It sounds like the work of a very sadistic person. We should look into this, <CHARNAME>... perhaps we could find clues where others could not.~ */
  IF ~  !IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~INSPECT~ 14
  IF ~  IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 375
END

IF ~~ THEN BEGIN 245 // from:
  SAY #48954 /* ~<CHARNAME>! How could you turn your back on the less fortunate? They deserve our help. ~ */
  IF ~~ THEN EXIT
END

IF ~  AreaCheck("AR0502")
Global("EnteredTanner2","AR0502",0)
~ THEN BEGIN 246 // from:
  SAY #48981 /* ~This place is... is terrible! What sort of, of "work" is this man up to?! Are... are those bodies?! Pfaugh! The st-stench!~ */
  IF ~~ THEN DO ~SetGlobal("EnteredTanner2","AR0502",1)
~ EXIT
END

IF ~  PartyHasItem("misc5m")
OR(3)
!InParty("Keldorn")
Dead("Keldorn")
!StateCheck("Keldorn",STATE_SLEEPING)
OR(3)
!InParty("Anomen")
Dead("Anomen")
!StateCheck("Anomen",STATE_SLEEPING)
OR(3)
!InParty("Yoshimo")
Dead("Yoshimo")
!StateCheck("Yoshimo",STATE_SLEEPING)
See(Player1)
Global("FoundAegis","GLOBAL",0)
~ THEN BEGIN 247 // from:
  SAY #48988 /* ~We're... we're partly responsible for this. We sent him here, <CHARNAME>. We should... turn him over to someone, maybe in the Government District, I don't know.~ */
  IF ~~ THEN DO ~SetGlobal("FoundAegis","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 248 // from: 0.3
  SAY #49213 /* ~Please! I have no additional gold! Everything that I own is in the keep. I'm sure that you will be able to find enough to satisfy yourself.~ */
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Minsc")
~ THEN REPLY #49214 /* ~Then tell me just what we are up against. I must know what I am facing.~ */ GOTO 149
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Minsc")
~ THEN REPLY #49215 /* ~That isn't good enough. You'll have to get someone else to help.~ */ GOTO 269
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 184
  IF ~  !IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 127
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 150
END

IF ~~ THEN BEGIN 249 // from:
  SAY #49260 /* ~I... think I may have heard of him, <CHARNAME>. In passing. He's supposed to have lots of connections... but I don't know much beyond that.~ */
  IF ~~ THEN EXTERN ~GAELAN~ 8
END

IF ~~ THEN BEGIN 250 // from:
  SAY #49381 /* ~He... he wants us to steal from a temple? Even from Talos, it still creeps me out. Just... just how far will we sink to rescue your friend, <CHARNAME>?~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 251 // from:
  SAY #49509 /* ~After all those tasks... and you're turning on your own master? It's not that I think Mae'Var isn't deserving or anything, it's just... you are a very evil man.~ */
  IF ~~ THEN EXTERN ~EDWIN~ 27
END

IF ~~ THEN BEGIN 252 // from:
  SAY #49551 /* ~Especially not with that war we've heard about, right? I bet you wouldn't go to outsiders unless the other guild was threatening you pretty badly.~ */
  IF ~~ THEN EXTERN ~RENAL~ 58
END

IF ~~ THEN BEGIN 253 // from:
  SAY #49588 /* ~We can't just leave him. Well, we should at least find who he's talking about or... or find him some help? Please, <CHARNAME>? We can't just let someone die...~ */
  IF ~  !IsValidForPartyDialogue("Keldorn")
~ THEN DO ~SetGlobalTimer("RenfeldDeath","LOCALS",TWO_DAYS)
~ EXIT
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 150
END

IF ~~ THEN BEGIN 254 // from:
  SAY #49815 /* ~Well, this isn't too bad. The way all my hairs are standing up, I would have expected us to be sent to do something much worse. Let's just... get this over with.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 255 // from:
  SAY #49854 /* ~So this is what we've been aiming for all along? Unbelievable! How... how are we supposed to do this? The Shadowmaster has a horde of assassins at his call!~ */
  IF ~~ THEN EXTERN ~BODHI~ 73
END

IF ~~ THEN BEGIN 256 // from:
  SAY #49869 /* ~Buried alive...? I... I almost can't think of anything more horrible. And all of this just for some money. Pfaugh!~ */
  IF ~~ THEN EXTERN ~TIRDIR~ 3
END

IF ~~ THEN BEGIN 257 // from:
  SAY #50050 /* ~You want us to go into the sewers... for the temple of Talos? Well... I guess if it'll stop people from mutilating themselves, I'm willing to help.~ */
  IF ~  !IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Jaheira")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 236
  IF ~  !IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 71
  IF ~  !IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Viconia")
IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 424
END

IF ~~ THEN BEGIN 258 // from:
  SAY #50088 /* ~Be careful, <CHARNAME>. If a beholder needs help, there's got to be a reason, a dangerous reason, and I doubt we should place any trust in this priest.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 259 // from:
  SAY #50165 /* ~Well, just ignore your stupid petitions, then. By the time you people would get around to doing anything, my keep would have fallen to dust from age.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 260 // from:
  SAY #50189 /* ~That's fine for those with gold, but what about the poor? They suffer because they can't fill the pockets of someone already getting paid to do a job? It's unfair!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 261 // from:
  SAY #50213 /* ~No, he wasn't! He's just an innocent, poor man trying to survive!~ */
  IF ~  Global("Gavegbegg","AR1000",0)
~ THEN GOTO 262
  IF ~  Global("Gavegbegg","AR1000",1)
~ THEN EXTERN ~GGUARD01~ 4
END

IF ~~ THEN BEGIN 262 // from: 261.0
  SAY #50217 /* ~You see this? I'm giving him these coins as a gift, not because he's begging. You've got more important things to do than bother this poor man, I'm sure!~ */
  IF ~~ THEN DO ~ActionOverride("Gbegg01",TakePartyGold(5))
~ EXTERN ~GGUARD01~ 4
END

IF ~~ THEN BEGIN 263 // from:
  SAY #50353 /* ~See Filbert again? *sigh* We had one luncheon together, and he liked your attempts to mash us together even less than I. Besides that, he stepped on my toes.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 264 // from:
  SAY #50452 /* ~Nothing you say bothers me, Oriana. I could roll in cow dung all day long and still come out cleaner than a petty upper-class whore.~ */
  IF ~~ THEN EXTERN ~ORIONA~ 10
END

IF ~~ THEN BEGIN 265 // from:
  SAY #50536 /* ~I... I've heard of drow, but has this one done anything criminal? They just want to burn her because she is drow. <CHARNAME>, this isn't right! Do something!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 266 // from:
  SAY #52284 /* ~That's... how they train the thieves here? I'm glad I never went this route. How horrible, to be considered so completely irrelevant by your mentors...~ */
  IF ~  !IsValidForPartyDialogue("Yoshimo")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 88
END

IF ~~ THEN BEGIN 267 // from:
  SAY #55201 /* ~After all that we went through and this is our victory? He's just dead, and that's all there was to it? Huh... dead. Just like anyone else. It seems so weird.~ */
  IF ~~ THEN EXTERN ~PLAYER1~ 17
END

IF ~~ THEN BEGIN 268 // from:
  SAY #55226 /* ~This is s-some kind of plane we're on? I—ugh, I feel so strange. We died, didn't we? There was all that pain, and then a pulling, like... like being drawn into a whirlpool...~ [NALIA85] */
  IF ~  !IsValidForPartyDialogue("Edwin")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 95
  IF ~  IsValidForPartyDialogue("LCCORWIN")
!Global("CorwinHell","GLOBAL",1)
~ THEN DO ~SetGlobal("CorwinHell","GLOBAL",1)
~ EXTERN ~LCCORWIJ~ 30
END

IF ~~ THEN BEGIN 269 // from: 248.1 1.2
  SAY #55234 /* ~Please! There is no one else! Think of my family! Think of the servants and their families! The servants! The trolls may not have killed all the servants...~ */
  IF ~~ THEN GOTO 270
END

IF ~~ THEN BEGIN 270 // from: 269.0
  SAY #55235 /* ~The guards may be dead, but the servants will have seen the attack and will know how many invaders there are. Please, if you stay, we may have a chance.~ */
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 271 // from:
  SAY #55302 /* ~Really? You'd have to go on guarding an empty chest? Why? What could possibly be the point? Even a mad drow would have to see *that*.~ */
  IF ~~ THEN EXTERN ~SAHBEH01~ 39
END

IF ~~ THEN BEGIN 272 // from:
  SAY #55663 /* ~Delightful company? This ship is filthy, falling apart, and your crew has been nothing less than boorish. Ick... I've never felt so in need of a good bath!~ */
  IF ~  !IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Korgan")
Global("ThiefGroup","GLOBAL",2)
~ THEN EXTERN ~PPBODHI3~ 12
  IF ~  !IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Korgan")
Global("ThiefGroup","GLOBAL",1)
~ THEN EXTERN ~PPSIME~ 1
  IF ~  IsValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 150
  IF ~  !IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 92
  IF ~  !IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Yoshimo")
IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 117
END

IF ~~ THEN BEGIN 273 // from:
  SAY #55708 /* ~Claire deserves a better life, as did all of Galvena's courtesans, but we originally got involved to find a way into the asylum... Sanik was killed before he could say.~ */
  IF ~~ THEN EXTERN ~PIRMUR09~ 0
END

IF ~~ THEN BEGIN 274 // from:
  SAY #55713 /* ~Poor man. It must be hard to be reduced to madness after spending a life treating it in others. I assume this place was for treatment and not just confinement?~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 275 // from:
  SAY #55721 /* ~You... you leave him alone. No telling what the poor man has been through.~ */
  IF ~~ THEN EXTERN ~KORGANJ~ 124
END

IF ~~ THEN BEGIN 276 // from:
  SAY #55757 /* ~Your conversion is awfully convenient, pirate. What do you know of Irenicus's plans? He was quite tight-lipped about them, as far as I can see.~ */
  IF ~~ THEN EXTERN ~PPSAEM2~ 22
END

IF ~~ THEN BEGIN 277 // from:
  SAY #55764 /* ~Well, that's putting it a bit mildly. Why don't we just offer him all of Faerûn between two pieces of bread and call it even?~ */
  IF ~~ THEN EXTERN ~PPSAEM2~ 12
END

IF ~~ THEN BEGIN 278 // from:
  SAY #55827 /* ~Ugh. I never cared much for fish before now, but this smell... ugh, it's like something died...~ */
  IF ~~ THEN EXTERN ~SAHBAR03~ 0
END

IF ~~ THEN BEGIN 279 // from:
  SAY #55850 /* ~I... I don't know how much we want to trust this creature, <CHARNAME>. I suspect he'd have us as an appetizer just because we'd look good with the main course.~ */
  IF ~~ THEN EXTERN ~SAHKNG01~ 37
END

IF ~~ THEN BEGIN 280 // from:
  SAY #55912 /* ~Wh-what are you doing, <CHARNAME>?! You... you're bringing the wrath of the dragon down upon us? And for what?! No... no, I won't stick around for this, I won't!~ */
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Mazzy")
OR(2)
!IsValidForPartyDialogue("Anomen")
!Alignment("Anomen",LAWFUL_GOOD)
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
~ THEN DO ~LeaveParty()
EscapeArea()
~ EXTERN ~UDDEMON~ 8
  IF ~  IsValidForPartyDialogue("Cernd")
~ THEN DO ~LeaveParty()
EscapeArea()
~ EXTERN ~CERNDJ~ 111
  IF ~  !IsValidForPartyDialogue("Cernd")
IsValidForPartyDialogue("Aerie")
~ THEN DO ~LeaveParty()
EscapeArea()
~ EXTERN ~AERIEJ~ 149
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Aerie")
IsValidForPartyDialogue("Keldorn")
~ THEN DO ~LeaveParty()
EscapeArea()
~ EXTERN ~KELDORJ~ 201
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Valygar")
~ THEN DO ~LeaveParty()
EscapeArea()
~ EXTERN ~VALYGARJ~ 85
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("Mazzy")
~ THEN DO ~LeaveParty()
EscapeArea()
~ EXTERN ~MAZZYJ~ 175
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("Anomen")
Alignment("Anomen",LAWFUL_GOOD)
~ THEN DO ~LeaveParty()
EscapeArea()
~ EXTERN ~ANOMENJ~ 271
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Mazzy")
OR(2)
!IsValidForPartyDialogue("Anomen")
!Alignment("Anomen",LAWFUL_GOOD)
IsValidForPartyDialogue("Jaheira")
~ THEN DO ~LeaveParty()
EscapeArea()
~ EXTERN ~JAHEIRAJ~ 470
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Mazzy")
OR(2)
!IsValidForPartyDialogue("Anomen")
!Alignment("Anomen",LAWFUL_GOOD)
!IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Minsc")
~ THEN DO ~LeaveParty()
EscapeArea()
~ EXTERN ~MINSCJ~ 170
END

IF ~~ THEN BEGIN 281 // from:
  SAY #55960 /* ~I hate that attitude in nobles when they speak of the poor. Your stereotyping of all mages is just a different shade of the same thing.~ */
  IF ~~ THEN EXTERN ~VALYGARJ~ 88
END

IF ~~ THEN BEGIN 282 // from:
  SAY #56005 /* ~I assure you that we will be no trouble to you.~ */
  IF ~  !IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("CERND")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("HAERDALIS")
~ THEN EXTERN ~HAERDAJ~ 117
  IF ~  !IsValidForPartyDialogue("HAERDALIS")
IsValidForPartyDialogue("CERND")
~ THEN EXTERN ~CERNDJ~ 113
END

IF ~~ THEN BEGIN 283 // from:
  SAY #56011 /* ~I'm hoping for the best, however unlikely.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 284 // from:
  SAY #56031 /* ~Yet you took all our gold and hired him... and didn't even tell us what a scoundrel he was! You even made us work for you for the privilege!~ */
  IF ~~ THEN EXTERN ~ARAN~ 78
END

IF ~~ THEN BEGIN 285 // from:
  SAY #56075 /* ~Haer'Dalis! What has gotten into you?~ */
  IF ~~ THEN EXTERN ~HAERDAJ~ 121
END

IF ~~ THEN BEGIN 286 // from:
  SAY #56096 /* ~I find it sickening. These drow hold such power over everyone.~ */
  IF ~~ THEN EXTERN ~EDWINJ~ 125
END

IF ~~ THEN BEGIN 287 // from:
  SAY #56100 /* ~We came all the way to Hell to stop you, Irenicus, and we will! <CHARNAME> is our friend, and <PRO_HESHE> is going to live!~ [NALIA84] */
  IF ~  !IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
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
  IF ~  IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 150
  IF ~  !IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 276
  IF ~  !IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 214
  IF ~  !IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 159
  IF ~  !IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 123
  IF ~  !IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 159
  IF ~  !IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 126
  IF ~  !IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
IsValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 168
  IF ~  !IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 180
  IF ~  !IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 90
  IF ~  !IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 482
  IF ~  !IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
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
  IF ~  !IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
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

IF ~~ THEN BEGIN 288 // from:
  SAY #56161 /* ~I have... never been treated to the sight of such a creature... you are beautiful.~ */
  IF ~~ THEN EXTERN ~UDSILVER~ 58
END

IF ~~ THEN BEGIN 289 // from:
  SAY #56408 /* ~That can't be possible, can it? An entire city, especially one as ancient as yours must be, cannot simply vanish.~ */
  IF ~~ THEN EXTERN ~C6ELHAN2~ 29
END

IF ~~ THEN BEGIN 290 // from:
  SAY #56436 /* ~Why demand money up front? I thought we were here to help these people, not browbeat them like thugs. If this is how you operate, I'm not very interested.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 291 // from:
  SAY #56441 /* ~I don't know much about this Umar, but it sounds like some kind of evil magic. Perhaps this ogre is a powerful mage? It's a possibility we shouldn't ignore.~ */
  IF ~  !IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~UHMAY01~ 19
  IF ~  IsValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 171
  IF ~  !IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 170
  IF ~  !IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Aerie")
IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 228
END

IF ~~ THEN BEGIN 292 // from:
  SAY #56449 /* ~This... this man... has been rendered mindless by some kind of spell. I have no idea if... if dispelling would even work. A... a terrible state to be in, I would think.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 293 // from:
  SAY #56494 /* ~Oh, good! For a moment there, I thought this was a legitimate effort being put forth. We don't get many playhouses here, and I was beginning to see why!~ */
  IF ~~ THEN EXTERN ~RAELIS~ 34
END

IF ~~ THEN BEGIN 294 // from:
  SAY #56503 /* ~I... I know of Lady Jysstev. How she would be involved is beyond me... I've always thought of her as proper and stuck up. This could be interesting.~ */
  IF ~  !IsValidForPartyDialogue("Anomen")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 286
END

IF ~~ THEN BEGIN 295 // from: 6.0
  SAY #56699 /* ~Perhaps a strategic course would be better. There is a secret door in the castle wall north of the palisade. I... I used it often so I could aid others unseen.~ */
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 296 // from: 39.0
  SAY #56700 /* ~Get to safety, Daleson, and prepare those that are left for a return to duties. This place will require a good scrubbing when we are through.~ */
  IF ~~ THEN EXTERN ~DALESON~ 27
END

IF ~~ THEN BEGIN 297 // from: 43.0
  SAY #56701 /* ~The servants themselves might also be concerned. Would they appreciate the burden of management? It might be worth an attempt, but it would not be popular here.~ */
  IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 298 // from: 49.0
  SAY #56702 /* ~They were mercenary, but they came well recommended. Amn trained. Glaicus, however, was my father's friend. Maybe he was killed elsewhere in the castle.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 299 // from: 50.0
  SAY #56703 /* ~The guards were always a bit standoffish though. A bit unfriendly, with the exception of Glaicus, but they came well recommended. Amn trained, they were.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 300 // from: 52.0
  SAY #56704 /* ~If they are not here, the battles must have been quite the slaughter. But where are the bodies...? I expected to at least find that Glaicus had fought to the death...~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 301 // from: 67.0
  SAY #56705 /* ~I do not like the thought of being under the Roenalls when I have worked hard to gain what I have. I would rather they not get their hands on my father's holdings.~ */
  IF ~~ THEN GOTO 161
END

IF ~~ THEN BEGIN 302 // from:
  SAY #57156 /* ~Wait a second! You... you said the souls of your men were trapped in those gems! I thought we were rescuing them!~ */
  IF ~~ THEN EXTERN ~JARLAXLE~ 25
END

IF ~~ THEN BEGIN 303 // from:
  SAY #57398 /* ~Ummm... I suppose this is better than what the drow were going to do to them. Not by much, though, it couldn't be.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 304 // from:
  SAY #57661 /* ~Do you require a moment to rest? Do not hesitate to ask for a shoulder to lean on.~ */
  IF ~~ THEN REPLY #57662 /* ~I am fine. Save your efforts for those "poor people" you are so fond of coddling.~ */ GOTO 305
  IF ~~ THEN REPLY #57663 /* ~Your support is welcome, but I think I can manage. The feeling has passed.~ */ GOTO 306
  IF ~~ THEN REPLY #57664 /* ~I don't know. It was the strangest thing. I didn't feel like myself at all.~ */ GOTO 307
END

IF ~~ THEN BEGIN 305 // from: 304.0
  SAY #57665 /* ~Well, serves me right for asking. I'll reserve my talents for those that deserve my help. Hmph!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 306 // from: 304.1
  SAY #57666 /* ~Let me know if it continues. We should be extra gentle with you until we know the full extent of what that ritual did to you.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 307 // from: 304.2
  SAY #57667 /* ~I'll make sure I watch your back for the next little while. Who knows what that ritual did to you? I've never seen anything like it.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 308 // from:
  SAY #57724 /* ~<CHARNAME>, that cannot be good. I have never seen such...~ */
  IF ~~ THEN GOTO 309
END

IF ~~ THEN BEGIN 309 // from: 308.0
  SAY #57725 /* ~Aunty used to tell me stories of the gods, what she learned while in school in Calimshan. She would talk about many things that scared me, but nothing like this. ~ */
  IF ~~ THEN GOTO 310
END

IF ~~ THEN BEGIN 310 // from: 309.0
  SAY #57726 /* ~<CHARNAME>, I would be screaming in fear if I did not know you well. We must retrieve your soul before... before you lose yourself to this...~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 311 // from:
  SAY #58151 /* ~I suppose we have little choice, even though I have trouble trusting... these people. They do not seem forced into this kind of life at all.~ */
  IF ~  !IsValidForPartyDialogue("EDWIN")
!IsValidForPartyDialogue("HAERDALIS")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("EDWIN")
~ THEN EXTERN ~EDWINJ~ 156
  IF ~  IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("EDWIN")
~ THEN EXTERN ~HAERDAJ~ 146
END

IF ~~ THEN BEGIN 312 // from:
  SAY #58152 /* ~Shut up, Edwin. Your pompous tone disgusts me. ~ */
  IF ~~ THEN EXTERN ~EDWINJ~ 157
END

IF ~~ THEN BEGIN 313 // from:
  SAY #58155 /* ~Ugh! There's no talking to you!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 314 // from:
  SAY #58157 /* ~But there are so many that have no choice.~ */
  IF ~~ THEN EXTERN ~HAERDAJ~ 147
END

IF ~~ THEN BEGIN 315 // from:
  SAY #58160 /* ~I... I've come this far, haven't I? I refuse to let someone like Irenicus get his way. If he gets the power he wants, the suffering will only get worse. No... No, I'm ready to fight, <CHARNAME>.~ */
  IF ~  True()
~ THEN EXTERN ~PLAYER1~ 53
  IF ~  IsValidForPartyDialogue("Anomen")
Global("AnomenRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 52
  IF ~  IsValidForPartyDialogue("Aerie")
Global("AerieRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 51
  IF ~  IsValidForPartyDialogue("Viconia")
Global("ViconiaRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 50
  IF ~  IsValidForPartyDialogue("Jaheira")
Global("JaheiraRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 49
  IF ~  IsValidForPartyDialogue("Anomen")
!Global("AnomenRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 48
  IF ~  IsValidForPartyDialogue("Aerie")
!Global("AerieRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 47
  IF ~  IsValidForPartyDialogue("Viconia")
!Global("ViconiaRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 46
  IF ~  IsValidForPartyDialogue("Jaheira")
!Global("JaheiraRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 45
  IF ~  IsValidForPartyDialogue("Cernd")
~ THEN EXTERN ~PLAYER1~ 44
END

IF ~~ THEN BEGIN 316 // from:
  SAY #58522 /* ~I don't know, <CHARNAME>... this doesn't seem right. Tolgerias has obviously lied to us about Valygar. We aren't still working for him, are we?~ */
  IF ~  !IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~TOLGER~ 82
  IF ~  IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 189
END

IF ~~ THEN BEGIN 317 // from:
  SAY #58740 /* ~You act just like the nobles I tried to leave behind. They would cast aside their own fathers if it served their goals. I thought you better than that, Yoshimo.~ */
  IF ~  !IsValidForPartyDialogue("KELDORN")
!IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("EDWIN")
!IsValidForPartyDialogue("MAZZY")
!IsValidForPartyDialogue("JAN")
!IsValidForPartyDialogue("VALYGAR")
!IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("CERND")
!IsValidForPartyDialogue("MINSC")
~ THEN EXTERN ~YOSHJ~ 114
  IF ~  IsValidForPartyDialogue("KELDORN")
~ THEN EXTERN ~KELDORJ~ 250
  IF ~  IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("KELDORN")
~ THEN EXTERN ~KORGANJ~ 190
  IF ~  IsValidForPartyDialogue("EDWIN")
!IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("KELDORN")
~ THEN EXTERN ~EDWINJ~ 161
  IF ~  IsValidForPartyDialogue("MAZZY")
!IsValidForPartyDialogue("EDWIN")
!IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("KELDORN")
~ THEN EXTERN ~MAZZYJ~ 201
  IF ~  IsValidForPartyDialogue("JAN")
!IsValidForPartyDialogue("MAZZY")
!IsValidForPartyDialogue("EDWIN")
!IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("KELDORN")
~ THEN EXTERN ~JANJ~ 182
  IF ~  IsValidForPartyDialogue("VALYGAR")
!IsValidForPartyDialogue("JAN")
!IsValidForPartyDialogue("MAZZY")
!IsValidForPartyDialogue("EDWIN")
!IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("KELDORN")
~ THEN EXTERN ~VALYGARJ~ 119
  IF ~  IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("VALYGAR")
!IsValidForPartyDialogue("JAN")
!IsValidForPartyDialogue("MAZZY")
!IsValidForPartyDialogue("EDWIN")
!IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("KELDORN")
~ THEN EXTERN ~HAERDAJ~ 150
  IF ~  IsValidForPartyDialogue("CERND")
!IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("VALYGAR")
!IsValidForPartyDialogue("JAN")
!IsValidForPartyDialogue("MAZZY")
!IsValidForPartyDialogue("EDWIN")
!IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("KELDORN")
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
~ THEN EXTERN ~MINSCJ~ 211
END

IF ~~ THEN BEGIN 318 // from: 149.0
  SAY #59894 /* ~Worse still, they seem to have... some sort of snake creatures with them. I'd never seen anything like that, but I guess I'd never seen a lot of things.~ */
  IF ~~ THEN GOTO 222
END

IF ~~ THEN BEGIN 319 // from:
  SAY #70417 /* ~What a gruesome fate! It's madmen like Carston that give all us magic-users a bad name.~ */
  IF ~~ THEN EXTERN ~GORAPR~ 11
  IF ~  IsValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 123
  IF ~  IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 189
END

IF ~~ THEN BEGIN 320 // from:
  SAY #70509 /* ~I would expect that you would treat the lives of those who may be affected by this decision with a bit more weight, bard. Is it truly such a laughing matter?~ */
  IF ~~ THEN EXTERN ~HAERDAJ~ 157
END

IF ~~ THEN BEGIN 321 // from:
  SAY #70516 /* ~Oh, you have a bad feeling now, do you? It's a little late for that. It may be a little late for anything.~ */
  IF ~~ THEN EXTERN ~IMOEN2J~ 44
END

IF ~~ THEN BEGIN 322 // from:
  SAY #79228 /* ~Wilson's been unjustly imprisoned. He was meant to roam free, not rot in a cage waiting for a bunch of heretics to carve him up for sport.~ */
  IF ~~ THEN EXTERN ~OHRJOLST~ 8
  IF ~  IsValidForPartyDialogue("DORN")
~ THEN EXTERN ~DORNJ~ 2
END

IF ~~ THEN BEGIN 323 // from:
  SAY #96249 /* ~<CHARNAME> is right, Viconia. It's important to keep an open mind.~ */
  IF ~~ THEN EXTERN ~VICONIJ~ 288
END

IF ~~ THEN BEGIN 324 // from:
  SAY #87656 /* ~I hope we can do something. I've always wanted to help a grassroots organization take action against a powerful oppressor!~ */
  IF ~~ THEN EXIT
  IF ~  IsValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~KORGANJ~ 247
END

IF ~~ THEN BEGIN 325 // from:
  SAY #93535 /* ~I'll never understand why people romanticize feudalism like they do.~ */
  IF ~~ THEN EXIT
  IF ~  IsValidForPartyDialogue("MINSC")
~ THEN EXTERN ~MINSCJ~ 260
END

IF ~~ THEN BEGIN 326 // from:
  SAY #67765 /* ~I applaud her efforts. It's the duty and privilege of us of the upper classes to aid the less fortunate by taking them under our protection.~ */
  IF ~~ THEN EXTERN ~SARBAR01~ 8
END

IF ~~ THEN BEGIN 327 // from:
  SAY #67909 /* ~Hm. You would be powerful, <CHARNAME>, but what would you use the power for? What will it use *you* for?~ */
  IF ~~ THEN GOTO 328
END

IF ~~ THEN BEGIN 328 // from: 327.0
  SAY #67910 /* ~I might accept the power of an evil god if I thought I could help people... but I won't fool myself. I would be tempted by the taint just like anyone else. But you know more about yourself than I do.~ */
  IF ~  True()
~ THEN EXTERN ~FINSOL01~ 28
  IF ~  IsValidForPartyDialogue("Valygar")
Global("ValygarRomanceActive","GLOBAL",2)
~ THEN EXTERN ~VALYGARJ~ 139
  IF ~  IsValidForPartyDialogue("Anomen")
Global("AnomenRomanceActive","GLOBAL",2)
~ THEN EXTERN ~ANOMENJ~ 376
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
  IF ~  IsValidForPartyDialogue("Anomen")
!Global("AnomenRomanceActive","GLOBAL",2)
~ THEN EXTERN ~ANOMENJ~ 375
  IF ~  IsValidForPartyDialogue("Viconia")
!Global("ViconiaRomanceActive","GLOBAL",2)
~ THEN EXTERN ~VICONIJ~ 440
  IF ~  IsValidForPartyDialogue("Aerie")
!Global("AerieRomanceActive","GLOBAL",2)
~ THEN EXTERN ~AERIEJ~ 272
  IF ~  IsValidForPartyDialogue("Jaheira")
!Global("JaheiraRomanceActive","GLOBAL",2)
~ THEN EXTERN ~JAHEIRAJ~ 572
  IF ~  IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 153
  IF ~  IsValidForPartyDialogue("Sarevok")
!Alignment("Sarevok",MASK_EVIL)
~ THEN EXTERN ~SAREV25J~ 2
  IF ~  IsValidForPartyDialogue("Sarevok")
Alignment("Sarevok",MASK_EVIL)
~ THEN EXTERN ~SAREV25J~ 3
  IF ~  IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 261
END

IF ~~ THEN BEGIN 329 // from:
  SAY #70378 /* ~Well, that's hardly the kind of gratitude I would have expected! Sometimes, helping people just doesn't seem worth the effort.~ */
  IF ~~ THEN EXTERN ~YAGCON~ 8
  IF ~  IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 170
END

IF ~~ THEN BEGIN 330 // from:
  SAY #70382 /* ~Stealing isn't right, but she couldn't just let those people starve!~ */
  IF ~~ THEN EXTERN ~AMMAYOR~ 6
END

IF ~~ THEN BEGIN 331 // from:
  SAY #70417 /* ~What a gruesome fate! It's madmen like Carston that give all us magic-users a bad name.~ */
  IF ~~ THEN EXTERN ~GORAPR~ 11
  IF ~  IsValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 149
  IF ~  IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 215
END

IF ~~ THEN BEGIN 332 // from:
  SAY #70473 /* ~A deal? Be careful, <CHARNAME>. There is no telling what kind of deal may be offered by the dead... and this is no ordinary ghost, now, is it?~ */
  IF ~~ THEN EXTERN ~SAREV25A~ 14
END

IF ~~ THEN BEGIN 333 // from:
  SAY #70491 /* ~I'd suspect that Sarevok tells the truth. About the power of an oath spoken to you in this place that you created, at any rate. I think we can trust him... for what it's worth.~ */
  IF ~  True()
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 215
  IF ~  IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 217
  IF ~  IsValidForPartyDialogue("Cernd")
~ THEN EXTERN ~CERNDJ~ 148
END

IF ~~ THEN BEGIN 334 // from:
  SAY #70509 /* ~I would expect that you would treat the lives of those who may be affected by this decision with a bit more weight, bard. Is it truly such a laughing matter?~ */
  IF ~~ THEN EXTERN ~HAERDAJ~ 175
END

IF ~~ THEN BEGIN 335 // from:
  SAY #70516 /* ~Oh, you have a bad feeling now, do you? It's a little late for that. It may be a little late for anything.~ */
  IF ~~ THEN EXTERN ~IMOEN2J~ 166
END

IF ~~ THEN BEGIN 336 // from:
  SAY #70556 /* ~Careful, <CHARNAME>. This old woman is no ordinary hermit... I can sense her power even from here. Perhaps she can help us, but be cautious still.~ */
  IF ~~ THEN EXTERN ~HGNYA01~ 7
END

IF ~~ THEN BEGIN 337 // from:
  SAY #71312 /* ~This girl cannot like what she is doing! This siege has forced her into this horrible life!~ */
  IF ~~ THEN EXTERN ~SARPRO01~ 2
  IF ~  IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 181
END

IF ~~ THEN BEGIN 338 // from:
  SAY #71637 /* ~Oh, good grief. You *must* be kidding me.~ */
  IF ~~ THEN EXTERN ~SARVOLO~ 9
END

IF ~~ THEN BEGIN 339 // from:
  SAY #72573 /* ~Even if we intend to perform this wizard's task ourselves, we should still restore these unfortunate adventurers to life.~ */
  IF ~~ THEN EXTERN ~BAZEYE01~ 27
END

IF ~  Global("OHD_homeagain","OH5400",1)
~ THEN BEGIN 340 // from:
  SAY #92239 /* ~That was— I mean, it's just— Lunia, you know? WOW.~ */
  IF ~~ THEN DO ~SetGlobal("OHD_homeagain","OH5400",2)
~ EXIT
  IF ~  IsValidForPartyDialogue("jan")
~ THEN EXTERN ~JANJ~ 231
  IF ~  IsValidForPartyDialogue("valygar")
~ THEN EXTERN ~VALYGARJ~ 163
END
