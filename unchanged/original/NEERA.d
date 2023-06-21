// creator  : weidu (version 24900)
// argument : NEERA.DLG
// game     : .
// source   : ./override/NEERA.DLG
// dialog   : .\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~NEERA~

IF ~  NumTimesTalkedTo(0)
AreaCheck("AR0500")
Global("OHN_PLOT","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #87986 /* ~Heya, kiddo. I need you to take this and squeeze it real hard, all right?~ [OH87986] */
  IF ~~ THEN DO ~FaceObject("OHNMERET")
~ EXTERN ~OHNMERET~ 2
END

IF ~~ THEN BEGIN 1 // from:
  SAY #87988 /* ~I'm Neera. I'm gonna take you somewhere safe. Just take the talisman, all right?~ [OH87988] */
  IF ~~ THEN EXTERN ~OHNMERET~ 3
END

IF ~~ THEN BEGIN 2 // from:
  SAY #87991 /* ~Half-elf! And if you don't get out of here, things are gonna get really ugly—as ugly as that witch and her tricks. Squeeze the talisman. I'll be right behind you!~ [OH87991] */
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutSceneEx("OHNCUT1B",FALSE)
~ EXIT
END

IF ~  Global("OHN_NEERA_RENC","GLOBAL",2)
~ THEN BEGIN 3 // from:
  SAY #88006 /* ~Oh, come on! Who just tips water barrels over in the street?~ [OH88006] */
  IF ~~ THEN DO ~SetGlobal("OHN_NEERA_RENC","GLOBAL",3)
~ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #88009 /* ~Wait a tick. <CHARNAME>, is that you? You look... older. Wait, no—great. You look great! Don't you remember me? Way up near Baldur's Gate... I kept lighting things on fire?~ [OH88009] */
  IF ~~ THEN REPLY #88012 /* ~Of course, Neera. How could I forget? It is good to see you again.~ */ GOTO 5
  IF ~~ THEN REPLY #88014 /* ~Yes, I think I recall meeting you.~ */ GOTO 6
  IF ~~ THEN REPLY #88016 /* ~I'm sorry. I don't believe we've ever met. How do you know my name?~ */ GOTO 7
  IF ~~ THEN REPLY #88019 /* ~No. Not at all.~ */ GOTO 7
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #88021 /* ~Good to see you too. How funny to run into you here!~ [OH88021] */
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #88023 /* ~"Think you recall meeting me"? Ah ha. So much for the tearful reunion. I'm Neera, in case you don't think you can "recall my name."~ [OH88023] */
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 4.3 4.2
  SAY #88025 /* ~Huh. Maybe I'm mixed up. Wouldn't be the first time. A lot of people know who you are, so maybe it just rubbed off on me. I'm Neera.~ [OH88025] */
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0 6.0 5.0
  SAY #88027 /* ~Some days it's good to be a wild mage, you know? But other days it's like herding cats—blind cats who hate each other. I've been trying to transport myself out of Athkatla, but—well, here I am.~ [OH88027] */
  IF ~~ THEN REPLY #88029 /* ~I saw you with that Red Wizard. What was that all about?~ */ GOTO 9
  IF ~~ THEN REPLY #88034 /* ~Where are you trying to go?~ */ GOTO 11
  IF ~~ THEN REPLY #88036 /* ~Why isn't your magic working?~ */ GOTO 12
  IF ~~ THEN REPLY #88038 /* ~Is there anything I can do to help?~ */ GOTO 13
  IF ~~ THEN REPLY #88041 /* ~Interesting, but I must be off.~ */ GOTO 14
END

IF ~~ THEN BEGIN 9 // from: 12.0 11.0 8.0
  SAY #88047 /* ~You saw that? And you just stood there and watched? Thanks a bunch, <CHARNAME>.~ [OH88047] */
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #93108 /* ~No matter, I guess. That was a Red Wizard of Thay named Lanneth. That girl was a wild mage, like me. A mageling? I don't know. Anyway, Lanneth wanted to take her.~ [OH93108] */
  IF ~~ THEN REPLY #88050 /* ~Where did the girl disappear to?~ */ GOTO 11
  IF ~~ THEN REPLY #88053 /* ~You saved the girl by giving her that talisman. What's stopping you from teleporting after her?~ */ GOTO 12
  IF ~~ THEN REPLY #88038 /* ~Is there anything I can do to help?~ */ GOTO 13
  IF ~~ THEN REPLY #88041 /* ~Interesting, but I must be off.~ */ GOTO 14
END

IF ~~ THEN BEGIN 11 // from: 12.1 10.0 8.1
  SAY #88056 /* ~The Hidden Refuge. It's a camp I and some other wild mages set up as a sanctuary for people like us. The Red Wizards have been actively pursuing wild mages lately. After ages of them chasing me around, I decided to take action. Good on me, right?~ [OH88056] */
  IF ~~ THEN REPLY #88029 /* ~I saw you with that Red Wizard. What was that all about?~ */ GOTO 9
  IF ~~ THEN REPLY #88059 /* ~Sure. Now, what is keeping your magic from working?~ */ GOTO 12
  IF ~~ THEN REPLY #88038 /* ~Is there anything I can do to help?~ */ GOTO 13
  IF ~~ THEN REPLY #88041 /* ~Interesting, but I must be off.~ */ GOTO 14
END

IF ~~ THEN BEGIN 12 // from: 11.1 10.1 8.2
  SAY #88062 /* ~Wild magic is wild. Not much I can do about that. I gave away the last of my Hearthfire Talismans, which would have gotten me there a little more... directly. ~ [OH88062] */
  IF ~~ THEN REPLY #88029 /* ~I saw you with that Red Wizard. What was that all about?~ */ GOTO 9
  IF ~~ THEN REPLY #88065 /* ~And where are you trying to go?~ */ GOTO 11
  IF ~~ THEN REPLY #88038 /* ~Is there anything I can do to help?~ */ GOTO 13
  IF ~~ THEN REPLY #88041 /* ~Interesting, but I must be off.~ */ GOTO 14
END

IF ~~ THEN BEGIN 13 // from: 12.2 11.2 10.2 8.3
  SAY #88067 /* ~At the moment? No. But I'd really appreciate it if you could meet me at the Wild Forest. We can talk more then, and I can show you what we've been doing. I'm so proud of it! I'll mark the forest's location on your map.~ [OH88067] */
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 14 // from: 12.3 11.3 10.3 8.4
  SAY #88069 /* ~Sure, me too. Oh! But before you go, let me mark the Wild Forest on your map. That's where my secret camp is. I'm so proud of it! I'd like you to see it.~ [OH88069] */
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0 13.0
  SAY #88071 /* ~In the meantime, it looks like I'm hoofing it—unless you happen to have a jade figurine of a horse and a saddle? No? Well, never hurts to ask. Bye!~ [OH88071] */
  IF ~~ THEN DO ~AddJournalEntry(94496,QUEST)
RevealAreaOnMap("OH6000")
MoveToPointNoInterrupt([772.286])
EscapeAreaDestroy(1)
~ EXIT
END

IF ~  Global("OHN_PLOT","GLOBAL",1)
Global("OHN_WF_MEET","LOCALS",1)
~ THEN BEGIN 16 // from:
  SAY #88436 /* ~Ah, good! I've been waiting for you. The camp's really close.~ [OH88436] */
  IF ~~ THEN REPLY #88437 /* ~Greetings, Neera. It's good to see you, but I'm surprised you're not already there.~ */ DO ~SetGlobal("OHN_WF_MEET","LOCALS",2)
~ GOTO 17
  IF ~~ THEN REPLY #88438 /* ~Good. Let us be off.~ */ DO ~SetGlobal("OHN_WF_MEET","LOCALS",2)
~ GOTO 17
  IF ~~ THEN REPLY #88439 /* ~Waiting for me? Why?~ */ DO ~SetGlobal("OHN_WF_MEET","LOCALS",2)
~ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.2 16.1 16.0
  SAY #88440 /* ~Uh, I—~ [OH88440] */
  IF ~~ THEN REPLY #88441 /* ~Yes? Go on.~ */ GOTO 18
  IF ~~ THEN REPLY #88442 /* ~Let me guess: You don't know where it is.~ */ GOTO 19
  IF ~~ THEN REPLY #88443 /* ~There's some sort of problem? I am shocked.~ */ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 19.0 17.2 17.0
  SAY #88444 /* ~Honestly? I'm having a bit of trouble bypassing the wards and traps we set up to keep unwanted visitors out. I shouldn't have trained the others so well. Extraordinary talent can be such a curse!~ [OH88444] */
  IF ~~ THEN REPLY #88445 /* ~I see. So I am to assist you getting past these wards.~ */ GOTO 21
  IF ~~ THEN REPLY #88446 /* ~Extraordinary talents always are—I should know. Need some help?~ */ GOTO 20
  IF ~~ THEN REPLY #88447 /* ~So can extraordinary incompetence. You need me to get through these wards, I take it?~ */ GOTO 20
END

IF ~~ THEN BEGIN 19 // from: 17.1
  SAY #88448 /* ~I was having a hard time finding it earlier, but that's not the problem now.~ [OH88448] */
  IF ~~ THEN REPLY #88449 /* ~What is, then?~ */ GOTO 18
END

IF ~~ THEN BEGIN 20 // from: 18.2 18.1
  SAY #88450 /* ~Tempting, but—~ [OH88450] */
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.0 18.0
  SAY #88451 /* ~Yes. Let's join forces. I can guide you to the camp, and you can make sure I don't die.~ [OH88451] */
  IF ~~ THEN DO ~AddJournalEntry(94498,QUEST)
~ GOTO 22
  IF ~  IsValidForPartyDialogue("HaerDalis")
~ THEN DO ~AddJournalEntry(94498,QUEST)
~ EXTERN ~HAERDAJ~ 165
  IF ~  IsValidForPartyDialogue("Valygar")
~ THEN DO ~AddJournalEntry(94498,QUEST)
~ EXTERN ~VALYGARJ~ 135
  IF ~  IsValidForPartyDialogue("Dorn")
~ THEN DO ~AddJournalEntry(94498,QUEST)
~ EXTERN ~DORNJ~ 846
  IF ~  IsValidForPartyDialogue("Anomen")
~ THEN DO ~AddJournalEntry(94498,QUEST)
~ EXTERN ~ANOMENJ~ 353
  IF ~  IsValidForPartyDialogue("Jaheira")
~ THEN DO ~AddJournalEntry(94498,QUEST)
~ EXTERN ~JAHEIRAJ~ 553
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #88452 /* ~So what do you say? Am I in or out?~ [OH88452] */
  IF ~~ THEN REPLY #88453 /* ~I would be happy to have you by my side, Neera.~ */ GOTO 23
  IF ~~ THEN REPLY #88454 /* ~You can join us for a time. If your magic is useful and not too troublesome, you may remain.~ */ GOTO 23
  IF ~~ THEN REPLY #88455 /* ~I'd prefer to travel without you for now.~ */ GOTO 24
  IF ~~ THEN REPLY #88456 /* ~Absolutely out.~ */ GOTO 26
END

IF ~~ THEN BEGIN 23 // from: 22.1 22.0
  SAY #88462 /* ~Glad to hear it, <CHARNAME>! This should be fun—dread, danger, and death aside. And blisters. Can't forget the blisters.~ [OH88462] */
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 24 // from: 22.2
  SAY #88463 /* ~Really? I guess I understand. I hope you still plan to go to the camp. I'll hang back, as you "prefer," and meet you there once you're through the wards.~ [OH88463] */
  IF ~~ THEN DO ~EscapeAreaMove("OH6100",343,1659,SW)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.0
  SAY #88464 /* ~We've got to be careful. This entire forest is a wild magic zone. It wasn't always, but the wild mage refugees affected the Weave.~ [OH88464] */
  IF ~~ THEN DO ~SetGlobal("OHN_PLOT","GLOBAL",2)
JoinParty()
~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 22.3
  SAY #88465 /* ~Fine! I absolutely don't want to anyway! Now go clear a path for me. You can pretend I'm not skulking behind you.~ [OH88465] */
  IF ~~ THEN DO ~EscapeAreaMove("OH6100",343,1659,SW)
~ EXIT
END

IF ~  Global("OHN_PLOT","GLOBAL",1)
Global("OHN_WF_MEET","LOCALS",2)
~ THEN BEGIN 27 // from:
  SAY #88491 /* ~Hey! Do I get to join you or what? You could use my levelheaded advice, tactical wisdom, and moral clarity.~ [OH88491] */
  IF ~~ THEN REPLY #88492 /* ~Yes. I'd like to have you in my party.~ */ DO ~SetGlobal("OHN_PLOT","GLOBAL",2)
SetGlobal("OHN_WF_MEET","LOCALS",3)
JoinParty()
AddJournalEntry(94498,QUEST)
~ EXIT
  IF ~~ THEN REPLY #89621 /* ~Sorry, Neera. Wait here for now.~ */ EXIT
END
