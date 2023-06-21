// creator  : weidu (version 24900)
// argument : BARONP.DLG
// game     : .
// source   : ./override/BARONP.DLG
// dialog   : .\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~BARONP~

IF ~  See("Jaheira")
!Dead("Jaheira")
!StateCheck("Jaheira",STATE_SLEEPING)
Global("TalkedToJaheira","LOCALS",0)
~ THEN BEGIN 0 // from:
  SAY #1189 /* ~Jaheira, my darling, so good to see you. Won't you come sit and chat awhile?~ [BARONP02] */
  IF ~~ THEN EXTERN ~JAHEIRAJ~ 24
END

IF ~~ THEN BEGIN 1 // from:
  SAY #1190 /* ~You do not remember? Ahh, but this is understandable. It has been years since we last spoke. Far too long, really.~ */
  IF ~~ THEN EXTERN ~JAHEIRAJ~ 25
END

IF ~~ THEN BEGIN 2 // from:
  SAY #1192 /* ~*ahem* My name... is Ployer, Baron Ployer? Of the Calimshan Ployers? Come now, you must have some inkling? ~ */
  IF ~~ THEN EXTERN ~JAHEIRAJ~ 26
END

IF ~~ THEN BEGIN 3 // from:
  SAY #1194 /* ~My name means nothing? Nothing?! I am Baron Ployer! PLOYER! You ruined me! Not remembering is an even greater insult! You are why I am destitute today!~ */
  IF ~~ THEN GOTO 43
END

IF ~~ THEN BEGIN 4 // from:
  SAY #1196 /* ~You... you... This is the type of insolence I was talking about! It is not enough that you ruin a man—you must also berate him! ~ */
  IF ~~ THEN EXTERN ~JAHEIRAJ~ 28
END

IF ~~ THEN BEGIN 5 // from:
  SAY #1198 /* ~Haven't lost your fire, I see. Still a Harper? This scrawny lout one too? That fellow Khalid you were once with was a better complement. Is he here as well?~ */
  IF ~~ THEN EXTERN ~JAHEIRAJ~ 29
END

IF ~~ THEN BEGIN 6 // from:
  SAY #1200 /* ~Er, yes. Very well. How about your companions, Jaheira? Do they count themselves among the Harpers as well?~ */
  IF ~~ THEN REPLY #1201 /* ~I am not a member of the Harpers, sir, though I would accept the offer if it were made.~ */ GOTO 7
  IF ~~ THEN REPLY #1202 /* ~Me? I don't think I could push my nose into other people's business far enough to qualify.~ */ GOTO 9
  IF ~~ THEN REPLY #1203 /* ~I do not number myself among that group, or any other.~ */ GOTO 10
  IF ~~ THEN REPLY #1204 /* ~I bear them no grudge. Beyond that is my business.~ */ GOTO 11
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #1205 /* ~Perhaps I should include you in this matter then. But first... Jaheira, my dear, I have not found you by accident. You ruined me, slandered my name.~ */
  IF ~~ THEN EXTERN ~JAHEIRAJ~ 30
END

IF ~~ THEN BEGIN 8 // from:
  SAY #1207 /* ~That is beside the point! What matters is that you ruined me, and now I'm going to ruin you!~ */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("Cut12a",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.1
  SAY #1208 /* ~You understand! I shall leave you free of harm, but I advise that you distance yourself from Jaheira. She is about to become more trouble than she is worth.~ */
  IF ~~ THEN GOTO 44
END

IF ~~ THEN BEGIN 10 // from: 6.2
  SAY #1210 /* ~But you travel with her? I doubt you keep yourself separate from their interests while helping one of their own. No matter, you are not my intended victim.~ */
  IF ~~ THEN GOTO 45
END

IF ~~ THEN BEGIN 11 // from: 6.3
  SAY #1211 /* ~I see. Well, if you travel with the one that harmed me, it becomes my business. The "friends of my enemies" and all that. ~ */
  IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 12 // from:
  SAY #1219 /* ~That is beside the point! What matters is that you ruined me, and now I'm going to ruin you!~ */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("Cut12a",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from:
  SAY #1221 /* ~It is my gift to you. You will be slowly destroyed, just as my family was. It is my curse, my nasty, nasty curse. A little something I had made just for you.~ */
  IF ~~ THEN GOTO 47
END

IF ~~ THEN BEGIN 14 // from:
  SAY #1223 /* ~Ah, but I am a weak, weak man that will live, while you are a strong woman that will die. Give my regards to Belgrade when you see him. Hmmheheh... heheha... HAHA!~ */
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutSceneEx("Cut12c",FALSE)
~ UNSOLVED_JOURNAL #47970 /* ~Save Jaheira from Baron Ployer's curse

We have run into an old "friend" of Jaheira's... a man named Baron Ployer who was a slaver that Jaheira ruined in the course of her Harper activities. The man has obviously been plotting his revenge, as he has created some manner of curse which he has laid on Jaheira... and which he claims will kill her.~ */ EXIT
END

IF ~  OR(2)
!InParty("Jaheira")
!See("Jaheira")
Global("TalkedToJaheira","LOCALS",1)
~ THEN BEGIN 15 // from:
  SAY #1373 /* ~You! How did you find me?! Blast, that Harper wench is cagey... haha... but she is not with you? Then my plan worked—she has withered and died! I hope she suffered!~ [BARONP06] */
  IF ~  Global("Bribed","GLOBAL",0)
Global("Bribed2","GLOBAL",0)
~ THEN REPLY #1375 /* ~Not half as much as you are going to. You are too much of a bastard to live!~ */ DO ~SetGlobal("TalkedToJaheira","LOCALS",2)
~ GOTO 17
  IF ~  Global("Bribed","GLOBAL",0)
Global("Bribed2","GLOBAL",0)
~ THEN REPLY #1376 /* ~She is alive, and you ARE going to remove the curse because I am asking ever so nicely.~ */ DO ~SetGlobal("TalkedToJaheira","LOCALS",2)
~ GOTO 18
  IF ~  Global("Bribed","GLOBAL",0)
Global("Bribed2","GLOBAL",0)
~ THEN REPLY #1377 /* ~I have come to bargain with you. She still lives, so what do you want in exchange for removing your curse?~ */ DO ~SetGlobal("TalkedToJaheira","LOCALS",2)
~ GOTO 19
  IF ~  Global("Bribed","GLOBAL",0)
Global("Bribed2","GLOBAL",0)
~ THEN REPLY #1378 /* ~I am here to ask you to remove the curse. You have suffered and she has suffered. Lives need not be wasted.~ */ DO ~SetGlobal("TalkedToJaheira","LOCALS",2)
~ GOTO 20
  IF ~  Global("Bribed","GLOBAL",1)
~ THEN REPLY #1410 /* ~Not half as much as you are going to. You are too much of a bastard to live!~ */ DO ~SetGlobal("TalkedToJaheira","LOCALS",2)
~ GOTO 21
  IF ~  Global("Bribed","GLOBAL",1)
~ THEN REPLY #1411 /* ~She is alive, and you ARE going to remove the curse because I am asking ever so nicely.~ */ DO ~SetGlobal("TalkedToJaheira","LOCALS",2)
~ GOTO 23
  IF ~  Global("Bribed","GLOBAL",1)
~ THEN REPLY #1412 /* ~Jaheira lives, but not for long. What do you want in exchange for removing your curse?~ */ DO ~SetGlobal("TalkedToJaheira","LOCALS",2)
~ GOTO 25
  IF ~  Global("Bribed","GLOBAL",1)
~ THEN REPLY #1413 /* ~I am here to ask you to remove the curse. You have suffered and she has suffered. Lives need not be wasted.~ */ DO ~SetGlobal("TalkedToJaheira","LOCALS",2)
~ GOTO 27
  IF ~  Global("Bribed2","GLOBAL",1)
~ THEN REPLY #1428 /* ~Not half as much as you are going to. You are too much of a bastard to live!~ */ DO ~SetGlobal("TalkedToJaheira","LOCALS",2)
~ GOTO 22
  IF ~  Global("Bribed2","GLOBAL",1)
~ THEN REPLY #1429 /* ~She is alive, and you ARE going to remove the curse because I am asking ever so nicely.~ */ DO ~SetGlobal("TalkedToJaheira","LOCALS",2)
~ GOTO 24
  IF ~  Global("Bribed2","GLOBAL",1)
~ THEN REPLY #1430 /* ~I have come to bargain with you, Ployer. What do you want in exchange for removing what you have inflicted?~ */ DO ~SetGlobal("TalkedToJaheira","LOCALS",2)
~ GOTO 26
  IF ~  Global("Bribed2","GLOBAL",1)
~ THEN REPLY #1431 /* ~I am here to ask you to remove the curse. You have suffered and she has suffered. Lives need not be wasted.~ */ DO ~SetGlobal("TalkedToJaheira","LOCALS",2)
~ GOTO 28
END

IF ~  Dead("Jaheira")
InPartyAllowDead("Jaheira")
Global("TalkedToJaheira","LOCALS",1)
~ THEN BEGIN 16 // from:
  SAY #1396 /* ~You! That Harper wench led you right to me. Then... ho ho! But she is slung over a shoulder like so much baggage! My plan has worked; she is dead! I hope she suffered!~ [BARONP07] */
  IF ~  Global("Bribed","GLOBAL",0)
Global("Bribed2","GLOBAL",0)
~ THEN REPLY #1397 /* ~Not half as much as you are going to. You are too much of a bastard to live!~ */ DO ~SetGlobal("TalkedToJaheira","LOCALS",2)
~ GOTO 17
  IF ~  Global("Bribed","GLOBAL",0)
Global("Bribed2","GLOBAL",0)
~ THEN REPLY #1398 /* ~She might yet be saved, so you ARE going to remove the curse because I am asking ever so nicely.~ */ DO ~SetGlobal("TalkedToJaheira","LOCALS",2)
~ GOTO 18
  IF ~  Global("Bribed","GLOBAL",0)
Global("Bribed2","GLOBAL",0)
~ THEN REPLY #1399 /* ~I have come to bargain with you. What do you want in exchange for removing what you have inflicted?~ */ DO ~SetGlobal("TalkedToJaheira","LOCALS",2)
~ GOTO 19
  IF ~  Global("Bribed","GLOBAL",0)
Global("Bribed2","GLOBAL",0)
~ THEN REPLY #1400 /* ~She is incapacitated and your curse remains. I am here to ask you to remove what you have inflicted. ~ */ DO ~SetGlobal("TalkedToJaheira","LOCALS",2)
~ GOTO 20
  IF ~  Global("Bribed","GLOBAL",1)
~ THEN REPLY #1414 /* ~Not half as much as you are going to. You are too much of a bastard to live!~ */ DO ~SetGlobal("TalkedToJaheira","LOCALS",2)
~ GOTO 21
  IF ~  Global("Bribed","GLOBAL",1)
~ THEN REPLY #1416 /* ~She can be saved, so you ARE going to remove the curse because I am asking ever so nicely.~ */ DO ~SetGlobal("TalkedToJaheira","LOCALS",2)
~ GOTO 23
  IF ~  Global("Bribed","GLOBAL",1)
~ THEN REPLY #1417 /* ~I have come to bargain with you. What do you want in exchange for removing what you have inflicted?~ */ DO ~SetGlobal("TalkedToJaheira","LOCALS",2)
~ GOTO 25
  IF ~  Global("Bribed","GLOBAL",1)
~ THEN REPLY #1418 /* ~I am here to ask you to remove the curse. Lives need not be wasted.~ */ DO ~SetGlobal("TalkedToJaheira","LOCALS",2)
~ GOTO 27
  IF ~  Global("Bribed2","GLOBAL",1)
~ THEN REPLY #1420 /* ~Not half as much as you are going to. You are too much of a bastard to live!~ */ DO ~SetGlobal("TalkedToJaheira","LOCALS",2)
~ GOTO 22
  IF ~  Global("Bribed2","GLOBAL",1)
~ THEN REPLY #1421 /* ~She can be saved, so you ARE going to remove the curse because I am asking ever so nicely.~ */ DO ~SetGlobal("TalkedToJaheira","LOCALS",2)
~ GOTO 24
  IF ~  Global("Bribed2","GLOBAL",1)
~ THEN REPLY #1422 /* ~I have come to bargain with you. What do you want in exchange for removing what you have inflicted?~ */ DO ~SetGlobal("TalkedToJaheira","LOCALS",2)
~ GOTO 26
  IF ~  Global("Bribed2","GLOBAL",1)
~ THEN REPLY #1423 /* ~I am here to ask you to remove the curse. Lives need not be wasted.~ */ DO ~SetGlobal("TalkedToJaheira","LOCALS",2)
~ GOTO 28
END

IF ~~ THEN BEGIN 17 // from: 42.3 16.0 15.0
  SAY #1403 /* ~Oh, but I am not here alone! From the shadows step my assassins! They cost me everything, but they are well worth it! Kill! Destroy those that ruined me!~ */
  IF ~~ THEN DO ~ClearAllActions()
SetGlobal("JaheiraCursed","GLOBAL",8)
SetGlobal("PloyerMages","GLOBAL",1)
CreateCreatureDoor("TERRECE",[348.287],S)
CreateCreatureDoor("JAMAGE1",[446.278],SW)
CreateCreatureDoor("JAMAGE2",[615.273],W)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 42.6 16.1 15.1
  SAY #1404 /* ~Your threats are nothing. You came expecting an old man in hiding, but I had hoped Jaheira would come—because by the time she did, she would be utterly crippled!~ */
  IF ~~ THEN GOTO 48
END

IF ~~ THEN BEGIN 19 // from: 42.9 16.2 15.2
  SAY #1405 /* ~I have what I want! I have Jaheira at death's door while I gloat! Will you bribe me? No, your coins are less than nothing beside the sweet revenge I have!~ */
  IF ~~ THEN GOTO 49
END

IF ~~ THEN BEGIN 20 // from: 42.0 16.3 15.3
  SAY #1406 /* ~Do you mean to touch my heart, to reform me? Reform to what? I was the wealthiest slaver on the coast! I bought and sold better cattle than you will ever be!~ */
  IF ~~ THEN GOTO 50
END

IF ~~ THEN BEGIN 21 // from: 42.4 16.4 15.4
  SAY #1407 /* ~Oh, but I am not here alone! From the shadows step my assassins! They cost me everything, but they are well worth it! Kill them! Destroy those that ruined me!~ */
  IF ~~ THEN DO ~ClearAllActions()
SetGlobal("JaheiraCursed","GLOBAL",8)
SetGlobal("PloyerMages","GLOBAL",2)
CreateCreatureDoor("TERRECE",[348.287],S)
CreateCreatureDoor("JAMAGE1",[446.278],SW)
CreateCreatureDoor("JAMAGE2",[615.273],W)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 42.5 16.8 15.8
  SAY #1424 /* ~Oh, but I am not here alone! From the shadows step my assassins! They cost me everything, but they are well worth it! Kill them! Destroy those that ruined me!~ */
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 23 // from: 42.7 16.5 15.5
  SAY #1425 /* ~Your threats are nothing. You came expecting an old man in hiding, but I had hoped Jaheira would come—because by the time she did, she would be utterly crippled!~ */
  IF ~~ THEN GOTO 51
END

IF ~~ THEN BEGIN 24 // from: 42.8 16.9 15.9
  SAY #1426 /* ~Your threats are nothing. You came expecting an old man in hiding, but I had hoped Jaheira would come—because by the time she did, she would be utterly crippled!~ */
  IF ~~ THEN GOTO 52
END

IF ~~ THEN BEGIN 25 // from: 42.10 16.6 15.6
  SAY #1427 /* ~I have what I want! I have her at death's door while I gloat! Will you bribe me? No, you do not have enough gold to raise me to the levels I was accustomed.~ */
  IF ~~ THEN GOTO 53
END

IF ~~ THEN BEGIN 26 // from: 42.11 16.10 15.10
  SAY #1432 /* ~I have what I want! I have her at death's door while I gloat! Will you bribe me? No, you do not have enough gold to raise me to the levels I was accustomed.~ */
  IF ~~ THEN GOTO 54
END

IF ~~ THEN BEGIN 27 // from: 42.1 16.7 15.7
  SAY #1433 /* ~Do you mean to touch my heart, to reform me? Reform to what? I was the wealthiest slaver on the coast! I bought and sold better cattle than you will ever be!~ */
  IF ~~ THEN GOTO 55
END

IF ~~ THEN BEGIN 28 // from: 42.2 16.11 15.11
  SAY #1434 /* ~Do you mean to touch my heart, to reform me? Reform to what? I was the wealthiest slaver on the coast! I bought and sold better cattle than you will ever be!~ */
  IF ~~ THEN GOTO 56
END

IF ~~ THEN BEGIN 29 // from: 56.0 54.0 52.0 22.0
  SAY #1435 /* ~Er... Attack!~ */
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #1436 /* ~Now! ...uh... Now!~ */
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #1437 /* ~I command you! Kill them!... Where are you?!~ */
  IF ~~ THEN REPLY #1438 /* ~That's the trouble with hired hands; if a better deal comes along, they might just jump ship.~ */ GOTO 32
  IF ~~ THEN REPLY #1439 /* ~It looks like you are alone. Care to try your bravado against me without your magical thugs?~ */ GOTO 35
  IF ~~ THEN REPLY #1440 /* ~And now you will die. Will anyone weep for your passing? Allow me. Booooo hooooo. I cry for pathetic old Ployer. ~ */ GOTO 37
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #1443 /* ~But... no! Damn you, it's happened again! Everyone against me, everyone.~ */
  IF ~~ THEN REPLY #1447 /* ~And now we will talk deal. You WILL remove the curse, and you WILL leave and never return. Is that CLEAR?~ */ GOTO 33
  IF ~~ THEN REPLY #1448 /* ~You created your own crimes, and you are the one that shall die for them! Defend yourself!~ */ GOTO 38
  IF ~~ THEN REPLY #1449 /* ~If you spent half as much time trying to rebuild your life as plotting revenge, you would have recovered by now. Pathetic.~ */ GOTO 37
END

IF ~~ THEN BEGIN 33 // from: 35.1 32.0
  SAY #1444 /* ~Aye, you have won today, but someday I will...~ */
  IF ~~ THEN REPLY #1455 /* ~Someday you will do NOTHING! Not if you want to live past tomorrow! Do we have a deal?!~ */ GOTO 34
  IF ~~ THEN REPLY #1456 /* ~So you refuse to let this pass? So be it; you will die then. If you are irredeemable, then you have no use.~ */ GOTO 38
  IF ~~ THEN REPLY #1457 /* ~Pathetic. Still you hang on to your little grudges. You have wasted your life, fool.~ */ GOTO 37
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #1459 /* ~Very well. Here, this is the personal item used to curse her. I took it from that fop, Belgrade. She should be fine with it returned. Now get out... get out.~ */
  IF ~~ THEN DO ~GiveItem("MISC5V",LastTalkedToBy)
SetGlobal("JaheiraCursed","GLOBAL",7)
~ EXIT
END

IF ~~ THEN BEGIN 35 // from: 31.1
  SAY #1461 /* ~But I could not hope to defeat you alone! It may as well be suicide!~ */
  IF ~~ THEN REPLY #1463 /* ~You have caused this! You alone! Now fight, or die with your back turned!~ */ GOTO 36
  IF ~~ THEN REPLY #1464 /* ~Unless... You will do as I wish and you will do it to the letter! Understand?!~ */ GOTO 33
  IF ~~ THEN REPLY #1472 /* ~You are weak and laughable. Look at yourself, groveling. Pathetic.~ */ GOTO 37
END

IF ~~ THEN BEGIN 36 // from: 38.1 35.0
  SAY #1468 /* ~Ahh, no! Help!~ */
  IF ~~ THEN DO ~SetGlobal("JaheiraCursed","GLOBAL",8)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 37 // from: 38.0 35.2 33.2 32.2 31.2
  SAY #1460 /* ~My... life... pathetic am I? Pathetic?! I was... I was above all! I was more than you will ever be! I was... Mages or not, you will be dead!~ */
  IF ~~ THEN DO ~SetGlobal("JaheiraCursed","GLOBAL",8)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 38 // from: 33.1 32.1
  SAY #1475 /* ~But this is murder! I am defenseless before you!~ */
  IF ~~ THEN REPLY #1477 /* ~Not murder; execution for the good of the land! Your pathetic existence is of no use to anyone!~ */ GOTO 37
  IF ~~ THEN REPLY #1479 /* ~Then pick up a sword! You've no choice in the matter!~ */ GOTO 36
END

IF ~  !Dead("Jaheira")
InParty("Jaheira")
!StateCheck("Jaheira",STATE_SLEEPING)
Global("TalkedToJaheira","LOCALS",1)
~ THEN BEGIN 39 // from:
  SAY #1485 /* ~Ah, Jaheira. I see you have dragged your sorry soon-to-be carcass here to see me. Are you here to beg? Perhaps to grovel? I don't mind. I have even cleaned my shoes.~ [BARONP08] */
  IF ~~ THEN DO ~SetGlobal("TalkedToJaheira","LOCALS",2)
~ EXTERN ~JAHEIRAJ~ 68
END

IF ~~ THEN BEGIN 40 // from:
  SAY #1488 /* ~Of course! I am your only link to life, so what choice do you have? Come now, grovel for your life before me. I haven't got all day!~ */
  IF ~~ THEN EXTERN ~JAHEIRAJ~ 69
END

IF ~~ THEN BEGIN 41 // from:
  SAY #1490 /* ~And I will, unless I get the satisfaction I want now. Come now, I can cure you if you drop your pretense of dignity and get your sickly carcass on its knees!~ */
  IF ~~ THEN EXTERN ~JAHEIRAJ~ 70
END

IF ~~ THEN BEGIN 42 // from:
  SAY #1495 /* ~You are about to collapse and cannot even speak. Now, of course, you will have to grovel in pantomime. What could be more degrading than that?~ */
  IF ~  Global("Bribed","GLOBAL",0)
Global("Bribed2","GLOBAL",0)
~ THEN REPLY #1496 /* ~Ployer! She can barely stand! End this and spare us all any further indignities!~ */ GOTO 20
  IF ~  Global("Bribed","GLOBAL",1)
~ THEN REPLY #1497 /* ~Ployer! She can barely stand! End this and spare us all any further indignities!~ */ GOTO 27
  IF ~  Global("Bribed2","GLOBAL",1)
~ THEN REPLY #1498 /* ~Ployer! She can barely stand! End this and spare us all any further indignities!~ */ GOTO 28
  IF ~  Global("Bribed","GLOBAL",0)
Global("Bribed2","GLOBAL",0)
~ THEN REPLY #1499 /* ~Enough of this! It is time for you to die, Ployer! You are simply too irredeemable to live!~ */ GOTO 17
  IF ~  Global("Bribed","GLOBAL",1)
~ THEN REPLY #1500 /* ~Enough of this! It is time for you to die, Ployer! You are simply too irredeemable to live!~ */ GOTO 21
  IF ~  Global("Bribed2","GLOBAL",1)
~ THEN REPLY #1501 /* ~Enough of this! It is time for you to die, Ployer! You are simply too irredeemable to live!~ */ GOTO 22
  IF ~  Global("Bribed","GLOBAL",0)
Global("Bribed2","GLOBAL",0)
~ THEN REPLY #1502 /* ~She may be ill, but I am not! You WILL end this curse, and you WILL leave her be! Am I understood?!~ */ GOTO 18
  IF ~  Global("Bribed","GLOBAL",1)
~ THEN REPLY #1503 /* ~She may be ill, but I am not! You WILL end this curse, and you WILL leave her be! Am I understood?!~ */ GOTO 23
  IF ~  Global("Bribed2","GLOBAL",1)
~ THEN REPLY #1504 /* ~She may be ill, but I am not! You WILL end this curse, and you WILL leave her be! Am I understood?!~ */ GOTO 24
  IF ~  Global("Bribed","GLOBAL",0)
Global("Bribed2","GLOBAL",0)
~ THEN REPLY #1505 /* ~Stop this! What is it you want? Perhaps we can bargain...~ */ GOTO 19
  IF ~  Global("Bribed","GLOBAL",1)
~ THEN REPLY #1506 /* ~Stop this! What is it you want? Perhaps we can bargain...~ */ GOTO 25
  IF ~  Global("Bribed2","GLOBAL",1)
~ THEN REPLY #1507 /* ~Stop this! What is it you want? Perhaps we can bargain...~ */ GOTO 26
END

IF ~~ THEN BEGIN 43 // from: 3.0
  SAY #24833 /* ~You and your Harper kin accused me of breeding slaves in Calimshan! My businesses in Athkatla were taken! I was made a pauper, and you do not even remember?!~ */
  IF ~~ THEN EXTERN ~JAHEIRAJ~ 27
END

IF ~~ THEN BEGIN 44 // from: 9.0
  SAY #24841 /* ~Jaheira, our meeting here was no accident. I have waited for this moment, for this time when I would reward your filthy libelous ways. ~ */
  IF ~~ THEN EXTERN ~JAHEIRAJ~ 31
END

IF ~~ THEN BEGIN 45 // from: 10.0
  SAY #24852 /* ~Jaheira, I'm going to repay the harm you did me. I did not find you by accident; I'll make you pay for your libelous ways and the shame you have caused me.~ */
  IF ~~ THEN EXTERN ~JAHEIRAJ~ 31
END

IF ~~ THEN BEGIN 46 // from: 11.0
  SAY #24854 /* ~Jaheira, you and your claims brought me shame and suffering, and today I am going to exact payment. For your slanderous accusations, I am going to...~ */
  IF ~~ THEN EXTERN ~JAHEIRAJ~ 30
END

IF ~~ THEN BEGIN 47 // from: 13.0
  SAY #24862 /* ~I may not see your lingering death, but I will smile, knowing it will happen. Tonight I sleep beneath rags so I could afford this wasting death for you...~ */
  IF ~~ THEN EXTERN ~JAHEIRAJ~ 33
END

IF ~~ THEN BEGIN 48 // from: 18.0
  SAY #24885 /* ~I would enjoy crushing her, but I will settle for you! Meet my hirelings! My last favors paid for them, and they are well worth it! Kill them!~ */
  IF ~~ THEN DO ~ClearAllActions()
SetGlobal("JaheiraCursed","GLOBAL",8)
SetGlobal("PloyerMages","GLOBAL",1)
CreateCreatureDoor("TERRECE",[348.287],S)
CreateCreatureDoor("JAMAGE1",[446.278],SW)
CreateCreatureDoor("JAMAGE2",[615.273],W)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 49 // from: 19.0
  SAY #24890 /* ~I see you will press this with violence? Well, I will answer in kind! Meet my assassin hirelings! They will make short work of the lot of you!~ */
  IF ~~ THEN DO ~ClearAllActions()
SetGlobal("JaheiraCursed","GLOBAL",8)
SetGlobal("PloyerMages","GLOBAL",1)
CreateCreatureDoor("TERRECE",[348.287],S)
CreateCreatureDoor("JAMAGE1",[446.278],SW)
CreateCreatureDoor("JAMAGE2",[615.273],W)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 50 // from: 20.0
  SAY #24893 /* ~Now I can't show my face lest it be spat in! She will pay, as will you! Meet my hirelings! My last favors bought them! Well worth it, I think you will agree!~ */
  IF ~~ THEN DO ~ClearAllActions()
SetGlobal("JaheiraCursed","GLOBAL",8)
SetGlobal("PloyerMages","GLOBAL",1)
CreateCreatureDoor("TERRECE",[348.287],S)
CreateCreatureDoor("JAMAGE1",[446.278],SW)
CreateCreatureDoor("JAMAGE2",[615.273],W)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 51 // from: 23.0
  SAY #24897 /* ~I would enjoy crushing her, but I will settle for you! Meet my hirelings! My last favors paid for them, and they are well worth it! Kill them!~ */
  IF ~~ THEN DO ~ClearAllActions()
SetGlobal("JaheiraCursed","GLOBAL",8)
SetGlobal("PloyerMages","GLOBAL",2)
CreateCreatureDoor("TERRECE",[348.287],S)
CreateCreatureDoor("JAMAGE1",[446.278],SW)
CreateCreatureDoor("JAMAGE2",[615.273],W)
~ EXIT
END

IF ~~ THEN BEGIN 52 // from: 24.0
  SAY #24901 /* ~I would enjoy crushing her, but I will settle for you! Meet my hirelings! My last favors paid for them, and they are well worth it! Kill them!~ */
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 53 // from: 25.0
  SAY #24906 /* ~Besides, your coins are nothing compared to my revenge! Your deaths will complete my victory! Meet my assassins! They will make short work of the lot of you!~ */
  IF ~~ THEN DO ~ClearAllActions()
SetGlobal("JaheiraCursed","GLOBAL",8)
SetGlobal("PloyerMages","GLOBAL",2)
CreateCreatureDoor("TERRECE",[348.287],S)
CreateCreatureDoor("JAMAGE1",[446.278],SW)
CreateCreatureDoor("JAMAGE2",[615.273],W)
~ EXIT
END

IF ~~ THEN BEGIN 54 // from: 26.0
  SAY #24910 /* ~Besides, your coins are nothing compared to sweet revenge! Your deaths will complete my victory! Meet my assassins! They will make short work of the lot of you!~ */
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 55 // from: 27.0
  SAY #24914 /* ~Now I can't show my face lest it be spat in! She will pay, as will you! Meet my hirelings! My last favors bought them! Well worth it, I think you will agree!~ */
  IF ~~ THEN DO ~ClearAllActions()
SetGlobal("JaheiraCursed","GLOBAL",8)
SetGlobal("PloyerMages","GLOBAL",2)
CreateCreatureDoor("TERRECE",[348.287],S)
CreateCreatureDoor("JAMAGE1",[446.278],SW)
CreateCreatureDoor("JAMAGE2",[615.273],W)
~ EXIT
END

IF ~~ THEN BEGIN 56 // from: 28.0
  SAY #24917 /* ~Now I can't show my face lest it be spat in! She will pay, as will you! Meet my hirelings! My last favors bought them! Well worth it, I think you will agree!~ */
  IF ~~ THEN GOTO 29
END

IF ~  True()
~ THEN BEGIN 57 // from:
  SAY #32611 /* ~Off with you. I'm waiting for someone.~ */
  IF ~~ THEN EXIT
END
