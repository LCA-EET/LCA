// creator  : weidu (version 24900)
// argument : IMOEN2J.DLG
// game     : .
// source   : ./override/IMOEN2J.DLG
// dialog   : .\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~IMOEN2J~

IF ~~ THEN BEGIN 0 // from:
  SAY #49240 /* ~Whoa, stop for a bit. How are you feeling? You looked really sick for a moment there.~ */
  IF ~~ THEN REPLY #49875 /* ~It's nothing. I'm just a little dizzy, that's all. It's already passed.~ */ GOTO 3
  IF ~~ THEN REPLY #49876 /* ~I don't know. Have you felt any ill effects since the spell they cast on you?~ */ GOTO 4
  IF ~~ THEN REPLY #49877 /* ~Leave me alone. I'll be fine.~ */ GOTO 3
END

IF ~~ THEN BEGIN 1 // from:
  SAY #49632 /* ~Are... are you all right? I... I've never seen anything like that...~ */
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #49633 /* ~<CHARNAME>, that was... that was the Slayer. It's one of the avatar forms of Bhaal! You... you became the Slayer?~ */
  IF ~~ THEN REPLY #49890 /* ~The what? How do you know that?~ */ GOTO 5
  IF ~~ THEN REPLY #49891 /* ~I couldn't help it... it just happened. What could have caused that?~ */ GOTO 7
  IF ~~ THEN REPLY #49892 /* ~I've never felt power like that. That was me?~ */ GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 0.2 0.0
  SAY #49880 /* ~If you say so. I felt really weak after my ritual too, but you looked like you were ready to keel over. Take it easy for a while, <CHARNAME>.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.1
  SAY #49882 /* ~I've been getting weaker, I think, but it hasn't made me all that ill yet. You take care, all right? It's really odd that you are sick.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2 2.0
  SAY #49894 /* ~I've read descriptions of the Slayer before. It appeared when the Time of Troubles forced the gods to walk the land...~ */
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 7.0 5.0
  SAY #49896 /* ~<CHARNAME>, we've got to get our souls back from Bodhi and Irenicus. You've been left empty, and it's affecting you differently than me.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.1
  SAY #49907 /* ~I don't know, but I've read descriptions of the Slayer before. It appeared when the Time of Troubles forced the gods to walk the land...~ */
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 8 // from:
  SAY #50659 /* ~We'd better go check on those inmates, <CHARNAME>. We don't want them running wild all over this place.~ */
  IF ~~ THEN DO ~SetGlobal("playerTalk","AR1515",2)
SetGlobal("AsylumPlot","GLOBAL",54)
StartCutSceneMode()
StartCutSceneEx("Cut41m",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from:
  SAY #55185 /* ~It... it's finally over, then. All those terrible things he did to us, and it's finally over. Or... or is it? <CHARNAME>, something's not right...~ */
  IF ~~ THEN EXTERN ~PLAYER1~ 17
END

IF ~~ THEN BEGIN 10 // from:
  SAY #55205 /* ~I... I feel so strange. I felt myself coming apart, my essence... I don't know. And there was this pulling, this force, and... and I knew it was you. I had to come with you, I just knew I had to.~ [IMOEN75] */
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 11 // from: 12.0
  SAY #55207 /* ~Unless it's because she was a vampire, with no soul of her own. She just... died, and there was only my own soul left? Or maybe it had something to do with your dying at the Tree of Life. I don't know.~ [IMOEN74] */
  IF ~  !IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Nalia")
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 131
  IF ~  !IsValidForPartyDialogue("Aerie")
IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 155
  IF ~  !IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 77
  IF ~  !IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 115
  IF ~  !IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 147
  IF ~  !IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 117
  IF ~  !IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Viconia")
IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 90
  IF ~  !IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Yoshimo")
IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 450
  IF ~  !IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Cernd")
~ THEN EXTERN ~CERNDJ~ 100
  IF ~  !IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Cernd")
IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 166
  IF ~  !IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 258
  IF ~  !IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 100
  IF ~  !IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("HaerDalis")
IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 189
  IF ~  !IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Nalia")
~ THEN EXTERN ~NALIAJ~ 268
  IF ~  IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Nalia")
~ THEN EXTERN ~EDWINJ~ 95
END

IF ~~ THEN BEGIN 12 // from: 13.0
  SAY #55231 /* ~But... but why didn't I follow Bodhi into... into wherever she went when she died?~ [IMOEN73] */
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 13 // from: 10.0
  SAY #55233 /* ~We're dead, aren't we? If I'm a child of Bhaal, shouldn't I be... be gone, then? Just like Sarevok? Irenicus said I was different, but... I don't know. But I know I'll follow you wherever I can.~ [IMOEN72] */
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 14 // from:
  SAY #55303 /* ~You wouldn't have to do that, would you? Keep guarding an empty chest? What would be the point?~ */
  IF ~~ THEN EXTERN ~SAHBEH01~ 39
END

IF ~  Dead("c6bodhi")
Global("DeathOfBodhi","LOCALS",0)
~ THEN BEGIN 15 // from:
  SAY #55327 /* ~I feel... I feel better now. I feel whole again.~ [IMOEN69] */
  IF ~~ THEN DO ~SetGlobal("DeathOfBodhi","LOCALS",1)
~ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #55328 /* ~Thank you for everything you have done. I am restored... and I hope your own healing is not too far off.~ [IMOEN70] */
  IF ~~ THEN SOLVED_JOURNAL #7243 /* ~The final battle with Bodhi

Imoen has been restored with Bodhi's death. She is fine... and it seems that she has gotten her soul back from the vampire now. This bodes well for my coming battle with Irenicus and makes my path clear.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from:
  SAY #55756 /* ~I don't see why we should suddenly trust you. That certainly wasn't any risk... why are you so scared of Irenicus's plans now? He's said nothing of them.~ */
  IF ~~ THEN EXTERN ~PPSAEM2~ 22
END

IF ~~ THEN BEGIN 18 // from:
  SAY #55772 /* ~I don't care which route we take. I want my... my soul back. And I want Irenicus to suffer for what he's done!~ */
  IF ~~ THEN EXTERN ~PPSAEM2~ 20
END

IF ~~ THEN BEGIN 19 // from:
  SAY #55783 /* ~You... you used me! You tore apart my soul, and then you ripped it from me! I'll kill you for that, Irenicus! I'll kill you!~ */
  IF ~~ THEN EXTERN ~PPIRENI2~ 60
END

IF ~~ THEN BEGIN 20 // from:
  SAY #55838 /* ~So they've been exiling all the strong sahuagin outside of the city. Eventually, everyone left inside will be weak. I don't see what we have to do with it, though.~ */
  IF ~  !IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~SAHPR1~ 56
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 198
END

IF ~~ THEN BEGIN 21 // from:
  SAY #55851 /* ~We'd best be careful, <CHARNAME>. I don't know how much I trust this king to remember we're supposed to be rewarded and not eaten, you know?~ */
  IF ~~ THEN EXTERN ~SAHKNG01~ 37
END

IF ~~ THEN BEGIN 22 // from:
  SAY #55933 /* ~Hah! You'll do nothing but die... and hopefully you'll know that it was <CHARNAME> that beat you, too.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 23 // from:
  SAY #55936 /* ~Should we be so quick to do what she says? Solaufein hasn't done anything to deserve death. Let's just step lightly before we commit to anything, okay?~ */
  IF ~~ THEN DO ~SetGlobal("SolaufeinJob","GLOBAL",8)
SetGlobalTimer("udPhaTimer","GLOBAL",THREE_DAYS)
SetGlobal("udPhaTimerOn","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 24 // from:
  SAY #55942 /* ~This key can open the sewage doors in the dungeon.

STATISTICS:

Weight: 1~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 25 // from:
  SAY #55957 /* ~Thanks a lot, Valygar. Shall I call all rangers pigheaded because of you? ~ */
  IF ~~ THEN EXTERN ~VALYGARJ~ 88
END

IF ~~ THEN BEGIN 26 // from:
  SAY #56037 /* ~Other than the fact that Bodhi has my soul, sure... I'm just fine. How about you?~ */
  IF ~~ THEN EXTERN ~ARAN~ 110
END

IF ~~ THEN BEGIN 27 // from:
  SAY #56053 /* ~Please, priestess... we must find the queen, as well as Irenicus. Do you know where they might be?~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 28 // from:
  SAY #56062 /* ~Do... do we even have time for this? We're here to get <CHARNAME>'s soul back. Maybe if it wouldn't take too long. It's horrible to see this place suffer.~ */
  IF ~~ THEN EXTERN ~SUDEMIN~ 35
END

IF ~~ THEN BEGIN 29 // from:
  SAY #56070 /* ~You fit the role of drow a bit too easily, Korgan.~ */
  IF ~~ THEN EXTERN ~KORGANJ~ 147
END

IF ~~ THEN BEGIN 30 // from:
  SAY #56088 /* ~We're going to take back <CHARNAME>'s soul if we have to rip it out of your chest, Irenicus! And you are going to Hell... WHERE YOU BELONG!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 31 // from:
  SAY #56113 /* ~This is the last stand, here in Hell. We fall or we win.~ [IMOEN71A] */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("cut85c",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 32 // from:
  SAY #56117 /* ~A... awakened? Please tell me that you mean it was hibernating and not... otherworldly.~ */
  IF ~~ THEN EXTERN ~UDSVIR03~ 13
END

IF ~~ THEN BEGIN 33 // from:
  SAY #56120 /* ~Trust me, Korgan, you would not want us to vote on your worth any more than you should speak about hers.~ */
  IF ~~ THEN EXTERN ~KORGANJ~ 152
END

IF ~~ THEN BEGIN 34 // from:
  SAY #56146 /* ~No, enough death. I have seen too much. There will be another way. There must.~ */
  IF ~~ THEN EXTERN ~UDSIMYAZ~ 6
END

IF ~~ THEN BEGIN 35 // from:
  SAY #56158 /* ~And you are truly a magnificent sight, my lady. I am awed.~ */
  IF ~~ THEN EXTERN ~UDSILVER~ 58
END

IF ~~ THEN BEGIN 36 // from:
  SAY #56175 /* ~I've come for what you stole from me! I will not leave here empty! I *will* have my soul.~ [IMOEN68] */
  IF ~~ THEN EXTERN ~C6BODHI~ 4
END

IF ~~ THEN BEGIN 37 // from:
  SAY #57154 /* ~But... but I thought you said the lich trapped the souls of your men in those gems?~ */
  IF ~~ THEN EXTERN ~JARLAXLE~ 25
END

IF ~~ THEN BEGIN 38 // from:
  SAY #58222 /* ~Irenicus hurt me too, you know. He kept me in that asylum... and experimented on me, and took my soul like it was an appetizer. Uh-uh, I'm not going anywhere. I'm with you all the way.~ */
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
  IF ~  IsValidForPartyDialogue("Nalia")
~ THEN EXTERN ~PLAYER1~ 43
  IF ~  IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~PLAYER1~ 42
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~PLAYER1~ 41
  IF ~  IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~PLAYER1~ 40
  IF ~  IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~PLAYER1~ 39
  IF ~  IsValidForPartyDialogue("Jan")
~ THEN EXTERN ~PLAYER1~ 38
  IF ~  IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~PLAYER1~ 37
  IF ~  IsValidForPartyDialogue("Valygar")
~ THEN EXTERN ~PLAYER1~ 36
  IF ~  IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~PLAYER1~ 35
END

IF ~~ THEN BEGIN 39 // from:
  SAY #61450 /* ~This is the last stand, here in Hell. We fall or we win.~ [IMOEN71A] */
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("cut85c",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 40 // from:
  SAY #70551 /* ~Uh-oh. You've *got* to be asking yourself what the stakes would be in a game some demon would want to play with you. Wouldn't you?~ */
  IF ~~ THEN EXTERN ~GORCAMB~ 18
END

IF ~~ THEN BEGIN 41 // from:
  SAY #70534 /* ~I don't believe it! You knew about Demogorgon! You sent us in there to be trapped forever!~ */
  IF ~~ THEN EXTERN ~GORODR1~ 35
END

IF ~~ THEN BEGIN 42 // from:
  SAY #70535 /* ~"Your foolishness can be forgiven"? Hmph. He's just askin' for trouble now.~ */
  IF ~~ THEN DO ~SetGlobal("KnightsInKeep","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 43 // from:
  SAY #70512 /* ~Oooo, I have a bad feeling about this...~ */
  IF ~~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 190
  IF ~  IsValidForPartyDialogue("Nalia")
~ THEN EXTERN ~NALIAJ~ 321
  IF ~  IsValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 124
END

IF ~~ THEN BEGIN 44 // from:
  SAY #70517 /* ~I didn't see *you* piping up with any useful information either, so keep your big yap shut! Jeez. Let's just go and try to find a way outta here, okay?~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 45 // from:
  SAY #70421 /* ~I'm not sure whether to be impressed by your unshakeable devotion to duty or appalled at your complete lack of initiative.~ */
  IF ~~ THEN EXTERN ~GORIMP01~ 8
END

IF ~~ THEN BEGIN 46 // from:
  SAY #70437 /* ~Why do I get the feeling this ghost's sense of duty is going to make things harder for us, <CHARNAME>?~ */
  IF ~~ THEN EXTERN ~FSSPIR2~ 2
END

IF ~~ THEN BEGIN 47 // from:
  SAY #70442 /* ~Ahhh... I knew this was coming! Everybody's always giving us tests, challenges, and trials. You'd think someone would trust us just on reputation by now!~ */
  IF ~~ THEN DO ~TriggerActivation("Tran3024",TRUE)
TriggerActivation("Tran3025",TRUE)
TriggerActivation("Tran3026",TRUE)
TriggerActivation("Exit3024",FALSE)
TriggerActivation("Exit3025",FALSE)
TriggerActivation("Exit3026",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 48 // from:
  SAY #80093 /* ~I knew it! Oh, you are such a jerk, <CHARNAME>!~ */
  IF ~~ THEN EXTERN ~OHRTRUTH~ 44
END

IF ~~ THEN BEGIN 49 // from:
  SAY #80095 /* ~Worthy of being a total jerk.~ */
  IF ~~ THEN EXTERN ~OHRTRUTH~ 45
END

IF ~~ THEN BEGIN 50 // from:
  SAY #80742 /* ~He can't be trusted around us, either.~ */
  IF ~~ THEN EXTERN ~WILSON~ 16
END

IF ~~ THEN BEGIN 51 // from:
  SAY #80744 /* ~He's walked with worse, Anomen. The stories I could tell...~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 52 // from:
  SAY #74590 /* ~Well, that's reassuring.~ */
  IF ~  Global("OHD_KNOWS_DORN","LOCALS",1)
~ THEN EXTERN ~DORN~ 20
  IF ~  !Global("OHD_KNOWS_DORN","LOCALS",1)
~ THEN EXTERN ~DORN~ 22
  IF ~  IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 230
END

IF ~  Global("OHD_PLOT","GLOBAL",2)
Global("OHD_Telwyn_Spawn","AR0901",2)
~ THEN BEGIN 53 // from:
  SAY #74906 /* ~First the Radiant Heart, now a temple of Helm. I haven't been to a temple this often since... Well, I don't really count that small one back in Candlekeep.~ */
  IF ~~ THEN REPLY #74907 /* ~If all goes well, we won't be here long.~ */ EXTERN ~DORNJ~ 345
END

IF ~~ THEN BEGIN 54 // from:
  SAY #75710 /* ~Ravens? I don't see any ravens. Nobody here but us chickens.~ */
  IF ~~ THEN GOTO 55
END

IF ~  Global("OHD_GORGE_NTRJEX","OH5100",1)
~ THEN BEGIN 55 // from: 54.0
  SAY #75711 /* ~I can't believe I let you talk me into this, <CHARNAME>.~ */
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
END

IF ~  Global("OHD_ritual_interjects","GLOBAL",1)
~ THEN BEGIN 56 // from:
  SAY #77509 /* ~Of all the twisted, rotten, stinking, disgusting places you've taken me, <CHARNAME>, this is another one.~ */
  IF ~~ THEN DO ~SetGlobal("OHD_ritual_interjects","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 57 // from:
  SAY #91121 /* ~You're really enjoying this, aren't you, <CHARNAME>?~ */
  IF ~~ THEN EXTERN ~DORNJ~ 305
END

IF ~~ THEN BEGIN 58 // from:
  SAY #74803 /* ~What, a dead priest's not enough for you?~ */
  IF ~~ THEN EXTERN ~OHDBRIDE~ 0
  IF ~  IsValidForPartyDialogue("EDWIN")
~ THEN EXTERN ~EDWINJ~ 198
  IF ~  IsValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~KORGANJ~ 239
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN EXTERN ~VICONIJ~ 415
END

IF ~~ THEN BEGIN 59 // from:
  SAY #74803 /* ~What, a dead priest's not enough for you?~ */
  IF ~~ THEN EXTERN ~JAHEIRAJ~ 538
  IF ~  IsValidForPartyDialogue("EDWIN")
~ THEN EXTERN ~EDWINJ~ 199
  IF ~  IsValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~KORGANJ~ 240
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN EXTERN ~VICONIJ~ 416
END

IF ~~ THEN BEGIN 60 // from:
  SAY #74859 /* ~Are you sure that's a good idea, <CHARNAME>? You know he'd as soon kill us as work with us. No offense.~ */
  IF ~~ THEN EXTERN ~DORNJ~ 320
  IF ~  IsValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~KORGANJ~ 242
END

IF ~~ THEN BEGIN 61 // from:
  SAY #83351 /* ~Which is really how a crypt ought to be, don't you think?~ */
  IF ~  !IsValidForPartyDialogue("dorn")
~ THEN EXTERN ~HEXXATJ~ 382
  IF ~  IsValidForPartyDialogue("dorn")
~ THEN EXTERN ~DORNJ~ 817
END

IF ~~ THEN BEGIN 62 // from:
  SAY #83413 /* ~Gorion took good care of us. We lacked for nothing. Other than parents, that is.~ */
  IF ~~ THEN EXTERN ~HEXXATJ~ 401
END

IF ~  Global("OHH_imoenstoneface","LOCALS",1)
~ THEN BEGIN 63 // from:
  SAY #84491 /* ~Wow. That is one big stone face.~ */
  IF ~~ THEN DO ~SetGlobal("OHH_imoenstoneface","LOCALS",2)
~ EXTERN ~OHHSTONE~ 0
END

IF ~~ THEN BEGIN 64 // from:
  SAY #84497 /* ~And it talks!~ */
  IF ~~ THEN EXTERN ~OHHSTONE~ 1
  IF ~  IsValidForPartyDialogue("neera")
~ THEN EXTERN ~NEERAJ~ 22
END

IF ~  Global("OHH_unprovedpost","GLOBAL",1)
~ THEN BEGIN 65 // from:
  SAY #84393 /* ~Hey, <CHARNAME>, it's your dead friend.~ */
  IF ~~ THEN EXTERN ~HEXXATP~ 0
END

IF ~  Global("CHAPTER","GLOBAL",13)
PartyHasItem("Misc4e")
Global("Rielev","LOCALS",0)
~ THEN BEGIN 66 // from:
  SAY #37850 /* ~He's... he's dead now? This pathetic creature...~ [IMOENJ50] */
  IF ~~ THEN DO ~SetGlobal("Rielev","LOCALS",1)
~ GOTO 67
END

IF ~~ THEN BEGIN 67 // from: 66.0
  SAY #37851 /* ~I can't look away, <CHARNAME>. I have seen death in our scuffles before, but here I did nothing but watch his life end...~ */
  IF ~~ THEN GOTO 68
END

IF ~~ THEN BEGIN 68 // from: 67.0
  SAY #37852 /* ~I can't look away.~ */
  IF ~~ THEN REPLY #37853 /* ~Yet another corpse in my wake. Nothing odd about that. Let's go.~ */ GOTO 69
  IF ~~ THEN REPLY #37854 /* ~Death is not always to be feared, I guess. I would not wish to live like that.~ */ GOTO 69
  IF ~~ THEN REPLY #37855 /* ~We've no more time for your morbid fascinations. Let's get moving. ~ */ GOTO 69
END

IF ~~ THEN BEGIN 69 // from: 68.2 68.1 68.0
  SAY #37856 /* ~Death is... pretty. Why would I think that? Oh, <CHARNAME>, I've got to get out of this place.~ */
  IF ~~ THEN SOLVED_JOURNAL #47517 /* ~Free Rielev from his life support

Rielev has been released from his overlong life. I took the crystal that apparently powered the device that he floated in, but not before he said that it might be used to activate other servants in similar devices.~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from:
  SAY #37857 /* ~This poor creature wishes to die? Right here? We should...~ [IMOENJ51] */
  IF ~~ THEN GOTO 71
END

IF ~~ THEN BEGIN 71 // from: 70.0
  SAY #37858 /* ~We should help... we should... we should see what happens now!~ */
  IF ~~ THEN DO ~MoveToObject("Rielev")
GiveItemCreate("Misc4e",Myself,1,0,0)
ActionOverride("Rielev",DestroySelf())
~ EXIT
END

IF ~~ THEN BEGIN 72 // from:
  SAY #38537 /* ~I can help you too. Should I not try? I hate to see you cooped up like that.~ */
  IF ~~ THEN EXTERN ~JAHEIRA~ 74
END

IF ~~ THEN BEGIN 73 // from:
  SAY #38539 /* ~Minsc, that is horrible! I am so sorry for you. ~ */
  IF ~~ THEN EXTERN ~MINSCA~ 43
END

IF ~~ THEN BEGIN 74 // from:
  SAY #38543 /* ~Eww, I... really don't want to think about that too much. ~ */
  IF ~~ THEN EXTERN ~MINSCA~ 13
END

IF ~  Global("CHAPTER","GLOBAL",13)
Global("ImoenClones","AR0602",1)
~ THEN BEGIN 75 // from:
  SAY #38544 /* ~I... I know this room. I've been in here... we both have. He... There are things in these tanks. They used to be people...~ [IMOENJ52] */
  IF ~~ THEN DO ~SetGlobal("ImoenClones","AR0602",2)
~ GOTO 76
END

IF ~~ THEN BEGIN 76 // from: 75.0
  SAY #38559 /* ~What kind of monster is this guy? Captures us easy as pie, kills whoever he wants... that could have been us in those glass things.~ */
  IF ~~ THEN REPLY #38560 /* ~We'll get him back, Imoen. We'll make him pay for all of this.~ */ GOTO 78
  IF ~~ THEN REPLY #38561 /* ~Quit your whining. We're free now.~ */ GOTO 79
  IF ~~ THEN REPLY #38562 /* ~I'm sure we'll find him soon enough. I want to know what he wants with me.~ */ GOTO 81
END

IF ~~ THEN BEGIN 77 // from:
  SAY #38563 /* ~I don't know about that, Minsc, but he sure is a cute little fuzzy wuzzy. Aren't you, Boo? ~ */
  IF ~~ THEN EXTERN ~MINSCA~ 14
END

IF ~~ THEN BEGIN 78 // from: 76.0
  SAY #38584 /* ~We don't even know where we are, and my head is still doing funny things... He said something... something about potential.~ */
  IF ~~ THEN GOTO 134
END

IF ~~ THEN BEGIN 79 // from: 76.1
  SAY #38599 /* ~Are we? Horrible, horrible things surround us, and my head still hurts like crazy. I want to know what he did to me. I remember... something about potential.~ */
  IF ~~ THEN GOTO 80
END

IF ~~ THEN BEGIN 80 // from: 79.0
  SAY #38602 /* ~He said it about you too: something about power that can be unleashed. I don't care; I just have to get out. Can we leave this room? It bothers me.~ */
  IF ~~ THEN JOURNAL #843 /* ~Does my captor know a way for me to gain power?

Imoen said something odd. Our captor apparently has some insight into my... condition as a child of Bhaal. He supposedly mentioned a means of allowing me to tap that power. I am in no position to question him at the moment, but I will keep it in mind for the future. ~ */ EXIT
END

IF ~~ THEN BEGIN 81 // from: 76.2
  SAY #38603 /* ~I want to know what he did to me too. My head still hurts really bad. He said... said something about potential... about you too.~ */
  IF ~~ THEN GOTO 135
END

IF ~~ THEN BEGIN 82 // from:
  SAY #38606 /* ~Wow, a golem. Powerful magic stuff. Odd that it's not hostile. I suppose its maker didn't expect us to escape, so it never got orders for restraining us.~ */
  IF ~~ THEN GOTO 83
END

IF ~~ THEN BEGIN 83 // from: 82.0
  SAY #38611 /* ~They only do exactly what they are directed to; they don't really think. If it hasn't been told to keep quiet, we might get some information out of it.~ */
  IF ~~ THEN EXTERN ~IGOLEM2~ 0
END

IF ~  Global("CHAPTER","GLOBAL",13)
Global("ImoenEllesime","AR0602",1)
~ THEN BEGIN 84 // from:
  SAY #38612 /* ~What...? What is this place? It's—it's beautiful! Oh... there is simply no way that this space belongs to the same person that owns those horrible glass containers.~ [IMOENJ53] */
  IF ~~ THEN REPLY #38617 /* ~It is unlikely that our captor would rent out space. It must be his.~ */ DO ~SetGlobal("ImoenEllesime","AR0602",2)
~ GOTO 85
  IF ~~ THEN REPLY #38618 /* ~Perhaps it is simply a side of him we have not seen. ~ */ DO ~SetGlobal("ImoenEllesime","AR0602",2)
~ GOTO 85
END

IF ~~ THEN BEGIN 85 // from: 84.1 84.0
  SAY #38619 /* ~No, it can't be. Not the person I know. This... this bed, that table... I know of them. He would... he would speak of them while... while he...~ */
  IF ~~ THEN GOTO 86
END

IF ~~ THEN BEGIN 86 // from: 85.0
  SAY #38620 /* ~It's for a lost love, kept in perfect condition. She... she despises him. This is his monument to her. He spoke of all of this, but... but his voice was cold...~ */
  IF ~~ THEN GOTO 87
END

IF ~~ THEN BEGIN 87 // from: 86.0
  SAY #38621 /* ~No emotion at all, not even remembered. He spoke of these things even while he cut... he cut... and the spells that wove through my brain... cold, ugly things!~ */
  IF ~~ THEN REPLY #38622 /* ~He cannot hurt you now. You are among friends.~ */ GOTO 88
  IF ~~ THEN REPLY #38623 /* ~Calm down, you'll attract attention to us.~ */ GOTO 91
END

IF ~~ THEN BEGIN 88 // from: 91.0 87.0
  SAY #38624 /* ~It still hurts... his sick fingers are still in my head, doing whatever it was he started. I see blood... and death... behind my eyes... Irenicus...~ */
  IF ~~ THEN GOTO 89
END

IF ~~ THEN BEGIN 89 // from: 88.0
  SAY #38625 /* ~This room: If he could care for anything, he would care for this room. Above the lives of all of us. It makes me sick. I feel... I feel... so much hate. ~ */
  IF ~~ THEN GOTO 90
END

IF ~~ THEN BEGIN 90 // from: 89.0
  SAY #38626 /* ~I would burn this place, but it is nothing. Even as it means so much, it is nothing. Let's do what we must and get out of this place; it is making me sick.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 91 // from: 87.1
  SAY #38627 /* ~We are nothing; that's why the golems don't care. Why bother worrying about gnats? Besides, he doesn't need to catch us. I can tell. I can feel it.~ */
  IF ~~ THEN GOTO 88
END

IF ~~ THEN BEGIN 92 // from: 125.0
  SAY #38628 /* ~Duergar, I think. Kind of evil, I guess, so I'm not surprised they would be working for our captor.~ */
  IF ~~ THEN REPLY #38629 /* ~Quite the little setup down here. Got everything he needs, including smiths.~ */ DO ~SetGlobal("ImoenIlyich","LOCALS",2)
~ GOTO 93
  IF ~~ THEN REPLY #38630 /* ~He tolerates some company, or are they little more than skilled packhorses to him?~ */ DO ~SetGlobal("ImoenIlyich","LOCALS",2)
~ GOTO 94
END

IF ~~ THEN BEGIN 93 // from: 92.0
  SAY #38631 /* ~For the knives, probably. The knives... he has a lot of them... I'm going to have a couple of scars from this... looks like you will too.~ */
  IF ~~ THEN GOTO 136
END

IF ~~ THEN BEGIN 94 // from: 92.1
  SAY #38632 /* ~I doubt he cares for anything more than the quality of knives they make. He has a lot of them... I'm going to have scars from this... looks like you will too.~ */
  IF ~~ THEN GOTO 136
END

IF ~  Global("CHAPTER","GLOBAL",13)
Global("SawKhalid","AR0603",1)
Global("ImoenKhalid","LOCALS",0)
~ THEN BEGIN 95 // from:
  SAY #38633 /* ~Jaheira... I wanna say how sorry I am about Khalid. I... I know this is hard...~ [IMOENJ54] */
  IF ~~ THEN DO ~SetGlobal("ImoenKhalid","LOCALS",1)
~ EXTERN ~JAHEIRAJ~ 296
END

IF ~~ THEN BEGIN 96 // from:
  SAY #38635 /* ~Stop calling me "child." I'm as old as <CHARNAME>, and besides, I can tell you that Khalid did not suffer.~ */
  IF ~~ THEN EXTERN ~JAHEIRAJ~ 297
END

IF ~~ THEN BEGIN 97 // from:
  SAY #38637 /* ~I'm not babbling! I saw him do this! Khalid was dead when our captor started... doing those things to him! ~ */
  IF ~~ THEN EXTERN ~JAHEIRAJ~ 298
END

IF ~~ THEN BEGIN 98 // from:
  SAY #38639 /* ~He... he showed me. He cut and... and showed me. He forced my eyes open and made me look as he...~ */
  IF ~~ THEN EXTERN ~JAHEIRAJ~ 299
END

IF ~~ THEN BEGIN 99 // from:
  SAY #38641 /* ~He said I should see, so I would understand, but I don't know what he wanted! He would cut and say "Do you see?" Cut and say "Do you see?"~ */
  IF ~~ THEN EXTERN ~JAHEIRAJ~ 300
END

IF ~~ THEN BEGIN 100 // from:
  SAY #38643 /* ~I am not a child! I'm as old as <CHARNAME>, and I've... I've seen. I can see...~ */
  IF ~~ THEN EXTERN ~JAHEIRAJ~ 301
END

IF ~~ THEN BEGIN 101 // from:
  SAY #38645 /* ~I see now... in my head... cut, "yes, I see..."~ */
  IF ~~ THEN EXTERN ~JAHEIRAJ~ 302
END

IF ~  Global("CHAPTER","GLOBAL",13)
Global("ImoenDryad","AR0602",2)
~ THEN BEGIN 102 // from:
  SAY #38647 /* ~So beautiful! I used to dream of dryads and their beautiful trees. ~ [IMOENJ55] */
  IF ~~ THEN DO ~SetGlobal("ImoenDryad","AR0602",3)
~ EXTERN ~IDRYAD1~ 14
END

IF ~~ THEN BEGIN 103 // from:
  SAY #38649 /* ~I used to dream... but he doesn't. Your charms don't work on him anymore, do they?~ */
  IF ~~ THEN EXTERN ~IDRYAD1~ 15
END

IF ~~ THEN BEGIN 104 // from:
  SAY #38651 /* ~Irenicus...~ */
  IF ~~ THEN EXTERN ~IDRYAD1~ 16
END

IF ~~ THEN BEGIN 105 // from:
  SAY #38653 /* ~No, death sounds different. He showed me... I spit on his name. I spit on this place.~ */
  IF ~~ THEN EXTERN ~IDRYAD1~ 17
END

IF ~~ THEN BEGIN 106 // from:
  SAY #38655 /* ~I have learned... something different. So beautiful you are. I almost can't see you. I just want to go home. Oh, <CHARNAME>, when can we go home?~ */
  IF ~~ THEN EXIT
END

IF ~  Global("CHAPTER","GLOBAL",13)
Global("Rested","LOCALS",1)
~ THEN BEGIN 107 // from:
  SAY #38661 /* ~I've gotta hand it to you... you sure have some kind of courage to sleep in this place. I would've run screaming a dozen times over if you weren't here.~ [IMOENJ56] */
  IF ~~ THEN REPLY #38662 /* ~We needed rest to succeed. We had to take the chance.~ */ DO ~SetGlobal("Rested","LOCALS",2)
~ GOTO 108
  IF ~~ THEN REPLY #38663 /* ~It seemed safe enough. No one has taken serious notice of our escape.~ */ DO ~SetGlobal("Rested","LOCALS",2)
~ GOTO 112
  IF ~~ THEN REPLY #38664 /* ~I know what you mean. This place worries me too.~ */ DO ~SetGlobal("Rested","LOCALS",2)
~ GOTO 113
END

IF ~~ THEN BEGIN 108 // from: 107.0
  SAY #38665 /* ~I guess I should be used to sleeping with both eyes open. I don't deal with this well. We're alike because of Gorion, but I prefer being in the background.~ */
  IF ~~ THEN REPLY #38666 /* ~Do you remember much about him? My memory is still fuzzy.~ */ GOTO 109
  IF ~~ THEN REPLY #38667 /* ~Perhaps, though I remember you not hesitating to step up front when needed.~ */ GOTO 114
  IF ~~ THEN REPLY #38669 /* ~That's your preference. I prefer to lead. Speaking of which, we should get going.~ */ GOTO 115
END

IF ~~ THEN BEGIN 109 // from: 114.1 113.0 112.0 108.0
  SAY #38671 /* ~He was a great mage, and supposedly a great adventurer. It's funny; we lived with him for years, and Jaheira seems to know more about him.~ */
  IF ~  !IsValidForPartyDialogue("Jaheira")
~ THEN GOTO 110
  IF ~  IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 304
END

IF ~~ THEN BEGIN 110 // from: 109.0
  SAY #38672 /* ~I guess he was a big friend of the Harpers. Even got a visit from Khelben "Blackstaff" once. Real powerful mage. Talked to Gorion like an equal.~ */
  IF ~~ THEN GOTO 111
END

IF ~~ THEN BEGIN 111 // from: 110.0
  SAY #38674 /* ~I wish we could go back to those days, before all this fuss and bother. Before I learned... Well, we've seen so much. Candlekeep seems so small now.~ */
  IF ~~ THEN REPLY #38683 /* ~Yes, but then to me it always did. It was home, but I outgrew it.~ */ GOTO 117
  IF ~~ THEN REPLY #38684 /* ~There wasn't much to go back to with Gorion gone. ~ */ GOTO 119
  IF ~~ THEN REPLY #38685 /* ~You have to move on eventually. Speaking of which, we should get going.~ */ GOTO 115
END

IF ~~ THEN BEGIN 112 // from: 107.1
  SAY #38686 /* ~Seems like we're not important enough to worry about. I'm just not up to this like you. We're alike because of Gorion, but I prefer being in the background.~ */
  IF ~~ THEN REPLY #38687 /* ~Do you remember much about him? My memory is still fuzzy.~ */ GOTO 109
  IF ~~ THEN REPLY #38688 /* ~Perhaps, though I remember you not hesitating to step up front when needed.~ */ GOTO 114
  IF ~~ THEN REPLY #38689 /* ~That's your preference. I prefer to lead. Speaking of which, we should get going.~ */ GOTO 115
END

IF ~~ THEN BEGIN 113 // from: 107.2
  SAY #38690 /* ~Does it? Then I feel better. I figured I didn't deal with this as well as you. We're alike because of Gorion, but I prefer being in the background.~ */
  IF ~~ THEN REPLY #38693 /* ~Do you remember much about him? My memory is still fuzzy.~ */ GOTO 109
  IF ~~ THEN REPLY #38694 /* ~Perhaps, though I remember you not hesitating to step up front when needed.~ */ GOTO 114
  IF ~~ THEN REPLY #38695 /* ~That's your preference. I prefer to lead. Speaking of which, we should get going.~ */ GOTO 115
END

IF ~~ THEN BEGIN 114 // from: 113.1 112.1 108.1
  SAY #38697 /* ~Well, when people are in danger, sure. Winthrop taught me how to get out of trouble, but Gorion always said there are times when it's worth getting into it.~ */
  IF ~~ THEN REPLY #38701 /* ~Well, right now we're in danger, and I guess we should work on getting out. Let's go.~ */ GOTO 115
  IF ~~ THEN REPLY #38702 /* ~Do you remember much about him? My memory is still fuzzy.~ */ GOTO 109
END

IF ~~ THEN BEGIN 115 // from: 114.0 113.2 112.2 111.2 108.2
  SAY #38703 /* ~Yeah, you're right. I don't want to spend a second more in this place than I have to. My head still hurts, and I keep seeing things in corners and such.~ */
  IF ~~ THEN GOTO 116
END

IF ~~ THEN BEGIN 116 // from: 120.0 118.0 115.0
  SAY #38704 /* ~We won't be able to just walk away, you know. The guy that captured us... he knows about you. He said something about potential, something about great power.~ */
  IF ~~ THEN GOTO 130
END

IF ~~ THEN BEGIN 117 // from: 111.0
  SAY #38705 /* ~Funny, that. I was sorry to go, but I couldn't let you wander off on your own, now could I? After Gorion d... died, you needed all the help you could get.~ */
  IF ~~ THEN GOTO 118
END

IF ~~ THEN BEGIN 118 // from: 117.0
  SAY #38706 /* ~Not that I'm much help right now. My head still aches, and I keep seeing things. Too much death around here, everywhere. It's in everything, even me.~ */
  IF ~~ THEN GOTO 116
END

IF ~~ THEN BEGIN 119 // from: 111.1
  SAY #38707 /* ~We still had friends there. They were proud, even if they didn't show it. Winthrop said so. He always thought Gorion was too stuffy. I don't know though.~ */
  IF ~~ THEN GOTO 120
END

IF ~~ THEN BEGIN 120 // from: 119.0
  SAY #38708 /* ~Ooh, my head still hurts, and I keep thinking I see... things in the corners. Too much death here for my liking. It's in everything, even us.~ */
  IF ~~ THEN GOTO 116
END

IF ~  Global("CHAPTER","GLOBAL",13)
Global("ImoenClone1","LOCALS",1)
~ THEN BEGIN 121 // from:
  SAY #38734 /* ~What a tortured creature that clone thing was. She was a copy? A copy of another person?~ [IMOENJ57] */
  IF ~~ THEN DO ~SetGlobal("ImoenClone1","LOCALS",2)
~ GOTO 122
END

IF ~~ THEN BEGIN 122 // from: 121.0
  SAY #38735 /* ~I wonder why Irenicus made her? I doubt he took pleasure in her company; he's beyond that. He's fascinated with death. He showed me... over and over...~ */
  IF ~~ THEN EXIT
END

IF ~  Global("CHAPTER","GLOBAL",13)
Global("ImoenLibrary","AR0602",1)
~ THEN BEGIN 123 // from:
  SAY #38787 /* ~Oh... this reminds me so much of Candlekeep. Dusty old tomes all over, bookcases nearly spilling. It's... like we never left...~ [IMOENJ58] */
  IF ~~ THEN DO ~SetGlobal("ImoenLibrary","AR0602",2)
~ GOTO 124
END

IF ~~ THEN BEGIN 124 // from: 123.0
  SAY #38788 /* ~But we did, didn't we? <CHARNAME>, I just want to go home again. It doesn't matter where it is, just so long as I can call it home.~ */
  IF ~~ THEN EXIT
END

IF ~  Global("CHAPTER","GLOBAL",13)
Global("ImoenIlyich","LOCALS",1)
~ THEN BEGIN 125 // from:
  SAY #39761 /* ~Those dwarves that attacked us—I read about them when you were skipping out of lessons back in Candlekeep.~ [IMOENJ59] */
  IF ~~ THEN DO ~SetGlobal("ImoenIlyich","LOCALS",2)
~ GOTO 92
END

IF ~  Global("CHAPTER","GLOBAL",13)
False()
~ THEN BEGIN 126 // from:
  SAY #47215 /* ~Something strange up here. Be careful, this place has all manner of dangerous devices in it. I don't know what they do, but I know we would be safer if we shut them off.~ */
  IF ~~ THEN GOTO 127
END

IF ~~ THEN BEGIN 127 // from: 126.0
  SAY #47220 /* ~Do you smell that? Smells like lightning, but indoors? That can't be right. I think I remember. Look to the right... the machine making the storm...~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 128 // from:
  SAY #49035 /* ~Get out of my way! I don't want to fight any of you; I just want to leave!~ */
  IF ~~ THEN EXTERN ~ISHADMT1~ 7
END

IF ~~ THEN BEGIN 129 // from:
  SAY #56483 /* ~Athkatla? That's... the City of Coin, right? A merchant city in Amn. We come from the Sword Coast, a ways to the north. Why do you think we're in Athkatla?~ */
  IF ~~ THEN EXTERN ~YOSHIMO~ 42
END

IF ~~ THEN BEGIN 130 // from: 116.0
  SAY #58492 /* ~<CHARNAME>, say we won't look back. I don't care if he can "tap the power" or access whatever avatar stuff. We've gotta get away from all this death.~ */
  IF ~~ THEN REPLY #58493 /* ~I have no intention of looking back. Our "host" has proven his evil intent.~ */ GOTO 131
  IF ~~ THEN REPLY #58494 /* ~If it were just me, I might be interested in what he wants, but I will not have you harmed further.~ */ GOTO 132
  IF ~~ THEN REPLY #58495 /* ~If he's uncovered something I can use, perhaps I will "encourage" him to reveal it.~ */ GOTO 133
END

IF ~~ THEN BEGIN 131 // from: 130.0
  SAY #58496 /* ~Means a lot to hear that. I can't stand all these shadows...~ */
  IF ~~ THEN JOURNAL #843 /* ~Does my captor know a way for me to gain power?

Imoen said something odd. Our captor apparently has some insight into my... condition as a child of Bhaal. He supposedly mentioned a means of allowing me to tap that power. I am in no position to question him at the moment, but I will keep it in mind for the future. ~ */ FLAGS 128 EXIT
END

IF ~~ THEN BEGIN 132 // from: 130.1
  SAY #58497 /* ~I appreciate that, but I doubt he meant you any good either. Didn't spare you the knives any more than me. Come on, I gotta get away from all these shadows.~ */
  IF ~~ THEN JOURNAL #843 /* ~Does my captor know a way for me to gain power?

Imoen said something odd. Our captor apparently has some insight into my... condition as a child of Bhaal. He supposedly mentioned a means of allowing me to tap that power. I am in no position to question him at the moment, but I will keep it in mind for the future. ~ */ FLAGS 128 EXIT
END

IF ~~ THEN BEGIN 133 // from: 130.2
  SAY #58498 /* ~Let it go, please? Whoever he is and whatever he can do, above it all, he's a vile bastard that's hurt us both. Come on, I gotta get away from all this death.~ */
  IF ~~ THEN JOURNAL #843 /* ~Does my captor know a way for me to gain power?

Imoen said something odd. Our captor apparently has some insight into my... condition as a child of Bhaal. He supposedly mentioned a means of allowing me to tap that power. I am in no position to question him at the moment, but I will keep it in mind for the future. ~ */ FLAGS 128 EXIT
END

IF ~~ THEN BEGIN 134 // from: 78.0
  SAY #58502 /* ~He said something like "releasing power within you so it could be used," but if it means taking part in horrible things... I don't like this place. Can we go?~ */
  IF ~~ THEN JOURNAL #843 /* ~Does my captor know a way for me to gain power?

Imoen said something odd. Our captor apparently has some insight into my... condition as a child of Bhaal. He supposedly mentioned a means of allowing me to tap that power. I am in no position to question him at the moment, but I will keep it in mind for the future. ~ */ FLAGS 128 EXIT
END

IF ~~ THEN BEGIN 135 // from: 81.0
  SAY #58503 /* ~<CHARNAME>, I don't care if he could make us three ogres strong, I have to get out of this place. It bothers me. Makes me think I see... things.~ */
  IF ~~ THEN JOURNAL #843 /* ~Does my captor know a way for me to gain power?

Imoen said something odd. Our captor apparently has some insight into my... condition as a child of Bhaal. He supposedly mentioned a means of allowing me to tap that power. I am in no position to question him at the moment, but I will keep it in mind for the future. ~ */ FLAGS 128 EXIT
END

IF ~~ THEN BEGIN 136 // from: 94.0 93.0
  SAY #58504 /* ~As if I need another reminder. <CHARNAME>, I don't care what power this guy thinks he can tap in you, he's just sick to the core. We can't ever look back.~ */
  IF ~~ THEN JOURNAL #843 /* ~Does my captor know a way for me to gain power?

Imoen said something odd. Our captor apparently has some insight into my... condition as a child of Bhaal. He supposedly mentioned a means of allowing me to tap that power. I am in no position to question him at the moment, but I will keep it in mind for the future. ~ */ FLAGS 128 EXIT
END

IF ~~ THEN BEGIN 137 // from:
  SAY #64547 /* ~He... he's talking about *me*, isn't he? Part of my soul will bring him back to life too.~ */
  IF ~~ THEN EXTERN ~SAREV25A~ 27
END

IF ~~ THEN BEGIN 138 // from:
  SAY #64549 /* ~I'm not as "sweet" as you think, Sarevok. And you don't deserve a second chance at life! You killed Gorion!~ */
  IF ~~ THEN EXTERN ~SAREV25A~ 28
END

IF ~~ THEN BEGIN 139 // from:
  SAY #64552 /* ~Nor would you get it! I... I don't know, <CHARNAME>. He doesn't deserve life. But... if it's important... I'll give up part of my soul. You saved mine from Bodhi; you shouldn't have to sacrifice again.~ */
  IF ~~ THEN REPLY #64569 /* ~If you're certain, then do it. This is important.~ */ EXTERN ~SAREV25A~ 29
  IF ~~ THEN REPLY #64572 /* ~Your own sacrifice will not be forgotten, Imoen.~ */ EXTERN ~SAREV25A~ 29
  IF ~~ THEN REPLY #64574 /* ~No, Imoen. I won't allow you to give up part of your soul for me.~ */ EXTERN ~SAREV25A~ 31
  IF ~~ THEN REPLY #64575 /* ~Forget it. Neither of us is giving Sarevok anything. I don't trust him.~ */ EXTERN ~SAREV25A~ 32
END

IF ~~ THEN BEGIN 140 // from:
  SAY #64578 /* ~I would lay down my life for <CHARNAME>, and more. In an instant. Always. Maybe one day, "brother," you'll understand what that means.~ */
  IF ~~ THEN EXTERN ~SAREV25A~ 30
END

IF ~~ THEN BEGIN 141 // from:
  SAY #64584 /* ~It's just... just a spark, like he said. You saved me, <CHARNAME>. You came for me in Spellhold, and you killed Bodhi. If this needs to be done, then I want to do it. I owe you, no matter what you say.~ */
  IF ~~ THEN REPLY #64586 /* ~I didn't save your soul just to have you give it up, even part of it.~ */ EXTERN ~SAREV25A~ 31
  IF ~~ THEN REPLY #64587 /* ~I said no, and I meant it.~ */ EXTERN ~SAREV25A~ 31
  IF ~~ THEN REPLY #64589 /* ~If... if you're certain... then all right.~ */ EXTERN ~SAREV25A~ 29
  IF ~~ THEN REPLY #64591 /* ~Never mind. Neither of us is giving up anything to Sarevok.~ */ EXTERN ~SAREV25A~ 32
END

IF ~~ THEN BEGIN 142 // from:
  SAY #64649 /* ~No more worthy than you, "brother." And I've learned things since we last met that you couldn't begin to dream of.~ [IMOE2524] */
  IF ~~ THEN EXTERN ~SAREV25A~ 36
END

IF ~~ THEN BEGIN 143 // from:
  SAY #64655 /* ~So why don't you go back to being just dead and stop bothering us? I hope <CHARNAME> leaves you to rot!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 144 // from:
  SAY #64705 /* ~Hmph. You'd better. I don't... feel any differently, though. Somehow I thought I would.~ */
  IF ~~ THEN EXTERN ~SAREV25A~ 41
END

IF ~~ THEN BEGIN 145 // from:
  SAY #64708 /* ~You weren't *sure* that it would work?! I knew it. You were bluffing the whole time!~ */
  IF ~~ THEN EXTERN ~SAREV25A~ 42
END

IF ~~ THEN BEGIN 146 // from:
  SAY #64786 /* ~Take you with us?! So you can betray us, stab us in the back? Why would we ever want you with us, Sarevok?~ */
  IF ~~ THEN EXTERN ~SAREV25A~ 54
END

IF ~~ THEN BEGIN 147 // from:
  SAY #65878 /* ~No! No, Gorion, don't say those things! Please!~ */
  IF ~~ THEN EXTERN ~HGWRA01~ 13
END

IF ~~ THEN BEGIN 148 // from:
  SAY #66129 /* ~Umm... not to be rude or anything, but I'm rather glad you didn't...~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 149 // from:
  SAY #67749 /* ~I know it's hard when you learn your father was a god of pure evil. You just have to find a way to deal with it... I did. Eventually. ~ */
  IF ~  !IsValidForPartyDialogue("Cernd")
~ THEN EXTERN ~SARBHA02~ 2
  IF ~  IsValidForPartyDialogue("Cernd")
~ THEN EXTERN ~CERNDJ~ 145
END

IF ~~ THEN BEGIN 150 // from:
  SAY #67822 /* ~If I could have gotten rid of it voluntarily, I would have done it a long time ago. *shudder* Take it... I don't want it. I never wanted it.~ */
  IF ~~ THEN EXTERN ~FINSOL01~ 8
END

IF ~~ THEN BEGIN 151 // from:
  SAY #67825 /* ~You mean me, don't you? You're talking about the part of me that's... the taint. The powers I've developed.~ */
  IF ~~ THEN EXTERN ~FINSOL01~ 7
END

IF ~~ THEN BEGIN 152 // from:
  SAY #67917 /* ~So... it's finally come down to this, has it? After all we've been through, right from Candlekeep and Baldur's Gate, through Irenicus and Bodhi and their plans... I wonder what Gorion would say now?~ [IMOE2527] */
  IF ~~ THEN GOTO 153
END

IF ~~ THEN BEGIN 153 // from: 152.0
  SAY #67918 /* ~Me... I... I'll miss you, if you go. You're more than a <PRO_BROTHERSISTER> to me... I owe you everything. But who wouldn't want to see the planes? Who wouldn't want to see this through to the proper end?~ */
  IF ~  True()
~ THEN EXTERN ~FINSOL01~ 28
  IF ~  IsValidForPartyDialogue("Valygar")
Global("ValygarRomanceActive","GLOBAL",2)
~ THEN EXTERN ~VALYGARJ~ 139
  IF ~  IsValidForPartyDialogue("Anomen")
Global("AnomenRomanceActive","GLOBAL",2)
~ THEN EXTERN ~ANOMENJ~ 365
  IF ~  IsValidForPartyDialogue("Viconia")
Global("ViconiaRomanceActive","GLOBAL",2)
~ THEN EXTERN ~VICONIJ~ 438
  IF ~  IsValidForPartyDialogue("Aerie")
Global("AerieRomanceActive","GLOBAL",2)
~ THEN EXTERN ~AERIEJ~ 248
  IF ~  IsValidForPartyDialogue("Jaheira")
Global("JaheiraRomanceActive","GLOBAL",2)
~ THEN EXTERN ~JAHEIRAJ~ 563
  IF ~  IsValidForPartyDialogue("Valygar")
!Global("ValygarRomanceActive","GLOBAL",2)
~ THEN EXTERN ~VALYGARJ~ 138
  IF ~  IsValidForPartyDialogue("Anomen")
!Global("AnomenRomanceActive","GLOBAL",2)
~ THEN EXTERN ~ANOMENJ~ 364
  IF ~  IsValidForPartyDialogue("Viconia")
!Global("ViconiaRomanceActive","GLOBAL",2)
~ THEN EXTERN ~VICONIJ~ 436
  IF ~  IsValidForPartyDialogue("Aerie")
!Global("AerieRomanceActive","GLOBAL",2)
~ THEN EXTERN ~AERIEJ~ 246
  IF ~  IsValidForPartyDialogue("Jaheira")
!Global("JaheiraRomanceActive","GLOBAL",2)
~ THEN EXTERN ~JAHEIRAJ~ 561
END

IF ~~ THEN BEGIN 154 // from:
  SAY #67932 /* ~Ewww! That's disgusting. I don't even want to imagine Bhaal mating with one of those overgrown monsters.~ */
  IF ~~ THEN EXTERN ~SARMEL01~ 44
END

IF ~~ THEN BEGIN 155 // from:
  SAY #68088 /* ~Good luck, <CHARNAME>. I'll miss ya... although somehow I just know we'll see each other again. Maybe I'll getcha out of trouble again... ya never know!~ [IMOE2526] */
  IF ~  True()
~ THEN EXTERN ~FINSOL01~ 33
  IF ~  IsValidForPartyDialogue("Valygar")
Global("ValygarRomanceActive","GLOBAL",2)
~ THEN EXTERN ~VALYGARJ~ 147
  IF ~  IsValidForPartyDialogue("Anomen")
Global("AnomenRomanceActive","GLOBAL",2)
~ THEN EXTERN ~ANOMENJ~ 374
  IF ~  IsValidForPartyDialogue("Viconia")
Global("ViconiaRomanceActive","GLOBAL",2)
~ THEN EXTERN ~VICONIJ~ 448
  IF ~  IsValidForPartyDialogue("Aerie")
Global("AerieRomanceActive","GLOBAL",2)
~ THEN EXTERN ~AERIEJ~ 259
  IF ~  IsValidForPartyDialogue("Jaheira")
Global("JaheiraRomanceActive","GLOBAL",2)
~ THEN EXTERN ~JAHEIRAJ~ 572
END

IF ~~ THEN BEGIN 156 // from:
  SAY #68091 /* ~So you're going to stay a mortal? Wow, after all that, we're going to end up on the road again! Must feel good, though, to have your own future ahead of you again, though. No?~ [IMOE2525] */
  IF ~~ THEN GOTO 157
END

IF ~~ THEN BEGIN 157 // from: 156.0
  SAY #68092 /* ~It'll be the first time we'll be able to pick our path since we left Candlekeep! I can't wait!~ */
  IF ~  True()
~ THEN EXTERN ~FINSOL01~ 33
  IF ~  IsValidForPartyDialogue("Valygar")
Global("ValygarRomanceActive","GLOBAL",2)
~ THEN EXTERN ~VALYGARJ~ 148
  IF ~  IsValidForPartyDialogue("Anomen")
Global("AnomenRomanceActive","GLOBAL",2)
~ THEN EXTERN ~ANOMENJ~ 375
  IF ~  IsValidForPartyDialogue("Viconia")
Global("ViconiaRomanceActive","GLOBAL",2)
~ THEN EXTERN ~VICONIJ~ 449
  IF ~  IsValidForPartyDialogue("Aerie")
Global("AerieRomanceActive","GLOBAL",2)
~ THEN EXTERN ~AERIEJ~ 260
  IF ~  IsValidForPartyDialogue("Jaheira")
Global("JaheiraRomanceActive","GLOBAL",2)
~ THEN EXTERN ~JAHEIRAJ~ 573
END

IF ~~ THEN BEGIN 158 // from:
  SAY #70383 /* ~I bet the front gate isn't the only way in, <CHARNAME>. Even Candlekeep had some hidden back doors.~ */
  IF ~~ THEN EXTERN ~AMBAR01~ 19
  IF ~  IsValidForPartyDialogue("Cernd")
~ THEN EXTERN ~CERNDJ~ 146
END

IF ~~ THEN BEGIN 159 // from:
  SAY #70395 /* ~I wonder, <CHARNAME>... was that monk a captured spy, or was he here for some other reason? I guess we'll never know—a death that awful can't be undone.~ */
  IF ~~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Sarevok")
~ THEN EXTERN ~SAREV25J~ 9
END

IF ~~ THEN BEGIN 160 // from:
  SAY #70421 /* ~I'm not sure whether to be impressed by your unshakeable devotion to duty or appalled at your complete lack of initiative.~ */
  IF ~~ THEN EXTERN ~GORIMP01~ 8
END

IF ~~ THEN BEGIN 161 // from:
  SAY #70437 /* ~Why do I get the feeling this ghost's sense of duty is going to make things harder for us, <CHARNAME>?~ */
  IF ~~ THEN EXTERN ~FSSPIR2~ 2
END

IF ~~ THEN BEGIN 162 // from:
  SAY #70442 /* ~Ahhh... I knew this was coming! Everybody's always giving us tests, challenges, and trials. You'd think someone would trust us just on reputation by now!~ */
  IF ~~ THEN DO ~TriggerActivation("Tran3024",TRUE)
TriggerActivation("Tran3025",TRUE)
TriggerActivation("Tran3026",TRUE)
TriggerActivation("Exit3024",FALSE)
TriggerActivation("Exit3025",FALSE)
TriggerActivation("Exit3026",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 163 // from:
  SAY #70443 /* ~Sarevok! What are you doing here?! Get away from us!~ */
  IF ~  True()
~ THEN EXTERN ~SAREV25A~ 68
  IF ~  IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 265
  IF ~  IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 212
  IF ~  IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 581
END

IF ~~ THEN BEGIN 164 // from:
  SAY #70512 /* ~Oooo, I have a bad feeling about this...~ */
  IF ~  True()
~ THEN EXIT
  IF ~  IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 214
  IF ~  IsValidForPartyDialogue("Nalia")
~ THEN EXTERN ~NALIAJ~ 335
  IF ~  IsValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 152
END

IF ~~ THEN BEGIN 165 // from:
  SAY #70517 /* ~I didn't see *you* piping up with any useful information either, so keep your big yap shut! Jeez. Let's just go and try to find a way outta here, okay?~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 166 // from:
  SAY #70534 /* ~I don't believe it! You knew about Demogorgon! You sent us in there to be trapped forever!~ */
  IF ~~ THEN EXTERN ~GORODR1~ 35
END

IF ~~ THEN BEGIN 167 // from:
  SAY #70535 /* ~"Your foolishness can be forgiven"? Hmph. He's just askin' for trouble now.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 168 // from:
  SAY #70551 /* ~Uh-oh. You've *got* to be asking yourself what the stakes would be in a game some demon would want to play with you. Wouldn't you?~ */
  IF ~~ THEN EXTERN ~GORCAMB~ 18
END

IF ~~ THEN BEGIN 169 // from:
  SAY #71627 /* ~Ooo, an archmage! I like the sound of that! But you forgot beautiful. All of the sorceresses in Winthrop's books were beautiful and terrible. Watch, see? See how I flip my hair and glare at you... don't I look evil?~ */
  IF ~~ THEN EXTERN ~SARVOLO~ 9
END

IF ~~ THEN BEGIN 170 // from:
  SAY #72568 /* ~I admit I'm no cheese expert, but have you taken a good whiff of your pets recently? I don't know anyone who'd put something with the stench of this place in their mouth. ~ */
  IF ~~ THEN EXTERN ~BAZEYE01~ 10
  IF ~  IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 393
END

IF ~  AreaCheck("OH4230")
Global("OHR_FINALE","GLOBAL",18)
~ THEN BEGIN 171 // from:
  SAY #83179 /* ~<CHARNAME>! He's too powerful! We can't stay here!~ */
  IF ~~ THEN DO ~SetGlobal("OHR_FINALE","GLOBAL",19)
SetGlobalTimer("OHR_TIMER_ALORFIGHT","OH4230",THREE_MINUTES)
~ EXIT
  IF ~  IsValidForPartyDialogue("RASAAD")
~ THEN EXTERN ~RASAADJ~ 933
  IF ~  IsValidForPartyDialogue("HEXXAT")
~ THEN EXTERN ~HEXXATJ~ 619
END

IF ~~ THEN BEGIN 172 // from:
  SAY #82997 /* ~Um, aren't we technically trespassing?~ */
  IF ~~ THEN EXTERN ~KORGANJ~ 271
END

IF ~~ THEN BEGIN 173 // from:
  SAY #82764 /* ~You really are a cook, aren't you?~ */
  IF ~~ THEN EXTERN ~OHRKILLI~ 11
END

IF ~  Global("OHD_homeagain","OH5400",1)
~ THEN BEGIN 174 // from:
  SAY #92228 /* ~You always take me to such interesting places. Someday, I hope one of them isn't filled with people trying to kill us.~ */
  IF ~~ THEN DO ~SetGlobal("OHD_homeagain","OH5400",2)
~ EXIT
  IF ~  IsValidForPartyDialogue("jan")
~ THEN EXTERN ~JANJ~ 224
  IF ~  IsValidForPartyDialogue("valygar")
~ THEN EXTERN ~VALYGARJ~ 163
  IF ~  IsValidForPartyDialogue("nalia")
~ THEN EXTERN ~NALIAJ~ 340
  IF ~  IsValidForPartyDialogue("mazzy")
~ THEN EXTERN ~MAZZYJ~ 224
  IF ~  IsValidForPartyDialogue("korgan")
~ THEN EXTERN ~KORGANJ~ 274
  IF ~  IsValidForPartyDialogue("minsc")
~ THEN EXTERN ~MINSCJ~ 279
  IF ~  IsValidForPartyDialogue("jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 603
  IF ~  IsValidForPartyDialogue("edwin")
~ THEN EXTERN ~EDWINJ~ 223
  IF ~  IsValidForPartyDialogue("cernd")
~ THEN EXTERN ~CERNDJ~ 152
  IF ~  IsValidForPartyDialogue("aerie")
~ THEN EXTERN ~AERIEJ~ 276
END

IF ~  Dead("OHHDECOY")
AreaCheck("OH7300")
!Global("OHH_decoydead","OH7300",2)
~ THEN BEGIN 175 // from:
  SAY #85675 /* ~Are dead liches supposed to do that?~ */
  IF ~~ THEN DO ~SetGlobal("OHH_decoydead","OH7300",2)
~ EXIT
  IF ~  IsValidForPartyDialogue("hexxat")
~ THEN EXTERN ~HEXXATJ~ 840
  IF ~  IsValidForPartyDialogue("neera")
~ THEN EXTERN ~NEERAJ~ 551
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 176 // from:
  SAY #216402 /* ~Sorry I followed ya, but I never get out of Candlekeep and those monks are such a bore. Never any decent coin in their pockets neither. I... I saw Gorion, and I am SO sorry! Kinda figured something bad might happen to you out here. ~ */
  IF ~~ THEN REPLY #216404 /* ~How could you have known? Gorion did not even tell me.~ */ GOTO 177
  IF ~~ THEN REPLY #216405 /* ~I do not want you looking over my shoulder as I travel. Take your nosey little self back to the keep before Winthrop sees you are gone!~ */ GOTO 178
END

IF ~~ THEN BEGIN 177 // from: 176.0
  SAY #216403 /* ~I... accidentally... read a letter on his desk the other day. Can't remember exactly what it said, but he might still have... It might be on his... his body. Anyway, I'm not gonna let you wander around out here all alone. Never let a friend down, no, <PRO_SIRMAAM>! Stick with you until you say otherwise, I will!~ */
  IF ~~ THEN DO ~JoinParty()
~ EXIT
END

IF ~~ THEN BEGIN 178 // from: 176.1
  SAY #216406 /* ~Well... that's just fine! But even though you might not think so, you need me. SO, despite anything you say, I'm coming with you. So there!~ */
  IF ~~ THEN DO ~JoinParty()
~ EXIT
END

IF ~  False()
~ THEN BEGIN 179 // from:
  SAY #216407 /* ~I s'pose I'll be going. We're friends and all, but I guess I'll just wait till you change yer tune. I'll be around when you do.~ */
  IF ~~ THEN DO ~LeaveParty()
SetDialogue("IMOENP_")
~ EXIT
END

IF ~  HappinessLT(Myself,-290)
~ THEN BEGIN 180 // from:
  SAY #216409 /* ~Well, good! You've changed since we were friends anyway. Not nearly as much fun now. Should have stayed in Candlekeep, instead of wasting time with you gulley pennies.~ */
  IF ~~ THEN DO ~LeaveParty()
~ EXIT
END

IF ~~ THEN BEGIN 181 // from:
  SAY #228310 /* ~I'm getting a bad feeling about this guy, <CHARNAME>.~ */
  IF ~~ THEN EXTERN ~DORN_~ 16
  IF ~  InParty("JAHEIRA")
~ THEN EXTERN ~JAHEIRAJ~ 615
  IF ~  InParty("XAN")
~ THEN EXTERN ~XANJ~ 4
  IF ~  InParty("MINSC")
~ THEN EXTERN ~MINSCJ~ 290
END

IF ~~ THEN BEGIN 182 // from:
  SAY #230373 /* ~I know you CAN'T be talking about me.~ */
  IF ~~ THEN EXTERN ~DORNJ~ 1163
END

IF ~~ THEN BEGIN 183 // from:
  SAY #230520 /* ~Tell him you're joking, <CHARNAME>! What? I didn't— I never—~ */
  IF ~~ THEN EXTERN ~DORNJ~ 1214
END

IF ~~ THEN BEGIN 184 // from:
  SAY #230373 /* ~I know you CAN'T be talking about me.~ */
  IF ~~ THEN EXTERN ~DORNJ~ 1254
END

IF ~~ THEN BEGIN 185 // from:
  SAY #230520 /* ~Tell him you're joking, <CHARNAME>! What? I didn't— I never—~ */
  IF ~~ THEN EXTERN ~DORNJ~ 1305
END
