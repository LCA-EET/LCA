// creator  : weidu (version 24900)
// argument : DORNJ.DLG
// game     : .
// source   : ./override/DORNJ.DLG
// dialog   : .\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~DORNJ~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF ~~ THEN BEGIN 0 // from:
  SAY #77661 /* ~A principle for fools and weaklings looking for excuses not to do as they will. Why are you wasting time with this monk, <CHARNAME>?~ */
  IF ~~ THEN REPLY #77662 /* ~I have no idea, but I shall waste no more.~ */ EXTERN ~RASAAD~ 8
  IF ~~ THEN REPLY #77663 /* ~His tale interests me, Dorn. Be silent, or leave us. Go on, Rasaad. You were telling of your recent ventures.~ */ EXTERN ~RASAAD~ 26
END

IF ~~ THEN BEGIN 1 // from:
  SAY #78532 /* ~Looks like the killers missed a few.~ */
  IF ~~ THEN EXTERN ~RASAADJ~ 417
END

IF ~~ THEN BEGIN 2 // from:
  SAY #79229 /* ~But fine sport he'd make.~ */
  IF ~~ THEN EXTERN ~OHRJOLST~ 8
END

IF ~~ THEN BEGIN 3 // from:
  SAY #74795 /* ~Bollard Firejaw! Come and meet your doom!~ [OH74795] */
  IF ~~ THEN EXTERN ~OHDFIREJ~ 16
END

IF ~~ THEN BEGIN 4 // from:
  SAY #74797 /* ~Your feelings on the matter are of no consequence. All that matters is that you die in the name of my master, Ur-Gothoz!~ [OH74797] */
  IF ~~ THEN EXTERN ~OHDFIREJ~ 17
END

IF WEIGHT #3 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("OHD_KILL_GUESTS","LOCALS",1)
!IsValidForPartyDialogue("JAHEIRA")
~ THEN BEGIN 5 // from:
  SAY #74802 /* ~Kill them all! None must live to tell of our deeds.~ [OH74802] */
  IF ~~ THEN DO ~SetGlobal("OHD_KILL_GUESTS","LOCALS",2)
~ EXTERN ~OHDBRIDE~ 0
  IF ~  IsValidForPartyDialogue("EDWIN")
~ THEN DO ~SetGlobal("OHD_KILL_GUESTS","LOCALS",2)
~ EXTERN ~EDWINJ~ 198
  IF ~  IsValidForPartyDialogue("KORGAN")
~ THEN DO ~SetGlobal("OHD_KILL_GUESTS","LOCALS",2)
~ EXTERN ~KORGANJ~ 239
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN DO ~SetGlobal("OHD_KILL_GUESTS","LOCALS",2)
~ EXTERN ~VICONIJ~ 415
  IF ~  IsValidForPartyDialogue("IMOEN2")
~ THEN DO ~SetGlobal("OHD_KILL_GUESTS","LOCALS",2)
~ EXTERN ~IMOEN2J~ 58
END

IF WEIGHT #4 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("OHD_KILL_GUESTS","LOCALS",1)
IsValidForPartyDialogue("JAHEIRA")
~ THEN BEGIN 6 // from:
  SAY #74802 /* ~Kill them all! None must live to tell of our deeds.~ [OH74802] */
  IF ~~ THEN DO ~SetGlobal("OHD_KILL_GUESTS","LOCALS",2)
~ EXTERN ~JAHEIRAJ~ 538
  IF ~  IsValidForPartyDialogue("EDWIN")
~ THEN DO ~SetGlobal("OHD_KILL_GUESTS","LOCALS",2)
~ EXTERN ~EDWINJ~ 199
  IF ~  IsValidForPartyDialogue("KORGAN")
~ THEN DO ~SetGlobal("OHD_KILL_GUESTS","LOCALS",2)
~ EXTERN ~KORGANJ~ 240
  IF ~  IsValidForPartyDialogue("VICONIA")
~ THEN DO ~SetGlobal("OHD_KILL_GUESTS","LOCALS",2)
~ EXTERN ~VICONIJ~ 416
  IF ~  IsValidForPartyDialogue("IMOEN2")
~ THEN DO ~SetGlobal("OHD_KILL_GUESTS","LOCALS",2)
~ EXTERN ~IMOEN2J~ 59
END

IF ~~ THEN BEGIN 7 // from:
  SAY #75392 /* ~I would never betray Ur-Gothoz. I let Azothet believe I would to discover her scheme.~ [OH75392] */
  IF ~~ THEN EXTERN ~OHDUGOTH~ 41
END

IF ~~ THEN BEGIN 8 // from:
  SAY #75394 /* ~All I ask is that I be allowed to view the malevolent snake when you do.~ [OH75394] */
  IF ~~ THEN EXTERN ~OHDUGOTH~ 42
END

IF ~~ THEN BEGIN 9 // from: 455.0
  SAY #75436 /* ~I would never betray you, Ur-Gothoz. I will never relinquish my grasp on the power you supply. I let Azothet believe I would to discover her scheme.~ [OH75436] */
  IF ~~ THEN EXTERN ~OHDUGOTH~ 43
END

IF ~~ THEN BEGIN 10 // from:
  SAY #75438 /* ~I tell you I am a loyal servant, and I've the blood on my hands to prove it. I've half-filled a Hell at your command. Watch your foes continue to fall beneath my blade or end me now. The choice is yours.~ [OH75438] */
  IF ~~ THEN EXTERN ~OHDUGOTH~ 44
END

IF ~~ THEN BEGIN 11 // from:
  SAY #77311 /* ~Silence, demon!~ [OH77311] */
  IF ~~ THEN EXTERN ~OHDUGOTH~ 46
END

IF ~~ THEN BEGIN 12 // from:
  SAY #77317 /* ~It's yours no longer, glabrezu!~ [OH77317] */
  IF ~~ THEN EXTERN ~OHDUGOTH~ 48
END

IF ~~ THEN BEGIN 13 // from:
  SAY #77319 /* ~Someday, perhaps. But not today.~ [OH77319] */
  IF ~~ THEN DO ~ActionOverride("ohdugoth",Enemy())
Attack("ohdugoth")
~ EXIT
END

IF ~~ THEN BEGIN 14 // from:
  SAY #98500 /* ~What nonsense is this? I'll hear no more of it!~ */
  IF ~~ THEN EXTERN ~CELVAN~ 1
END

IF ~~ THEN BEGIN 15 // from:
  SAY #98521 /* ~Insight? From you? I care naught for your insight, woman. Play your mind games with someone else!~ */
  IF ~~ THEN EXTERN ~TRGYP02~ 31
END

IF ~~ THEN BEGIN 16 // from: 840.8 839.8 838.8
  SAY #98515 /* ~You should have gone out of your way to hide, vampire. You'll regret your carelessness by the time I'm done with you.~ */
  IF ~  !IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("MINSC")
~ THEN EXTERN ~C6BODHI~ 14
  IF ~  IsValidForPartyDialogue("JAHEIRA")
~ THEN EXTERN ~JAHEIRAJ~ 488
  IF ~  IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("JAHEIRA")
~ THEN EXTERN ~ANOMENJ~ 278
  IF ~  IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("ANOMEN")
~ THEN EXTERN ~HAERDAJ~ 128
  IF ~  IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("HAERDALIS")
~ THEN EXTERN ~KORGANJ~ 158
  IF ~  IsValidForPartyDialogue("MINSC")
!IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~MINSCJ~ 184
  IF ~  IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("MINSC")
!IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~IMOEN2J~ 36
  IF ~  Global("OHR_rint_bodhi","GLOBAL",0)
InParty("rasaad")
IsValidForPartyDialogue("rasaad")
~ THEN DO ~SetGlobal("OHR_rint_bodhi","GLOBAL",1)
~ EXTERN ~RASAADJ~ 312
END

IF ~~ THEN BEGIN 17 // from:
  SAY #98501 /* ~What infernal land have you dragged me to now, <CHARNAME>? Tell me what new creatures will fall before us!~ */
  IF ~  !IsValidForPartyDialogue("Imoen2")
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
!IsValidForPartyDialogue("Edwin")
~ THEN UNSOLVED_JOURNAL #23537 /* ~Finding Irenicus in Hell

Irenicus's death did not have the same effect as Bodhi's did, and my soul has not returned to me. Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and me inexorably behind. And such was the power that my party members that had fallen or were near death were drawn with us as well! Together we are in Hell, and I am certain Irenicus is somewhere near. Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ */ EXIT
  IF ~  IsValidForPartyDialogue("Imoen2")
~ THEN UNSOLVED_JOURNAL #23537 /* ~Finding Irenicus in Hell

Irenicus's death did not have the same effect as Bodhi's did, and my soul has not returned to me. Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and me inexorably behind. And such was the power that my party members that had fallen or were near death were drawn with us as well! Together we are in Hell, and I am certain Irenicus is somewhere near. Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ */ EXTERN ~IMOEN2J~ 10
  IF ~  !IsValidForPartyDialogue("Imoen2")
IsValidForPartyDialogue("Aerie")
~ THEN UNSOLVED_JOURNAL #23537 /* ~Finding Irenicus in Hell

Irenicus's death did not have the same effect as Bodhi's did, and my soul has not returned to me. Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and me inexorably behind. And such was the power that my party members that had fallen or were near death were drawn with us as well! Together we are in Hell, and I am certain Irenicus is somewhere near. Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ */ EXTERN ~AERIEJ~ 131
  IF ~  !IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("Aerie")
IsValidForPartyDialogue("Minsc")
~ THEN UNSOLVED_JOURNAL #23537 /* ~Finding Irenicus in Hell

Irenicus's death did not have the same effect as Bodhi's did, and my soul has not returned to me. Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and me inexorably behind. And such was the power that my party members that had fallen or were near death were drawn with us as well! Together we are in Hell, and I am certain Irenicus is somewhere near. Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ */ EXTERN ~MINSCJ~ 155
  IF ~  !IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Valygar")
~ THEN UNSOLVED_JOURNAL #23537 /* ~Finding Irenicus in Hell

Irenicus's death did not have the same effect as Bodhi's did, and my soul has not returned to me. Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and me inexorably behind. And such was the power that my party members that had fallen or were near death were drawn with us as well! Together we are in Hell, and I am certain Irenicus is somewhere near. Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ */ EXTERN ~VALYGARJ~ 77
  IF ~  !IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("Korgan")
~ THEN UNSOLVED_JOURNAL #23537 /* ~Finding Irenicus in Hell

Irenicus's death did not have the same effect as Bodhi's did, and my soul has not returned to me. Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and me inexorably behind. And such was the power that my party members that had fallen or were near death were drawn with us as well! Together we are in Hell, and I am certain Irenicus is somewhere near. Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ */ EXTERN ~KORGANJ~ 115
  IF ~  !IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("Jan")
~ THEN UNSOLVED_JOURNAL #23537 /* ~Finding Irenicus in Hell

Irenicus's death did not have the same effect as Bodhi's did, and my soul has not returned to me. Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and me inexorably behind. And such was the power that my party members that had fallen or were near death were drawn with us as well! Together we are in Hell, and I am certain Irenicus is somewhere near. Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ */ EXTERN ~JANJ~ 147
  IF ~  !IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("Viconia")
~ THEN UNSOLVED_JOURNAL #23537 /* ~Finding Irenicus in Hell

Irenicus's death did not have the same effect as Bodhi's did, and my soul has not returned to me. Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and me inexorably behind. And such was the power that my party members that had fallen or were near death were drawn with us as well! Together we are in Hell, and I am certain Irenicus is somewhere near. Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ */ EXTERN ~VICONIJ~ 117
  IF ~  !IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Viconia")
IsValidForPartyDialogue("Yoshimo")
~ THEN UNSOLVED_JOURNAL #23537 /* ~Finding Irenicus in Hell

Irenicus's death did not have the same effect as Bodhi's did, and my soul has not returned to me. Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and me inexorably behind. And such was the power that my party members that had fallen or were near death were drawn with us as well! Together we are in Hell, and I am certain Irenicus is somewhere near. Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ */ EXTERN ~YOSHJ~ 90
  IF ~  !IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Yoshimo")
IsValidForPartyDialogue("Jaheira")
~ THEN UNSOLVED_JOURNAL #23537 /* ~Finding Irenicus in Hell

Irenicus's death did not have the same effect as Bodhi's did, and my soul has not returned to me. Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and me inexorably behind. And such was the power that my party members that had fallen or were near death were drawn with us as well! Together we are in Hell, and I am certain Irenicus is somewhere near. Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ */ EXTERN ~JAHEIRAJ~ 450
  IF ~  !IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Cernd")
~ THEN UNSOLVED_JOURNAL #23537 /* ~Finding Irenicus in Hell

Irenicus's death did not have the same effect as Bodhi's did, and my soul has not returned to me. Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and me inexorably behind. And such was the power that my party members that had fallen or were near death were drawn with us as well! Together we are in Hell, and I am certain Irenicus is somewhere near. Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ */ EXTERN ~CERNDJ~ 100
  IF ~  !IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Jan")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Cernd")
IsValidForPartyDialogue("Mazzy")
~ THEN UNSOLVED_JOURNAL #23537 /* ~Finding Irenicus in Hell

Irenicus's death did not have the same effect as Bodhi's did, and my soul has not returned to me. Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and me inexorably behind. And such was the power that my party members that had fallen or were near death were drawn with us as well! Together we are in Hell, and I am certain Irenicus is somewhere near. Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ */ EXTERN ~MAZZYJ~ 166
  IF ~  !IsValidForPartyDialogue("Imoen2")
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
IsValidForPartyDialogue("Anomen")
~ THEN UNSOLVED_JOURNAL #23537 /* ~Finding Irenicus in Hell

Irenicus's death did not have the same effect as Bodhi's did, and my soul has not returned to me. Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and me inexorably behind. And such was the power that my party members that had fallen or were near death were drawn with us as well! Together we are in Hell, and I am certain Irenicus is somewhere near. Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ */ EXTERN ~ANOMENJ~ 258
  IF ~  !IsValidForPartyDialogue("Imoen2")
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
IsValidForPartyDialogue("HaerDalis")
~ THEN UNSOLVED_JOURNAL #23537 /* ~Finding Irenicus in Hell

Irenicus's death did not have the same effect as Bodhi's did, and my soul has not returned to me. Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and me inexorably behind. And such was the power that my party members that had fallen or were near death were drawn with us as well! Together we are in Hell, and I am certain Irenicus is somewhere near. Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ */ EXTERN ~HAERDAJ~ 100
  IF ~  !IsValidForPartyDialogue("Imoen2")
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
IsValidForPartyDialogue("Keldorn")
~ THEN UNSOLVED_JOURNAL #23537 /* ~Finding Irenicus in Hell

Irenicus's death did not have the same effect as Bodhi's did, and my soul has not returned to me. Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and me inexorably behind. And such was the power that my party members that had fallen or were near death were drawn with us as well! Together we are in Hell, and I am certain Irenicus is somewhere near. Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ */ EXTERN ~KELDORJ~ 189
  IF ~  !IsValidForPartyDialogue("Imoen2")
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
IsValidForPartyDialogue("Nalia")
~ THEN UNSOLVED_JOURNAL #23537 /* ~Finding Irenicus in Hell

Irenicus's death did not have the same effect as Bodhi's did, and my soul has not returned to me. Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and me inexorably behind. And such was the power that my party members that had fallen or were near death were drawn with us as well! Together we are in Hell, and I am certain Irenicus is somewhere near. Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ */ EXTERN ~NALIAJ~ 268
  IF ~  !IsValidForPartyDialogue("Imoen2")
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
IsValidForPartyDialogue("Edwin")
~ THEN JOURNAL #23537 /* ~Finding Irenicus in Hell

Irenicus's death did not have the same effect as Bodhi's did, and my soul has not returned to me. Perhaps it was because of the power he gathered from the Tree of Life, or because Bodhi was undead. Regardless, Irenicus has fallen, dragging both my soul and me inexorably behind. And such was the power that my party members that had fallen or were near death were drawn with us as well! Together we are in Hell, and I am certain Irenicus is somewhere near. Somehow, through all this, I feel I must find him and battle him once and for all to get my soul back.~ */ FLAGS 128 EXTERN ~EDWINJ~ 95
  IF ~  Global("OHR_rinthell","GLOBAL",0)
InParty("rasaad")
IsValidForPartyDialogue("rasaad")
~ THEN DO ~SetGlobal("OHR_rinthell","GLOBAL",1)
~ EXTERN ~RASAADJ~ 313
END

IF ~~ THEN BEGIN 18 // from:
  SAY #98502 /* ~Pretty words, mage. But pretty words will not save you from my wrath!~ */
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
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
  IF ~  IsValidForPartyDialogue("Cernd")
~ THEN EXTERN ~CERNDJ~ 119
  IF ~  !IsValidForPartyDialogue("Cernd")
IsValidForPartyDialogue("Nalia")
~ THEN EXTERN ~NALIAJ~ 287
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 150
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 276
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 214
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 159
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 123
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 159
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 126
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
IsValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 168
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 180
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
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
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
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
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
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
  IF ~  Gender(Player1,MALE)
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
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
  IF ~  Gender(Player1,FEMALE)
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
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
~ THEN EXTERN ~IMOEN2J~ 39
  IF ~  Global("OHR_rintirenicushell","GLOBAL",0)
InParty("rasaad")
IsValidForPartyDialogue("rasaad")
~ THEN DO ~SetGlobal("OHR_rintirenicushell","GLOBAL",1)
~ EXTERN ~RASAADJ~ 314
END

IF ~~ THEN BEGIN 19 // from:
  SAY #98502 /* ~Pretty words, mage. But pretty words will not save you from my wrath!~ */
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
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
  IF ~  IsValidForPartyDialogue("Cernd")
~ THEN EXTERN ~CERNDJ~ 119
  IF ~  !IsValidForPartyDialogue("Cernd")
IsValidForPartyDialogue("Nalia")
~ THEN EXTERN ~NALIAJ~ 287
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 150
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 276
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 214
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 159
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 123
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 159
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 126
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
IsValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 168
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 180
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
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
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
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
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
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
  IF ~  Gender(Player1,MALE)
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
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
  IF ~  Gender(Player1,FEMALE)
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
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
~ THEN EXTERN ~IMOEN2J~ 39
  IF ~  Global("OHR_rintirenicushell2","GLOBAL",0)
InParty("rasaad")
IsValidForPartyDialogue("rasaad")
~ THEN DO ~SetGlobal("OHR_rintirenicushell2","GLOBAL",1)
~ EXTERN ~RASAADJ~ 315
END

IF ~~ THEN BEGIN 20 // from:
  SAY #98502 /* ~Pretty words, mage. But pretty words will not save you from my wrath!~ */
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
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
  IF ~  IsValidForPartyDialogue("Cernd")
~ THEN EXTERN ~CERNDJ~ 119
  IF ~  !IsValidForPartyDialogue("Cernd")
IsValidForPartyDialogue("Nalia")
~ THEN EXTERN ~NALIAJ~ 287
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 150
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 276
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 214
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 159
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 123
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 159
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 126
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
IsValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 168
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 180
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
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
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
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
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
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
  IF ~  Gender(Player1,MALE)
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
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
  IF ~  Gender(Player1,FEMALE)
!IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
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
~ THEN EXTERN ~IMOEN2J~ 39
  IF ~  Global("OHR_rintirenicushell3","GLOBAL",0)
InParty("rasaad")
IsValidForPartyDialogue("rasaad")
~ THEN DO ~SetGlobal("OHR_rintirenicushell3","GLOBAL",1)
~ EXTERN ~RASAADJ~ 316
END

IF ~~ THEN BEGIN 21 // from:
  SAY #98502 /* ~Pretty words, mage. But pretty words will not save you from my wrath!~ */
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
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
  IF ~  IsValidForPartyDialogue("Cernd")
~ THEN EXTERN ~CERNDJ~ 119
  IF ~  !IsValidForPartyDialogue("Cernd")
IsValidForPartyDialogue("Nalia")
~ THEN EXTERN ~NALIAJ~ 287
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 150
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 276
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 214
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 159
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 123
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
IsValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 159
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 126
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
IsValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 168
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("HaerDalis")
!IsValidForPartyDialogue("Viconia")
!IsValidForPartyDialogue("Edwin")
!IsValidForPartyDialogue("Jan")
IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 180
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
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
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
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
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
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
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
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
Gender(Player1,MALE)
~ THEN EXTERN ~IMOEN2J~ 31
  IF ~  !IsValidForPartyDialogue("Cernd")
!IsValidForPartyDialogue("Nalia")
!IsValidForPartyDialogue("Korgan")
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
Gender(Player1,FEMALE)
~ THEN EXTERN ~IMOEN2J~ 39
  IF ~  Global("OHR_rintirenicushell4","GLOBAL",0)
InParty("rasaad")
IsValidForPartyDialogue("rasaad")
~ THEN DO ~SetGlobal("OHR_rintirenicushell4","GLOBAL",1)
~ EXTERN ~RASAADJ~ 317
END

IF ~~ THEN BEGIN 22 // from:
  SAY #98512 /* ~I pick my own fights, <PRO_RACE>. And I choose this one.~ */
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
  IF ~  IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~PLAYER1~ 34
  IF ~  InParty("rasaad")
IsValidForPartyDialogue("rasaad")
InMyArea("rasaad")
!Global("RasaadRomanceActive","GLOBAL",2)
Global("OHR_TreeofLife","GLOBAL",0)
~ THEN EXTERN ~PLAYER1~ 55
  IF ~  InParty("rasaad")
IsValidForPartyDialogue("rasaad")
InMyArea("rasaad")
Global("RasaadRomanceActive","GLOBAL",2)
Global("OHR_TreeofLife","GLOBAL",0)
~ THEN EXTERN ~PLAYER1~ 56
  IF ~  InParty("wilson")
IsValidForPartyDialogue("wilson")
InMyArea("wilson")
Global("OHR_WilsonTreeofLife","GLOBAL",0)
~ THEN EXTERN ~PLAYER1~ 57
END

IF ~~ THEN BEGIN 23 // from:
  SAY #98513 /* ~No challenge is insurmountable to Dorn Il-Khan!~ */
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
  IF ~  IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~PLAYER1~ 34
  IF ~  InParty("rasaad")
IsValidForPartyDialogue("rasaad")
InMyArea("rasaad")
!Global("RasaadRomanceActive","GLOBAL",2)
Global("OHR_TreeofLife","GLOBAL",0)
~ THEN EXTERN ~PLAYER1~ 55
  IF ~  InParty("rasaad")
IsValidForPartyDialogue("rasaad")
InMyArea("rasaad")
Global("RasaadRomanceActive","GLOBAL",2)
Global("OHR_TreeofLife","GLOBAL",0)
~ THEN EXTERN ~PLAYER1~ 56
  IF ~  InParty("wilson")
IsValidForPartyDialogue("wilson")
InMyArea("wilson")
Global("OHR_WilsonTreeofLife","GLOBAL",0)
~ THEN EXTERN ~PLAYER1~ 57
END

IF ~~ THEN BEGIN 24 // from:
  SAY #98505 /* ~Oh, shut up.~ */
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #98506 /* ~Neither you nor I will be satisfied with this husk of a <PRO_MANWOMAN> standing before me.~ */
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #98507 /* ~Let's go make you complete once more.~ */
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
  IF ~  IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~PLAYER1~ 34
  IF ~  InParty("rasaad")
IsValidForPartyDialogue("rasaad")
InMyArea("rasaad")
!Global("RasaadRomanceActive","GLOBAL",2)
Global("OHR_TreeofLife","GLOBAL",0)
~ THEN EXTERN ~PLAYER1~ 55
  IF ~  InParty("rasaad")
IsValidForPartyDialogue("rasaad")
InMyArea("rasaad")
Global("RasaadRomanceActive","GLOBAL",2)
Global("OHR_TreeofLife","GLOBAL",0)
~ THEN EXTERN ~PLAYER1~ 56
  IF ~  InParty("wilson")
IsValidForPartyDialogue("wilson")
InMyArea("wilson")
Global("OHR_WilsonTreeofLife","GLOBAL",0)
~ THEN EXTERN ~PLAYER1~ 57
END

IF ~~ THEN BEGIN 27 // from:
  SAY #98514 /* ~I would see him live again a thousand times that I might slay him a thousand times more—but a single death will suffice for our purposes. You are victorious, <CHARNAME>!~ */
  IF ~~ THEN EXTERN ~PLAYER1~ 17
END

IF ~~ THEN BEGIN 28 // from:
  SAY #98523 /* ~What's the problem, <CHARNAME>?~ */
  IF ~~ THEN REPLY #98536 /* ~No problem, Dorn. Why do you ask?~ */ GOTO 29
  IF ~~ THEN REPLY #98537 /* ~I'm not sure. For a moment there, it felt like—I wasn't myself. Like I was losing control...~ */ GOTO 32
  IF ~~ THEN REPLY #98538 /* ~My problem is with half-orcs poking their tusks into my business.~ */ GOTO 30
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #98524 /* ~You faltered there a moment. It was subtle, but noticeable.~ */
  IF ~~ THEN REPLY #98539 /* ~You see issues where none exist, Dorn. Let's carry on.~ */ GOTO 31
  IF ~~ THEN REPLY #98540 /* ~I felt, for a second, like I was—was losing control...~ */ GOTO 32
  IF ~~ THEN REPLY #98541 /* ~You see what you want to see, half-orc. You are a predator, looking for weakness—I have none.~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 28.2
  SAY #98525 /* ~If that's your only problem, then we've no problem at all.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 31 // from: 29.0
  SAY #98526 /* ~Hmm. As you wish.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 32 // from: 29.1 28.1
  SAY #98527 /* ~A troubling notion. Focus yourself, <PRO_MANWOMAN>. The last thing we need now is you getting distracted.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 33 // from:
  SAY #98528 /* ~Hah! The avatar of Bhaal stands revealed at last! You are the Slayer, <CHARNAME>!~ */
  IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #98529 /* ~I never knew you had it in you!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 35 // from:
  SAY #98530 /* ~You tremble like a child, <CHARNAME>. What's the problem now?~ */
  IF ~~ THEN REPLY #98542 /* ~Get away from me, Dorn. I don't know what's happening.~ */ DO ~SetGlobal("EndangerLovedOne","GLOBAL",93)
~ GOTO 36
  IF ~~ THEN REPLY #98543 /* ~Where do I begin, you bloody great oaf? Oh, I know—I'M LOSING CONTROL!~ */ DO ~SetGlobal("EndangerLovedOne","GLOBAL",93)
~ GOTO 36
  IF ~~ THEN REPLY #98544 /* ~No problem at all, unless you get in my way.~ */ DO ~SetGlobal("EndangerLovedOne","GLOBAL",93)
~ GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 35.2 35.1 35.0
  SAY #98531 /* ~What? Your lips move, but nothing comes out. Speak up, <PRO_MANWOMAN>!~ */
  IF ~~ THEN DO ~ActionOverride(Player1,ReallyForceSpell(Myself,SLAYER_CHANGE))
~ EXIT
END

IF ~~ THEN BEGIN 37 // from:
  SAY #98532 /* ~Such power...! You are magnificent, <CHARNAME>!~ */
  IF ~~ THEN REPLY #98545 /* ~I'd feel more magnificent if I could control the transformation.~ */ DO ~SetGlobal("DrowTalk","GLOBAL",5)
~ GOTO 38
  IF ~~ THEN REPLY #98546 /* ~You need to leave, Dorn. You aren't safe around me.~ */ DO ~SetGlobal("DrowTalk","GLOBAL",5)
~ GOTO 39
  IF ~~ THEN REPLY #98547 /* ~I turned into a bloody monster and you call that magnificent?~ */ DO ~SetGlobal("DrowTalk","GLOBAL",5)
~ GOTO 40
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #98533 /* ~The power of the gods cannot be controlled—it can only be savored. I advise you to do so as often as possible.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 39 // from: 37.1
  SAY #98534 /* ~When has it ever been safe to walk beside the Bhaalspawn? No, I'll not leave you, especially not now that I've seen the true extent of your power. Forward!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 40 // from: 37.2
  SAY #98535 /* ~What else could I call such a display of raw divine might?~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 41 // from:
  SAY #95204 /* ~I'll not bow to you or any worldly entity, vampire.~ [OH95204] */
  IF ~~ THEN EXTERN ~BODHIAMB~ 26
END

IF ~~ THEN BEGIN 42 // from:
  SAY #95202 /* ~You will feel my strength now. I'll show you a darkness you never imagined!~ [OH95202] */
  IF ~~ THEN DO ~DialogueInterrupt(FALSE)
CreateCreatureObject("VAMPIM01","bodhiamb",0,0,0)
CreateCreatureObject("VAMPIM01","bodhiamb",0,0,0)
CreateCreatureObject("VAMPIM01","bodhiamb",0,0,0)
CreateCreatureObject("VAMPIM01","bodhiamb",0,0,0)
ActionOverride("bodhiamb",ForceSpell(Myself,DRYAD_TELEPORT))
Wait(1)
SetGlobal("Deactivate0801","AR0800",3)
ActionOverride("bodhiamb",DestroySelf())
~ EXIT
END

IF ~~ THEN BEGIN 43 // from:
  SAY #95198 /* ~My patron grants me more power than you ever could, vampire. And I doubt he'll let me bow to another.~ [OH95198] */
  IF ~~ THEN EXTERN ~BODHIAMB~ 28
END

IF ~~ THEN BEGIN 44 // from:
  SAY #95201 /* ~You should have listened to me, vampire. Now I'll show you a darkness you never imagined!~ [OH95201] */
  IF ~~ THEN DO ~SetGlobal("OHD_bodhiamb","AR0800",2)
DialogueInterrupt(FALSE)
CreateCreatureObject("VAMPIM01","bodhiamb",0,0,0)
CreateCreatureObject("VAMPIM01","bodhiamb",0,0,0)
CreateCreatureObject("VAMPIM01","bodhiamb",0,0,0)
CreateCreatureObject("VAMPIM01","bodhiamb",0,0,0)
ActionOverride("bodhiamb",ForceSpell(Myself,DRYAD_TELEPORT))
Wait(1)
SetGlobal("Deactivate0801","AR0800",3)
ActionOverride("bodhiamb",DestroySelf())
~ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("OHD_suldanessellar","AR2800",1)
~ THEN BEGIN 45 // from:
  SAY #102404 /* ~The great elven city of Suldanessellar, brought to its knees by a single mage. Pathetic.~ */
  IF ~~ THEN DO ~SetGlobal("OHD_suldanessellar","AR2800",2)
~ EXIT
END

IF ~~ THEN BEGIN 46 // from:
  SAY #102401 /* ~Hah! You dragons are all the same. All sound and fury, creatures of pure bluster! Come and fight us, you great coward!~ */
  IF ~~ THEN EXTERN ~FIRKRA02~ 25
END

IF ~~ THEN BEGIN 47 // from:
  SAY #102402 /* ~I will treasure this moment, gnome. You are exactly where you belong.~ */
  IF ~  !IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("JAN")
!IsValidForPartyDialogue("CERND")
~ THEN EXTERN ~PPTIAX~ 2
  IF ~  IsValidForPartyDialogue("JAN")
~ THEN EXTERN ~JANJ~ 152
  IF ~  IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("JAN")
~ THEN EXTERN ~HAERDAJ~ 106
  IF ~  IsValidForPartyDialogue("CERND")
!IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("JAN")
~ THEN EXTERN ~CERNDJ~ 107
END

IF ~~ THEN BEGIN 48 // from:
  SAY #102403 /* ~We slaughtered your miserable hide last time, ogre. I will take great joy in doing so again!~ */
  IF ~~ THEN DO ~ActionOverride("tazok",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 49 // from:
  SAY #102405 /* ~And you take pride in your survival? Wretch! Better to die on your feet than live on your knees.~ */
  IF ~  !IsValidForPartyDialogue("Korgan")
~ THEN DO ~SetGlobal("TalkedToHendak","AR0406",1)
~ EXTERN ~HENDAK~ 2
  IF ~  IsValidForPartyDialogue("Korgan")
~ THEN DO ~SetGlobal("TalkedToHendak","AR0406",1)
~ EXTERN ~KORGANJ~ 46
END

IF WEIGHT #6 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("DornLovetalks","GLOBAL",2)
Global("OHD_KNOWS_DORN","LOCALS",1)
~ THEN BEGIN 50 // from:
  SAY #96394 /* ~It is good to be traveling with you once more, <CHARNAME>. ~ */
  IF ~~ THEN DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 51
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #96395 /* ~We are a formidable pair, you and I. ~ */
  IF ~  NumInPartyLT(3)
~ THEN REPLY #96396 /* ~We are indeed. ~ */ EXIT
  IF ~  NumInPartyGT(2)
~ THEN REPLY #96396 /* ~We are indeed. ~ */ GOTO 52
  IF ~  NumInPartyGT(2)
~ THEN REPLY #96397 /* ~Part of an excellent team.~ */ GOTO 53
  IF ~~ THEN REPLY #96398 /* ~Let me make this clear: We are not a pair. ~ */ GOTO 54
END

IF ~~ THEN BEGIN 52 // from: 54.1 53.0 51.1
  SAY #96399 /* ~I see you still have other... companions. ~ */
  IF ~~ THEN REPLY #96400 /* ~One can never have too many friends.~ */ GOTO 55
  IF ~~ THEN REPLY #96401 /* ~For the time being, yes.~ */ GOTO 55
  IF ~~ THEN REPLY #96402 /* ~You have a problem with that?~ */ GOTO 55
END

IF ~~ THEN BEGIN 53 // from: 51.2
  SAY #96403 /* ~Yes...~ */
  IF ~~ THEN GOTO 52
END

IF ~~ THEN BEGIN 54 // from: 51.3
  SAY #96404 /* ~We battle together, we eat together, we defend one another. Like it or not, we ARE a pair.~ */
  IF ~~ THEN EXIT
  IF ~  NumInPartyGT(2)
~ THEN GOTO 52
END

IF ~~ THEN BEGIN 55 // from: 52.2 52.1 52.0
  SAY #96405 /* ~You must know they will aid you only while it is convenient. You can trust no one but yourself.~ */
  IF ~~ THEN REPLY #96406 /* ~My enemies are too numerous and too powerful to face alone.~ */ GOTO 56
  IF ~~ THEN REPLY #96407 /* ~You misunderstand. They are here only while it is convenient for ME. The moment their usefulness ends, so will they.~ */ GOTO 64
  IF ~~ THEN REPLY #96408 /* ~Yourself included?~ */ GOTO 65
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #96409 /* ~Your enemies may walk beside you without you knowing.~ */
  IF ~~ THEN REPLY #96410 /* ~What happened to you was regrettable, but it will not happen to me.~ */ GOTO 57
  IF ~~ THEN REPLY #96411 /* ~I'm well aware of that. You're one of the ones who walk beside me, after all.~ */ GOTO 65
  IF ~~ THEN REPLY #96412 /* ~Enemies or not, I have need of their skills. ~ */ GOTO 57
END

IF ~~ THEN BEGIN 57 // from: 56.2 56.0
  SAY #96413 /* ~Fine: Trust them and bear the consequences. They will cut your legs from under you, and I will laugh as they do so.~ */
  IF ~~ THEN REPLY #96414 /* ~They will not betray me, Dorn.~ */ GOTO 59
  IF ~~ THEN REPLY #96415 /* ~And I will laugh as they prove you wrong time and time again.~ */ EXIT
  IF ~~ THEN REPLY #96416 /* ~We will see who laughs last, Dorn.~ */ GOTO 58
END

IF ~~ THEN BEGIN 58 // from: 57.2
  SAY #96417 /* ~We will indeed.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 59 // from: 57.0
  SAY #96418 /* ~Trust is for children and old women. Those with power have no need of it. ~ */
  IF ~~ THEN REPLY #96419 /* ~Need it? No. But I choose to have it, all the same.~ */ GOTO 62
  IF ~~ THEN REPLY #96420 /* ~You didn't have many friends as a child, did you?~ */ GOTO 63
  IF ~~ THEN REPLY #96421 /* ~Keep talking and you'll see my power firsthand, half-orc.~ */ GOTO 60
END

IF ~~ THEN BEGIN 60 // from: 59.2
  SAY #96423 /* ~A tempting offer. Or did you mean it as a threat?~ */
  IF ~~ THEN REPLY #96424 /* ~You can't tell...? Your loss, half-orc.~ */ EXIT
  IF ~~ THEN REPLY #96425 /* ~When—IF I make you an offer, you'll know it.~ */ GOTO 61
  IF ~~ THEN REPLY #96426 /* ~It was definitely a threat.~ */ GOTO 66
END

IF ~~ THEN BEGIN 61 // from: 60.1
  SAY #96427 /* ~So it was a threat.~ */
  IF ~~ THEN GOTO 66
END

IF ~~ THEN BEGIN 62 // from: 59.0
  SAY #96428 /* ~Enjoy your childhood while it lasts.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 63 // from: 59.1
  SAY #96429 /* ~No.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 64 // from: 55.1
  SAY #96430 /* ~I am glad to hear it. But watch them carefully. If you see so much as a hint of weakness or insubordination, destroy them before they destroy you.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 65 // from: 56.1 55.2
  SAY #96431 /* ~Hah! No, you may trust me. Our goals align, and our relationship is one of mutual benefit. I will not betray you so long as you do not betray me.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 66 // from: 61.0 60.2
  SAY #96432 /* ~Peace, <CHARNAME>. I was simply making conversation. I'd not see you die this <DAYNIGHTALL>.~ */
  IF ~~ THEN REPLY #96433 /* ~Nor I you.~ */ GOTO 68
  IF ~~ THEN REPLY #96434 /* ~My death isn't the one you should be worried about.~ */ GOTO 67
END

IF ~~ THEN BEGIN 67 // from: 66.1
  SAY #96435 /* ~Enough words. When you are ready to do more than talk, you know where to find me.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 68 // from: 66.0
  SAY #96436 /* ~You have grown claws since we parted. Mind that those claws stay sheathed lest I am forced to remove them.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #7 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("DornLovetalks","GLOBAL",2)
ReputationGT(Player1,11)
~ THEN BEGIN 69 // from:
  SAY #96438 /* ~When I joined you, I believed our goals were more closely aligned. I see now I was wrong. Your knees are so weak it's a wonder you don't lie face-down in the dirt.~ */
  IF ~~ THEN REPLY #96439 /* ~Choosing a path other than violence is no weakness, Dorn.~ */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 70
  IF ~~ THEN REPLY #96440 /* ~Shall I show you just how "weak" I am, half-orc? Has the time come?~ */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 70
  IF ~~ THEN REPLY #96441 /* ~Explain yourself, Dorn. For your sake, I hope the explanation is a good one.~ */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 70
END

IF ~~ THEN BEGIN 70 // from: 69.2 69.1 69.0
  SAY #96442 /* ~Your lack of ambition disgusts me. I should kill you where you stand and feed your soul to Ur-Gothoz.~ */
  IF ~~ THEN REPLY #96443 /* ~Don't threaten me, half-orc. You won't like where that leads.~ */ GOTO 71
  IF ~~ THEN REPLY #96444 /* ~You don't like the way I handle things, Dorn? What would you have me do differently?~ */ GOTO 71
  IF ~~ THEN REPLY #96445 /* ~You should try. No, seriously. Try to kill me where I stand. See where it leads.~ */ GOTO 72
END

IF ~~ THEN BEGIN 71 // from: 70.1 70.0
  SAY #96446 /* ~I tell you this, <CHARNAME>. My blade thirsts for blood, and soon. You had best act quickly to ensure it doesn't drink yours.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 72 // from: 70.2
  SAY #96447 /* ~I will rip you limb from limb!~ */
  IF ~~ THEN DO ~LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
Enemy()
~ EXIT
END

IF WEIGHT #8 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("DornLovetalks","GLOBAL",2)
~ THEN BEGIN 73 // from:
  SAY #96448 /* ~It is good to be traveling with one who knows <PRO_HISHER> bloody path, <CHARNAME>. My patron is pleased.~ */
  IF ~~ THEN REPLY #96449 /* ~Likewise. Ours will be a fruitful alliance, I suspect.~ */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 75
  IF ~~ THEN REPLY #96450 /* ~I'm glad to hear it. Your patron's desires are my paramount concern.~ */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 74
  IF ~  NumInPartyGT(2)
~ THEN REPLY #96451 /* ~So he should be. You have proved your value many times over, to him and me alike.~ */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 76
  IF ~  NumInPartyLT(3)
~ THEN REPLY #96451 /* ~So he should be. You have proved your value many times over, to him and me alike.~ */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 85
END

IF ~~ THEN BEGIN 74 // from: 73.1
  SAY #96452 /* ~I am glad to hear it.~ */
  IF ~  NumInPartyGT(2)
~ THEN GOTO 76
  IF ~  NumInPartyLT(3)
~ THEN GOTO 85
END

IF ~~ THEN BEGIN 75 // from: 73.0
  SAY #96453 /* ~Yes, I believe it will. ~ */
  IF ~  NumInPartyGT(2)
~ THEN GOTO 76
  IF ~  NumInPartyLT(3)
~ THEN GOTO 85
END

IF ~~ THEN BEGIN 76 // from: 75.0 74.0 73.2
  SAY #96454 /* ~Would that these others you surround yourself with could say the same. I am concerned with these others, however. Are you sure you can trust them?~ */
  IF ~~ THEN REPLY #96455 /* ~With my life.~ */ GOTO 77
  IF ~~ THEN REPLY #96456 /* ~Who are you to question those I trust?~ */ GOTO 78
  IF ~~ THEN REPLY #96457 /* ~Trust them? No. But I need them, for now.~ */ GOTO 79
END

IF ~~ THEN BEGIN 77 // from: 76.0
  SAY #96458 /* ~Then you are a fool.~ */
  IF ~~ THEN GOTO 79
END

IF ~~ THEN BEGIN 78 // from: 76.1
  SAY #96459 /* ~Someone who's known betrayal.~ */
  IF ~~ THEN GOTO 79
END

IF ~~ THEN BEGIN 79 // from: 78.0 77.0 76.2
  SAY #96460 /* ~Watch them carefully, <CHARNAME>. And when they are no longer of use, send them on their way, or better still, destroy them.~ */
  IF ~~ THEN REPLY #96461 /* ~Is that how you'd have me treat you?~ */ GOTO 80
  IF ~~ THEN REPLY #96462 /* ~Do me a favor, Dorn. When I'm no longer of use to you, just cast me aside. I'd rather not fight you over it.~ */ GOTO 81
  IF ~~ THEN REPLY #96463 /* ~And if I said you were no longer of use?~ */ GOTO 82
END

IF ~~ THEN BEGIN 80 // from: 79.0
  SAY #96464 /* ~Of course! But then, I know my own value. You will always find me of use.~ */
  IF ~~ THEN REPLY #96465 /* ~You think highly of yourself, half-orc. Too highly.~ */ GOTO 82
  IF ~~ THEN REPLY #96466 /* ~I hope you're right, for your sake.~ */ EXIT
  IF ~~ THEN REPLY #96467 /* ~Keep thinking that way, Dorn. It'll make my life much easier.~ */ EXIT
END

IF ~~ THEN BEGIN 81 // from: 79.1
  SAY #96468 /* ~You are wise, <CHARNAME>. But I'll make you no promises.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 82 // from: 80.0 79.2
  SAY #96470 /* ~Then strike me down—if you can.~ */
  IF ~~ THEN GOTO 83
END

IF ~~ THEN BEGIN 83 // from: 82.0
  SAY #96471 /* ~But you won't. You won't even try. You would be a fool to cast me aside, and you are no fool.~ */
  IF ~~ THEN GOTO 84
END

IF ~~ THEN BEGIN 84 // from: 83.0
  SAY #96472 /* ~But if the day comes that you would turn on me... woe be unto you, <CHARNAME>. That day will be your last.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 85 // from: 75.1 74.1 73.3
  SAY #96473 /* ~We make a good team, you and I. ~ */
  IF ~~ THEN REPLY #96615 /* ~We do indeed. ~ */ EXIT
  IF ~~ THEN REPLY #96474 /* ~A good team of bad, bad people.~ */ EXIT
  IF ~~ THEN REPLY #96475 /* ~The one who does the least work usually thinks so.~ */ GOTO 86
END

IF ~~ THEN BEGIN 86 // from: 85.2
  SAY #96476 /* ~Is that wit you're attempting, <CHARNAME>?~ */
  IF ~~ THEN GOTO 87
END

IF ~~ THEN BEGIN 87 // from: 86.0
  SAY #96477 /* ~Because you shouldn't.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #9 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("DornLovetalks","GLOBAL",4)
~ THEN BEGIN 88 // from:
  SAY #96478 /* ~This mage you chase. How did he earn your ire? ~ */
  IF ~~ THEN REPLY #96479 /* ~He tortured and experimented on Imoen and me. He will pay for our pain a thousand times over with his own.~ */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 89
  IF ~~ THEN REPLY #96480 /* ~He did things to me no person should do to another.~ */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 89
  IF ~~ THEN REPLY #96481 /* ~I'd rather not speak of it.~ */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 90
END

IF ~~ THEN BEGIN 89 // from: 88.1 88.0
  SAY #96482 /* ~How did you allow this to happen?~ */
  IF ~~ THEN REPLY #96483 /* ~Some fights cannot be won.~ */ GOTO 91
  IF ~~ THEN REPLY #96484 /* ~Well, you know my love of cages and chains...~ */ GOTO 92
  IF ~~ THEN REPLY #96485 /* ~I don't want to talk about it.~ */ GOTO 93
END

IF ~~ THEN BEGIN 90 // from: 88.2
  SAY #96486 /* ~No, please. Tell me of this mage who single-handedly overcame, captured, and tortured you.~ */
  IF ~~ THEN REPLY #96487 /* ~He didn't do it single-handedly.~ */ GOTO 91
  IF ~~ THEN REPLY #96488 /* ~What part of "I'd rather not speak of it" do you not understand?~ */ GOTO 93
  IF ~~ THEN REPLY #96489 /* ~Shut your mouth lest you feel some of what I did firsthand.~ */ GOTO 93
END

IF ~~ THEN BEGIN 91 // from: 92.0 90.0 89.0
  SAY #96490 /* ~So this wizard and his minions overcame you.~ */
  IF ~~ THEN REPLY #96491 /* ~They would have done the same to you, believe me.~ */ GOTO 99
  IF ~~ THEN REPLY #96492 /* ~I don't like your tone, Dorn.~ */ GOTO 94
  IF ~~ THEN REPLY #96493 /* ~I didn't go down without a fight.~ */ GOTO 95
END

IF ~~ THEN BEGIN 92 // from: 89.1
  SAY #96497 /* ~Your idiocy knows no bounds.~ */
  IF ~~ THEN GOTO 91
END

IF ~~ THEN BEGIN 93 // from: 90.2 90.1 89.2
  SAY #96498 /* ~I would be embarrassed too.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 94 // from: 91.1
  SAY #96499 /* ~I will speak to you as I see fit, <PRO_RACE>. ~ */
  IF ~~ THEN REPLY #96502 /* ~Then you are free to leave.~ */ GOTO 98
  IF ~  CheckStatLT(Player1,13,STR)
~ THEN REPLY #96504 /* ~I hope you're ready to pay the price for it.~ */ GOTO 97
  IF ~  CheckStatGT(Player1,12,STR)
~ THEN REPLY #96504 /* ~I hope you're ready to pay the price for it.~ */ GOTO 96
END

IF ~~ THEN BEGIN 95 // from: 91.2
  SAY #96506 /* ~I would hope not.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 96 // from: 94.2
  SAY #96509 /* ~Whenever you're ready to collect.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 97 // from: 94.1
  SAY #96511 /* ~Gladly!~ */
  IF ~~ THEN DO ~LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 98 // from: 94.0
  SAY #96512 /* ~I am at that, and am glad to do so. If this is how you deal with harsh words, I'd hate to count on you in actual battle.~ */
  IF ~~ THEN DO ~LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 99 // from: 91.0
  SAY #96513 /* ~I'm sure it comforts you to think so.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #10 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("DornLovetalks","GLOBAL",6)
~ THEN BEGIN 100 // from:
  SAY #96914 /* ~Ah! This endless walking makes me restless.~ */
  IF ~~ THEN REPLY #96520 /* ~You think I like it any better?~ */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 101
  IF ~~ THEN REPLY #96523 /* ~Funny. It usually tires me out.~ */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 101
  IF ~~ THEN REPLY #96524 /* ~Your whining won't make it go any faster.~ */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 101
END

IF ~~ THEN BEGIN 101 // from: 100.2 100.1 100.0
  SAY #96525 /* ~I've an idea. You and I will spar. To the victor, the glory! ~ */
  IF ~~ THEN REPLY #96526 /* ~Excellent idea! I could use an easy win. ~ */ GOTO 102
  IF ~~ THEN REPLY #96527 /* ~Very well.~ */ GOTO 104
  IF ~~ THEN REPLY #96529 /* ~Let's finish walking first.~ */ GOTO 103
  IF ~~ THEN REPLY #96530 /* ~Ah... oh no, my leg really hurts. I'm going to have to pass.~ */ GOTO 103
END

IF ~~ THEN BEGIN 102 // from: 101.0
  SAY #96531 /* ~Then you're about to be disappointed.~ */
  IF ~~ THEN GOTO 104
END

IF ~~ THEN BEGIN 103 // from: 101.3 101.2
  SAY #96532 /* ~Irenicus's dungeon has left you weak, is that it? Or do you fear the might of the great Dorn Il-Khan?~ */
  IF ~~ THEN REPLY #96533 /* ~I'll not be goaded into a pointless battle.~ */ GOTO 105
  IF ~~ THEN REPLY #96534 /* ~Whatever will shut you up, that's why I don't want to beat the living hells out of you. Let's keep moving.~ */ GOTO 105
  IF ~~ THEN REPLY #96535 /* ~I'll show you how much I fear you, half-orc.~ */ GOTO 104
END

IF ~~ THEN BEGIN 104 // from: 103.2 102.0 101.1
  SAY #96536 /* ~No weapons, no armor, no magic. A true match of prowess. ~ */
  IF ~~ THEN GOTO 106
END

IF ~~ THEN BEGIN 105 // from: 103.1 103.0
  SAY #96537 /* ~Bah. You're an old <PRO_MANWOMAN>, <CHARNAME>. ~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 106 // from: 104.0
  SAY #96538 /* ~Prepare yourself!~ */
  IF ~~ THEN DO ~SetGlobal("OHD_sparring","LOCALS",1)
ClearAllActions()
StartCutSceneMode()
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
Wait(2)
SmallWait(1)
EndCutSceneMode()
StartDialogNoSet(Player1)
~ EXIT
END

IF WEIGHT #11 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("OHD_sparring","LOCALS",1)
CheckStatGT(Player1,15,STR)
OR(2)
RandomNum(2,1)
CheckStatGT(Player1,17,STR)
~ THEN BEGIN 107 // from:
  SAY #96546 /* ~Hmm. You are more skilled in the art of battle than I'd thought.~ */
  IF ~~ THEN REPLY #96547 /* ~Let this be a lesson to you. Never underestimate your opponent.~ */ GOTO 112
  IF ~~ THEN REPLY #96548 /* ~You're a formidable opponent, Dorn.~ */ GOTO 111
  IF ~~ THEN REPLY #96549 /* ~No surprise there. Thinking isn't your strong suit.~ */ GOTO 112
END

IF WEIGHT #12 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("OHD_sparring","LOCALS",1)
~ THEN BEGIN 108 // from:
  SAY #96540 /* ~Your form is poor, and you hold back when you should strike. You have much to learn, <CHARNAME>.~ */
  IF ~~ THEN REPLY #96541 /* ~You'll find me a fast learner.~ */ GOTO 112
  IF ~~ THEN REPLY #96542 /* ~Good gods. I think I need some healing.~ */ GOTO 109
  IF ~~ THEN REPLY #96543 /* ~Things will go differently the next time you face me.~ */ GOTO 110
END

IF ~~ THEN BEGIN 109 // from: 108.1
  SAY #96544 /* ~After the beating you just took? Yes, I'd imagine so.~ */
  IF ~~ THEN GOTO 112
END

IF ~~ THEN BEGIN 110 // from: 108.2
  SAY #96545 /* ~I look forward to it.~ */
  IF ~~ THEN GOTO 112
END

IF ~~ THEN BEGIN 111 // from: 107.1
  SAY #96550 /* ~Yes, I am. And it takes a formidable warrior to match my strength. ~ */
  IF ~~ THEN GOTO 112
END

IF ~~ THEN BEGIN 112 // from: 111.0 110.0 109.0 108.0 107.2 107.0
  SAY #96551 /* ~You are an attractive <PRO_MANWOMAN>, <CHARNAME>. ~ */
  IF ~~ THEN REPLY #96552 /* ~Ah. I think you may have the wrong idea, Dorn. I'm not interested in you.~ */ DO ~SetGlobal("OHD_sparring","LOCALS",2)
SetGlobal("DornRomanceActive","GLOBAL",3)
~ GOTO 113
  IF ~~ THEN REPLY #96553 /* ~I must admit, you have a rugged... tusked allure yourself.~ */ DO ~SetGlobal("OHD_sparring","LOCALS",2)
~ GOTO 114
  IF ~~ THEN REPLY #96555 /* ~You're very observant.~ */ DO ~SetGlobal("OHD_sparring","LOCALS",2)
~ GOTO 114
END

IF ~~ THEN BEGIN 113 // from: 112.0
  SAY #96556 /* ~A pity. You don't know what you're missing.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 114 // from: 112.2 112.1
  SAY #96557 /* ~Next time, perhaps the sparring will be a little more intimate.~ */
  IF ~~ THEN REPLY #96558 /* ~I'd like that.~ */ EXIT
  IF ~~ THEN REPLY #96559 /* ~In your dreams, half-orc. It certainly won't happen in this world.~ */ GOTO 115
  IF ~~ THEN REPLY #96560 /* ~Don't count on it.~ */ GOTO 115
END

IF ~~ THEN BEGIN 115 // from: 114.2 114.1
  SAY #96561 /* ~A shame. You'd have enjoyed it.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #13 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("DornLovetalks","GLOBAL",8)
~ THEN BEGIN 116 // from:
  SAY #96564 /* ~You feel it as strongly as I, do you not? ~ */
  IF ~~ THEN REPLY #96565 /* ~Uh... maybe? What are you talking about?~ */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 117
  IF ~~ THEN REPLY #96566 /* ~If you're thinking what I'm thinking, then most definitely.~ */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 117
  IF ~~ THEN REPLY #96567 /* ~We don't have time for this, Dorn.~ */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 117
END

IF ~~ THEN BEGIN 117 // from: 116.2 116.1 116.0
  SAY #96568 /* ~I can see the hunger in your eyes.~ */
  IF ~~ THEN GOTO 118
END

IF ~~ THEN BEGIN 118 // from: 117.0
  SAY #96569 /* ~I can wait no longer. I would have you as mine, <CHARNAME>. ~ */
  IF ~~ THEN REPLY #96570 /* ~I'm sorry?~ */ GOTO 121
  IF ~~ THEN REPLY #96571 /* ~Well, it's about damn time. This will be a night for the ages.~ */ GOTO 129
  IF ~  CheckStatLT(Player1,14,CHR)
~ THEN REPLY #96572 /* ~You will wait as long as I desire.~ */ GOTO 119
  IF ~  CheckStatGT(Player1,13,CHR)
~ THEN REPLY #96572 /* ~You will wait as long as I desire.~ */ GOTO 121
END

IF ~~ THEN BEGIN 119 // from: 118.2
  SAY #96573 /* ~You think I serve your will, <PRO_RACE>?~ */
  IF ~~ THEN DO ~SetGlobal("OHD_lt4","GLOBAL",1)
Enemy()
~ EXIT
END

IF WEIGHT #14 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("OHD_lt4","GLOBAL",2)
~ THEN BEGIN 120 // from:
  SAY #96574 /* ~Such strength—such power! You are everything I've ever wanted, <CHARNAME>!~ */
  IF ~~ THEN DO ~SetGlobal("OHD_lt4","GLOBAL",3)
~ GOTO 121
END

IF ~~ THEN BEGIN 121 // from: 120.0 118.3 118.0
  SAY #96575 /* ~I will give you pleasure as none have before. ~ */
  IF ~~ THEN REPLY #96577 /* ~You're going to have to work harder than that.~ */ GOTO 126
  IF ~~ THEN REPLY #96578 /* ~I'll hold you to that.~ */ GOTO 130
  IF ~  !Gender(Player1,FEMALE)
!IsValidForPartyDialogue("viconia")
~ THEN REPLY #96579 /* ~You presume too much.~ */ GOTO 124
  IF ~  Gender(Player1,FEMALE)
!IsValidForPartyDialogue("anomen")
~ THEN REPLY #96579 /* ~You presume too much.~ */ GOTO 124
  IF ~  IsValidForPartyDialogue("anomen")
Gender(Player1,FEMALE)
~ THEN REPLY #96579 /* ~You presume too much.~ */ EXTERN ~ANOMENJ~ 324
  IF ~  IsValidForPartyDialogue("viconia")
Gender(Player1,MALE)
~ THEN REPLY #96579 /* ~You presume too much.~ */ EXTERN ~VICONIJ~ 418
END

IF ~~ THEN BEGIN 122 // from:
  SAY #96581 /* ~Let her speak for herself. What say you, <CHARNAME>? You want this as much as I, admit it.~ */
  IF ~~ THEN REPLY #96582 /* ~I do want it. But you'll have to work harder than that.~ */ GOTO 126
  IF ~~ THEN REPLY #96583 /* ~It's true. Gods help me.~ */ GOTO 130
  IF ~~ THEN REPLY #96584 /* ~I'm not sure about that. You seem to want it very, very badly.~ */ GOTO 125
  IF ~~ THEN REPLY #96585 /* ~I admit nothing of the sort.~ */ GOTO 126
END

IF ~~ THEN BEGIN 123 // from:
  SAY #96588 /* ~Let him speak for himself. What say you, <CHARNAME>? You want this as much as I, admit it.~ */
  IF ~~ THEN REPLY #96582 /* ~I do want it. But you'll have to work harder than that.~ */ GOTO 126
  IF ~~ THEN REPLY #96589 /* ~I do. Gods help me.~ */ GOTO 130
  IF ~~ THEN REPLY #96590 /* ~I'm not sure about that. You seem to want it very, very badly.~ */ GOTO 125
  IF ~~ THEN REPLY #96591 /* ~I'll not be coerced into making a decision before I'm ready.~ */ GOTO 126
END

IF ~~ THEN BEGIN 124 // from: 121.3 121.2
  SAY #96603 /* ~You want this as much as I.~ */
  IF ~~ THEN REPLY #96604 /* ~I do want it. But you'll have to work harder than that.~ */ GOTO 126
  IF ~~ THEN REPLY #96605 /* ~I do. Gods help me.~ */ GOTO 130
  IF ~~ THEN REPLY #96606 /* ~I'm not sure about that. You seem to want it very, very badly.~ */ GOTO 125
  IF ~~ THEN REPLY #96607 /* ~So you want to believe.~ */ GOTO 126
END

IF ~~ THEN BEGIN 125 // from: 124.2 123.2 122.2
  SAY #96608 /* ~And you do not?~ */
  IF ~~ THEN REPLY #96609 /* ~Oh, I do. You have no idea.~ */ GOTO 130
  IF ~~ THEN REPLY #96610 /* ~I haven't decided yet.~ */ GOTO 127
  IF ~~ THEN REPLY #96611 /* ~With you? No. No, I don't.~ */ GOTO 128
END

IF ~~ THEN BEGIN 126 // from: 124.3 124.0 123.3 123.0 122.3 122.0 121.0
  SAY #96612 /* ~What? You would spurn Dorn Il-Khan?~ */
  IF ~~ THEN REPLY #96613 /* ~I'm not spurning anyone yet. I just need more time.~ */ GOTO 127
  IF ~~ THEN REPLY #96614 /* ~Patience, Dorn.~ */ GOTO 127
  IF ~~ THEN REPLY #96616 /* ~Yes. Enthusiastically.~ */ GOTO 128
END

IF ~~ THEN BEGIN 127 // from: 126.1 126.0 125.1
  SAY #96632 /* ~Make up your mind, <CHARNAME>. I'll not be a slave to your whims.~ */
  IF ~~ THEN DO ~RestPartyEx(0,0,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 128 // from: 126.2 125.2
  SAY #96633 /* ~You've made a grave error, <CHARNAME>. And by the time you realize that, it will be too late.~ */
  IF ~~ THEN DO ~SetGlobal("DornRomanceActive","GLOBAL",3)
RestPartyEx(0,0,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 129 // from: 118.1
  SAY #96634 /* ~Yes... it will. ~ */
  IF ~~ THEN DO ~SetGlobal("OHD_dornsex","GLOBAL",1)
RestPartyEx(0,0,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 130 // from: 125.0 124.1 123.1 122.1 121.1
  SAY #96635 /* ~This will be a night to remember... I assure you.~ */
  IF ~~ THEN DO ~SetGlobal("OHD_dornsex","GLOBAL",1)
RestPartyEx(0,0,FALSE)
~ EXIT
END

IF WEIGHT #15 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("DornLovetalks","GLOBAL",10)
~ THEN BEGIN 131 // from:
  SAY #96303 /* ~You intrigue me, <CHARNAME>. I've waited a long time to find one such as you.~ [OH96303] */
  IF ~~ THEN REPLY #96304 /* ~Patience is rewarded.~ */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 139
  IF ~~ THEN REPLY #96494 /* ~And I've waited a long time for such as you.~ */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 139
  IF ~  Gender(Player1,MALE)
~ THEN REPLY #96495 /* ~I don't remind you of your father?~ */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 133
  IF ~  Gender(Player1,FEMALE)
~ THEN REPLY #96305 /* ~I don't remind you of your mother?~ */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 132
  IF ~~ THEN REPLY #96306 /* ~Wait longer, half-orc.~ */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 134
END

IF ~~ THEN BEGIN 132 // from: 131.3
  SAY #96308 /* ~My mother? She was a formidable woman.~ [OH96308] */
  IF ~~ THEN REPLY #96309 /* ~You want to talk to me about your mother?~ */ GOTO 136
  IF ~~ THEN REPLY #96410 /* ~What happened to you was regrettable, but it will not happen to me.~ */ GOTO 136
  IF ~~ THEN REPLY #96411 /* ~I'm well aware of that. You're one of the ones who walk beside me, after all.~ */ GOTO 136
END

IF ~~ THEN BEGIN 133 // from: 131.2
  SAY #96496 /* ~My father? He was a fearsome warrior. ~ */
  IF ~~ THEN REPLY #96500 /* ~You want to talk to me about your father?~ */ GOTO 137
  IF ~~ THEN REPLY #96501 /* ~You compare me to your father. That is... a little creepy.~ */ GOTO 137
  IF ~~ THEN REPLY #96503 /* ~He'd have had to be, I think.~ */ GOTO 137
END

IF ~~ THEN BEGIN 134 // from: 145.1 141.2 140.3 140.2 139.3 131.4
  SAY #96312 /* ~You reject me?~ [OH96312] */
  IF ~~ THEN REPLY #96313 /* ~I can't give you what you want, Dorn. I'm sorry.~ */ GOTO 150
  IF ~~ THEN REPLY #96314 /* ~We've more important things to attend to. What you suggest would do nothing but distract us from our goals.~ */ GOTO 146
  IF ~~ THEN REPLY #96315 /* ~Yes. Best you know where you stand now than make a fool of yourself later.~ */ GOTO 135
END

IF ~~ THEN BEGIN 135 // from: 134.2
  SAY #96316 /* ~I'd not be a fool for you, or anyone.~ [OH96316] */
  IF ~~ THEN DO ~SetGlobal("DornRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 136 // from: 132.2 132.1 132.0
  SAY #96318 /* ~I don't want to discuss my mother!~ [OH96318] */
  IF ~~ THEN REPLY #96319 /* ~Then what would you discuss?~ */ GOTO 141
  IF ~~ THEN REPLY #96320 /* ~Hey, you're the one who compared me to her.~ */ GOTO 138
  IF ~~ THEN REPLY #96321 /* ~You think I do?~ */ GOTO 140
END

IF ~~ THEN BEGIN 137 // from: 133.2 133.1 133.0
  SAY #96510 /* ~I don't want to discuss my father!~ */
  IF ~~ THEN REPLY #96319 /* ~Then what would you discuss?~ */ GOTO 141
  IF ~~ THEN REPLY #96505 /* ~Hey, you're the one who compared me to him.~ */ GOTO 138
  IF ~~ THEN REPLY #96321 /* ~You think I do?~ */ GOTO 140
END

IF ~~ THEN BEGIN 138 // from: 137.1 136.1
  SAY #96322 /* ~ 'Twas intended as a compliment.~ [OH96322] */
  IF ~~ THEN REPLY #96323 /* ~I was joking, Dorn. If we're going to do this, you'll need to work on your sense of humor.~ */ GOTO 140
  IF ~~ THEN REPLY #96324 /* ~Your flattery skills will need some work if we're to proceed down this path.~ */ GOTO 139
  IF ~~ THEN REPLY #96325 /* ~Intentions are irrelevant. It's actions that count.~ */ GOTO 151
END

IF ~~ THEN BEGIN 139 // from: 141.1 138.1 131.1 131.0
  SAY #96326 /* ~So you would proceed down this path?~ [OH96326] */
  IF ~~ THEN REPLY #96327 /* ~For a time, at least.~ */ GOTO 159
  IF ~~ THEN REPLY #96508 /* ~I've wanted to ever since I first laid eyes on you.~ */ GOTO 159
  IF ~~ THEN REPLY #96328 /* ~You're a bloodthirsty half-orc whose heart and soul are shrouded in darkness. We're perfect for each other.~ */ DO ~SetGlobal("OHD_perfect","LOCALS",1)
~ GOTO 140
  IF ~~ THEN REPLY #96329 /* ~I would, but not with you.~ */ GOTO 134
END

IF ~~ THEN BEGIN 140 // from: 139.2 138.0 137.2 136.2
  SAY #96330 /* ~This is no laughing matter, <CHARNAME>.~ [OH96330] */
  IF ~~ THEN REPLY #96331 /* ~Can you never see the lighter side of things?~ */ GOTO 142
  IF ~  Global("OHD_perfect","LOCALS",1)
~ THEN REPLY #96507 /* ~I wasn't joking. We are perfect for one another.~ */ GOTO 160
  IF ~~ THEN REPLY #96332 /* ~And that's why we can never be more than professional colleagues.~ */ GOTO 134
  IF ~~ THEN REPLY #96333 /* ~Me and you, romantically involved? You're wrong, Dorn—that is hilarious.~ */ GOTO 134
END

IF ~~ THEN BEGIN 141 // from: 137.0 136.0
  SAY #96334 /* ~What the future holds—for us.~ [OH96334] */
  IF ~~ THEN REPLY #96335 /* ~Much the same as the past, I suspect. You would have more?~ */ GOTO 155
  IF ~~ THEN REPLY #96336 /* ~Let's live in the present and see where that takes us, all right?~ */ GOTO 139
  IF ~~ THEN REPLY #96337 /* ~We have no future, Dorn. Our fates seem to be entwined—but that is all that will be entwined.~ */ GOTO 134
END

IF ~~ THEN BEGIN 142 // from: 140.0
  SAY #96338 /* ~Not of this.~ [OH96338] */
  IF ~~ THEN REPLY #96339 /* ~A pity. If you were willing to bend just a little, we might have had something great.~ */ GOTO 143
  IF ~  !Global("OHD_perfect","LOCALS",1)
~ THEN REPLY #96514 /* ~Fair enough. I can understand that.~ */ GOTO 159
  IF ~  Global("OHD_perfect","LOCALS",1)
~ THEN REPLY #96514 /* ~Fair enough. I can understand that.~ */ GOTO 160
  IF ~~ THEN REPLY #96340 /* ~We are very different people, Dorn.~ */ GOTO 156
  IF ~~ THEN REPLY #96341 /* ~Then we've nothing more to discuss.~ */ DO ~SetGlobal("DornRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 143 // from: 142.0
  SAY #96342 /* ~I don't bend, for you or anyone.~ [OH96342] */
  IF ~~ THEN REPLY #96343 /* ~Those who don't bend will break.~ */ GOTO 144
  IF ~~ THEN REPLY #96344 /* ~I would have bent for you.~ */ GOTO 145
  IF ~~ THEN REPLY #96345 /* ~And that is why this can never happen.~ */ GOTO 149
END

IF ~~ THEN BEGIN 144 // from: 143.0
  SAY #96346 /* ~The weak break. The strong stand triumphant over all that would see them broken—or bent.~ [OH96346] */
  IF ~~ THEN DO ~SetGlobal("DornRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 145 // from: 143.1
  SAY #96347 /* ~Perhaps you will yet.~ [OH96347] */
  IF ~~ THEN REPLY #96348 /* ~Perhaps.~ */ EXIT
  IF ~~ THEN REPLY #96349 /* ~Oh, I'm certain I will—just not for you.~ */ GOTO 134
  IF ~~ THEN REPLY #96350 /* ~You'll never know.~ */ EXIT
END

IF ~~ THEN BEGIN 146 // from: 134.1
  SAY #96351 /* ~But a pleasurable distraction it would be.~ [OH96351] */
  IF ~~ THEN REPLY #96352 /* ~It would be that. I'll consider the matter.~ */ DO ~SetGlobal("DornRomanceActive","GLOBAL",3)
~ GOTO 158
  IF ~~ THEN REPLY #96353 /* ~We're too different, Dorn. And I doubt either of us is prepared to compromise much.~ */ DO ~SetGlobal("DornRomanceActive","GLOBAL",3)
~ GOTO 147
  IF ~~ THEN REPLY #96354 /* ~Aye, it would—but you'll never know.~ */ GOTO 148
END

IF ~~ THEN BEGIN 147 // from: 156.0 146.1
  SAY #96355 /* ~I don't bend, for you or anyone.~ [OH96355] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 148 // from: 146.2
  SAY #96357 /* ~We shall see, <CHARNAME>. I enjoy a challenge.~ [OH96357] */
  IF ~~ THEN REPLY #96358 /* ~We'll see how much you enjoy it in the end.~ */ EXIT
  IF ~~ THEN REPLY #96359 /* ~I'll enjoy watching you take this one.~ */ EXIT
  IF ~~ THEN REPLY #96360 /* ~A challenge implies the possibility of success. You have no chance, Dorn. Whatever delusion has taken hold of your deranged mind, give it up now.~ */ DO ~SetGlobal("DornRomanceActive","GLOBAL",3)
~ GOTO 149
END

IF ~~ THEN BEGIN 149 // from: 156.2 148.2 143.2
  SAY #96361 /* ~You will look back on this and regret your words, <CHARNAME>. You can be sure of it.~ [OH96361] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 150 // from: 134.0
  SAY #96362 /* ~Don't apologize, <CHARNAME>. It is a hallmark of the weak. You have made your feelings clear. I respect that.~ [OH96362] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 151 // from: 155.0 138.2
  SAY #96363 /* ~I could not agree more.~ [OH96363] */
  IF ~~ THEN REPLY #96364 /* ~I look forward to seeing what you do next.~ */ GOTO 152
  IF ~~ THEN REPLY #96365 /* ~So what will you do now?~ */ GOTO 153
  IF ~~ THEN REPLY #96366 /* ~Then let us speak no more about this.~ */ DO ~SetGlobal("DornRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 152 // from: 160.0 153.0 151.0
  SAY #96367 /* ~You'll like it, I assure you.~ [OH96367] */
  IF ~~ THEN REPLY #96368 /* ~I hope you're right, Dorn—for your sake.~ */ EXIT
  IF ~~ THEN REPLY #96369 /* ~I'm sure I will.~ */ EXIT
  IF ~~ THEN REPLY #96370 /* ~We'll see. I am not easily impressed.~ */ GOTO 154
END

IF ~~ THEN BEGIN 153 // from: 160.1 151.1
  SAY #96371 /* ~I've not decided yet.~ [OH96371] */
  IF ~~ THEN GOTO 152
END

IF ~~ THEN BEGIN 154 // from: 152.2
  SAY #96372 /* ~Good. I enjoy a challenge.~ [OH96372] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 155 // from: 141.0
  SAY #96373 /* ~I would.~ [OH96373] */
  IF ~~ THEN REPLY #96374 /* ~Show me. Actions speak louder than words.~ */ GOTO 151
  IF ~~ THEN REPLY #96375 /* ~Then get ready for disappointment.~ */ EXIT
  IF ~~ THEN REPLY #96376 /* ~I wish you luck. You'll need it.~ */ EXIT
END

IF ~~ THEN BEGIN 156 // from: 142.3
  SAY #96377 /* ~Too different?~ [OH96377] */
  IF ~~ THEN REPLY #96378 /* ~Unless we're both willing to compromise a bit, I fear so.~ */ GOTO 147
  IF ~~ THEN REPLY #96379 /* ~Variety is the spice of life. And you are among the spiciest men I've ever met.~ */ GOTO 157
  IF ~~ THEN REPLY #96380 /* ~For what we're discussing? Yes.~ */ GOTO 149
END

IF ~~ THEN BEGIN 157 // from: 156.1
  SAY #96381 /* ~I'm just getting started.~ [OH96381] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 158 // from: 146.0
  SAY #96382 /* ~See that you do.~ [OH96382] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 159 // from: 142.1 139.1 139.0
  SAY #96515 /* ~I look forward to where this might lead.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 160 // from: 142.2 140.1
  SAY #96516 /* ~Good. I look forward to where this might lead.~ */
  IF ~~ THEN REPLY #96517 /* ~I look forward to seeing what you do next.~ */ GOTO 152
  IF ~~ THEN REPLY #96518 /* ~So what will you do now?~ */ GOTO 153
  IF ~~ THEN REPLY #96519 /* ~Then let us speak no more about this.~ */ EXIT
END

IF WEIGHT #16 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("DornLovetalks","GLOBAL",12)
~ THEN BEGIN 161 // from:
  SAY #96645 /* ~Your constant supervision tires me, Bhaalspawn.~ */
  IF ~~ THEN REPLY #96646 /* ~What are you talking about?~ */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 162
  IF ~~ THEN REPLY #96647 /* ~Can I help you, Dorn?~ */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 162
  IF ~~ THEN REPLY #96649 /* ~I don't "supervise." I lead.~ */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 162
END

IF ~~ THEN BEGIN 162 // from: 161.2 161.1 161.0
  SAY #96651 /* ~Your leadership is laughable and your course folly. I refuse to bow down any longer!~ */
  IF ~~ THEN REPLY #96652 /* ~As ever, you are free to do as you want. I wouldn't dream of trying to stop you.~ */ GOTO 163
  IF ~~ THEN REPLY #96653 /* ~What is this about? ~ */ GOTO 164
  IF ~~ THEN REPLY #96654 /* ~Are you looking for a fight? Because that's what you're going to get if you don't shut the hells up!~ */ GOTO 164
END

IF ~~ THEN BEGIN 163 // from: 162.0
  SAY #96657 /* ~Do not lie to me, <CHARNAME>. ~ */
  IF ~~ THEN GOTO 164
END

IF ~~ THEN BEGIN 164 // from: 163.0 162.2 162.1
  SAY #96658 /* ~I demand blood! I demand death! You give me naught but skirmishes and petty arguments!~ */
  IF ~~ THEN REPLY #96659 /* ~I feel your frustration. There *will* be bloodshed, Dorn, but now is not the time. ~ */ GOTO 165
  IF ~~ THEN REPLY #96660 /* ~Well, we can't go around killing every damned Jack and Sally the world has ever known! ~ */ GOTO 166
  IF ~~ THEN REPLY #96661 /* ~If blood is what you want, Dorn, I can show you your own!~ */ GOTO 167
END

IF ~~ THEN BEGIN 165 // from: 164.0
  SAY #96662 /* ~Then when? Tomorrow? Next week? No! Ur-Gothoz demands death, and he shall have it!~ */
  IF ~~ THEN GOTO 168
END

IF ~~ THEN BEGIN 166 // from: 164.1
  SAY #96663 /* ~And why not? We are a force to be reckoned with, a power matched by few. ~ */
  IF ~~ THEN GOTO 168
END

IF ~~ THEN BEGIN 167 // from: 164.2
  SAY #96664 /* ~Try it, Bhaalspawn! You'll rue the day you laid eyes on Dorn Il-Khan!~ */
  IF ~~ THEN DO ~SetGlobal("OHD_lt6","GLOBAL",1)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 168 // from: 166.0 165.0
  SAY #96665 /* ~From now on, we do things my way.~ */
  IF ~~ THEN REPLY #96666 /* ~You think you can do a better job than I?~ */ GOTO 169
  IF ~~ THEN REPLY #96667 /* ~You WILL do as I say, half-orc. Do you understand?~ */ GOTO 170
  IF ~~ THEN REPLY #96668 /* ~Fine, then leave. I have no use for whining children.~ */ GOTO 172
END

IF ~~ THEN BEGIN 169 // from: 168.0
  SAY #96669 /* ~A dumb, deaf halfwit could do a better job than you.~ */
  IF ~~ THEN GOTO 171
END

IF ~~ THEN BEGIN 170 // from: 168.1
  SAY #96670 /* ~I will not! ~ */
  IF ~~ THEN GOTO 171
END

IF ~~ THEN BEGIN 171 // from: 170.0 169.0
  SAY #96671 /* ~If I cannot have my freedom, I will at LEAST kill when I please!~ */
  IF ~  OR(2)
CheckStatGT(Player1,11,INT)
CheckStatGT(Player1,11,WIS)
~ THEN REPLY #96672 /* ~Why do I get the feeling this isn't about me at all?~ */ GOTO 173
  IF ~~ THEN REPLY #96673 /* ~You chose to join me of your own volition, Dorn. You are free to do as you please.~ */ GOTO 176
  IF ~~ THEN REPLY #96674 /* ~You will do as I say or you will leave! Now!~ */ GOTO 177
  IF ~~ THEN REPLY #96675 /* ~You want to fight? Fine! I'll give you a fight!~ */ DO ~SetGlobal("OHD_lt6","GLOBAL",1)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 172 // from: 168.2
  SAY #96676 /* ~I'll show you the whining child here!~ */
  IF ~~ THEN DO ~SetGlobal("OHD_lt6","GLOBAL",1)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 173 // from: 171.0
  SAY #96677 /* ~This is—~ */
  IF ~~ THEN GOTO 174
END

IF ~~ THEN BEGIN 174 // from: 173.0
  SAY #96678 /* ~I know my own mind! ~ */
  IF ~~ THEN REPLY #96679 /* ~I think you regret your oath to Ur-Gothoz. You tire of following *his* orders, not mine.~ */ GOTO 175
  IF ~~ THEN REPLY #96680 /* ~Fine, then. If this is about me, why now? Why not a week ago? I'm no fool, and neither are you.~ */ GOTO 175
END

IF ~~ THEN BEGIN 175 // from: 174.1 174.0
  SAY #96681 /* ~No more words! I will have blood!~ */
  IF ~~ THEN DO ~SetGlobal("OHD_lt6","GLOBAL",1)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 176 // from: 171.1
  SAY #96682 /* ~Then I am free to do this! ~ */
  IF ~~ THEN DO ~SetGlobal("OHD_lt6","GLOBAL",1)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 177 // from: 171.2
  SAY #96683 /* ~You will die first!~ */
  IF ~~ THEN DO ~SetGlobal("OHD_lt6","GLOBAL",1)
Enemy()
~ EXIT
END

IF WEIGHT #17 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("OHD_lt6","GLOBAL",2)
~ THEN BEGIN 178 // from:
  SAY #96684 /* ~ENOUGH! Enough. ~ */
  IF ~~ THEN GOTO 179
END

IF ~~ THEN BEGIN 179 // from: 178.0
  SAY #96685 /* ~I will listen. For now. But if you do not afford me the respect I am due, <PRO_RACE>, I swear I WILL have your head.~ */
  IF ~~ THEN DO ~SetGlobal("OHD_lt6","GLOBAL",3)
~ EXIT
END

IF WEIGHT #18 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("DornLovetalks","GLOBAL",14)
~ THEN BEGIN 180 // from:
  SAY #96689 /* ~Your father was the Lord of Murder, was he not?~ */
  IF ~~ THEN REPLY #96695 /* ~Bhaal was the god of murder, yes.~ */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 181
  IF ~~ THEN REPLY #96696 /* ~Yes. Family reunions were bleak affairs.~ */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 181
  IF ~~ THEN REPLY #96697 /* ~What of it?~ */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 181
END

IF ~~ THEN BEGIN 181 // from: 180.2 180.1 180.0
  SAY #96690 /* ~How do you intend to carry out his legacy? ~ */
  IF ~~ THEN REPLY #96698 /* ~Carry out his— Are you insane? Why would I want to do that?~ */ GOTO 182
  IF ~~ THEN REPLY #96699 /* ~By doing exactly what I'm doing.~ */ GOTO 183
  IF ~~ THEN REPLY #96700 /* ~*I* am his legacy, and I will do what I please. ~ */ GOTO 182
END

IF ~~ THEN BEGIN 182 // from: 183.0 181.2 181.0
  SAY #96691 /* ~Bhaal was a powerful god. You would be a fool not to embrace his power as your own.~ */
  IF ~~ THEN REPLY #96701 /* ~Do not worry. I intend to do exactly that.~ */ GOTO 184
  IF ~~ THEN REPLY #96702 /* ~And what if I'm content without the power of a deranged god?~ */ GOTO 185
  IF ~~ THEN REPLY #96703 /* ~Power has a price. I don't know if I'm prepared to pay it.~ */ GOTO 186
END

IF ~~ THEN BEGIN 183 // from: 181.1
  SAY #96692 /* ~I approve.~ */
  IF ~~ THEN GOTO 182
END

IF ~~ THEN BEGIN 184 // from: 185.0 182.0
  SAY #96693 /* ~Many would kill for a taste of the power that is your birthright. Remember that.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 185 // from: 182.1
  SAY #96694 /* ~Then you are a foolish <PRO_RACE>.~ */
  IF ~~ THEN GOTO 184
END

IF ~~ THEN BEGIN 186 // from: 182.2
  SAY #96704 /* ~Whatever the price, it is worth paying.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #19 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("DornLovetalks","GLOBAL",16)
~ THEN BEGIN 187 // from:
  SAY #96705 /* ~"<CHARNAME>, Butcher of the Sword Coast." Word of your passage has reached Amn. Your reputation earns you my respect.~ */
  IF ~~ THEN REPLY #96718 /* ~Are they really calling me that?~ */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 188
  IF ~~ THEN REPLY #96719 /* ~Oh, gods. That is not a title to pull out in mixed company.~ */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 190
  IF ~~ THEN REPLY #96720 /* ~Soon it will be more than just reputation to the idiots here in Amn.~ */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 189
END

IF ~~ THEN BEGIN 188 // from: 187.0
  SAY #96706 /* ~Do you not hear it as we walk the streets? Do you not see the looks given you by the peasantry and nobility alike?~ */
  IF ~~ THEN GOTO 190
END

IF ~~ THEN BEGIN 189 // from: 187.2
  SAY #96707 /* ~Indeed.~ */
  IF ~~ THEN GOTO 190
END

IF ~~ THEN BEGIN 190 // from: 189.0 188.0 187.1
  SAY #96708 /* ~Your infamy may someday rival my own. ~ */
  IF ~~ THEN REPLY #96721 /* ~Somehow, I doubt it.~ */ GOTO 191
  IF ~~ THEN REPLY #96722 /* ~The idea fills my heart with joy. No, wait. Not joy. The opposite of that.~ */ GOTO 192
  IF ~~ THEN REPLY #96723 /* ~Yes. Someday soon.~ */ GOTO 192
END

IF ~~ THEN BEGIN 191 // from: 190.0
  SAY #96709 /* ~As do I. But stranger things have happened.~ */
  IF ~~ THEN GOTO 192
END

IF ~~ THEN BEGIN 192 // from: 191.0 190.2 190.1
  SAY #96710 /* ~Tell me, Bhaalspawn. When you enter into the fray, stare your enemy in the eye, and attack, what is it you feel?~ */
  IF ~~ THEN REPLY #96724 /* ~Fury. Heat. Bloodlust. ~ */ GOTO 193
  IF ~~ THEN REPLY #96725 /* ~Relaxed. I just let it happen.~ */ GOTO 194
  IF ~~ THEN REPLY #96726 /* ~Unreasoning panic, usually. I'm amazed I've made it this far.~ */ GOTO 195
END

IF ~~ THEN BEGIN 193 // from: 192.0
  SAY #96711 /* ~A <PRO_MANWOMAN> after my own heart.~ */
  IF ~~ THEN GOTO 196
END

IF ~~ THEN BEGIN 194 // from: 192.1
  SAY #96712 /* ~A warrior born, without fear or hesitation. Interesting.~ */
  IF ~~ THEN GOTO 196
END

IF ~~ THEN BEGIN 195 // from: 192.2
  SAY #96713 /* ~I have seen the wide-eyed fear, but also the set of your jaw. You have determination, if nothing else.~ */
  IF ~~ THEN GOTO 196
END

IF ~~ THEN BEGIN 196 // from: 195.0 194.0 193.0
  SAY #96714 /* ~There is more to you than meets the eye. ~ */
  IF ~~ THEN REPLY #96727 /* ~But a fair amount of me that meets the eye too, right?~ */ GOTO 197
  IF ~~ THEN REPLY #96728 /* ~A <PRO_MANWOMAN> has to have <PRO_HISHER> secrets, Dorn.~ */ GOTO 198
  IF ~~ THEN REPLY #96729 /* ~I'm sure you have hidden depths as well. Very hidden.~ */ GOTO 199
END

IF ~~ THEN BEGIN 197 // from: 196.0
  SAY #96715 /* ~There is. Some parts more pleasing than others.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 198 // from: 196.1
  SAY #96716 /* ~Yes. I suppose you do. ~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 199 // from: 196.2
  SAY #96717 /* ~Careful, <CHARNAME>. I'd hate to disappoint you.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #20 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("DornLovetalks","GLOBAL",18)
Global("OHD_LOST_CLASS","GLOBAL",1)
~ THEN BEGIN 200 // from:
  SAY #96730 /* ~I have cast off my chains and am free to do as I will, thanks to you.~ */
  IF ~~ THEN REPLY #96778 /* ~Please. You freed yourself. I'll take neither the credit nor the blame.~ */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
SetGlobal("DornRomanceActive","GLOBAL",2)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 202
  IF ~~ THEN REPLY #96779 /* ~And what is it you will?~ */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
SetGlobal("DornRomanceActive","GLOBAL",2)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 201
  IF ~~ THEN REPLY #96780 /* ~Now you must do something for me.~ */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
SetGlobal("DornRomanceActive","GLOBAL",2)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 203
END

IF ~~ THEN BEGIN 201 // from: 215.1 200.1
  SAY #96731 /* ~For now, I will follow your lead. Doing so has served me well so far.~ */
  IF ~~ THEN GOTO 204
END

IF ~~ THEN BEGIN 202 // from: 215.0 200.0
  SAY #96732 /* ~As you wish. There is something I'd ask of you.~ */
  IF ~~ THEN GOTO 204
END

IF ~~ THEN BEGIN 203 // from: 215.2 200.2
  SAY #96733 /* ~Wait, I have something to say.~ */
  IF ~~ THEN GOTO 204
END

IF ~~ THEN BEGIN 204 // from: 203.0 202.0 201.0
  SAY #96734 /* ~You are a powerful <PRO_MANWOMAN>, <CHARNAME>. You hold your own in battle and strike fear into the hearts of your enemies and allies alike. ~ */
  IF ~~ THEN GOTO 205
END

IF ~~ THEN BEGIN 205 // from: 204.0
  SAY #96735 /* ~I have never known another like you.~ */
  IF ~~ THEN GOTO 206
END

IF ~~ THEN BEGIN 206 // from: 205.0
  SAY #96736 /* ~My blood boils to look at you, god-child, and I can wait no longer. ~ */
  IF ~~ THEN GOTO 207
  IF ~  Global("OHD_dornsex","GLOBAL",1)
~ THEN GOTO 214
END

IF ~~ THEN BEGIN 207 // from: 206.0
  SAY #96737 /* ~Will you share my bedroll tonight? I assure you... you will not regret it. ~ */
  IF ~~ THEN REPLY #96781 /* ~And what of tomorrow? The nights are cold, Dorn. I would have a companion, not a distraction.~ */ GOTO 208
  IF ~~ THEN REPLY #96782 /* ~You've got that right.~ */ GOTO 209
  IF ~~ THEN REPLY #96783 /* ~I'm sorry, Dorn. I can't.~ */ GOTO 210
END

IF ~~ THEN BEGIN 208 // from: 214.0 207.0
  SAY #96738 /* ~And tomorrow, and the nights after, if that is what you wish. ~ */
  IF ~~ THEN REPLY #96784 /* ~It is, and has been for a long time now.~ */ GOTO 211
  IF ~~ THEN REPLY #96785 /* ~I will have you, Dorn Il-Khan.~ */ GOTO 212
  IF ~~ THEN REPLY #96786 /* ~That's just it. I don't think it is. I'm sorry.~ */ GOTO 210
END

IF ~~ THEN BEGIN 209 // from: 214.1 207.1
  SAY #96739 /* ~I look forward to it. ~ */
  IF ~~ THEN GOTO 213
END

IF ~~ THEN BEGIN 210 // from: 214.2 208.2 207.2
  SAY #96740 /* ~Bah! I was wrong about you. You are no better than all the rest.~ */
  IF ~~ THEN DO ~SetGlobal("DornRomanceActive","GLOBAL",3)
RestPartyEx(0,0,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 211 // from: 208.0
  SAY #96741 /* ~And I as well. ~ */
  IF ~~ THEN GOTO 213
END

IF ~~ THEN BEGIN 212 // from: 208.1
  SAY #96742 /* ~And I you.~ */
  IF ~~ THEN GOTO 213
END

IF ~~ THEN BEGIN 213 // from: 212.0 211.0 209.0
  SAY #96743 /* ~<CHARNAME> and Dorn... I like the sound of that.~ */
  IF ~~ THEN DO ~RestPartyEx(0,0,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 214 // from: 206.1
  SAY #96744 /* ~Share my bedroll once more. You know you will not regret it.~ */
  IF ~~ THEN REPLY #96787 /* ~And what of tomorrow? The nights are cold, Dorn. I would have a companion, not a distraction.~ */ GOTO 208
  IF ~~ THEN REPLY #96788 /* ~You're right about that.~ */ GOTO 209
  IF ~~ THEN REPLY #96789 /* ~I'm sorry, Dorn. I can't.~ */ GOTO 210
END

IF WEIGHT #21 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("DornLovetalks","GLOBAL",18)
~ THEN BEGIN 215 // from:
  SAY #96745 /* ~Power such as I have never known flows through my veins... and I have you to thank for it.~ */
  IF ~~ THEN REPLY #96790 /* ~Please. You did this yourself. I'll take neither the credit nor the blame.~ */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
SetGlobal("DornRomanceActive","GLOBAL",2)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 202
  IF ~~ THEN REPLY #96791 /* ~And what is it you will?~ */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
SetGlobal("DornRomanceActive","GLOBAL",2)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 201
  IF ~~ THEN REPLY #96792 /* ~Now you must do something for me.~ */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
SetGlobal("DornRomanceActive","GLOBAL",2)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 203
END

IF WEIGHT #22 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("DornLovetalks","GLOBAL",20)
~ THEN BEGIN 216 // from:
  SAY #96746 /* ~How fare you, <CHARNAME>? ~ */
  IF ~~ THEN REPLY #96793 /* ~As though you care.~ */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 217
  IF ~~ THEN REPLY #96794 /* ~I'm fine. Just... fine.~ */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 218
  IF ~~ THEN REPLY #96795 /* ~I've lost my soul. How do you think I fare?~ */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 219
END

IF ~~ THEN BEGIN 217 // from: 216.0
  SAY #96747 /* ~You know me well enough to know that if I didn't care, I wouldn't ask.~ */
  IF ~~ THEN GOTO 220
END

IF ~~ THEN BEGIN 218 // from: 216.1
  SAY #96748 /* ~Do not lie to me, Bhaalspawn. ~ */
  IF ~~ THEN GOTO 220
END

IF ~~ THEN BEGIN 219 // from: 216.2
  SAY #96749 /* ~You look ready to fall where you stand.~ */
  IF ~~ THEN GOTO 220
END

IF ~~ THEN BEGIN 220 // from: 219.0 218.0 217.0
  SAY #96750 /* ~Do you need to rest?~ */
  IF ~~ THEN REPLY #96796 /* ~Don't worry about it. Just make sure I don't collapse.~ */ GOTO 221
  IF ~~ THEN REPLY #96797 /* ~I'll rest soon enough. A body without a soul can't function for long. ~ */ GOTO 222
END

IF ~~ THEN BEGIN 221 // from: 220.0
  SAY #96751 /* ~Very well. ~ */
  IF ~~ THEN GOTO 222
END

IF ~~ THEN BEGIN 222 // from: 221.0 220.1
  SAY #96752 /* ~Irenicus will pay for what he's done, <CHARNAME>.~ */
  IF ~~ THEN GOTO 223
END

IF ~~ THEN BEGIN 223 // from: 222.0
  SAY #96753 /* ~We WILL retrieve your soul, and then he will burn.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #23 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("DornLovetalks","GLOBAL",22)
~ THEN BEGIN 224 // from:
  SAY #96754 /* ~You and I are similar in more ways than one, Bhaalspawn.~ */
  IF ~  Race(Player1,HALFORC)
~ THEN REPLY #96798 /* ~What, apart from the fact we have fantastic tusks?~ */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 225
  IF ~  Gender(Player1,MALE)
~ THEN REPLY #96799 /* ~We do both have excellent taste in men.~ */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 226
  IF ~  Gender(Player1,FEMALE)
~ THEN REPLY #96800 /* ~We do both have excellent taste in partners.~ */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 228
  IF ~~ THEN REPLY #96801 /* ~Aside from our shared love of all things murderous?~ */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 227
  IF ~~ THEN REPLY #96802 /* ~What do you mean?~ */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 229
END

IF ~~ THEN BEGIN 225 // from: 224.0
  SAY #96755 /* ~We share our orcish blood, certainly. But that is not all.~ */
  IF ~~ THEN GOTO 230
END

IF ~~ THEN BEGIN 226 // from: 224.1
  SAY #96756 /* ~Apart from that.~ */
  IF ~~ THEN GOTO 229
END

IF ~~ THEN BEGIN 227 // from: 224.3
  SAY #96757 /* ~Yes, apart from even our shared bloodlust.~ */
  IF ~~ THEN GOTO 229
END

IF ~~ THEN BEGIN 228 // from: 224.2
  SAY #96758 /* ~Apart from that.~ */
  IF ~~ THEN GOTO 229
END

IF ~~ THEN BEGIN 229 // from: 228.0 227.0 226.0 224.4
  SAY #96759 /* ~We are both outcast. Labelled and cast aside by the world, the victims of our heritage.~ */
  IF ~~ THEN GOTO 231
END

IF ~~ THEN BEGIN 230 // from: 225.0
  SAY #96760 /* ~We are both outcast. Labelled and cast aside by the world, victims of our parentage.~ */
  IF ~~ THEN REPLY #96803 /* ~A grim outlook.~ */ GOTO 232
  IF ~  !Race(Player1,HALFORC)
~ THEN REPLY #96804 /* ~Our heritage has caused us both problems, yes. In different ways, I'm sure, but life would certainly be easier were I not a Bhaalspawn.~ */ GOTO 234
  IF ~  Race(Player1,HALFORC)
~ THEN REPLY #96805 /* ~Our heritage has caused us both problems, yes. Life would certainly be easier were I not a half-orc Bhaalspawn.~ */ GOTO 234
  IF ~~ THEN REPLY #96806 /* ~I don't know about that. I haven't found my heritage all that troublesome.~ */ GOTO 233
END

IF ~~ THEN BEGIN 231 // from: 229.0
  SAY #96761 /* ~Our upbringing was different, but at our core we are both strangers to the world around us. We make our way, but we are cast out and spat upon for our parentage.~ */
  IF ~~ THEN REPLY #96803 /* ~A grim outlook.~ */ GOTO 232
  IF ~  !Race(Player1,HALFORC)
~ THEN REPLY #96804 /* ~Our heritage has caused us both problems, yes. In different ways, I'm sure, but life would certainly be easier were I not a Bhaalspawn.~ */ GOTO 234
  IF ~  Race(Player1,HALFORC)
~ THEN REPLY #96805 /* ~Our heritage has caused us both problems, yes. Life would certainly be easier were I not a half-orc Bhaalspawn.~ */ GOTO 234
  IF ~~ THEN REPLY #96806 /* ~I don't know about that. I haven't found my heritage all that troublesome.~ */ GOTO 233
END

IF ~~ THEN BEGIN 232 // from: 231.0 230.0
  SAY #96762 /* ~An accurate one.~ */
  IF ~~ THEN GOTO 234
END

IF ~~ THEN BEGIN 233 // from: 231.3 230.3
  SAY #96763 /* ~"Not all that troublesome." Hah! Those who know your true heritage recoil, in constant fear of their lives.~ */
  IF ~~ THEN GOTO 234
END

IF ~~ THEN BEGIN 234 // from: 233.0 232.0 231.2 231.1 230.2 230.1
  SAY #96764 /* ~We stand forever apart. Few know us, and fewer still understand us. ~ */
  IF ~~ THEN GOTO 235
END

IF ~~ THEN BEGIN 235 // from: 234.0
  SAY #96765 /* ~Fate has brought us together for a reason. Our destiny is writ large in the stars. One day, all will cower before us.~ */
  IF ~~ THEN REPLY #96807 /* ~And when that day comes, my love, what a celebration we shall have.~ */ GOTO 236
  IF ~~ THEN REPLY #96808 /* ~You have a magnificent way with words.~ */ GOTO 237
  IF ~~ THEN REPLY #96809 /* ~If you say so.~ */ GOTO 238
END

IF ~~ THEN BEGIN 236 // from: 235.0
  SAY #96766 /* ~I like the sound of that.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 237 // from: 235.1
  SAY #96767 /* ~Yes. I do.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 238 // from: 235.2
  SAY #96768 /* ~I swear to you, they will. You just wait.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #24 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("DornLovetalks","GLOBAL",24)
~ THEN BEGIN 239 // from:
  SAY #96769 /* ~The mage's plan was effective, it cannot be denied. Irenicus wields fear and panic like a seasoned warrior does sword and shield.~ */
  IF ~~ THEN REPLY #96810 /* ~It is... impressive.~ */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 240
  IF ~~ THEN REPLY #96811 /* ~Hit them right and the most seasoned warrior will still fall.~ */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 240
  IF ~~ THEN REPLY #96812 /* ~Admire him some other time, Dorn. We've matters to attend to.~ */ DO ~IncrementGlobal("DornLovetalks","GLOBAL",1)
RealSetGlobalTimer("DornLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 241
END

IF ~~ THEN BEGIN 240 // from: 239.1 239.0
  SAY #96770 /* ~He is not one to trifle with, but neither are we. ~ */
  IF ~~ THEN GOTO 242
END

IF ~~ THEN BEGIN 241 // from: 239.2
  SAY #96771 /* ~Hold a moment.~ */
  IF ~~ THEN GOTO 242
END

IF ~~ THEN BEGIN 242 // from: 241.0 240.0
  SAY #96772 /* ~This is a beautiful sight. Had we more time, <CHARNAME>... I would take you where we stand, in the midst of this chaos. ~ */
  IF ~~ THEN GOTO 243
END

IF ~~ THEN BEGIN 243 // from: 242.0
  SAY #96773 /* ~Kiss me.~ */
  IF ~~ THEN REPLY #96813 /* ~With pleasure.~ */ GOTO 245
  IF ~~ THEN REPLY #96814 /* ~We are literally in the middle of a battle. No.~ */ GOTO 244
END

IF ~~ THEN BEGIN 244 // from: 243.1
  SAY #96774 /* ~Then perhaps we are too different after all.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 245 // from: 243.0
  SAY #96775 /* ~You and I, <CHARNAME>... we will go far. ~ */
  IF ~~ THEN GOTO 246
END

IF ~~ THEN BEGIN 246 // from: 245.0
  SAY #96776 /* ~Now let us make this Irenicus suffer as his victims have suffered.~ */
  IF ~~ THEN GOTO 247
END

IF ~~ THEN BEGIN 247 // from: 246.0
  SAY #96777 /* ~You are MINE... and he will pay for his transgressions!~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #25 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("OHD_rasaadconflict","GLOBAL",2)
~ THEN BEGIN 248 // from:
  SAY #100062 /* ~You and the monk. ~ */
  IF ~~ THEN REPLY #100069 /* ~Me and Rasaad? What about us?~ */ DO ~SetGlobal("OHD_rasaadconflict","GLOBAL",3)
~ GOTO 249
  IF ~~ THEN REPLY #100070 /* ~Are none of your business.~ */ DO ~SetGlobal("OHD_rasaadconflict","GLOBAL",3)
~ GOTO 249
  IF ~~ THEN REPLY #100071 /* ~Definitely not.~ */ DO ~SetGlobal("OHD_rasaadconflict","GLOBAL",3)
SetGlobal("RasaadRomanceActive","GLOBAL",3)
~ GOTO 250
END

IF ~~ THEN BEGIN 249 // from: 248.1 248.0
  SAY #100063 /* ~If you would be mine, you must be mine alone.~ */
  IF ~~ THEN REPLY #100072 /* ~I'm a person, Dorn. Not some object to be possessed.~ */ GOTO 251
  IF ~~ THEN REPLY #100073 /* ~You know I am yours. You do know that, right?~ */ DO ~SetGlobal("RasaadRomanceActive","GLOBAL",3)
~ GOTO 250
  IF ~~ THEN REPLY #100074 /* ~Then we are through.~ */ DO ~SetGlobal("DornRomanceActive","GLOBAL",3)
~ GOTO 253
END

IF ~~ THEN BEGIN 250 // from: 254.1 252.0 249.1 248.2
  SAY #100064 /* ~Good. ~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 251 // from: 249.0
  SAY #100065 /* ~You are no object. But you do belong to me, as I do to you.~ */
  IF ~~ THEN REPLY #100075 /* ~You really are quite the romantic, aren't you?~ */ GOTO 252
  IF ~~ THEN REPLY #100076 /* ~We don't owe each other anything.~ */ DO ~SetGlobal("DornRomanceActive","GLOBAL",3)
~ GOTO 253
  IF ~~ THEN REPLY #100077 /* ~Wrong. Wrong, wrong, wrong.~ */ DO ~SetGlobal("DornRomanceActive","GLOBAL",3)
~ GOTO 253
END

IF ~~ THEN BEGIN 252 // from: 251.0
  SAY #100066 /* ~And the monk?~ */
  IF ~~ THEN REPLY #100078 /* ~Means nothing to me.~ */ DO ~SetGlobal("RasaadRomanceActive","GLOBAL",3)
~ GOTO 250
  IF ~~ THEN REPLY #100079 /* ~He is... intriguing.~ */ GOTO 254
END

IF ~~ THEN BEGIN 253 // from: 254.0 251.2 251.1 249.2
  SAY #100067 /* ~So be it. You will come to regret this, <CHARNAME>.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 254 // from: 252.1
  SAY #100068 /* ~Decide whom you want, now. I'll not be anyone's second choice.~ */
  IF ~~ THEN REPLY #100080 /* ~And I won't respond positively to ultimatums.~ */ DO ~SetGlobal("DornRomanceActive","GLOBAL",3)
~ GOTO 253
  IF ~~ THEN REPLY #100081 /* ~If I must choose, I would choose you, of course.~ */ DO ~SetGlobal("RasaadRomanceActive","GLOBAL",3)
~ GOTO 250
END

IF WEIGHT #26 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("OHD_aerieconflict","GLOBAL",2)
~ THEN BEGIN 255 // from:
  SAY #100082 /* ~You would challenge me, elf?~ */
  IF ~~ THEN DO ~SetGlobal("OHD_aerieconflict","GLOBAL",3)
~ EXTERN ~AERIEJ~ 228
END

IF ~~ THEN BEGIN 256 // from:
  SAY #100084 /* ~<CHARNAME>. You desire him. But he will be mine.~ */
  IF ~~ THEN EXTERN ~AERIEJ~ 229
END

IF ~~ THEN BEGIN 257 // from:
  SAY #100086 /* ~Hah! I may be a monster, but you are a gnat. Get in my way and I will squash you.~ */
  IF ~~ THEN EXTERN ~AERIEJ~ 230
END

IF ~~ THEN BEGIN 258 // from:
  SAY #100089 /* ~You are no better than she. To Hells with you!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 259 // from:
  SAY #100091 /* ~What you thought is of no consequence. If you value your life, you will leave him to me.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 260 // from:
  SAY #100095 /* ~And good riddance.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 261 // from:
  SAY #100100 /* ~Said the halfling to the giant.~ */
  IF ~~ THEN EXTERN ~ANOMENJ~ 327
END

IF ~~ THEN BEGIN 262 // from:
  SAY #100102 /* ~You'll not best this one.~ */
  IF ~~ THEN REPLY #100109 /* ~Would you two like some privacy...?~ */ EXTERN ~ANOMENJ~ 328
  IF ~~ THEN REPLY #100110 /* ~Dorn, leave Anomen alone. He should get used to it from now on.~ */ DO ~SetGlobal("AnomenRomanceActive","GLOBAL",3)
~ EXTERN ~ANOMENJ~ 329
  IF ~~ THEN REPLY #100111 /* ~Anomen, you've no need to prove yourself to me. ~ */ DO ~SetGlobal("DornRomanceActive","GLOBAL",3)
~ GOTO 264
END

IF ~~ THEN BEGIN 263 // from:
  SAY #100105 /* ~You've made the right decision, <CHARNAME>. ~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 264 // from: 262.2
  SAY #100106 /* ~You'll regret this decision, <CHARNAME>. He'll disappoint you in ways I never would.~ */
  IF ~~ THEN EXTERN ~ANOMENJ~ 330
END

IF ~~ THEN BEGIN 265 // from:
  SAY #100108 /* ~We will see.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #27 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("OHD_phaere","GLOBAL",1)
~ THEN BEGIN 266 // from:
  SAY #95174 /* ~What treachery is this, <CHARNAME>?~ [OH95174] */
  IF ~~ THEN REPLY #95185 /* ~Treachery?~ */ DO ~SetGlobal("OHD_phaere","GLOBAL",2)
~ GOTO 268
  IF ~~ THEN REPLY #95186 /* ~What are you talking about, Dorn?~ */ DO ~SetGlobal("OHD_phaere","GLOBAL",2)
~ GOTO 268
  IF ~~ THEN REPLY #95187 /* ~You accuse me of treachery? Watch your tongue, half-orc.~ */ DO ~SetGlobal("OHD_phaere","GLOBAL",2)
~ GOTO 267
END

IF ~~ THEN BEGIN 267 // from: 266.2
  SAY #95175 /* ~Watch my tongue? I should cut yours from your vile mouth!~ [OH95175] */
  IF ~~ THEN GOTO 268
END

IF ~~ THEN BEGIN 268 // from: 267.0 266.1 266.0
  SAY #95176 /* ~I leave you alone for fifteen seconds and you take some drow she-dog into your bed?~ [OH95176] */
  IF ~~ THEN REPLY #95188 /* ~A minor point, but it would be more accurate to say she took me into her bed.~ */ GOTO 269
  IF ~~ THEN REPLY #95189 /* ~Ah. Yes. Not my finest hour. A decent eight minutes, though, if I do say so myself.~ */ GOTO 271
  IF ~  OR(2)
CheckStatLT(Player1,15,CHR)
CheckStatLT(Player1,15,STR)
~ THEN REPLY #95190 /* ~I do as I will, half-orc. If you've a problem with that, it's yours and yours alone. Deal with it or begone.~ */ GOTO 273
  IF ~  CheckStatGT(Player1,14,CHR)
CheckStatGT(Player1,14,STR)
~ THEN REPLY #95190 /* ~I do as I will, half-orc. If you've a problem with that, it's yours and yours alone. Deal with it or begone.~ */ GOTO 272
  IF ~~ THEN REPLY #100250 /* ~I did no such thing.~ */ GOTO 272
END

IF ~~ THEN BEGIN 269 // from: 268.0
  SAY #95177 /* ~Damn accuracy and damn you! ~ [OH95177] */
  IF ~~ THEN GOTO 270
END

IF ~~ THEN BEGIN 270 // from: 271.0 269.0
  SAY #95178 /* ~This insult cannot stand!~ [OH95178] */
  IF ~~ THEN REPLY #95191 /* ~I am sorry, Dorn. It was a rash decision, made in the heat of the moment, and I regret it.~ */ GOTO 276
  IF ~~ THEN REPLY #95192 /* ~Shh. The insult's very sensitive about having no legs. It lost them in an incident during the second Dragonspear War. Ugly battle. It wakes at night screaming, its bed drenched in sweat, the memory of that horrible day scarred into its very soul.~ */ GOTO 275
  IF ~  OR(2)
CheckStatLT(Player1,15,CHR)
CheckStatLT(Player1,15,STR)
~ THEN REPLY #95193 /* ~It can and it will, half-orc. You do not own me.~ */ GOTO 273
  IF ~  CheckStatGT(Player1,14,CHR)
CheckStatGT(Player1,14,STR)
~ THEN REPLY #95193 /* ~It can and it will, half-orc. You do not own me.~ */ GOTO 272
END

IF ~~ THEN BEGIN 271 // from: 268.1
  SAY #95179 /* ~Jokes? You make jokes?~ [OH95179] */
  IF ~~ THEN GOTO 270
END

IF ~~ THEN BEGIN 272 // from: 276.0 275.1 273.1 270.3 268.4 268.3
  SAY #95180 /* ~This one time, I'll permit you this... lapse of judgment. If you would see us fulfill our destiny, do not repeat it.~ [OH95180] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 273 // from: 275.0 270.2 268.2
  SAY #95181 /* ~I should send you to the Abyss and let demons gnaw your soul for all eternity for this—push me one more time and I will, I swear it. Get out of my sight! You sicken me.~ [OH95181] */
  IF ~~ THEN REPLY #95194 /* ~She meant nothing to me, Dorn. You are all that truly matters.~ */ GOTO 274
  IF ~~ THEN REPLY #95195 /* ~I sicken you? Wow, I really did mess up, didn't I?~ */ GOTO 272
  IF ~~ THEN REPLY #95196 /* ~Get over it, Dorn—and soon. I've no patience for your nonsense.~ */ EXIT
END

IF ~~ THEN BEGIN 274 // from: 273.0
  SAY #95182 /* ~Prove it, <CHARNAME>—if you can. You have your work cut out for you. Fail and you'll have something more cut OUT of you.~ [OH95182] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 275 // from: 270.1
  SAY #95183 /* ~Such mockery does naught but stoke my fury, <CHARNAME>.~ [OH95183] */
  IF ~~ THEN GOTO 273
  IF ~  CheckStatGT(Player1,14,CHR)
CheckStatGT(Player1,14,STR)
~ THEN GOTO 272
END

IF ~~ THEN BEGIN 276 // from: 270.0
  SAY #95184 /* ~Regrets are for the weak, which is all you are. This pathetic episode proves it.~ [OH95184] */
  IF ~~ THEN GOTO 272
END

IF WEIGHT #28 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("OHD_WEDDING_IMPATIENT","LOCALS",1)
Global("OHD_WEDDING_START","GLOBAL",0)
~ THEN BEGIN 277 // from:
  SAY #74649 /* ~<CHARNAME>, a word?~ [OH74649] */
  IF ~~ THEN DO ~SetGlobal("OHD_WEDDING_IMPATIENT","LOCALS",2)
SetGlobalTimer("OHD_CRASH_WEDDING_2","GLOBAL",FOURTEEN_DAYS)
~ GOTO 278
END

IF ~~ THEN BEGIN 278 // from: 277.0
  SAY #74650 /* ~I can't help but notice we haven't visited the Radiant Heart's temple recently, or that a certain cleric by the name of Firejaw continues to draw breath. When do you plan to rectify the situation?~ [OH74650] */
  IF ~~ THEN REPLY #74651 /* ~In truth, Dorn, I find the notion disturbing. I'm not sure I'll be able to help you in this.~ */ GOTO 281
  IF ~~ THEN REPLY #74652 /* ~Assassinating a priest of the Triad is no trivial matter. It'll take me a while to get comfortable with the idea.~ */ GOTO 280
  IF ~~ THEN REPLY #74653 /* ~No time like the present.~ */ DO ~ActionOverride(Player1,LeaveAreaLUAPanic("OH5000","",[512.1546],NNE))
ActionOverride(Player1,LeaveAreaLUA("OH5000","",[512.1546],NNE))
ActionOverride(Player2,LeaveAreaLUA("OH5000","",[438.1527],NNE))
ActionOverride(Player3,LeaveAreaLUA("OH5000","",[552.1601],NNE))
ActionOverride(Player4,LeaveAreaLUA("OH5000","",[372.1491],NNE))
ActionOverride(Player5,LeaveAreaLUA("OH5000","",[567.1647],NNE))
ActionOverride(Player6,LeaveAreaLUA("OH5000","",[463.1573],NNE))
~ EXIT
  IF ~~ THEN REPLY #74654 /* ~When I see fit, Dorn, and not a second sooner. If you've a problem with that, you're welcome to take your leave.~ */ GOTO 279
END

IF ~~ THEN BEGIN 279 // from: 278.3
  SAY #74655 /* ~I may just do that if we don't act soon.~ [OH74655] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 280 // from: 278.1
  SAY #74656 /* ~Get comfortable soon, <PRO_RACE>. My patron's patience is not without limit.~ [OH74656] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 281 // from: 278.0
  SAY #74657 /* ~If that's how it is, I'll take my leave of you.~ [OH74657] */
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",1)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
MoveGlobal("AR0900","Dorn",[2550.3394])
~ EXIT
END

IF ~~ THEN BEGIN 282 // from:
  SAY #74564 /* ~Deal with my blade, foolish <PRO_RACE>!~ [OH74564] */
  IF ~~ THEN DO ~SetGlobal("OHD_PLOT","GLOBAL",-1)
LeaveParty()
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 283 // from:
  SAY #74549 /* ~So be it—the prospect of your soul has always excited my patron!~ [OH74549] */
  IF ~~ THEN DO ~SetGlobal("OHD_PLOT","GLOBAL",-1)
LeaveParty()
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 284 // from:
  SAY #74555 /* ~Then pay the price for your folly!~ [OH74555] */
  IF ~~ THEN DO ~SetGlobal("OHD_PLOT","GLOBAL",-1)
LeaveParty()
Enemy()
~ EXIT
END

IF WEIGHT #29 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("OHD_WEDDING_IMPATIENT","LOCALS",3)
Global("OHD_WEDDING_START","GLOBAL",0)
~ THEN BEGIN 285 // from:
  SAY #74658 /* ~My patience grows thin, <CHARNAME>. How much longer do you intend to ignore the temple of the Radiant Heart?~ [OH74658] */
  IF ~~ THEN REPLY #74659 /* ~As long as possible, though I gather I'm running out of time.~ */ GOTO 286
  IF ~~ THEN REPLY #74660 /* ~How much longer is there?~ */ GOTO 289
  IF ~  CheckStatGT(Player1,14,STR)
CheckStatGT(Player1,13,CHR)
~ THEN REPLY #74661 /* ~I shall ignore it as long as I choose. Is that a problem, half-orc?~ */ GOTO 287
  IF ~  OR(2)
!CheckStatGT(Player1,14,STR)
!CheckStatGT(Player1,13,CHR)
~ THEN REPLY #74661 /* ~I shall ignore it as long as I choose. Is that a problem, half-orc?~ */ GOTO 288
END

IF ~~ THEN BEGIN 286 // from: 285.0
  SAY #74662 /* ~Your help would be appreciated, but it's not required.~ [OH74662] */
  IF ~  CheckStatGT(Player1,14,STR)
CheckStatGT(Player1,13,CHR)
~ THEN REPLY #74663 /* ~I've given it a lot of thought, Dorn. I can't condone the assassination of a priest.~ */ GOTO 290
  IF ~  OR(2)
!CheckStatGT(Player1,14,STR)
!CheckStatGT(Player1,13,CHR)
~ THEN REPLY #74663 /* ~I've given it a lot of thought, Dorn. I can't condone the assassination of a priest.~ */ GOTO 288
  IF ~~ THEN REPLY #74664 /* ~All right, Dorn. You've twisted my arm. Let's go visit a temple.~ */ DO ~ActionOverride(Player1,LeaveAreaLUAPanic("OH5000","",[512.1546],NNE))
ActionOverride(Player1,LeaveAreaLUA("OH5000","",[512.1546],NNE))
ActionOverride(Player2,LeaveAreaLUA("OH5000","",[438.1527],NNE))
ActionOverride(Player3,LeaveAreaLUA("OH5000","",[552.1601],NNE))
ActionOverride(Player4,LeaveAreaLUA("OH5000","",[372.1491],NNE))
ActionOverride(Player5,LeaveAreaLUA("OH5000","",[567.1647],NNE))
ActionOverride(Player6,LeaveAreaLUA("OH5000","",[463.1573],NNE))
~ EXIT
  IF ~  CheckStatGT(Player1,14,STR)
CheckStatGT(Player1,13,CHR)
~ THEN REPLY #74665 /* ~Your presence is no longer appreciated or required.~ */ GOTO 293
  IF ~  OR(2)
!CheckStatGT(Player1,14,STR)
!CheckStatGT(Player1,13,CHR)
~ THEN REPLY #74665 /* ~Your presence is no longer appreciated or required.~ */ GOTO 288
END

IF ~~ THEN BEGIN 287 // from: 285.2
  SAY #74666 /* ~You'll have no problems with me, <PRO_RACE>.~ [OH74666] */
  IF ~~ THEN DO ~SetGlobalTimer("OHD_CRASH_WEDDING","GLOBAL",THIRTY_DAYS)
~ EXIT
END

IF ~~ THEN BEGIN 288 // from: 286.4 286.1 285.3
  SAY #74667 /* ~You would dismiss me, <CHARNAME>? Try dismissing my blade!~ [OH74667] */
  IF ~~ THEN DO ~SetGlobal("OHD_PLOT","GLOBAL",-1)
SetGlobal("KICKEDOUT","LOCALS",1)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
ActionOverride("DORN",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 289 // from: 285.1
  SAY #74668 /* ~I know not, but would rather not find out the hard way.~ [OH74668] */
  IF ~~ THEN REPLY #74669 /* ~There is nothing easy in the life you've chosen for yourself.~ */ GOTO 294
  IF ~~ THEN REPLY #74670 /* ~Then we shall waste no more.~ */ DO ~ActionOverride(Player1,LeaveAreaLUAPanic("OH5000","",[512.1546],NNE))
ActionOverride(Player1,LeaveAreaLUA("OH5000","",[512.1546],NNE))
ActionOverride(Player2,LeaveAreaLUA("OH5000","",[438.1527],NNE))
ActionOverride(Player3,LeaveAreaLUA("OH5000","",[552.1601],NNE))
ActionOverride(Player4,LeaveAreaLUA("OH5000","",[372.1491],NNE))
ActionOverride(Player5,LeaveAreaLUA("OH5000","",[567.1647],NNE))
ActionOverride(Player6,LeaveAreaLUA("OH5000","",[463.1573],NNE))
~ EXIT
  IF ~  CheckStatGT(Player1,14,STR)
CheckStatGT(Player1,13,CHR)
~ THEN REPLY #74671 /* ~You tremble like a rabbit at the thought of your patron's wrath. Your weakness sickens me.~ */ GOTO 292
  IF ~  OR(2)
!CheckStatGT(Player1,14,STR)
!CheckStatGT(Player1,13,CHR)
~ THEN REPLY #74671 /* ~You tremble like a rabbit at the thought of your patron's wrath. Your weakness sickens me.~ */ GOTO 291
END

IF ~~ THEN BEGIN 290 // from: 286.0
  SAY #74672 /* ~Your cowardice disgusts me, <PRO_RACE>. I'll be on my way.~ [OH74672] */
  IF ~~ THEN DO ~SetGlobal("KICKEDOUT","LOCALS",1)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
~ EXIT
END

IF ~~ THEN BEGIN 291 // from: 289.3
  SAY #74673 /* ~You call me weak? Defend yourself, <PRO_RACE>!~ [OH74673] */
  IF ~~ THEN DO ~SetGlobal("OHD_PLOT","GLOBAL",-1)
SetGlobal("KICKEDOUT","LOCALS",1)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
ActionOverride("DORN",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 292 // from: 289.2
  SAY #74674 /* ~Only a fool would try Ur-Gothoz's patience. I'll not be a party to my own destruction.~ [OH74674] */
  IF ~~ THEN DO ~SetGlobal("KICKEDOUT","LOCALS",1)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
~ EXIT
END

IF ~~ THEN BEGIN 293 // from: 286.3
  SAY #74675 /* ~A pox upon you and the she-beast who spawned you, <PRO_RACE>. I'll not stand here and be insulted by the likes of you.~ [OH74675] */
  IF ~~ THEN DO ~SetGlobal("KICKEDOUT","LOCALS",1)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
~ EXIT
END

IF ~~ THEN BEGIN 294 // from: 289.0
  SAY #74676 /* ~The rewards are worth the effort. I can wait no longer. I must return to the temple of the Radiant Heart.~ [OH74676] */
  IF ~~ THEN DO ~SetGlobal("KICKEDOUT","LOCALS",1)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
~ EXIT
END

IF ~~ THEN BEGIN 295 // from: 296.2
  SAY #74682 /* ~Death to the Radiant Heart!~ [OH74682] */
  IF ~  Global("OH5000_START","GLOBAL",11)
~ THEN DO ~SetGlobal("OHD_WEDDING_HOSTILE","OH5000",3)
OpenDoor("DOOR07")
~ EXIT
  IF ~  !Global("OH5000_START","GLOBAL",11)
~ THEN DO ~SetGlobal("OHD_WEDDING_HOSTILE","OH5000",3)
OpenDoor("DOOR09")
~ EXIT
END

IF ~~ THEN BEGIN 296 // from:
  SAY #74693 /* ~For you perhaps. For my master and I, it changes nothing.~ [OH74693] */
  IF ~~ THEN REPLY #74694 /* ~Then I'm done with both you and your master.~ */ GOTO 297
  IF ~~ THEN REPLY #74695 /* ~Let me attempt to change your mind.~ */ DO ~SetGlobal("OHD_PLOT","GLOBAL",-1)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
ActionOverride("DORN",Enemy())
~ EXIT
  IF ~~ THEN REPLY #74696 /* ~Well, nothing important, anyway. Let's get down to work.~ */ GOTO 295
END

IF ~~ THEN BEGIN 297 // from: 296.0
  SAY #74697 /* ~You don't want to cross Ur-Gothoz, and you certainly don't want to cross me.~ [OH74697] */
  IF ~~ THEN REPLY #74698 /* ~You and that sword of yours make a persuasive argument. Very well. Let's go celebrate the couple's special day.~ */ EXIT
  IF ~~ THEN REPLY #74699 /* ~I'm afraid what I want and what honor demands are very much at odds in this instance.~ */ GOTO 298
  IF ~~ THEN REPLY #74700 /* ~You're not dealing with some shepherd wandering the Sword Coast now, Dorn. It'll take more than threats to steer me from my path.~ */ GOTO 299
END

IF ~~ THEN BEGIN 298 // from: 299.0 297.1
  SAY #74701 /* ~I spit upon your honor, and I'll do the same to your corpse!~ [OH74701] */
  IF ~~ THEN DO ~SetGlobal("OHD_PLOT","GLOBAL",-1)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
ActionOverride("DORN",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 299 // from: 297.2
  SAY #74702 /* ~I wasn't threatening you, <CHARNAME>, merely stating the facts. Like me, only sharp steel may turn you from your course. If we're at odds, I'll give you nothing less.~ [OH74702] */
  IF ~~ THEN REPLY #74703 /* ~Then show me your steel, for on my honor I'll not let you do as Ur-Gothoz commands.~ */ GOTO 298
  IF ~~ THEN REPLY #74704 /* ~I'm glad we understand each other. Now I believe we've a wedding to attend?~ */ EXIT
END

IF ~~ THEN BEGIN 300 // from:
  SAY #74742 /* ~You mean to leave?~ [OH74742] */
  IF ~~ THEN REPLY #74743 /* ~You heard the man. We're not welcome here.~ */ DO ~ActionOverride("OHDBBRO",SetGlobal("OHD_leave","LOCALS",1))
SetGlobal("OHD_LEAVE_WEDDING","MYAREA",1)
~ EXIT
  IF ~~ THEN REPLY #74744 /* ~I mean to leave this place covered in blood, starting with this whelp's.~ */ GOTO 301
END

IF ~~ THEN BEGIN 301 // from: 300.1
  SAY #94473 /* ~Cut him down!~ */
  IF ~~ THEN DO ~SetGlobal("OHD_frontroomfight","OH5000",1)
SetGlobal("OHD_WEDDING_HOSTILE","OH5000",1)
~ EXIT
END

IF ~~ THEN BEGIN 302 // from:
  SAY #74784 /* ~Too much talking, not enough slaughter!~ [OH74784] */
  IF ~  IsValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~KORGANJ~ 231
  IF ~  !IsValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~OHDFIREJ~ 1
END

IF ~~ THEN BEGIN 303 // from:
  SAY #74795 /* ~Bollard Firejaw! Come and meet your doom!~ [OH74795] */
  IF ~~ THEN EXTERN ~OHDFIREJ~ 5
END

IF ~~ THEN BEGIN 304 // from:
  SAY #74797 /* ~Your feelings on the matter are of no consequence. All that matters is that you die in the name of my master, Ur-Gothoz!~ [OH74797] */
  IF ~~ THEN EXTERN ~OHDFIREJ~ 6
END

IF ~~ THEN BEGIN 305 // from:
  SAY #91120 /* ~The madness ends with your death, Firejaw! Not a second sooner.~ [OH91120] */
  IF ~~ THEN EXTERN ~OHDFIREJ~ 12
END

IF ~~ THEN BEGIN 306 // from:
  SAY #74819 /* ~Have it your way, <CHARNAME>. I've done what I came here to do.~ [OH74819] */
  IF ~~ THEN REPLY #74820 /* ~Everyone out! But know that bloody vengeance will fall upon those who speak of what's occurred here this day.~ */ DO ~SetGlobal("OHD_WEDDING_MERCY","OH5000",1)
AddJournalEntry(91136,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 307 // from:
  SAY #74821 /* ~You've no need to fear me, <CHARNAME>, at least for as long as you're of use.~ [OH74821] */
  IF ~~ THEN REPLY #74822 /* ~Then I hope I continue to be of use well into the future. Let me prove myself now.~ */ DO ~SetGlobal("OHD_WEDDING_HOSTILE","OH5000",3)
AddJournalEntry(91134,INFO)
~ EXIT
  IF ~~ THEN REPLY #74823 /* ~Comforting words, coming from such as you.~ */ GOTO 308
  IF ~~ THEN REPLY #74824 /* ~I feel exactly the same way about you.~ */ GOTO 309
END

IF ~~ THEN BEGIN 308 // from: 307.1
  SAY #74825 /* ~They're as comforting as any you'll get from me, Bhaalspawn.~ [OH74825] */
  IF ~~ THEN DO ~SetGlobal("OHD_WEDDING_HOSTILE","OH5000",3)
AddJournalEntry(91134,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 309 // from: 307.2
  SAY #74826 /* ~We make a good pair, <CHARNAME>. These others are weak, but you understand the nature of power.~ [OH74826] */
  IF ~~ THEN REPLY #74827 /* ~It thrills me as it does you.~ */ DO ~SetGlobal("OHD_WEDDING_HOSTILE","OH5000",3)
AddJournalEntry(91134,INFO)
~ EXIT
  IF ~~ THEN REPLY #74828 /* ~I understand the desire to possess it.~ */ DO ~SetGlobal("OHD_WEDDING_HOSTILE","OH5000",3)
AddJournalEntry(91134,INFO)
~ EXIT
  IF ~  !IsValidForPartyDialogue("KORGAN")
~ THEN REPLY #74829 /* ~These others are useful, in their own way. Your single-mindedness is understandable, but subtlety has its uses.~ */ GOTO 312
  IF ~  IsValidForPartyDialogue("KORGAN")
~ THEN REPLY #74829 /* ~These others are useful, in their own way. Your single-mindedness is understandable, but subtlety has its uses.~ */ EXTERN ~KORGANJ~ 232
END

IF ~~ THEN BEGIN 310 // from:
  SAY #74831 /* ~Are you mad, <CHARNAME>? Their tongues will wag like tickled dogs' tails the moment we leave. There's only one way to ensure their silence.~ [OH74831] */
  IF ~  CheckStatGT(Player1,13,CHR)
~ THEN REPLY #74832 /* ~Bollard Firejaw is dead. You've done your duty. Let's be away from here before word gets out of what's occurred.~ */ GOTO 317
  IF ~  !CheckStatGT(Player1,13,CHR)
~ THEN REPLY #74832 /* ~Bollard Firejaw is dead. You've done your duty. Let's be away from here before word gets out of what's occurred.~ */ GOTO 311
  IF ~  CheckStatGT(Player1,14,CHR)
~ THEN REPLY #74833 /* ~Let them talk. The legend of Dorn Il-Khan's power will grow. But for now, we should take our leave—it won't be long before someone raises the alarm.~ */ GOTO 316
  IF ~  !CheckStatGT(Player1,14,CHR)
~ THEN REPLY #74833 /* ~Let them talk. The legend of Dorn Il-Khan's power will grow. But for now, we should take our leave—it won't be long before someone raises the alarm.~ */ GOTO 311
  IF ~~ THEN REPLY #74834 /* ~The truth. There's something I never expected to hear from the mouth of Dorn Il-Khan. You're right, of course. While they live, these people are a threat, and that, I cannot abide.~ */ GOTO 315
END

IF ~~ THEN BEGIN 311 // from: 310.3 310.1
  SAY #74835 /* ~You're wrong, <CHARNAME>. Now let me do what must be done or better still, help me do it.~ [OH74835] */
  IF ~~ THEN REPLY #74836 /* ~Go ahead. I've done my piece.~ */ GOTO 313
  IF ~~ THEN REPLY #74837 /* ~Go ahead. I always enjoy watching you work.~ */ GOTO 314
  IF ~~ THEN REPLY #74838 /* ~Very well. I can't let you have all the fun.~ */ GOTO 315
END

IF ~~ THEN BEGIN 312 // from: 309.2
  SAY #74839 /* ~You keep your subtlety, <CHARNAME>. I'll put my faith in my sword.~ [OH74839] */
  IF ~~ THEN DO ~SetGlobal("OHD_WEDDING_HOSTILE","OH5000",3)
AddJournalEntry(91134,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 313 // from: 311.0
  SAY #74840 /* ~Rest your weary bones, <CHARNAME>. The strong and able-bodied will finish up here.~ [OH74840] */
  IF ~~ THEN DO ~SetGlobal("OHD_WEDDING_HOSTILE","OH5000",3)
AddJournalEntry(91134,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 314 // from: 311.1
  SAY #74841 /* ~Then you shall find the next few minutes enjoyable indeed!~ [OH74841] */
  IF ~~ THEN DO ~SetGlobal("OHD_WEDDING_HOSTILE","OH5000",3)
AddJournalEntry(91134,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 315 // from: 311.2 310.4
  SAY #74842 /* ~These wretches shall fall before us like wheat beneath a scythe!~ [OH74842] */
  IF ~~ THEN DO ~SetGlobal("OHD_WEDDING_HOSTILE","OH5000",3)
AddJournalEntry(91134,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 316 // from: 310.2
  SAY #74843 /* ~You tell it true, <CHARNAME>. Hear my words, you pathetic scum! I spare your lives that you may spread word of this day. When anyone asks you of it, you'll tell them fortune smiled upon you: You encountered Dorn Il-Khan and lived to tell the tale.~ [OH74843] */
  IF ~~ THEN DO ~SetGlobal("OHD_WEDDING_MERCY","OH5000",1)
AddJournalEntry(91136,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 317 // from: 310.0
  SAY #74844 /* ~Perhaps you're right, <PRO_RACE>. My work is done. Let us take our leave.~ [OH74844] */
  IF ~~ THEN DO ~SetGlobal("OHD_WEDDING_MERCY","OH5000",1)
AddJournalEntry(91136,INFO)
~ EXIT
END

IF WEIGHT #30 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("OHD_AFTER_WEDDING","LOCALS",1)
~ THEN BEGIN 318 // from:
  SAY #74849 /* ~What say you, <CHARNAME>? Satisfied with the day's rewards?~ [OH74849] */
  IF ~~ THEN REPLY #74850 /* ~Chaos, bloodshed, and plunder. What's not to love?~ */ DO ~SetGlobal("OHD_AFTER_WEDDING","LOCALS",2)
~ GOTO 319
  IF ~~ THEN REPLY #74851 /* ~Truth be told, I could be more satisfied. But I'll take what I can.~ */ DO ~SetGlobal("OHD_AFTER_WEDDING","LOCALS",2)
~ GOTO 319
  IF ~  !IsValidForPartyDialogue("NEERA")
~ THEN REPLY #74852 /* ~My reward is the screams of the dying. Everything else is dessert.~ */ DO ~SetGlobal("OHD_AFTER_WEDDING","LOCALS",2)
~ GOTO 319
  IF ~  IsValidForPartyDialogue("NEERA")
~ THEN REPLY #74852 /* ~My reward is the screams of the dying. Everything else is dessert.~ */ DO ~SetGlobal("OHD_AFTER_WEDDING","LOCALS",2)
~ EXTERN ~NEERAJ~ 12
END

IF ~~ THEN BEGIN 319 // from: 318.2 318.1 318.0
  SAY #74854 /* ~Our bloody work is done. The city guards will doubtless hear of this soon. Let us make haste, lest we risk discovery.~ [OH74854] */
  IF ~~ THEN REPLY #74855 /* ~I'm afraid this is where we part ways, Dorn Il-Khan. You've got some issues to work out, and frankly I'd rather not be around to watch you do so.~ */ DO ~SetGlobal("KICKEDOUT","LOCALS",1)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #74856 /* ~Now he wants to make haste. Oh well, better late than never. Come on, you big lug. Let's go find somewhere we can lurk menacingly in peace.~ */ GOTO 320
  IF ~  !IsValidForPartyDialogue("EDWIN")
~ THEN REPLY #74857 /* ~Come with us. We could use someone with your talents.~ */ GOTO 320
  IF ~  IsValidForPartyDialogue("EDWIN")
~ THEN REPLY #74857 /* ~Come with us. We could use someone with your talents.~ */ EXTERN ~EDWINJ~ 201
END

IF ~~ THEN BEGIN 320 // from: 319.2 319.1
  SAY #74861 /* ~Our combined skills would make us a force to be reckoned with...~ [OH74861] */
  IF ~~ THEN REPLY #74862 /* ~Now you're talking. Let's hit the cobblestones before the guards arrive.~ */ EXIT
  IF ~~ THEN REPLY #74863 /* ~United, there's no limit to what we may accomplish.~ */ GOTO 321
  IF ~~ THEN REPLY #74864 /* ~Just remember, you're the one who serves Ur-Gothoz. If your master's desires cross mine, there'll be trouble.~ */ GOTO 322
END

IF ~~ THEN BEGIN 321 // from: 320.1
  SAY #74865 /* ~<CHARNAME> and Dorn Il-Khan. We shall carve our names on the flesh of history.~ [OH74865] */
  IF ~~ THEN REPLY #74866 /* ~That was disgusting.~ */ DO ~AddJournalEntry(91146,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 322 // from: 320.2
  SAY #74867 /* ~I've no love for Ur-Gothoz—just the power he can supply.~ [OH74867] */
  IF ~~ THEN REPLY #74868 /* ~So long as we understand one another. Now, let us go.~ */ DO ~AddJournalEntry(91143,INFO)
~ EXIT
END

IF WEIGHT #31 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  OR(2)
Global("OHD_terpfendlg","GLOBAL",2)
Global("OHD_terpfendlg","GLOBAL",4)
~ THEN BEGIN 323 // from:
  SAY #74869 /* ~<CHARNAME>. I would have a word with you. ~ [OH74869] */
  IF ~~ THEN GOTO 324
END

IF ~~ THEN BEGIN 324 // from: 323.0
  SAY #74870 /* ~In private.~ [OH74870] */
  IF ~~ THEN REPLY #74871 /* ~Of course, Dorn. Always happy to talk with my favorite half-orc.~ */ GOTO 325
  IF ~~ THEN REPLY #74872 /* ~If you must. What is it?~ */ GOTO 325
  IF ~  !Global("OHD_terpfendlg","GLOBAL",4)
~ THEN REPLY #74873 /* ~Not right now, Dorn. I've other matters to attend to.~ */ DO ~SetGlobalTimer("OHD_terpfendlg_timer","LOCALS",THREE_DAYS)
SetGlobal("OHD_terpfendlg","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 325 // from: 324.1 324.0
  SAY #74874 /* ~My patron, Ur-Gothoz, compels me to act once again.~ [OH74874] */
  IF ~  !Global("OHD_terpfendlg","GLOBAL",4)
~ THEN REPLY #74875 /* ~I'm sorry to hear that, but I can't help you right now. Ask again later.~ */ DO ~SetGlobalTimer("OHD_terpfendlg_timer","LOCALS",THREE_DAYS)
SetGlobal("OHD_terpfendlg","GLOBAL",3)
~ EXIT
  IF ~~ THEN REPLY #74876 /* ~Again? Didn't we slaughter a priest just last week?~ */ DO ~SetGlobal("OHD_terpfendlg","GLOBAL",5)
SetGlobal("OHD_PLOT","GLOBAL",2)
~ GOTO 326
  IF ~~ THEN REPLY #74877 /* ~What does he want of you this time?~ */ DO ~SetGlobal("OHD_terpfendlg","GLOBAL",5)
SetGlobal("OHD_PLOT","GLOBAL",2)
~ GOTO 326
END

IF ~~ THEN BEGIN 326 // from: 325.2 325.1
  SAY #74878 /* ~He demands another death—a paladin of Helm, named Terpfen.~ [OH74878] */
  IF ~~ THEN REPLY #74879 /* ~Sounds straightforward enough.~ */ GOTO 327
  IF ~~ THEN REPLY #74880 /* ~I guess someone named Terpfen's about to have a bad day. Then again, with a name like that, I don't imagine they've had many good days.~ */ GOTO 327
  IF ~~ THEN REPLY #74881 /* ~And you're telling me this because...?~ */ GOTO 327
END

IF ~~ THEN BEGIN 327 // from: 326.2 326.1 326.0
  SAY #74882 /* ~I've checked around, and this Terpfen isn't at the temple of Helm.~ [OH74882] */
  IF ~~ THEN REPLY #74883 /* ~Ah. That does rather complicate matters, doesn't it? Do you know where he is?~ */ GOTO 328
END

IF ~~ THEN BEGIN 328 // from: 327.0
  SAY #74884 /* ~I know who knows where he is.~ [OH74884] */
  IF ~~ THEN REPLY #74885 /* ~Please tell me you know where that person is...~ */ GOTO 329
END

IF ~~ THEN BEGIN 329 // from: 328.0
  SAY #74886 /* ~His name's Guardian Telwyn, a paladin at the temple.~ [OH74886] */
  IF ~~ THEN REPLY #74887 /* ~We should pay this Telwyn a visit.~ */ GOTO 335
  IF ~~ THEN REPLY #74888 /* ~At least there's one paladin that knows his place. And as for Terpfen... we'll put him in his in due course.~ */ GOTO 335
  IF ~~ THEN REPLY #74889 /* ~And you want my assistance in loosening this paladin's tongue.~ */ GOTO 330
END

IF ~~ THEN BEGIN 330 // from: 329.2
  SAY #74890 /* ~I could do it myself, of course. But after Firejaw's assassination, it seemed like the kind of thing you might enjoy.~ [OH74890] */
  IF ~~ THEN REPLY #74891 /* ~You presume too much, Dorn. Visiting a temple with you lost what little luster it had after what happened last time.~ */ GOTO 331
  IF ~~ THEN REPLY #74892 /* ~Why Dorn, I didn't know you cared.~ */ GOTO 336
  IF ~~ THEN REPLY #74893 /* ~Spilling a paladin's blood does sound like an enjoyable distraction. Let's go pay our respects to Helm.~ */ GOTO 335
END

IF ~~ THEN BEGIN 331 // from: 330.0
  SAY #74894 /* ~I thought you shared my taste for blood and glory.~ [OH74894] */
  IF ~~ THEN REPLY #74895 /* ~What you call glory, I call infamy, and I've more of that than any reasonable <PRO_RACE> could want at this point.~ */ GOTO 339
  IF ~~ THEN REPLY #74896 /* ~My taste is for life and luxury. Blood and glory are but tools for me, not ends in themselves.~ */ GOTO 332
  IF ~~ THEN REPLY #74897 /* ~I do. And soon we'll gorge ourselves upon them. ~ */ GOTO 336
END

IF ~~ THEN BEGIN 332 // from: 331.1
  SAY #91166 /* ~Power is the goal. But in this world, violence is the only way to attain and keep it. I embrace that reality—I revel in it. You should do the same.~ [OH91166] */
  IF ~~ THEN REPLY #91168 /* ~I cannot.~ */ GOTO 333
  IF ~~ THEN REPLY #91170 /* ~I'm afraid I don't share your taste for the beating hearts of my enemies.~ */ GOTO 333
  IF ~~ THEN REPLY #91172 /* ~Watch me carefully, Dorn. You might learn a thing or two about reveling in bloodshed.~ */ GOTO 334
END

IF ~~ THEN BEGIN 333 // from: 332.1 332.0
  SAY #96108 /* ~Then you are fortunate—and wise—to stand at my side. But let's put philosophy aside. We've business to attend to.~ [OH96108] */
  IF ~~ THEN GOTO 335
END

IF ~~ THEN BEGIN 334 // from: 332.2
  SAY #96109 /* ~Hah! We'll see, <CHARNAME>, we'll see. But enough philosophy. We've business to attend to.~ [OH96109] */
  IF ~~ THEN GOTO 335
END

IF ~~ THEN BEGIN 335 // from: 337.0 334.0 333.0 330.2 329.1 329.0
  SAY #74898 /* ~Telwyn stands sentry in Helm's temple every night. We could go tonight.~ [OH74898] */
  IF ~~ THEN REPLY #74899 /* ~Very well.~ */ DO ~AddJournalEntry(91214,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 336 // from: 331.2 330.1
  SAY #74900 /* ~You and I share the same passions. These dogs you surround yourself with are naught but pawns in the great game of life and death we play.~ [OH74900] */
  IF ~~ THEN REPLY #74901 /* ~And what am I, then? The queen or the king? The servant or the <PRO_MASTERMISTRESS>?~ */ GOTO 337
END

IF ~~ THEN BEGIN 337 // from: 336.0
  SAY #74902 /* ~You are my equal. There is no higher rank one can attain.~ [OH74902] */
  IF ~~ THEN REPLY #74903 /* ~You insult and flatter in a single breath. Very well, then. We face this Telwyn as equals. Where, and when?~ */ GOTO 335
  IF ~~ THEN REPLY #74904 /* ~You keep telling yourself that, Dorn. I'm sure it helps you sleep at night.~ */ GOTO 338
END

IF ~~ THEN BEGIN 338 // from: 337.1
  SAY #74905 /* ~You dare mock me, <PRO_RACE>? I'll cut out your tongue and use it to shine my boots!~ [OH74905] */
  IF ~~ THEN DO ~SetGlobal("OHD_PLOT","GLOBAL",-1)
AddJournalEntry(91213,INFO)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
ActionOverride("DORN",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 339 // from: 331.0
  SAY #91176 /* ~Then you're of no use to me. Begone!~ [OH91176] */
  IF ~~ THEN REPLY #91178 /* ~You're on a dark path, Dorn. I hope you see the light soon. Goodbye.~ */ DO ~SetGlobal("KICKEDOUT","LOCALS",1)
AddJournalEntry(91212,INFO)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #91180 /* ~If that's how you're going to be, I'll be more like you. Let's go kill a paladin.~ */ GOTO 340
  IF ~  CheckStatGT(Player1,13,STR)
CheckStatGT(Player1,13,CHR)
~ THEN REPLY #91182 /* ~I go where I will, Dorn Il-Khan. You don't command me.~ */ GOTO 341
  IF ~  OR(2)
!CheckStatGT(Player1,13,STR)
!CheckStatGT(Player1,13,CHR)
~ THEN REPLY #91182 /* ~I go where I will, Dorn Il-Khan. You don't command me.~ */ GOTO 342
END

IF ~~ THEN BEGIN 340 // from: 339.1
  SAY #91202 /* ~Now you're talking like someone worthy to stand at my side.~ [OH91202] */
  IF ~~ THEN DO ~AddJournalEntry(91214,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 341 // from: 339.2
  SAY #91203 /* ~Then decide, <CHARNAME>. Are you with me or not?~ [OH91203] */
  IF ~~ THEN REPLY #91204 /* ~I'm with you, for now. Don't make me regret it.~ */ GOTO 343
  IF ~~ THEN REPLY #91205 /* ~I want no part of this perfidy.~ */ GOTO 344
  IF ~~ THEN REPLY #91206 /* ~I cannot allow you to kill this paladin, Dorn.~ */ GOTO 342
END

IF ~~ THEN BEGIN 342 // from: 341.2 339.3
  SAY #91207 /* ~You challenge me? So be it!~ [OH91207] */
  IF ~~ THEN DO ~SetGlobal("OHD_PLOT","GLOBAL",-1)
AddJournalEntry(91213,INFO)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
ActionOverride("DORN",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 343 // from: 341.0
  SAY #91208 /* ~Regrets are for fools and weaklings. You don't strike me as either.~ [OH91208] */
  IF ~~ THEN DO ~AddJournalEntry(91214,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 344 // from: 341.1
  SAY #91209 /* ~Then you are a weakling and a fool. I've no patience for either.~ [OH91209] */
  IF ~~ THEN DO ~SetGlobal("KICKEDOUT","LOCALS",1)
AddJournalEntry(91212,INFO)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
EscapeArea()
~ EXIT
END

IF WEIGHT #32 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("OHD_PLOT","GLOBAL",2)
Global("OHD_Telwyn_Spawn","AR0901",2)
~ THEN BEGIN 345 // from:
  SAY #74908 /* ~That's Telwyn over there.~ [OH74908] */
  IF ~~ THEN REPLY #74909 /* ~All right. Let me do the talking.~ */ GOTO 349
  IF ~~ THEN REPLY #74910 /* ~Put the sword back in the sheathe, big boy.~ */ GOTO 346
  IF ~~ THEN REPLY #74911 /* ~Let's go put the fear of us in this Everwatch Knight.~ */ DO ~SetGlobal("OHD_Telwyn_Spawn","AR0901",3)
StartCutSceneMode()
StartCutSceneEx("OHDCUT02",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 346 // from: 345.1
  SAY #74912 /* ~My blade thirsts for Everwatch Knight blood!~ [OH74912] */
  IF ~  !IsValidForPartyDialogue("HEXXAT")
~ THEN REPLY #74913 /* ~A dead knight won't tell us where Terpfen is.~ */ GOTO 347
  IF ~  IsValidForPartyDialogue("HEXXAT")
~ THEN REPLY #74913 /* ~A dead knight won't tell us where Terpfen is.~ */ EXTERN ~HEXXATJ~ 1
END

IF ~~ THEN BEGIN 347 // from: 346.0
  SAY #74915 /* ~I wasn't going to kill him. Yet. Just scare him. Loosen his tongue. Perhaps you're rubbing off on me.~ [OH74915] */
  IF ~  !IsValidForPartyDialogue("KORGAN")
~ THEN REPLY #74916 /* ~There are other ways to loosen a man's tongue. Ways that may not involve him summoning his fellow knights to defend his honor.~ */ GOTO 348
  IF ~  IsValidForPartyDialogue("KORGAN")
~ THEN REPLY #74916 /* ~There are other ways to loosen a man's tongue. Ways that may not involve him summoning his fellow knights to defend his honor.~ */ EXTERN ~KORGANJ~ 233
END

IF ~~ THEN BEGIN 348 // from: 347.0
  SAY #74919 /* ~What do you suggest?~ [OH74919] */
  IF ~~ THEN REPLY #74920 /* ~Something slightly more nuanced. I'm going to ask him if he knows where Terpfen can be found.~ */ DO ~SetGlobal("OHD_Telwyn_Spawn","AR0901",4)
StartCutSceneMode()
StartCutSceneEx("OHDCUT02",FALSE)
~ EXIT
  IF ~~ THEN REPLY #74921 /* ~Something sneaky. If that doesn't work, well, Rancor's still there if we need her.~ */ GOTO 350
  IF ~  !IsValidForPartyDialogue("JAN")
~ THEN REPLY #74922 /* ~I'm going to check this Telwyn out. See what makes him tick. Then... we'll see.~ */ GOTO 353
  IF ~  IsValidForPartyDialogue("JAN")
~ THEN REPLY #74922 /* ~I'm going to check this Telwyn out. See what makes him tick. Then... we'll see.~ */ EXTERN ~JANJ~ 191
END

IF ~~ THEN BEGIN 349 // from: 350.0 345.0
  SAY #74924 /* ~I prefer the direct approach.~ [OH74924] */
  IF ~~ THEN REPLY #74925 /* ~I prefer the effective approach. Let's try it my way and see what happens.~ */ DO ~SetGlobal("OHD_Telwyn_Spawn","AR0901",4)
StartCutSceneMode()
StartCutSceneEx("OHDCUT02",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 350 // from: 348.1
  SAY #74926 /* ~You know this as well as I.~ */
  IF ~~ THEN REPLY #74927 /* ~You believe deceit is beneath beings of true power?~ */ GOTO 349
  IF ~~ THEN REPLY #74928 /* ~As do I. But our preferences are secondary to our needs.~ */ GOTO 352
  IF ~~ THEN REPLY #74929 /* ~I do. But beings of true power do not bow to distant masters.~ */ GOTO 351
END

IF ~~ THEN BEGIN 351 // from: 350.2
  SAY #74930 /* ~You dare insult me?~ */
  IF ~~ THEN REPLY #74931 /* ~I'm just giving you something to consider. You are not your own, Dorn Il-Khan. But stick with me, and that might change.~ */ GOTO 352
END

IF ~~ THEN BEGIN 352 // from: 351.0 350.1
  SAY #74932 /* ~I see in you a kindred spirit.~ */
  IF ~~ THEN REPLY #74933 /* ~Trust what you see.~ */ DO ~SetGlobal("OHD_Telwyn_Spawn","AR0901",4)
StartCutSceneMode()
StartCutSceneEx("OHDCUT02",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 353 // from: 348.2
  SAY #74934 /* ~He's a man. Stab him and he bleeds. What more do you need to know?~ [OH74934] */
  IF ~~ THEN REPLY #74935 /* ~Where to find Terpfen, for one. Hang back, and let me do the talking.~ */ DO ~SetGlobal("OHD_Telwyn_Spawn","AR0901",4)
StartCutSceneMode()
StartCutSceneEx("OHDCUT02",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 354 // from:
  SAY #74942 /* ~Hrm.~ [OH74942] */
  IF ~  !CheckStatGT(Player1,13,CHR)
~ THEN EXTERN ~SCTELWYN~ 51
  IF ~  CheckStatGT(Player1,13,CHR)
~ THEN EXTERN ~SCTELWYN~ 45
END

IF ~~ THEN BEGIN 355 // from:
  SAY #74959 /* ~Is this some jest, <CHARNAME>? You can't mean to leave this scuff-kneed wretch alive?~ [OH74959] */
  IF ~  !CheckStatGT(Player1,14,CHR)
~ THEN REPLY #74960 /* ~He's given us everything we need. Further bloodshed will only complicate matters.~ */ GOTO 357
  IF ~  CheckStatGT(Player1,14,CHR)
~ THEN REPLY #74960 /* ~He's given us everything we need. Further bloodshed will only complicate matters.~ */ GOTO 356
  IF ~~ THEN REPLY #74961 /* ~You're right. If there's one thing I cannot, it's loose ends. "Can knot." Get it? Oh, lighten up, Dorn. We've got what we came here for, and now you get to kill an Everwatch Knight in the bargain!~ */ GOTO 357
  IF ~~ THEN REPLY #74962 /* ~Thanks a lot, Dorn. Now you've gone and spoiled my surprise.~ */ DO ~SetGlobal("OHD_Telwyn_Spawn","AR0901",99)
SetGlobal("TempleShout0901","GLOBAL",2)
ActionOverride("sctelwyn",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 356 // from: 355.1
  SAY #74963 /* ~I don't mind such... complications. But we'll do as you wish, for now.~ [OH74963] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 357 // from: 355.2 355.0
  SAY #74964 /* ~Make peace with your worthless god, Everwatch Knight, for soon you shall meet him face to face!~ [OH74964] */
  IF ~~ THEN DO ~ActionOverride("sctelwyn",Enemy())
SetGlobal("OHD_Telwyn_Spawn","AR0901",99)
SetGlobal("TempleShout0901","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 358 // from:
  SAY #74975 /* ~You should.~ [OH74975] */
  IF ~~ THEN REPLY #74976 /* ~He's right. You should. Now if you'd be so kind as to tell us where we may find Guardian Terpfen, we'll be on our way.~ */ EXTERN ~SCTELWYN~ 51
END

IF ~~ THEN BEGIN 359 // from:
  SAY #74988 /* ~Stay your hand, <CHARNAME>. We need him alive. At least long enough to reveal Terpfen's location.~ [OH74988] */
  IF ~~ THEN REPLY #74989 /* ~Right! Terpfen. I'd almost forgot. Start talking, knight.~ */ EXTERN ~SCTELWYN~ 50
  IF ~~ THEN REPLY #74990 /* ~The blackguard tells me to stay my hand? Really?~ */ GOTO 360
END

IF ~~ THEN BEGIN 360 // from: 359.1
  SAY #74991 /* ~We are here to get Terpfen's location. Once we have that, I'll gladly watch you slit this worm's throat—I'll even give you a blade with which to do the deed.~ [OH74991] */
  IF ~~ THEN REPLY #74992 /* ~I don't think worms have throats, but I get your point. Start talking, Telwyn. Where can we find Terpfen?~ */ EXTERN ~SCTELWYN~ 50
  IF ~~ THEN REPLY #74993 /* ~A pleasure delayed is a pleasure enhanced, and killing this insect will be a pleasure. —Insect! I believe you were telling us where we can find Terpfen.~ */ EXTERN ~SCTELWYN~ 65
  IF ~~ THEN REPLY #74994 /* ~The Abyss take Terpfen! I want this knight's blood!~ */ GOTO 361
END

IF ~~ THEN BEGIN 361 // from: 360.2
  SAY #74995 /* ~You think I don't? But Ur-Gothoz must be obeyed.~ [OH74995] */
  IF ~~ THEN REPLY #74996 /* ~And you're happy with that arrangement?~ */ GOTO 362
  IF ~~ THEN REPLY #74997 /* ~Your weakness disgusts me, Dorn. But we'll play it your way... for now. Telwyn! Where is Guardian Terpfen?~ */ EXTERN ~SCTELWYN~ 65
END

IF ~~ THEN BEGIN 362 // from: 361.0
  SAY #74998 /* ~Ur-Gothoz gives me what I need... for now. He will feel Rancor's kiss someday, this I swear. But for the moment, I must do as he commands.~ [OH74998] */
  IF ~~ THEN REPLY #74999 /* ~I see a future where Dorn Il-Khan and <CHARNAME> do as they will, unfettered by the desires of others.~ */ GOTO 363
END

IF ~~ THEN BEGIN 363 // from: 362.0
  SAY #75000 /* ~That day will come.~ [OH75000] */
  IF ~~ THEN REPLY #75001 /* ~Pray to whatever god still hears your voice I don't lose patience before it does. Guardian Telwyn, I believe you were telling us where to find your colleague, Terpfen?~ */ EXTERN ~SCTELWYN~ 65
END

IF ~~ THEN BEGIN 364 // from:
  SAY #75036 /* ~You are not.~ [OH75036] */
  IF ~  !CheckStatGT(Player1,13,CHR)
~ THEN REPLY #75037 /* ~I am not. Now where can we find Terpfen?~ */ EXTERN ~SCTELWYN~ 71
  IF ~  CheckStatGT(Player1,13,CHR)
~ THEN REPLY #75037 /* ~I am not. Now where can we find Terpfen?~ */ EXTERN ~SCTELWYN~ 65
END

IF ~~ THEN BEGIN 365 // from:
  SAY #75061 /* ~I am Dorn Il-Khan! I seek the Everwatch dog Terpfen!~ [OH75061] */
  IF ~~ THEN REPLY #75062 /* ~Forgive my friend. He's suffered many blows to the head and frequently mixes up words like "dog" and "knight."~ */ GOTO 366
  IF ~~ THEN REPLY #75063 /* ~And then there's the direct approach.~ */ GOTO 367
END

IF ~~ THEN BEGIN 366 // from: 365.0
  SAY #75064 /* ~There is only one approach here, and it is mine.~ [OH75064] */
  IF ~~ THEN EXTERN ~OHDHSEN~ 6
END

IF ~~ THEN BEGIN 367 // from: 365.1
  SAY #75065 /* ~Send him to me now, and you may yet live to see another day!~ [OH75065] */
  IF ~~ THEN EXTERN ~OHDHSEN~ 6
END

IF ~~ THEN BEGIN 368 // from:
  SAY #75082 /* ~In the name of my master, Ur-Gothoz, you will all die.~ [OH75082] */
  IF ~~ THEN REPLY #75083 /* ~All of them? I thought we were here for Terpfen?~ */ GOTO 369
END

IF ~~ THEN BEGIN 369 // from: 368.0
  SAY #75084 /* ~All must perish. Ur-Gothoz has altered my mission, and if you stand in my way, you should pray he does not alter it further.~ [OH75084] */
  IF ~~ THEN REPLY #75085 /* ~Ur-Gothoz's whims are distressingly capricious. Is the power he supplies truly worth the effort he demands?~ */ GOTO 370
  IF ~~ THEN REPLY #75086 /* ~Oh well, if Ur-Gothoz commands it, we must obey Ur-Gothoz, mustn't we?~ */ GOTO 371
  IF ~  OR(2)
Global("DornRomanceActive","GLOBAL",1)
Global("DornRomanceActive","GLOBAL",2)
~ THEN REPLY #75087 /* ~Don't lie to me, Dorn Il-Khan. Ur-Gothoz may demand their death, but you and I both enjoy a good slaughter.~ */ GOTO 372
END

IF ~~ THEN BEGIN 370 // from: 369.0
  SAY #75088 /* ~You tell me, <CHARNAME>.~ [OH75088] */
  IF ~~ THEN DO ~SetGlobal("OHD_Camp_hostile","OH5300",1)
SetGlobal("OHD_PostCamp","LOCALS",1)
~ EXIT
END

IF ~~ THEN BEGIN 371 // from: 369.1
  SAY #75089 /* ~You would mock my master, <CHARNAME>? We'll have words on this when the battle's done.~ [OH75089] */
  IF ~~ THEN DO ~SetGlobal("OHD_Camp_hostile","OH5300",1)
SetGlobal("OHD_PostCamp","LOCALS",2)
~ EXIT
END

IF ~~ THEN BEGIN 372 // from: 369.2
  SAY #75090 /* ~You know me well, <CHARNAME>, though I'd have you know me better still.~ [OH75090] */
  IF ~~ THEN DO ~SetGlobal("OHD_Camp_hostile","OH5300",1)
SetGlobal("OHD_PostCamp","LOCALS",3)
~ EXIT
END

IF WEIGHT #33 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("OHD_PostCamp","LOCALS",4)
~ THEN BEGIN 373 // from:
  SAY #75091 /* ~<CHARNAME>. Before the battle, you asked if the power Ur-Gothoz grants me is worth all that he orders me to do.~ [OH75091] */
  IF ~~ THEN REPLY #75092 /* ~I did.~ */ DO ~IncrementGlobal("OHD_PostCamp","LOCALS",3)
~ GOTO 374
END

IF ~~ THEN BEGIN 374 // from: 387.0 373.0
  SAY #75093 /* ~I have no answer to that, at least none I find satisfactory.~ [OH75093] */
  IF ~~ THEN REPLY #75094 /* ~And the unsatisfactory answer?~ */ GOTO 375
  IF ~~ THEN REPLY #75095 /* ~You have much to consider, I think.~ */ GOTO 379
END

IF ~~ THEN BEGIN 375 // from: 393.0 374.0
  SAY #75096 /* ~At first, service to Ur-Gothoz seemed worthwhile, at least some of the time. But recently...~ [OH75096] */
  IF ~~ THEN REPLY #75097 /* ~Yes?~ */ GOTO 376
END

IF ~~ THEN BEGIN 376 // from: 375.0
  SAY #75098 /* ~Bollard Firejaw was not the first man I was sent to kill without explanation. Nor will Terpfen be the last, I suspect.~ [OH75098] */
  IF ~~ THEN REPLY #75099 /* ~I can only imagine how it feels to be bound in servitude.~ */ GOTO 380
  IF ~~ THEN REPLY #75100 /* ~Being bound in servitude must rankle.~ */ GOTO 380
  IF ~  OR(2)
Global("DornRomanceActive","GLOBAL",1)
Global("DornRomanceActive","GLOBAL",2)
~ THEN REPLY #75101 /* ~You're becoming a tool rather than the champion you are meant to be.~ */ GOTO 377
END

IF ~~ THEN BEGIN 377 // from: 376.2
  SAY #75102 /* ~You alone understand me.~ [OH75102] */
  IF ~~ THEN REPLY #75103 /* ~Ur-Gothoz is just an obstacle, Dorn. Even he cannot stand against the two of us.~ */ GOTO 378
END

IF ~~ THEN BEGIN 378 // from: 377.0
  SAY #75104 /* ~I hope you're right, <CHARNAME>. For both our sakes.~ [OH75104] */
  IF ~~ THEN DO ~AddJournalEntry(91266,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 379 // from: 374.1
  SAY #75105 /* ~Much to consider. More to overcome.~ [OH75105] */
  IF ~~ THEN DO ~AddJournalEntry(91268,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 380 // from: 376.1 376.0
  SAY #75106 /* ~Don't patronize me, <CHARNAME>. You know nothing of my burden.~ [OH75106] */
  IF ~  OR(2)
Global("DornRomanceActive","GLOBAL",1)
Global("DornRomanceActive","GLOBAL",2)
~ THEN REPLY #75107 /* ~Then share it with me.~ */ GOTO 383
  IF ~  OR(2)
Global("DornRomanceActive","GLOBAL",1)
Global("DornRomanceActive","GLOBAL",2)
~ THEN REPLY #75108 /* ~That's your choice, Dorn. No one's making you carry the burden alone.~ */ GOTO 381
  IF ~~ THEN REPLY #75109 /* ~And care nothing for it, either.~ */ EXIT
END

IF ~~ THEN BEGIN 381 // from: 380.1
  SAY #75110 /* ~Pretty words, but hollow ones. I will deal with Ur-Gothoz. I and I alone.~ [OH75110] */
  IF ~~ THEN REPLY #75111 /* ~If that is your wish, don't let me stand in your way.~ */ GOTO 382
END

IF ~~ THEN BEGIN 382 // from: 381.0
  SAY #75112 /* ~I am Dorn Il-Khan. No one stands in my way.~ [OH75112] */
  IF ~~ THEN REPLY #75113 /* ~No one but yourself.~ */ DO ~AddJournalEntry(91266,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 383 // from: 380.0
  SAY #75114 /* ~No. The strong stand alone.~ [OH75114] */
  IF ~~ THEN REPLY #75115 /* ~And the wise know two are stronger than one.~ */ DO ~AddJournalEntry(91266,INFO)
~ EXIT
END

IF WEIGHT #34 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("OHD_PostCamp","LOCALS",5)
~ THEN BEGIN 384 // from:
  SAY #75116 /* ~We must talk, <CHARNAME>.~ [OH75116] */
  IF ~~ THEN REPLY #74899 /* ~Very well.~ */ DO ~IncrementGlobal("OHD_PostCamp","LOCALS",3)
~ GOTO 385
END

IF ~~ THEN BEGIN 385 // from: 384.0
  SAY #75117 /* ~Before the battle, you mocked Ur-Gothoz.~ [OH75117] */
  IF ~~ THEN REPLY #75092 /* ~I did.~ */ GOTO 386
  IF ~~ THEN REPLY #75118 /* ~Ah, you noticed that, did you? Well observed.~ */ GOTO 389
  IF ~~ THEN REPLY #75119 /* ~Your service to that demon is your weakness, Dorn. It would rankle me to see you bound in service to anyone, never mind one as erratic as this Ur-Gothoz.~ */ GOTO 393
END

IF ~~ THEN BEGIN 386 // from: 385.0
  SAY #75120 /* ~You think me weak for serving him?~ [OH75120] */
  IF ~~ THEN REPLY #75121 /* ~I do.~ */ GOTO 389
  IF ~~ THEN REPLY #75122 /* ~I think you weakened, Dorn. Never weak.~ */ GOTO 393
  IF ~~ THEN REPLY #75123 /* ~You think you aren't?~ */ GOTO 387
END

IF ~~ THEN BEGIN 387 // from: 386.2
  SAY #75124 /* ~Now you mock me?~ [OH75124] */
  IF ~~ THEN REPLY #75125 /* ~Not at all. I merely asked a question.~ */ GOTO 374
  IF ~~ THEN REPLY #75126 /* ~I mock the servant of Ur-Gothoz. Are you he?~ */ GOTO 388
END

IF ~~ THEN BEGIN 388 // from: 398.0 387.1
  SAY #75127 /* ~You know I am.~ [OH75127] */
  IF ~~ THEN REPLY #75128 /* ~Then stop your incessant sulking and do something about it.~ */ GOTO 391
  IF ~~ THEN REPLY #75129 /* ~When I look at you, I don't see a servant. I see Dorn Il-Khan. A warrior. Not some demon's errand boy.~ */ GOTO 393
  IF ~~ THEN REPLY #75130 /* ~That's unfortunate. Once I thought you were so much more, but I see now that I was mistaken.~ */ DO ~AddJournalEntry(91268,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 389 // from: 386.0 385.1
  SAY #75131 /* ~Watch your tongue, <PRO_RACE>. You don't want to cross me regardless of whom I serve.~ [OH75131] */
  IF ~~ THEN REPLY #75132 /* ~Forgive me, Dorn. I intended no harm.~ */ GOTO 390
  IF ~~ THEN REPLY #75133 /* ~No one tells me what I want, Il-Khan. Unlike you, I do as I will.~ */ GOTO 391
  IF ~~ THEN REPLY #75134 /* ~You watch my tongue, Dorn. You'd be surprised what it can accomplish.~ */ GOTO 392
END

IF ~~ THEN BEGIN 390 // from: 389.0
  SAY #75135 /* ~It'll take more than words to harm me, <CHARNAME>.~ [OH75135] */
  IF ~~ THEN DO ~AddJournalEntry(91268,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 391 // from: 397.2 389.1 388.0
  SAY #75136 /* ~If anyone else said that to me, I'd cut them down where they stand. You're lucky I still have use for you.~ [OH75136] */
  IF ~~ THEN REPLY #75137 /* ~Beshaba's favorite <PRO_SONDAUGHTER>, that's me.~ */ DO ~AddJournalEntry(91268,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 392 // from: 389.2
  SAY #75138 /* ~I might at that.~ [OH75138] */
  IF ~~ THEN DO ~AddJournalEntry(91266,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 393 // from: 388.1 386.1 385.2
  SAY #75140 /* ~I cannot deny there's something to what you say.~ [OH75140] */
  IF ~~ THEN REPLY #75141 /* ~Only a fool would try.~ */ GOTO 375
END

IF WEIGHT #35 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("OHD_PostCamp","LOCALS",6)
~ THEN BEGIN 394 // from:
  SAY #75142 /* ~Hah! A good day's work. Ur-Gothoz will be pleased.~ [OH75142] */
  IF ~~ THEN REPLY #75143 /* ~I'm happy for him.~ */ DO ~AddJournalEntry(91266,INFO)
IncrementGlobal("OHD_PostCamp","LOCALS",3)
~ EXIT
  IF ~~ THEN REPLY #75144 /* ~And you, Dorn Il-Khan? Are you pleased?~ */ DO ~IncrementGlobal("OHD_PostCamp","LOCALS",3)
~ GOTO 395
  IF ~~ THEN REPLY #75145 /* ~Ur-Gothoz means nothing to me. Would that you could say the same.~ */ DO ~IncrementGlobal("OHD_PostCamp","LOCALS",3)
~ GOTO 397
END

IF ~~ THEN BEGIN 395 // from: 394.1
  SAY #75146 /* ~Of course! There's nothing more refreshing than bathing in the blood of your enemies.~ [OH75146] */
  IF ~~ THEN REPLY #75147 /* ~Terpfen wasn't your enemy. Just your target.~ */ GOTO 396
  IF ~~ THEN REPLY #75148 /* ~Terpfen was no enemy of yours—not until Ur-Gothoz got involved.~ */ GOTO 397
  IF ~~ THEN REPLY #75149 /* ~I'm with you. There's nothing like a good massacre to brighten one's day.~ */ DO ~AddJournalEntry(91266,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 396 // from: 395.0
  SAY #75150 /* ~My target is my enemy, at least so long as he still breathes.~ [OH75150] */
  IF ~~ THEN REPLY #75151 /* ~Would that I could be blasé about serving the whims of another.~ */ GOTO 397
  IF ~~ THEN REPLY #75152 /* ~No one's going to accuse Terpfen of doing that any time soon.~ */ DO ~AddJournalEntry(91266,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 397 // from: 396.0 395.1 394.2
  SAY #75153 /* ~What are you suggesting?~ [OH75153] */
  IF ~~ THEN REPLY #75154 /* ~What I'm suggesting, my dear Dorn, is that your service to Ur-Gothoz does a disservice to you.~ */ GOTO 399
  IF ~~ THEN REPLY #75155 /* ~Me? Not a thing. Far be it from me to criticize the Great and Powerful Ur-Gothoz.~ */ GOTO 398
  IF ~~ THEN REPLY #75156 /* ~If you don't know what I'm suggesting, you deserve your miserable fate.~ */ GOTO 391
END

IF ~~ THEN BEGIN 398 // from: 397.1
  SAY #75157 /* ~You mock me?~ [OH75157] */
  IF ~~ THEN REPLY #75158 /* ~I mock the servant of Ur-Gothoz. Are you he?~ */ GOTO 388
END

IF ~~ THEN BEGIN 399 // from: 397.0
  SAY #75159 /* ~Who are you to pass judgment on me?~ [OH75159] */
  IF ~~ THEN REPLY #75160 /* ~I'm not judging. Merely making an observation. One you'd do well to consider.~ */ DO ~AddJournalEntry(91268,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 400 // from:
  SAY #75167 /* ~Hrmm... I appreciate the offer. Allow me to reciprocate!~ [OH75167] */
  IF ~~ THEN DO ~SetGlobal("OHD_AMBUSH","MYAREA",2)
~ EXIT
END

IF ~~ THEN BEGIN 401 // from:
  SAY #75177 /* ~Hrmm. The most elite of Tyr's paladins. I see they brought some clerics with them as well. It would seem that I am quite popular with their god.~ [OH75177] */
  IF ~~ THEN REPLY #75178 /* ~It's been nice knowing you, Dorn.~ */ GOTO 403
  IF ~~ THEN REPLY #75179 /* ~Where's your precious Ur-Gothoz now, Dorn?~ */ GOTO 402
  IF ~~ THEN REPLY #75180 /* ~*sigh* In for a chicken, in for a henhouse. Come and get the half-orc, Traggor—if you've got the stones!~ */ EXTERN ~OHDTRAGG~ 5
END

IF ~~ THEN BEGIN 402 // from: 401.1
  SAY #75181 /* ~Nowhere he can help me against such fighters as these.~ [OH75181] */
  IF ~~ THEN GOTO 403
END

IF ~~ THEN BEGIN 403 // from: 402.0 401.0
  SAY #75184 /* ~I should have expected something like this. These Hammers are but the beginning. Ur-Gothoz's missions have made a target out of me.~ [OH75184] */
  IF ~~ THEN REPLY #75185 /* ~I knew that guy was bad news.~ */ EXTERN ~OHDTRAGG~ 6
  IF ~~ THEN REPLY #75186 /* ~We're not dead yet.~ */ EXTERN ~OHDTRAGG~ 7
  IF ~~ THEN REPLY #75187 /* ~The servant pays for the master's crimes. At last you see your folly.~ */ GOTO 404
END

IF ~~ THEN BEGIN 404 // from: 403.2
  SAY #75188 /* ~I should have known better than to trust Ur-Gothoz after Simmeon's betrayal. A lesson learned too late.~ [OH75188] */
  IF ~~ THEN REPLY #75189 /* ~Perhaps, perhaps not.~ */ EXTERN ~OHDTRAGG~ 7
  IF ~~ THEN REPLY #75190 /* ~As Gorion used to say, "Any day you learn something new is a good day." Though I fear we're about to put that to the test...~ */ GOTO 407
  IF ~~ THEN REPLY #75191 /* ~Just make sure you remember the lesson after we've festooned the trees with the Hammers' intestines.~ */ EXTERN ~OHDTRAGG~ 6
END

IF ~~ THEN BEGIN 405 // from:
  SAY #75206 /* ~You presume too much, <PRO_RACE>. Dorn Il-Khan needs no protection.~ [OH75206] */
  IF ~~ THEN REPLY #75207 /* ~So be it. If that's the way you feel, the Hammers can have you.~ */ EXTERN ~OHDTRAGG~ 11
  IF ~  CheckStatGT(Player1,9,INT)
~ THEN REPLY #75208 /* ~I count one, two, three, four... five paladins who say otherwise.~ */ EXTERN ~OHDTRAGG~ 6
  IF ~  !CheckStatGT(Player1,9,INT)
~ THEN REPLY #75209 /* ~I count one, two... seven... and... Well, the exact math doesn't matter. There's a pack of paladins here who say otherwise!~ */ EXTERN ~OHDTRAGG~ 6
  IF ~~ THEN REPLY #75210 /* ~I would never presume to tell you what you need, Dorn. Nevertheless, you have my protection, and you may be glad of it before this is over.~ */ GOTO 406
END

IF ~~ THEN BEGIN 406 // from: 405.3
  SAY #75211 /* ~I might at that.~ [OH75211] */
  IF ~~ THEN GOTO 407
END

IF ~~ THEN BEGIN 407 // from: 406.0 404.1
  SAY #75212 /* ~Let's show these knights of Tyr the folly of their ways.~ [OH75212] */
  IF ~~ THEN DO ~SetGlobal("OHD_AMBUSH","MYAREA",2)
~ EXIT
END

IF ~~ THEN BEGIN 408 // from:
  SAY #75213 /* ~I will deliver your worthless hide to Ur-Gothoz myself, <CHARNAME>!~ [OH75213] */
  IF ~~ THEN EXTERN ~OHDTRAGG~ 11
END

IF ~~ THEN BEGIN 409 // from:
  SAY #75223 /* ~Ah! Curse Ur-Gothoz, curse the day I first heard his name, and curse me for not fleeing the moment it fouled my ears! I've followed his orders come hell, horror, and high water, and for what?~ [OH75223] */
  IF ~~ THEN EXIT
  IF ~  IsValidForPartyDialogue("NEERA")
~ THEN EXTERN ~NEERAJ~ 14
END

IF ~~ THEN BEGIN 410 // from:
  SAY #75238 /* ~You know my name?~ [OH75238] */
  IF ~~ THEN EXTERN ~OHDAZOTH~ 1
END

IF ~~ THEN BEGIN 411 // from:
  SAY #75246 /* ~Stay your hand, <CHARNAME>. I would know who it is who demands my attention.~ [OH75246] */
  IF ~~ THEN REPLY #74521 /* ~As you wish.~ */ EXTERN ~OHDAZOTH~ 4
END

IF ~~ THEN BEGIN 412 // from:
  SAY #75247 /* ~Show some spine, <CHARNAME>.~ [OH75247] */
  IF ~~ THEN REPLY #75248 /* ~And turn my back on someone like her? Strategy never was your strong suit, Dorn.~ */ GOTO 413
  IF ~~ THEN REPLY #75249 /* ~I've got a feeling any spine I showed would quickly be torn from my body. Best to let the lady talk.~ */ EXTERN ~OHDAZOTH~ 4
  IF ~~ THEN REPLY #75250 /* ~Strong words, coming from Ur-Gothoz's puppet.~ */ GOTO 414
END

IF ~~ THEN BEGIN 413 // from: 412.0
  SAY #75251 /* ~I need no strategy to still your impudent tongue—~ [OH75251] */
  IF ~~ THEN EXTERN ~OHDAZOTH~ 3
END

IF ~~ THEN BEGIN 414 // from: 412.2
  SAY #75253 /* ~I'll have your head for that—~ [OH75253] */
  IF ~~ THEN EXTERN ~OHDAZOTH~ 3
END

IF ~~ THEN BEGIN 415 // from:
  SAY #75258 /* ~I swear, <CHARNAME>, if you don't cease your prattling, I'll sew your mouth shut.~ [OH75258] */
  IF ~~ THEN REPLY #75259 /* ~Dorn, sewing! I'd like to see that. Fine, I'll pipe down.~ */ EXTERN ~OHDAZOTH~ 6
END

IF ~~ THEN BEGIN 416 // from:
  SAY #75266 /* ~What could you have that would possibly be of interest to me?~ [OH75266] */
  IF ~~ THEN REPLY #75267 /* ~Seriously? I mean... really?~ */ EXTERN ~OHDAZOTH~ 10
  IF ~~ THEN REPLY #75268 /* ~Just a suggestion, Dorn, but maybe consider speaking to the scary woman in a slightly more civil tone?~ */ GOTO 417
  IF ~~ THEN REPLY #75269 /* ~Power. Why else go to such extreme lengths to contact you?~ */ EXTERN ~OHDAZOTH~ 8
END

IF ~~ THEN BEGIN 417 // from: 416.1
  SAY #75270 /* ~I'll speak my piece in whatever tone I choose, <PRO_RACE>.~ [OH75270] */
  IF ~~ THEN REPLY #75271 /* ~I'll send flowers to your funeral.~ */ EXTERN ~OHDAZOTH~ 10
END

IF ~~ THEN BEGIN 418 // from:
  SAY #75274 /* ~What could matter more than power?~ [OH75274] */
  IF ~~ THEN EXTERN ~OHDAZOTH~ 9
END

IF ~~ THEN BEGIN 419 // from:
  SAY #75277 /* ~Sympathy? You waste your energy and my time. Give me something useful or begone.~ [OH75277] */
  IF ~~ THEN EXTERN ~OHDAZOTH~ 11
END

IF ~~ THEN BEGIN 420 // from:
  SAY #75279 /* ~Tell me more.~ [OH75279] */
  IF ~~ THEN EXTERN ~OHDAZOTH~ 12
END

IF ~~ THEN BEGIN 421 // from:
  SAY #75286 /* ~You have traveled further on less. I would know more of this circle.~ [OH75286] */
  IF ~~ THEN EXTERN ~OHDAZOTH~ 15
END

IF ~~ THEN BEGIN 422 // from:
  SAY #75288 /* ~You can show me how to do this?~ [OH75288] */
  IF ~~ THEN EXTERN ~OHDAZOTH~ 16
END

IF ~~ THEN BEGIN 423 // from:
  SAY #75293 /* ~Trust her? Never. But the chance of bending Ur-Gothoz to my will is a temptation too great to be resisted.~ [OH75293] */
  IF ~~ THEN REPLY #75294 /* ~You're a fool, Dorn Il-Khan. A whiff of power and you let yourself be pulled around like a bull with a ring in its nose.~ */ GOTO 425
  IF ~~ THEN REPLY #75295 /* ~The decision is yours. I hope you don't come to regret it.~ */ GOTO 424
  IF ~~ THEN REPLY #75296 /* ~I'm with you. To see the demon suffer is worth the risk. ~ */ GOTO 426
END

IF ~~ THEN BEGIN 424 // from: 426.0 425.0 423.1
  SAY #75297 /* ~Why would you offer this to me, woman?~ [OH75297] */
  IF ~~ THEN EXTERN ~OHDAZOTH~ 17
END

IF ~~ THEN BEGIN 425 // from: 423.0
  SAY #75298 /* ~Keep talking, <CHARNAME>, and you'll get more than a whiff of the power I command.~ [OH75298] */
  IF ~~ THEN REPLY #75299 /* ~You know my feelings on this, Dorn. Make your choice.~ */ GOTO 424
END

IF ~~ THEN BEGIN 426 // from: 423.2
  SAY #75300 /* ~Of all the men and women I've encountered, <CHARNAME>, I believe only you have truly understood me.~ [OH75300] */
  IF ~~ THEN REPLY #75301 /* ~That's because we seek the same things.~ */ GOTO 424
END

IF ~~ THEN BEGIN 427 // from: 428.0
  SAY #75306 /* ~Revenge drives us together.~ [OH75306] */
  IF ~~ THEN GOTO 429
END

IF ~~ THEN BEGIN 428 // from:
  SAY #75309 /* ~I see your point, <CHARNAME>, but you're right. My path is already chosen.~ [OH75309] */
  IF ~~ THEN GOTO 427
END

IF ~~ THEN BEGIN 429 // from: 427.0
  SAY #75310 /* ~Very well, Azothet. I shall begin the trek to Resurrection Gorge directly. But be warned: At the first hint of betrayal, I'll—~ [OH75310] */
  IF ~~ THEN EXTERN ~OHDAZOTH~ 19
END

IF ~~ THEN BEGIN 430 // from:
  SAY #75312 /* ~Hrmm. "Friend"? Dream on, witch.~ [OH75312] */
  IF ~~ THEN DO ~SetGlobal("OHD_PLOT","GLOBAL",6)
AddJournalEntry(91271,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 431 // from:
  SAY #75316 /* ~Explain what?~ [OH75316] */
  IF ~~ THEN EXTERN ~OHDUGOTH~ 1
END

IF ~~ THEN BEGIN 432 // from:
  SAY #75320 /* ~Your wit is duller than a blind man's hammer, <CHARNAME>.~ [OH75320] */
  IF ~~ THEN REPLY #75321 /* ~You love it.~ */ EXTERN ~OHDUGOTH~ 2
END

IF ~~ THEN BEGIN 433 // from:
  SAY #75328 /* ~I assumed that it was your doing.~ [OH75328] */
  IF ~~ THEN EXTERN ~OHDUGOTH~ 4
END

IF ~~ THEN BEGIN 434 // from:
  SAY #75334 /* ~He has a... temperament, to be sure.~ [OH75334] */
  IF ~~ THEN EXTERN ~OHDUGOTH~ 5
END

IF ~~ THEN BEGIN 435 // from:
  SAY #75336 /* ~Damn you, <CHARNAME>, if you don't stop talking, the next thing you eat will be your own teeth.~ [OH75336] */
  IF ~~ THEN EXTERN ~OHDUGOTH~ 6
END

IF ~~ THEN BEGIN 436 // from:
  SAY #75346 /* ~I am a loyal servant of Ur-Gothoz. Our bond shall never be severed.~ [OH75346] */
  IF ~~ THEN REPLY #75347 /* ~Other than a minute ago, you mean.~ */ GOTO 439
  IF ~~ THEN REPLY #75348 /* ~How lucky Ur-Gothoz is to have a dog as affectionate as you.~ */ GOTO 444
  IF ~~ THEN REPLY #75349 /* ~Of course. Only a blind fool could doubt your loyalty.~ */ EXTERN ~OHDUGOTH~ 24
END

IF ~~ THEN BEGIN 437 // from:
  SAY #75364 /* ~I'll have your head for this, you traitorous mongrel...~ [OH75364] */
  IF ~~ THEN EXTERN ~OHDUGOTH~ 13
END

IF ~~ THEN BEGIN 438 // from:
  SAY #75377 /* ~You know I lack the power to accomplish such a thing. I cannot explain it. I tell you I am a loyal servant, and I've the blood on my hands to prove it. If that does not persuade you, nothing I can say will either.~ [OH75377] */
  IF ~~ THEN EXTERN ~OHDUGOTH~ 17
END

IF ~~ THEN BEGIN 439 // from: 436.0
  SAY #75379 /* ~I cannot explain that. Ur-Gothoz knows I lack the power to sever our connection.~ [OH75379] */
  IF ~~ THEN GOTO 440
END

IF ~~ THEN BEGIN 440 // from: 439.0
  SAY #75380 /* ~I tell you I am a loyal servant, and I've the blood on my hands to prove it. If you can't accept that, nothing I say will change your mind.~ [OH75380] */
  IF ~~ THEN EXTERN ~OHDUGOTH~ 17
END

IF ~~ THEN BEGIN 441 // from:
  SAY #75383 /* ~Are you mad, <CHARNAME>? Prostrate yourself on the floor and beg Ur-Gothoz for mercy, or by the gods above and all the demons below, I'll stain the ground you stand on crimson with your blood!~ [OH75383] */
  IF ~~ THEN REPLY #75384 /* ~You're the one who's slipped the bounds of sanity. Would you truly slay a friend—perhaps your only friend—at this demon's word?~ */ GOTO 445
END

IF ~~ THEN BEGIN 442 // from:
  SAY #75390 /* ~I... didn't know.~ [OH75390] */
  IF ~~ THEN REPLY #75391 /* ~Allow to explain, O great Ur-Gothoz. There are few that have earned Dorn's trust, fewer still he will confide in. I am fortunate to count myself among that number. So it was to me he came with his concern that the nature of your connection had changed recently. You have seemed... distant, to him. So much so that he feared he might lose you. I thought I might assist, using certain of my skills to strengthen your bond, but I miscalculated. Instead, I temporarily cut the tie that binds you together. I am lucky indeed that you appeared—had you not, I've no doubt I'd already be writhing on the end of Dorn's sword.~ */ EXTERN ~OHDUGOTH~ 25
END

IF ~~ THEN BEGIN 443 // from:
  SAY #75396 /* ~It would be my honor, master.~ [OH75396] */
  IF ~~ THEN REPLY #75397 /* ~Well, I'm glad we got that sorted out.~ */ DO ~AddJournalEntry(91274,INFO)
~ EXIT
  IF ~~ THEN REPLY #75398 /* ~All's well that ends well. For everyone but Azothet, that is.~ */ DO ~AddJournalEntry(91274,INFO)
~ EXIT
  IF ~~ THEN REPLY #75399 /* ~Does your knee ever get sore from bending all the time?~ */ GOTO 451
END

IF ~~ THEN BEGIN 444 // from: 436.1
  SAY #75400 /* ~Curse you, <CHARNAME>! I do what I must to survive and thrive, and if that means your death, so be it!~ [OH75400] */
  IF ~~ THEN REPLY #75401 /* ~So you would slay a friend—perhaps your only one—at the word of this foul glabrezu?~ */ GOTO 445
  IF ~~ THEN REPLY #75402 /* ~I'm disappointed, Dorn. I thought better of you.~ */ GOTO 446
  IF ~~ THEN REPLY #75403 /* ~You call serving this pathetic glabrezu thriving? You're even more stupid than you are ugly.~ */ GOTO 447
END

IF ~~ THEN BEGIN 445 // from: 449.0 444.0 441.0
  SAY #75404 /* ~Yes.~ [OH75404] */
  IF ~  CheckStatGT(Player1,11,CHR)
~ THEN REPLY #75405 /* ~Look at him, Ur-Gothoz. Look at the mighty Dorn Il-Khan, shaming himself for your benefit. How can you possibly doubt his loyalty?~ */ EXTERN ~OHDUGOTH~ 24
  IF ~  !CheckStatGT(Player1,11,CHR)
~ THEN REPLY #75405 /* ~Look at him, Ur-Gothoz. Look at the mighty Dorn Il-Khan, shaming himself for your benefit. How can you possibly doubt his loyalty?~ */ EXTERN ~OHDUGOTH~ 23
  IF ~~ THEN REPLY #75406 /* ~Your groveling disgusts me. Draw your weapon. I'll die before I endure another second of your wretched mewling before this pathetic lackwit of a demon.~ */ GOTO 449
END

IF ~~ THEN BEGIN 446 // from: 444.1
  SAY #75407 /* ~Think again!~ [OH75407] */
  IF ~~ THEN DO ~AddJournalEntry(91275,INFO)
SetGlobal("OHD_PLOT","GLOBAL",-1)
SetGlobal("KickedOut","LOCALS",1)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 447 // from: 454.2 444.2
  SAY #75408 /* ~I hope you savored those words, <CHARNAME>, for they will be your last!~ [OH75408] */
  IF ~~ THEN DO ~AddJournalEntry(91275,INFO)
SetGlobal("OHD_PLOT","GLOBAL",-1)
SetGlobal("KickedOut","LOCALS",1)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 448 // from:
  SAY #75412 /* ~It is, my lord.~ [OH75412] */
  IF ~  CheckStatGT(Player1,13,CHR)
~ THEN EXTERN ~OHDUGOTH~ 24
  IF ~  !CheckStatGT(Player1,13,CHR)
~ THEN EXTERN ~OHDUGOTH~ 26
END

IF ~~ THEN BEGIN 449 // from: 445.2
  SAY #75419 /* ~A pox upon you, <CHARNAME>! I do as I must to survive and thrive.~ [OH75419] */
  IF ~~ THEN REPLY #75420 /* ~And to do that, you must obey your master. Pathetic lickspittle. You disgust me.~ */ GOTO 445
  IF ~~ THEN REPLY #75421 /* ~Better to die than live in servitude!~ */ GOTO 452
END

IF ~~ THEN BEGIN 450 // from:
  SAY #75423 /* ~Your death was inevitable, <CHARNAME>. I hope your gods are merciful, for you know I am not.~ [OH75423] */
  IF ~~ THEN DO ~AddJournalEntry(91275,INFO)
SetGlobal("OHD_PLOT","GLOBAL",-1)
SetGlobal("KickedOut","LOCALS",1)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 451 // from: 456.2 443.2
  SAY #75425 /* ~You couldn't resist, could you, <PRO_RACE>? You had to slip the knife in!~ [OH75425] */
  IF ~~ THEN REPLY #75426 /* ~Forgive me, my friend. Demons always bring out the worst in me.~ */ DO ~AddJournalEntry(91274,INFO)
~ EXIT
  IF ~~ THEN REPLY #75427 /* ~Your groveling disgusts me. Draw your weapon. I'll die before I endure another second of your wretched mewling.~ */ GOTO 452
END

IF ~~ THEN BEGIN 452 // from: 451.1 449.1
  SAY #75428 /* ~When I'm done with you, I'll wear your skin as a loincloth!~ [OH75428] */
  IF ~~ THEN DO ~AddJournalEntry(91275,INFO)
SetGlobal("OHD_PLOT","GLOBAL",-1)
SetGlobal("KickedOut","LOCALS",1)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 453 // from:
  SAY #75429 /* ~Are you mad, <CHARNAME>? Prostrate yourself on the floor and beg Ur-Gothoz for mercy, or by the gods above and all the demons below, I'll stain the ground you stand on crimson with your blood!~ [OH75429] */
  IF ~~ THEN REPLY #75430 /* ~You're the one who's slipped the bounds of sanity. Would you truly slay a friend—perhaps your only friend—at this demon's word?~ */ GOTO 454
END

IF ~~ THEN BEGIN 454 // from: 453.0
  SAY #75431 /* ~Yes.~ [OH75431] */
  IF ~  CheckStatGT(Player1,14,CHR)
~ THEN REPLY #75432 /* ~Look at him, Ur-Gothoz. Look at the mighty Dorn Il-Khan, shaming himself for your benefit. How can you possibly doubt his loyalty?~ */ EXTERN ~OHDUGOTH~ 30
  IF ~  !CheckStatGT(Player1,14,CHR)
~ THEN REPLY #75432 /* ~Look at him, Ur-Gothoz. Look at the mighty Dorn Il-Khan, shaming himself for your benefit. How can you possibly doubt his loyalty?~ */ GOTO 455
  IF ~~ THEN REPLY #75433 /* ~Your groveling disgusts me. Draw your weapon. I'll die before I endure another second of your wretched mewling before this pathetic lackwit of a demon.~ */ GOTO 447
END

IF ~~ THEN BEGIN 455 // from: 454.1
  SAY #75434 /* ~You yourself invoked the name of Azothet.~ [OH75434] */
  IF ~~ THEN REPLY #75435 /* ~Ah. I did do that, didn't I? ~ */ GOTO 9
END

IF ~~ THEN BEGIN 456 // from:
  SAY #75440 /* ~It is my honor to serve you, Ur-Gothoz.~ [OH75440] */
  IF ~~ THEN REPLY #75441 /* ~Well, I'm glad we got that sorted out.~ */ DO ~AddJournalEntry(91274,INFO)
~ EXIT
  IF ~~ THEN REPLY #75442 /* ~All's well that ends well. For everyone but Azothet, that is.~ */ DO ~AddJournalEntry(91274,INFO)
~ EXIT
  IF ~~ THEN REPLY #75443 /* ~Does your knee ever get sore from bending all the time?~ */ GOTO 451
END

IF WEIGHT #36 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("OHD_Dorn_Gorge","OH5100",1)
~ THEN BEGIN 457 // from:
  SAY #75444 /* ~Resurrection Gorge. Just as Azothet described.~ [OH75444] */
  IF ~  InParty("valygar")
IsValidForPartyDialogue("valygar")
~ THEN REPLY #75445 /* ~Great. Let's go somewhere else now.~ */ EXTERN ~VALYGARJ~ 127
  IF ~  OR(2)
!InParty("valygar")
!IsValidForPartyDialogue("valygar")
~ THEN REPLY #75445 /* ~Great. Let's go somewhere else now.~ */ GOTO 458
  IF ~~ THEN REPLY #75446 /* ~With a little effort, this could be a very welcoming place. Some yardwork, a little gardening, burning the entire place to the ground. It has potential.~ */ GOTO 461
  IF ~~ THEN REPLY #75447 /* ~You won't be able to put off your decision much longer.~ */ GOTO 465
END

IF ~~ THEN BEGIN 458 // from: 457.1
  SAY #75449 /* ~No. We've come too far to turn back.~ [OH75449] */
  IF ~~ THEN REPLY #75450 /* ~Speak for yourself. I found the journey here very relaxing; I'm sure the return trip will be just as pleasant.~ */ DO ~EraseJournalEntry(91248)
AddJournalEntry(91277,QUEST)
SetGlobal("OHD_Dorn_Gorge","OH5100",2)
~ EXIT
  IF ~~ THEN REPLY #75451 /* ~You're right, of course. Lead on, Dorn Il-Khan. Our doom awaits.~ */ GOTO 459
  IF ~~ THEN REPLY #75452 /* ~I suppose you're right. Azothet and Ur-Gothoz mustn't be kept waiting.~ */ GOTO 461
END

IF ~~ THEN BEGIN 459 // from: 458.1
  SAY #75453 /* ~Doom awaits us, 'tis true. But not ours, <CHARNAME>. Not ours.~ [OH75453] */
  IF ~~ THEN REPLY #75454 /* ~You've made your decision then?~ */ GOTO 460
END

IF ~~ THEN BEGIN 460 // from: 459.0
  SAY #75455 /* ~Between Azothet and Ur-Gothoz? No, not yet.~ [OH75455] */
  IF ~~ THEN REPLY #75456 /* ~Best make your mind up quickly. If Azothet spoke true, you haven't much time left.~ */ DO ~EraseJournalEntry(91248)
AddJournalEntry(91277,QUEST)
SetGlobal("OHD_Dorn_Gorge","OH5100",2)
~ EXIT
END

IF ~~ THEN BEGIN 461 // from: 458.2 457.2
  SAY #75457 /* ~Let your glib tongue rest a moment, <CHARNAME>. This place reeks of power.~ [OH75457] */
  IF ~~ THEN REPLY #75458 /* ~It also reeks of death and madness.~ */ GOTO 462
END

IF ~~ THEN BEGIN 462 // from: 461.0
  SAY #75459 /* ~Death and madness are common companions to such as us.~ [OH75459] */
  IF ~~ THEN REPLY #75460 /* ~Us?~ */ GOTO 463
END

IF ~~ THEN BEGIN 463 // from: 462.0
  SAY #75461 /* ~You know we seek the same things. Power. Glory. These are what drive us forward.~ [OH75461] */
  IF ~  OR(2)
Global("DornRomanceActive","GLOBAL",1)
Global("DornRomanceActive","GLOBAL",2)
~ THEN REPLY #75462 /* ~I think you've mistaken me for someone else. Someone considerably more unstable than I.~ */ DO ~SetGlobal("DornRomanceActive","GLOBAL",3)
~ GOTO 464
  IF ~  !Global("DornRomanceActive","GLOBAL",1)
!Global("DornRomanceActive","GLOBAL",2)
~ THEN REPLY #75462 /* ~I think you've mistaken me for someone else. Someone considerably more unstable than I.~ */ GOTO 464
  IF ~~ THEN REPLY #75463 /* ~You can have power and glory. I'd be satisfied with comfort and contentment.~ */ DO ~EraseJournalEntry(91248)
AddJournalEntry(91277,QUEST)
SetGlobal("OHD_Dorn_Gorge","OH5100",2)
~ EXIT
  IF ~~ THEN REPLY #75464 /* ~ 'Tis true. Alone, we are forces to be reckoned with. Together, we are unstoppable.~ */ DO ~EraseJournalEntry(91248)
AddJournalEntry(91277,QUEST)
SetGlobal("OHD_Dorn_Gorge","OH5100",2)
~ EXIT
END

IF ~~ THEN BEGIN 464 // from: 463.1 463.0
  SAY #75465 /* ~You disappoint me. I thought in you I'd found a kindred spirit. Together, we have done much. But we could do so much more.~ [OH75465] */
  IF ~~ THEN DO ~EraseJournalEntry(91248)
AddJournalEntry(91277,QUEST)
SetGlobal("OHD_Dorn_Gorge","OH5100",2)
~ EXIT
END

IF ~~ THEN BEGIN 465 // from: 457.3
  SAY #75466 /* ~My decision?~ [OH75466] */
  IF ~~ THEN REPLY #75467 /* ~Whom do you serve? Ur-Gothoz? Azothet? Or yourself?~ */ GOTO 466
END

IF ~~ THEN BEGIN 466 // from: 465.0
  SAY #75468 /* ~Be silent, <CHARNAME>. Ur-Gothoz's ears and eyes are ever upon me.~ [OH75468] */
  IF ~~ THEN REPLY #75469 /* ~Therein lies the problem, I think.~ */ DO ~EraseJournalEntry(91248)
AddJournalEntry(91277,QUEST)
SetGlobal("OHD_Dorn_Gorge","OH5100",2)
~ EXIT
END

IF ~~ THEN BEGIN 467 // from:
  SAY #75494 /* ~There is strength in solitude.~ [OH75494] */
  IF ~~ THEN EXTERN ~OHDSUMM~ 8
END

IF ~~ THEN BEGIN 468 // from:
  SAY #75496 /* ~Joy is irrelevant. All that matters is power. Power to accomplish whatever you please!~ [OH75496] */
  IF ~~ THEN REPLY #75497 /* ~We're not here to discuss philosophy. Who are you, woman?~ */ EXTERN ~OHDSUMM~ 9
END

IF ~~ THEN BEGIN 469 // from:
  SAY #75500 /* ~Speak for yourself, <PRO_RACE>. I'll not feign weakness attempting to ingratiate myself to this... filth.~ [OH75500] */
  IF ~~ THEN REPLY #75501 /* ~You'll have to forgive my friend. He was born in an alley in a particularly nasty part of town and raised in a barn that was only marginally more sanitary. I am <CHARNAME>. Whom do I have the honor of addressing?~ */ EXTERN ~OHDSUMM~ 13
  IF ~  CheckStatGT(Player1,13,CHR)
~ THEN REPLY #75502 /* ~Then feign muteness, you lumbering imbecile. I'm trying to have a civilized conversation here.~ */ GOTO 472
  IF ~  CheckStatGT(Player1,13,CHR)
~ THEN REPLY #75503 /* ~Then be silent and ingratiate yourself to me.~ */ GOTO 470
  IF ~  CheckStatLT(Player1,14,CHR)
~ THEN REPLY #75502 /* ~Then feign muteness, you lumbering imbecile. I'm trying to have a civilized conversation here.~ */ GOTO 471
  IF ~  CheckStatLT(Player1,14,CHR)
~ THEN REPLY #75503 /* ~Then be silent and ingratiate yourself to me.~ */ GOTO 471
END

IF ~~ THEN BEGIN 470 // from: 469.2
  SAY #75504 /* ~...Very well.~ [OH75504] */
  IF ~~ THEN REPLY #75505 /* ~Good! Now then. Allow me to introduce myself. I am <CHARNAME>. The rock in the armor there is Dorn. And you are...?~ */ EXTERN ~OHDSUMM~ 13
END

IF ~~ THEN BEGIN 471 // from: 469.4 469.3
  SAY #75506 /* ~You go too far, <CHARNAME>! Die!~ [OH75506] */
  IF ~~ THEN DO ~SetGlobal("OHD_PLOT","GLOBAL",-1)
SetGlobal("KICKEDOUT","LOCALS",1)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
ActionOverride("DORN",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 472 // from: 469.1
  SAY #75507 /* ~You go too far, <CHARNAME>. Any further and you'll have a brief but enlightening discussion with the edge of my sword.~ [OH75507] */
  IF ~~ THEN REPLY #75508 /* ~I look forward to it. But for now, I'd like to talk with... I'm sorry, I didn't catch your name.~ */ EXTERN ~OHDSUMM~ 13
END

IF ~~ THEN BEGIN 473 // from:
  SAY #75536 /* ~Watch yourself, <PRO_RACE>. Summerheigh. Tell us more of the creature that stalks the gorge. How did it come to be there?~ [OH75536] */
  IF ~~ THEN EXTERN ~OHDSUMM~ 22
END

IF ~~ THEN BEGIN 474 // from:
  SAY #75541 /* ~Die, wretch!~ [OH75541] */
  IF ~~ THEN EXTERN ~OHDSUMM~ 21
END

IF ~~ THEN BEGIN 475 // from:
  SAY #75547 /* ~Does it look like it worked?~ [OH75547] */
  IF ~~ THEN REPLY #75548 /* ~Hey, I was just asking.~ */ EXTERN ~OHDSUMM~ 23
END

IF ~~ THEN BEGIN 476 // from:
  SAY #75554 /* ~She made him weak with her coddling.~ [OH75554] */
  IF ~~ THEN REPLY #75555 /* ~She loved him as a mother should a son. Ignore the half-orc, Summerheigh. Please, continue.~ */ EXTERN ~OHDSUMM~ 28
END

IF ~~ THEN BEGIN 477 // from:
  SAY #75560 /* ~Hah! There's the <CHARNAME> I remember!~ [OH75560] */
  IF ~~ THEN EXTERN ~OHDSUMM~ 26
END

IF ~~ THEN BEGIN 478 // from:
  SAY #75565 /* ~Die, hag!~ [OH75565] */
  IF ~~ THEN EXTERN ~OHDSUMM~ 21
END

IF ~~ THEN BEGIN 479 // from:
  SAY #75572 /* ~Join your son in death, you wretched sow!~ [OH75572] */
  IF ~~ THEN EXTERN ~OHDSUMM~ 21
END

IF ~~ THEN BEGIN 480 // from:
  SAY #75582 /* ~The strong make their own luck, <CHARNAME>. ~ [OH75582] */
  IF ~~ THEN REPLY #75583 /* ~The wise know better than to refuse gifts from the gods. Farewell, Summerheigh.~ */ EXIT
END

IF ~~ THEN BEGIN 481 // from:
  SAY #75602 /* ~Some things die sooner than others—especially things that would bar my way.~ [OH75602] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 482 // from:
  SAY #75618 /* ~She said the monster will corrupt—~ [OH75618] */
  IF ~~ THEN REPLY #75619 /* ~I heard what she said, Dorn. I just hoped I heard it wrong.~ */ EXTERN ~OHDSUMM~ 42
END

IF ~~ THEN BEGIN 483 // from:
  SAY #75620 /* ~You forget yourself, <CHARNAME>. Our reasons for coming here are not so abstract.~ [OH75620] */
  IF ~~ THEN EXTERN ~OHDSUMM~ 43
END

IF ~~ THEN BEGIN 484 // from:
  SAY #75626 /* ~Servant?~ [OH75626] */
  IF ~~ THEN EXTERN ~OHDSUMM~ 45
END

IF ~~ THEN BEGIN 485 // from:
  SAY #75636 /* ~I will not fail.~ [OH75636] */
  IF ~~ THEN REPLY #75637 /* ~In which case, imaginable evil will be unleashed upon the world. I guess that's a slight improvement.~ */ EXTERN ~OHDSUMM~ 44
  IF ~~ THEN REPLY #75638 /* ~You know what I love about you, Dorn? Yeah, me neither. Let's go.~ */ EXIT
  IF ~~ THEN REPLY #75639 /* ~Failure is for the weak. Whatever lurks within the gorge will fall before us like wheat to a scythe.~ */ EXTERN ~OHDSUMM~ 48
END

IF ~~ THEN BEGIN 486 // from:
  SAY #75647 /* ~You know full well why we're here, <CHARNAME>.~ [OH75647] */
  IF ~~ THEN REPLY #75648 /* ~I do. I'm not convinced you can say the same.~ */ GOTO 488
  IF ~~ THEN REPLY #75649 /* ~Of course. I was merely trying to spare good Summerheigh here a long and boring story. It's not like we've an abundance of time left to us, from the sounds of it.~ */ EXTERN ~OHDSUMM~ 54
  IF ~~ THEN REPLY #75650 /* ~For pity's sake, Dorn, you could teach a lemon a thing or two about being sour.~ */ GOTO 488
END

IF ~~ THEN BEGIN 487 // from:
  SAY #75654 /* ~And what if it is?~ [OH75654] */
  IF ~~ THEN REPLY #75652 /* ~If you can't respect our motives, at least give us points for honesty.~ */ EXTERN ~OHDSUMM~ 44
END

IF ~~ THEN BEGIN 488 // from: 486.2 486.0
  SAY #75655 /* ~We must make our way into the gorge. Nothing else matters.~ [OH75655] */
  IF ~~ THEN REPLY #75656 /* ~There's a bigger picture, Dorn. ~ */ GOTO 489
  IF ~~ THEN REPLY #75657 /* ~There are those who would disagree.~ */ GOTO 493
  IF ~~ THEN REPLY #75658 /* ~The singularity of your vision is overwhelming. Would that I had your focus.~ */ EXTERN ~OHDSUMM~ 48
END

IF ~~ THEN BEGIN 489 // from: 488.0
  SAY #75659 /* ~Perhaps for you, <CHARNAME>. Not for me.~ [OH75659] */
  IF ~~ THEN REPLY #75660 /* ~Such a narrow view will cost you dearly—and may cost the world much more.~ */ GOTO 491
  IF ~~ THEN REPLY #75661 /* ~Well said, Dorn. In this venture, what you seek is the only prize that matters.~ */ GOTO 490
END

IF ~~ THEN BEGIN 490 // from: 489.1
  SAY #75662 /* ~Then let's tarry no longer with this withered husk. The circle awaits.~ [OH75662] */
  IF ~~ THEN EXTERN ~OHDSUMM~ 48
END

IF ~~ THEN BEGIN 491 // from: 489.0
  SAY #75663 /* ~What care I for the world?~ [OH75663] */
  IF ~~ THEN EXTERN ~OHDSUMM~ 48
END

IF ~~ THEN BEGIN 492 // from:
  SAY #75666 /* ~There is great power to be had here.~ [OH75666] */
  IF ~~ THEN EXTERN ~OHDSUMM~ 55
END

IF ~~ THEN BEGIN 493 // from: 488.1
  SAY #75672 /* ~None who matter, <CHARNAME>. Let us waste no more breath on this shriveled prune. My destiny bids me move forward.~ [OH75672] */
  IF ~~ THEN DO ~AddJournalEntry(91284,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 494 // from:
  SAY #75679 /* ~You should learn from their wisdom, hag.~ [OH75679] */
  IF ~~ THEN EXTERN ~OHDSUMM~ 60
END

IF ~~ THEN BEGIN 495 // from:
  SAY #75681 /* ~Well said. Let's tarry no longer with this wizened hag. The tree awaits.~ [OH75681] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 496 // from:
  SAY #75690 /* ~We could simply take them.~ [OH75690] */
  IF ~~ THEN REPLY #75691 /* ~While we're at it, we could put a target on our backs for every faerie and woodland beast 'twixt us and the gorge.~ */ GOTO 497
  IF ~~ THEN REPLY #75692 /* ~Dorn, if you could see your way clear to not being quite so... Dorn-ish for a few minutes, it sure would make my life easier.~ */ GOTO 501
  IF ~  CheckStatGT(Player1,14,STR)
CheckStatGT(Player1,14,CHR)
~ THEN REPLY #75693 /* ~Indeed. Hand over the goods, druid.~ */ EXTERN ~OHDSUMM~ 65
  IF ~  OR(2)
!CheckStatGT(Player1,14,STR)
!CheckStatGT(Player1,14,CHR)
~ THEN REPLY #75693 /* ~Indeed. Hand over the goods, druid.~ */ EXTERN ~OHDSUMM~ 64
END

IF ~~ THEN BEGIN 497 // from: 496.0
  SAY #75694 /* ~I've faced worse in my time.~ [OH75694] */
  IF ~~ THEN REPLY #75695 /* ~I'm sure you have, but why face it at all if we don't have to?~ */ GOTO 499
  IF ~~ THEN REPLY #75696 /* ~You'll face worse than that in a couple seconds if you don't smarten up and treat this woman with the respect she deserves.~ */ GOTO 498
END

IF ~~ THEN BEGIN 498 // from: 497.1
  SAY #75697 /* ~You threaten me, Bhaalspawn?~ [OH75697] */
  IF ~  CheckStatGT(Player1,14,STR)
CheckStatGT(Player1,14,CHR)
~ THEN REPLY #75698 /* ~I tell you a simple truth you'd do well to take to heart.~ */ GOTO 499
  IF ~  OR(2)
!CheckStatGT(Player1,14,STR)
!CheckStatGT(Player1,14,CHR)
~ THEN REPLY #75698 /* ~I tell you a simple truth you'd do well to take to heart.~ */ GOTO 500
END

IF ~~ THEN BEGIN 499 // from: 498.0 497.0
  SAY #75699 /* ~Very well. Dither with the hag for the rest of the day, play crosses and noughts till the sun rises. I care not.~ [OH75699] */
  IF ~~ THEN DO ~AddJournalEntry(91283,INFO)
StartStore("ohdsumm",LastTalkedToBy(Myself))
~ EXIT
END

IF ~~ THEN BEGIN 500 // from: 498.1
  SAY #75700 /* ~Take my blade to heart, <PRO_RACE>!~ [OH75700] */
  IF ~~ THEN DO ~SetGlobal("OHD_PLOT","GLOBAL",-1)
SetGlobal("KICKEDOUT","LOCALS",1)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
ActionOverride("DORN",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 501 // from: 496.1
  SAY #75701 /* ~I am what I am, <CHARNAME>. Take it or don't; Dorn Il-Khan changes for no <PRO_MANWOMAN>.~ [OH75701] */
  IF ~~ THEN REPLY #75702 /* ~I don't ask you to change, Dorn. I ask only for silence. That's usually something you're only too willing to provide. Now then, Summerheigh. What of these goods you spoke of?~ */ DO ~AddJournalEntry(91283,INFO)
StartStore("ohdsumm",LastTalkedToBy(Myself))
~ EXIT
END

IF WEIGHT #37 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("OHD_GORGE_NTRJEX","OH5100",1)
~ THEN BEGIN 502 // from:
  SAY #75735 /* ~When this is over, I'll cut this tree down or see it burned to ashes.~ [OH75735] */
  IF ~~ THEN REPLY #75736 /* ~You're not afraid of heights, are you Dorn?~ */ GOTO 503
END

IF ~~ THEN BEGIN 503 // from: 502.0
  SAY #75737 /* ~These boots were made for walking and occasionally kicking in the skull of a fallen enemy. Not scrambling through the boughs of some gods-forsaken oak.~ [OH75737] */
  IF ~~ THEN DO ~SetGlobal("OHD_GORGE_NTRJEX","OH5100",2)
~ EXIT
  IF ~  IsValidForPartyDialogue("hexxat")
~ THEN EXTERN ~HEXXATJ~ 2
  IF ~  IsValidForPartyDialogue("neera")
~ THEN EXTERN ~NEERAJ~ 15
END

IF ~~ THEN BEGIN 504 // from:
  SAY #75751 /* ~I do.~ [OH75751] */
  IF ~~ THEN REPLY #75752 /* ~Well, we don't always get what we want. For instance, you don't get to keep whittling this halfling.~ */ GOTO 506
  IF ~~ THEN REPLY #75753 /* ~Ignore the half-orc. He wishes to harm everyone further; it's just his way.~ */ EXTERN ~OHDYARR~ 18
  IF ~~ THEN REPLY #75754 /* ~I do too, now that you mention it.~ */ GOTO 505
END

IF ~~ THEN BEGIN 505 // from: 504.2
  SAY #75755 /* ~I'll wear your intestines like garlands in my hair, you halfling nuisance!~ [OH75755] */
  IF ~~ THEN DO ~Attack("ohdtread")
ActionOverride("OHDYARR",Enemy())
ActionOverride("OHDYARR",Attack([PC]))
~ EXIT
END

IF ~~ THEN BEGIN 506 // from: 504.0
  SAY #75756 /* ~It's your lucky day, halfling. Take what's still attached to your body and go before I change my mind.~ [OH75756] */
  IF ~~ THEN EXTERN ~OHDYARR~ 1
END

IF ~~ THEN BEGIN 507 // from:
  SAY #75782 /* ~Count me glad you didn't!~ [OH75782] */
  IF ~~ THEN DO ~Attack("ohdtread")
~ EXIT
END

IF ~~ THEN BEGIN 508 // from:
  SAY #75804 /* ~Mind your tongue, <PRO_RACE>.~ [OH75804] */
  IF ~~ THEN REPLY #75805 /* ~What? I merely suggested—~ */ GOTO 509
  IF ~~ THEN REPLY #75806 /* ~Yes, sir. Minding my tongue, sir.~ */ EXTERN ~OHDYARR~ 18
  IF ~~ THEN REPLY #75807 /* ~Why, when you seem satisfied to watch it for me?~ */ GOTO 510
END

IF ~~ THEN BEGIN 509 // from: 508.0
  SAY #75808 /* ~I know what you were suggesting. I suggest you shut your mouth before I shut it permanently.~ [OH75808] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 510 // from: 508.2
  SAY #75809 /* ~I always keep an eye on my enemy's weapons.~ [OH75809] */
  IF ~~ THEN REPLY #75810 /* ~You wound me, Dorn. And not the way you usually wound people, either. This hurts.~ */ GOTO 513
  IF ~~ THEN REPLY #75811 /* ~So you think me an enemy?~ */ GOTO 511
  IF ~~ THEN REPLY #75812 /* ~You think my tongue is dangerous? Don't leave yourself open like that.~ */ GOTO 513
END

IF ~~ THEN BEGIN 511 // from: 510.1
  SAY #75813 /* ~I think you are wise enough to know when you no longer need me as a friend.~ [OH75813] */
  IF ~~ THEN REPLY #75814 /* ~I don't stand with you because of your tactical value, Dorn. I actually like you, though only the gods know why.~ */ GOTO 513
  IF ~~ THEN REPLY #75815 /* ~You think me a friend?~ */ GOTO 513
  IF ~~ THEN REPLY #75816 /* ~I never needed you as a friend, Dorn, and don't think yourself one now. I use you to my own benefit, as you do me.~ */ GOTO 512
END

IF ~~ THEN BEGIN 512 // from: 511.2
  SAY #75817 /* ~I'm glad we understand each other.~ [OH75817] */
  IF ~~ THEN EXTERN ~OHDYARR~ 18
END

IF ~~ THEN BEGIN 513 // from: 511.1 511.0 510.2 510.0
  SAY #75818 /* ~I think you're playing games with me now.~ [OH75818] */
  IF ~~ THEN REPLY #75819 /* ~Perhaps I am.~ */ GOTO 514
END

IF ~~ THEN BEGIN 514 // from: 513.0
  SAY #75820 /* ~You may come to regret that.~ [OH75820] */
  IF ~~ THEN REPLY #75821 /* ~Perhaps I will.~ */ EXTERN ~OHDYARR~ 18
END

IF ~~ THEN BEGIN 515 // from:
  SAY #75839 /* ~Die, tree-hag!~ [OH75839] */
  IF ~~ THEN EXTERN ~OHDYARR~ 23
END

IF ~~ THEN BEGIN 516 // from:
  SAY #75847 /* ~Death to all who stand between me and the circle!~ [OH75847] */
  IF ~~ THEN EXTERN ~OHDYARR~ 23
END

IF ~~ THEN BEGIN 517 // from:
  SAY #75860 /* ~Don't try to stand in our way, dryad.~ [OH75860] */
  IF ~~ THEN EXTERN ~OHDYARR~ 32
  IF ~  Range("OHDTREAD",30)
!StateCheck("OHDTREAD",CD_STATE_NOTVALID)
~ THEN EXTERN ~OHDTREAD~ 6
END

IF ~~ THEN BEGIN 518 // from:
  SAY #75866 /* ~I'll cut you into quarters, halfling!~ [OH75866] */
  IF ~~ THEN DO ~ActionOverride("ohdtread",Enemy())
ActionOverride("ohdyarr",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 519 // from:
  SAY #75876 /* ~What color is dryad's blood, I wonder?~ [OH75876] */
  IF ~~ THEN EXTERN ~OHDYARR~ 35
  IF ~  Range("OHDTREAD",30)
!StateCheck("OHDTREAD",CD_STATE_NOTVALID)
~ THEN EXTERN ~OHDTREAD~ 8
END

IF ~~ THEN BEGIN 520 // from:
  SAY #75879 /* ~What concern is it of yours?~ [OH75879] */
  IF ~~ THEN EXTERN ~OHDYARR~ 36
END

IF ~~ THEN BEGIN 521 // from:
  SAY #75884 /* ~Enough of your prattling, <CHARNAME>. Dryad! Who are you who thinks to stand between me and my goal?~ [OH75884] */
  IF ~~ THEN EXTERN ~OHDYARR~ 32
END

IF ~~ THEN BEGIN 522 // from:
  SAY #75899 /* ~You go too far, <PRO_RACE>.~ [OH75899] */
  IF ~~ THEN REPLY #75900 /* ~You make me sad, Dorn. All this time together and you still can't take a joke.~ */ GOTO 526
  IF ~~ THEN REPLY #75901 /* ~Really? That was too far? Tell the truth now, Dorn—you've moved the line, haven't you?~ */ GOTO 528
  IF ~~ THEN REPLY #75902 /* ~I go where I would, half-orc. Only a fool would try and stop me.~ */ GOTO 523
END

IF ~~ THEN BEGIN 523 // from: 522.2
  SAY #75903 /* ~You call me a fool?~ [OH75903] */
  IF ~~ THEN REPLY #75904 /* ~If you act the fool, I'll tell you so.~ */ GOTO 524
  IF ~~ THEN REPLY #75905 /* ~Hah! No. How foolish would that make me?~ */ GOTO 528
  IF ~~ THEN REPLY #75906 /* ~One who acts like a fool should expect no better.~ */ GOTO 525
END

IF ~~ THEN BEGIN 524 // from: 523.0
  SAY #75907 /* ~So, you are calling me a fool?~ [OH75907] */
  IF ~~ THEN REPLY #75908 /* ~I'm not calling you anything. Curb your paranoia, Dorn. I fear it will drive you to madness.~ */ GOTO 529
  IF ~~ THEN REPLY #75909 /* ~*sigh* No, Dorn, of course not. Only a fool would call you a fool. And I'm no fool.~ */ GOTO 528
  IF ~~ THEN REPLY #75910 /* ~Only because you're being one.~ */ GOTO 525
END

IF ~~ THEN BEGIN 525 // from: 524.2 523.2
  SAY #75911 /* ~I may not have your way with words, <CHARNAME>, but I know how to win an argument.~ [OH75911] */
  IF ~~ THEN DO ~SetGlobal("OHD_PLOT","GLOBAL",-1)
SetGlobal("KICKEDOUT","LOCALS",1)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
ActionOverride("DORN",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 526 // from: 522.0
  SAY #75932 /* ~I'll not stand here and be mocked by the likes of you!~ [OH75932] */
  IF ~~ THEN REPLY #75933 /* ~You're looking for an insult where none was intended, Dorn.~ */ GOTO 528
  IF ~  CheckStatGT(Player1,14,CHR)
~ THEN REPLY #75934 /* ~Perhaps you should sit, then.~ */ GOTO 528
  IF ~  !CheckStatGT(Player1,14,CHR)
~ THEN REPLY #75934 /* ~Perhaps you should sit, then.~ */ GOTO 527
END

IF ~~ THEN BEGIN 527 // from: 526.2
  SAY #75935 /* ~I'll sit on your corpse!~ [OH75935] */
  IF ~~ THEN DO ~SetGlobal("OHD_PLOT","GLOBAL",-1)
SetGlobal("KICKEDOUT","LOCALS",1)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
ActionOverride("DORN",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 528 // from: 529.0 526.1 526.0 524.1 523.1 522.1
  SAY #75936 /* ~Your insolent tongue will be the death of you, <CHARNAME>.~ [OH75936] */
  IF ~~ THEN REPLY #75937 /* ~Perhaps you're right. But I'm not inclined to cut it out, so I'll just have to live with it as long as I'm able. Yarrow, pray continue your tale.~ */ EXTERN ~OHDYARR~ 52
END

IF ~~ THEN BEGIN 529 // from: 524.0
  SAY #75938 /* ~You would be wise to fear me, <CHARNAME>. Or at least to pretend you do.~ [OH75938] */
  IF ~~ THEN REPLY #75939 /* ~I should be able to manage that. I'm a pretty good actor.~ */ GOTO 528
  IF ~~ THEN REPLY #75940 /* ~I would be wise to flee you. But here I am.~ */ GOTO 531
  IF ~~ THEN REPLY #75941 /* ~Fear you? Surely you jest. I've more to fear from my shadow.~ */ GOTO 530
END

IF ~~ THEN BEGIN 530 // from: 529.2
  SAY #75942 /* ~I'll wager your shadow's sword doesn't cut like mine.~ [OH75942] */
  IF ~~ THEN DO ~SetGlobal("OHD_PLOT","GLOBAL",-1)
SetGlobal("KICKEDOUT","LOCALS",1)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
ActionOverride("DORN",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 531 // from: 529.1
  SAY #75950 /* ~You may not fear me, but you know my value.~ [OH75950] */
  IF ~~ THEN REPLY #75951 /* ~I do, but we can discuss that later. For now, I would know more about the beast that stalks Resurrection Gorge.~ */ EXTERN ~OHDYARR~ 52
END

IF ~~ THEN BEGIN 532 // from:
  SAY #75958 /* ~We'll see what lessons it can teach dancing on the end of my blade. Then perhaps you will be the one to learn something from the demon.~ [OH75958] */
  IF ~~ THEN EXTERN ~OHDYARR~ 55
END

IF ~~ THEN BEGIN 533 // from:
  SAY #75959 /* ~His corpse serves as a fitting monument to his failure.~ [OH75959] */
  IF ~~ THEN REPLY #75960 /* ~I agree. The state of the tree and a bloodthirsty tanar'ri stalking the gorge is really kind of redundant after that.~ */ GOTO 560
  IF ~~ THEN REPLY #75961 /* ~He'd probably have preferred some kind of plaque.~ */ GOTO 561
  IF ~~ THEN REPLY #75962 /* ~Indeed. The weak and foolish deserve no better.~ */ EXTERN ~OHDYARR~ 56
END

IF ~~ THEN BEGIN 534 // from:
  SAY #75968 /* ~Calling me a fool will cost you your life sooner than my supposed foolishness will cost me mine.~ [OH75968] */
  IF ~~ THEN GOTO 535
  IF ~  Range("OHDTREAD",30)
!StateCheck("OHDTREAD",CD_STATE_NOTVALID)
~ THEN EXTERN ~OHDTREAD~ 9
END

IF ~~ THEN BEGIN 535 // from: 534.0
  SAY #75971 /* ~Sap is a poor substitute for blood, but I'll shed it all the same.~ [OH75971] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 536 // from:
  SAY #75972 /* ~There is nothing mindless about it, <PRO_RACE>.~ [OH75972] */
  IF ~~ THEN REPLY #75973 /* ~Simmeon, Ur-Gothoz, now Azothet... They called the tune and you danced the dance, all for power. Was it worth it?~ */ GOTO 537
END

IF ~~ THEN BEGIN 537 // from: 536.0
  SAY #75974 /* ~Not all of us had the good fortune to be a child of Bhaal. When the opportunity for power presents itself, I have little choice but to take it.~ [OH75974] */
  IF ~~ THEN REPLY #75975 /* ~There's more to life than power, Dorn.~ */ GOTO 542
  IF ~~ THEN REPLY #75976 /* ~"Little choice"? You make excuses for your own base appetites.~ */ GOTO 538
  IF ~~ THEN REPLY #75977 /* ~Agreed. Power is all that matters.~ */ GOTO 541
END

IF ~~ THEN BEGIN 538 // from: 537.1
  SAY #75978 /* ~Desiring power requires no excuse. Power is both the end and the means. Everything else is but a distraction.~ [OH75978] */
  IF ~  OR(2)
!CheckStatGT(Player1,14,STR)
!CheckStatGT(Player1,13,CHR)
~ THEN REPLY #75979 /* ~Your pitifully limited view cripples your own ambitions.~ */ GOTO 540
  IF ~  CheckStatGT(Player1,14,STR)
CheckStatGT(Player1,13,CHR)
~ THEN REPLY #75979 /* ~Your pitifully limited view cripples your own ambitions.~ */ GOTO 539
END

IF ~~ THEN BEGIN 539 // from: 538.1
  SAY #75980 /* ~We'll see, <PRO_RACE>. We'll see. For now, we've more pressing concerns. Dryad. What more can you tell us of the tanar'ri who haunts the gorge?~ [OH75980] */
  IF ~~ THEN EXTERN ~OHDYARR~ 60
END

IF ~~ THEN BEGIN 540 // from: 538.0
  SAY #75981 /* ~Save your pity for yourself, <PRO_RACE>. It's more than your ambition I'll cripple.~ [OH75981] */
  IF ~~ THEN DO ~SetGlobal("OHD_PLOT","GLOBAL",-1)
SetGlobal("KICKEDOUT","LOCALS",1)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
ActionOverride("DORN",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 541 // from: 537.2
  SAY #75982 /* ~And there's power here, that much is obvious. Dryad! Tell us more of what awaits us in Resurrection Gorge.~ [OH75982] */
  IF ~~ THEN EXTERN ~OHDYARR~ 60
END

IF ~~ THEN BEGIN 542 // from: 537.0
  SAY #75983 /* ~A life without power is hardly worth living.~ [OH75983] */
  IF ~~ THEN REPLY #75984 /* ~A life without love is hardly worth living.~ */ GOTO 543
  IF ~~ THEN REPLY #75985 /* ~Yet there are hundreds of thousands—millions—of people who endure without power. And many of those are happy.~ */ GOTO 547
  IF ~~ THEN REPLY #75986 /* ~"Hardly" worth living? A life without power's not worth living at all. ~ */ GOTO 559
END

IF ~~ THEN BEGIN 543 // from: 542.0
  SAY #75987 /* ~Love? You jest.~ [OH75987] */
  IF ~~ THEN REPLY #75988 /* ~All the power in the realms will be meaningless if you are alone.~ */ GOTO 544
END

IF ~~ THEN BEGIN 544 // from: 543.0
  SAY #75989 /* ~Only a fool would willingly share such power.~ [OH75989] */
  IF ~~ THEN REPLY #75990 /* ~Love makes fools of us all.~ */ GOTO 548
  IF ~~ THEN REPLY #75991 /* ~Only a fool would ignore the power to be had in combining forces with a worthy mate.~ */ GOTO 545
END

IF ~~ THEN BEGIN 545 // from: 544.1
  SAY #75992 /* ~An alliance of equals is a different matter altogether.~ [OH75992] */
  IF ~~ THEN REPLY #75993 /* ~Is it? A love shared between unequal partners is built on a foundation of shifting sand. An alliance of equals focused on a mutual goal—the acquisition of power, say—is the sort of ground love needs to bloom.~ */ GOTO 546
END

IF ~~ THEN BEGIN 546 // from: 545.0
  SAY #75994 /* ~As long as the mutual goal is the acquisition of power...~ [OH75994] */
  IF ~~ THEN REPLY #75995 /* ~There is nothing else of worth, not in this world.~ */ GOTO 559
END

IF ~~ THEN BEGIN 547 // from: 542.1
  SAY #75996 /* ~Blind commoner fools, happy to be led by the strong.~ [OH75996] */
  IF ~~ THEN REPLY #75997 /* ~But happy nonetheless.~ */ GOTO 548
END

IF ~~ THEN BEGIN 548 // from: 547.0 544.0
  SAY #75998 /* ~You disappoint me, <CHARNAME>. I thought we were of a shared purpose. ~ [OH75998] */
  IF ~~ THEN REPLY #75999 /* ~You thought wrong. I aspire to noble deeds, while you are satisfied indulging your baser instincts.~ */ GOTO 549
  IF ~~ THEN REPLY #76000 /* ~Once, perhaps. But now I'm not so sure.~ */ GOTO 550
  IF ~~ THEN REPLY #76001 /* ~We do. For such as us, there can be no happiness without power.~ */ GOTO 559
END

IF ~~ THEN BEGIN 549 // from: 548.0
  SAY #76002 /* ~Such aspirations are no fitting goals for a child of Bhaal.~ [OH76002] */
  IF ~~ THEN REPLY #76003 /* ~Nevertheless, I strive to do good where I can. And it seems there are opportunities aplenty to do so here.~ */ EXTERN ~OHDYARR~ 58
END

IF ~~ THEN BEGIN 550 // from: 548.1
  SAY #76005 /* ~What could prompt such a change in heart?~ [OH76005] */
  IF ~~ THEN REPLY #76006 /* ~This place affects me in a way I'd never imagined possible. A balance has been upset here, and I must right it or die in the attempt.~ */ EXTERN ~OHDYARR~ 58
  IF ~~ THEN REPLY #76007 /* ~You have, Dorn Il-Khan. Seeing your potential wasted in service to Simmeon, Ur-Gothoz, now Azothet... At all times you seek power, yet your efforts result only in servitude to another. You've chosen your path, and I respect that. But I see now where it leads, and that is nowhere I want to go.~ */ GOTO 551
  IF ~~ THEN REPLY #76008 /* ~What can I say? I'm fickle. ~ */ EXTERN ~OHDYARR~ 59
END

IF ~~ THEN BEGIN 551 // from: 550.1
  SAY #76009 /* ~Curse your eyes, <CHARNAME>! You see my quandary but offer me no solutions.~ [OH76009] */
  IF ~~ THEN REPLY #76010 /* ~I have nothing to offer but my support. I have faith in you, Dorn. You'll find a way through this.~ */ GOTO 552
  IF ~~ THEN REPLY #76011 /* ~A time will come—soon, I think—when you'll need to choose between freedom and power. When that time comes, I pray you make the right decision.~ */ GOTO 553
  IF ~~ THEN REPLY #76012 /* ~Find your own solutions, Il-Khan. I've better things to do with my time than dwell on your problems.~ */ GOTO 555
END

IF ~~ THEN BEGIN 552 // from: 551.0
  SAY #76015 /* ~Your faith in others is a weakness; your faith in me crosses the line into foolhardiness. You know I tolerate you only so long as you are of use to me.~ [OH76015] */
  IF ~~ THEN REPLY #76016 /* ~Faith in others is no weakness. What is your tolerance of my whimsical nature if not a sign of your faith in my continued value?~ */ GOTO 556
  IF ~~ THEN REPLY #76017 /* ~Then I shall endeavor to continue to be of use to you.~ */ GOTO 557
  IF ~~ THEN REPLY #76018 /* ~Likewise.~ */ GOTO 555
END

IF ~~ THEN BEGIN 553 // from: 551.1
  SAY #76019 /* ~Freedom or power? But that's no choice at all.~ [OH76019] */
  IF ~~ THEN REPLY #76020 /* ~That's the attitude that led you to Simmeon, to Ur-Gothoz...~ */ GOTO 554
END

IF ~~ THEN BEGIN 554 // from: 553.0
  SAY #76021 /* ~Enough, <PRO_RACE>. You've made your point.~ [OH76021] */
  IF ~~ THEN REPLY #76022 /* ~Then let's move on. Yarrow, I believe you were telling us about a tanar'ri?~ */ EXTERN ~OHDYARR~ 61
END

IF ~~ THEN BEGIN 555 // from: 552.2 551.2
  SAY #76023 /* ~Yet here you are at Resurrection Gorge. ~ [OH76023] */
  IF ~~ THEN REPLY #76024 /* ~I've my own reasons for that, half-orc. Do not presume that your presence here influences me in any way. Now, dryad. Continue with your tale.~ */ EXTERN ~OHDYARR~ 60
END

IF ~~ THEN BEGIN 556 // from: 552.0
  SAY #76026 /* ~A sign of madness, I sometimes think.~ [OH76026] */
  IF ~~ THEN REPLY #76027 /* ~A touch of madness may not be a bad thing where we're going. What more can you tell us of the gorge and this tanar'ri, Yarrow?~ */ EXTERN ~OHDYARR~ 61
END

IF ~~ THEN BEGIN 557 // from: 552.1
  SAY #76028 /* ~Your service is appreciated.~ [OH76028] */
  IF ~~ THEN REPLY #76029 /* ~It's nice to feel appreciated. Now, Yarrow, tell us more about this tanar'ri.~ */ EXTERN ~OHDYARR~ 61
  IF ~~ THEN REPLY #76030 /* ~Have a care, Dorn. I serve only myself, unlike some half-orcs I could mention.~ */ GOTO 558
  IF ~~ THEN REPLY #76031 /* ~Imply I'm your servant again and you won't appreciate what happens next.~ */ GOTO 559
END

IF ~~ THEN BEGIN 558 // from: 557.1
  SAY #76032 /* ~Watch yourself, Bhaalspawn.~ [OH76032] */
  IF ~~ THEN EXTERN ~OHDYARR~ 60
END

IF ~~ THEN BEGIN 559 // from: 557.2 548.2 546.0 542.2
  SAY #76033 /* ~Ha! There's the <CHARNAME> I know. I wondered where <PRO_HESHE> had gotten to. But enough banter. Dryad, what more can you tell us of the tanar'ri and the gorge?~ [OH76033] */
  IF ~~ THEN EXTERN ~OHDYARR~ 60
END

IF ~~ THEN BEGIN 560 // from: 533.0
  SAY #76034 /* ~My tree's state is no memorial to events passed.~ */
  IF ~~ THEN EXTERN ~OHDYARR~ 61
END

IF ~~ THEN BEGIN 561 // from: 533.1
  SAY #76035 /* ~If you're of a mind, you can leave one when we complete our task. For now, we should focus on what awaits us. The summoning circle, dryad. Where is it?~ [OH76035] */
  IF ~~ THEN EXTERN ~OHDYARR~ 65
END

IF ~~ THEN BEGIN 562 // from:
  SAY #76045 /* ~Your wit is duller than a dwarf's hammer. The summoning circle. Where is it?~ [OH76045] */
  IF ~~ THEN EXTERN ~OHDYARR~ 65
END

IF ~~ THEN BEGIN 563 // from:
  SAY #76047 /* ~Better to live and crawl than to die for no reason. There's no way to know what end awaits until it arrives.~ [OH76047] */
  IF ~~ THEN REPLY #76048 /* ~You surprise me, Dorn. I can't imagine you being satisfied dying in bed.~ */ GOTO 564
END

IF ~~ THEN BEGIN 564 // from: 563.0
  SAY #76049 /* ~Life is the ultimate battle. I may not ultimately prevail, but I'll fight it to my dying breath regardless of where I take it.~ [OH76049] */
  IF ~~ THEN GOTO 565
END

IF ~~ THEN BEGIN 565 // from: 564.0
  SAY #76050 /* ~But enough of this. We seek the circle of summoning. Where is it?~ [OH76050] */
  IF ~~ THEN EXTERN ~OHDYARR~ 65
END

IF ~~ THEN BEGIN 566 // from:
  SAY #76055 /* ~We're not here for a history lesson. We're here for the circle and the sword.~ [OH76055] */
  IF ~~ THEN REPLY #76056 /* ~Those things are unimportant compared to restoring the tree to its former glory and bringing balance back to the land.~ */ GOTO 567
  IF ~~ THEN REPLY #76057 /* ~I suspect finding them will be quicker and easier with Yarrow's help. Pray continue, Yarrow.~ */ EXTERN ~OHDYARR~ 69
  IF ~~ THEN REPLY #76058 /* ~You're right, Dorn. Let's not waste our time with this dryad.~ */ EXTERN ~OHDYARR~ 66
END

IF ~~ THEN BEGIN 567 // from: 566.0
  SAY #76066 /* ~Pfah! Your sudden nobility sickens me, <CHARNAME>.~ [OH76066] */
  IF ~~ THEN REPLY #76067 /* ~Suffer in silence, Dorn. Yarrow has much more to tell us, I'm sure.~ */ EXTERN ~OHDYARR~ 69
END

IF ~~ THEN BEGIN 568 // from:
  SAY #76068 /* ~Well said, <CHARNAME>. Nothing shall stand between us and the circle.~ [OH76068] */
  IF ~~ THEN EXTERN ~OHDYARR~ 68
END

IF ~~ THEN BEGIN 569 // from:
  SAY #76071 /* ~I don't doubt your strength, <PRO_RACE>. I cannot in truth say the same of your sanity or your wisdom.~ [OH76071] */
  IF ~~ THEN EXTERN ~OHDYARR~ 69
END

IF ~~ THEN BEGIN 570 // from:
  SAY #76073 /* ~You would have us fear bones? I'll grind them to powder with my teeth!~ [OH76073] */
  IF ~~ THEN REPLY #76074 /* ~Stop interrupting the woman, Dorn. I apologize for my friend's enthusiasm, Yarrow. Is there anything more you can tell us of the gorge?~ */ EXTERN ~OHDYARR~ 71
  IF ~~ THEN REPLY #76075 /* ~Ah! Suddenly I understand the sorry state of your breath.~ */ GOTO 571
  IF ~~ THEN REPLY #76076 /* ~Those who came before were too weak to survive the gorge. They failed in life; I'll not fear them in death.~ */ EXTERN ~OHDYARR~ 70
END

IF ~~ THEN BEGIN 571 // from: 570.1
  SAY #76079 /* ~Make another remark of that nature and you'll also understand the sorry state of your breathing.~ [OH76079] */
  IF ~~ THEN REPLY #76080 /* ~There's nothing wrong with my breathing—wait, I just got it. Never mind. Yarrow, continue.~ */ EXTERN ~OHDYARR~ 71
  IF ~~ THEN REPLY #76081 /* ~You would threaten me, half-orc?~ */ GOTO 572
END

IF ~~ THEN BEGIN 572 // from: 571.1
  SAY #76082 /* ~You would insult me, <PRO_RACE>?~ [OH76082] */
  IF ~~ THEN REPLY #76083 /* ~I did but make a joke.~ */ GOTO 573
  IF ~~ THEN REPLY #76084 /* ~I do as I will. You should know better than to challenge me.~ */ GOTO 574
END

IF ~~ THEN BEGIN 573 // from: 572.0
  SAY #76085 /* ~Those who joke at my expense will find they pay a steep price.~ [OH76085] */
  IF ~~ THEN REPLY #76086 /* ~I'm sorry, my friend. I meant no offense. Please continue, Yarrow.~ */ EXTERN ~OHDYARR~ 71
END

IF ~~ THEN BEGIN 574 // from: 572.1
  SAY #76087 /* ~And you should know better than to insult a blackguard.~ [OH76087] */
  IF ~  OR(2)
!CheckStatGT(Player1,14,STR)
!CheckStatGT(Player1,14,CHR)
~ THEN REPLY #76088 /* ~If you've a problem with my attitude... Well then, you've a problem. Deal with it on your own time; we've other matters to attend to right now.~ */ GOTO 576
  IF ~  CheckStatGT(Player1,14,STR)
CheckStatGT(Player1,14,CHR)
~ THEN REPLY #76088 /* ~If you've a problem with my attitude... Well then, you've a problem. Deal with it on your own time; we've other matters to attend to right now.~ */ GOTO 575
END

IF ~~ THEN BEGIN 575 // from: 574.1
  SAY #76089 /* ~When this is over, you and I will have words, <CHARNAME>.~ [OH76089] */
  IF ~~ THEN REPLY #76090 /* ~I look forward to it. But for now, Yarrow, please go on.~ */ EXTERN ~OHDYARR~ 71
END

IF ~~ THEN BEGIN 576 // from: 574.0
  SAY #76091 /* ~I'll deal with your flippant tongue now, you impertinent dog!~ [OH76091] */
  IF ~~ THEN DO ~SetGlobal("OHD_PLOT","GLOBAL",-1)
SetGlobal("KICKEDOUT","LOCALS",1)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
ActionOverride("DORN",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 577 // from:
  SAY #76096 /* ~That blade will be mine before this is done.~ [OH76096] */
  IF ~~ THEN EXTERN ~OHDYARR~ 75
END

IF ~~ THEN BEGIN 578 // from:
  SAY #76109 /* ~If you're quite finished with your prattling, can we get on with this? The ebon blade calls out to me; I can hear it.~ [OH76109] */
  IF ~~ THEN EXTERN ~OHDYARR~ 81
END

IF ~~ THEN BEGIN 579 // from:
  SAY #76112 /* ~Enough talk! Let's be on our way.~ [OH76112] */
  IF ~~ THEN EXTERN ~OHDYARR~ 81
END

IF ~~ THEN BEGIN 580 // from:
  SAY #76120 /* ~I may be selfish, but I'm no hypocrite. You allow us passage only because we might save your blighted lover. And you reward failure with certain death. You wrap your self-serving actions in noble words, but it all amounts to the same thing.~ [OH76120] */
  IF ~~ THEN EXTERN ~OHDYARR~ 32
  IF ~  Range("OHDTREAD",30)
!StateCheck("OHDTREAD",CD_STATE_NOTVALID)
~ THEN EXTERN ~OHDTREAD~ 11
END

IF ~~ THEN BEGIN 581 // from:
  SAY #76131 /* ~The tanar'ri can take you and your halfling toadie! Nothing shall stand between me and my destiny!~ [OH76131] */
  IF ~~ THEN DO ~ActionOverride("ohdtread",Enemy())
ActionOverride("ohdyarr",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 582 // from:
  SAY #76134 /* ~Speak for yourself, <CHARNAME>. I intend to walk out of the gorge alive—and with greater power than any I've wielded before.~ [OH76134] */
  IF ~~ THEN REPLY #76135 /* ~An intention is the most common victim of reality, but I'm with you. We can prevail in our quest if we work together.~ */ EXTERN ~OHDYARR~ 87
  IF ~~ THEN REPLY #76136 /* ~The best laid plans of gods and men often go awry. And frankly, our plan wasn't that well laid to begin with.~ */ GOTO 583
  IF ~~ THEN REPLY #76137 /* ~And I shall walk beside you. Yarrow, what is the way into the gorge?~ */ EXTERN ~OHDYARR~ 89
END

IF ~~ THEN BEGIN 583 // from: 582.1
  SAY #76141 /* ~We have a goal; if anything gets between us and it, we cut it to bloody ribbons. What more of a plan could we need?~ [OH76141] */
  IF ~~ THEN REPLY #76142 /* ~I favor a more nuanced approach.~ */ GOTO 584
  IF ~~ THEN REPLY #76143 /* ~I'd prefer one that includes an option for running, if possible.~ */ GOTO 586
  IF ~~ THEN REPLY #76144 /* ~Best to keep things simple. Yarrow, how do we enter the gorge?~ */ EXTERN ~OHDYARR~ 88
END

IF ~~ THEN BEGIN 584 // from: 583.0
  SAY #76145 /* ~Nuance is for those who lack the strength to face their problems in a forthright manner.~ [OH76145] */
  IF ~~ THEN REPLY #76146 /* ~There's more to life than obstacles and goals, Dorn. Sometimes you've got to stop and smell the roses.~ */ GOTO 585
  IF ~~ THEN REPLY #76147 /* ~Your "forthright manner" generally involves shedding someone's blood. There's some room in this life we've chosen for finesse, you know.~ */ GOTO 586
  IF ~~ THEN REPLY #76148 /* ~The gorge is no place for the weak.~ */ EXTERN ~OHDYARR~ 90
END

IF ~~ THEN BEGIN 585 // from: 584.0
  SAY #76149 /* ~Stop and smell the... Have you taken leave of your senses, <CHARNAME>? We stand on the edge of Resurrection Gorge! This is no time to stop and reflect on meaningless distractions!~ [OH76149] */
  IF ~~ THEN REPLY #76150 /* ~I fear this is the last time we shall have to reflect. ~ */ GOTO 589
  IF ~~ THEN REPLY #76151 /* ~Hah! I got you going, didn't I? You're right, of course. It's time we got this show on the road. Or in the gorge, as the case may be.~ */ EXTERN ~OHDYARR~ 81
  IF ~~ THEN REPLY #76152 /* ~You are right, of course.~ */ EXTERN ~OHDYARR~ 90
END

IF ~~ THEN BEGIN 586 // from: 584.1 583.1
  SAY #76157 /* ~Cowardice ill-becomes you, <CHARNAME>.~ [OH76157] */
  IF ~~ THEN REPLY #76158 /* ~Don't mistake wisdom for cowardice, Dorn.~ */ GOTO 590
  IF ~~ THEN REPLY #76159 /* ~It becomes me better than death, I think. I've heard enough about the gorge to know it's a place I'd rather not visit.~ */ EXIT
  IF ~  OR(2)
!CheckStatGT(Player1,13,STR)
!CheckStatGT(Player1,14,CHR)
~ THEN REPLY #76160 /* ~Keep talking and you'll see how death becomes you, Dorn.~ */ GOTO 588
  IF ~  CheckStatGT(Player1,13,STR)
CheckStatGT(Player1,14,CHR)
~ THEN REPLY #76160 /* ~Keep talking and you'll see how death becomes you, Dorn.~ */ GOTO 587
END

IF ~~ THEN BEGIN 587 // from: 586.3
  SAY #76161 /* ~I thought I'd face my death in the gorge, not just outside it.~ [OH76161] */
  IF ~~ THEN REPLY #76162 /* ~Let's hope we won't face it at all, at least not any time soon. Yarrow, we would enter the gorge.~ */ EXTERN ~OHDYARR~ 81
  IF ~~ THEN REPLY #76163 /* ~You won't face your death at all, today. We're leaving.~ */ EXIT
  IF ~~ THEN REPLY #76164 /* ~You face your death wherever and whenever you cross me, Dorn. Don't forget that.~ */ GOTO 589
END

IF ~~ THEN BEGIN 588 // from: 586.2
  SAY #76165 /* ~I'll let my blade do my talking!~ [OH76165] */
  IF ~~ THEN DO ~SetGlobal("OHD_PLOT","GLOBAL",-1)
SetGlobal("KICKEDOUT","LOCALS",1)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
ActionOverride("DORN",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 589 // from: 587.2 585.0
  SAY #76166 /* ~So what do we do now? Would you have us turn our backs on the gorge after coming all this way, or finish what we began?~ [OH76166] */
  IF ~~ THEN REPLY #76167 /* ~Let's finish this. Yarrow, we want to enter the Gorge. Will you help us?~ */ EXTERN ~OHDYARR~ 89
  IF ~~ THEN REPLY #76168 /* ~I've lost my appetite for this adventure. The gorge can wait for another day.~ */ EXIT
END

IF ~~ THEN BEGIN 590 // from: 586.0
  SAY #76169 /* ~The only mistake I've made is taking you for a person of strength, <CHARNAME>.~ [OH76169] */
  IF ~~ THEN REPLY #76170 /* ~Your inability to see my strength is your weakness.~ */ GOTO 593
  IF ~~ THEN REPLY #76171 /* ~Let's hope that's the worst mistake you make today.~ */ EXTERN ~OHDYARR~ 90
  IF ~  OR(2)
!CheckStatGT(Player1,13,STR)
!CheckStatGT(Player1,13,CHR)
~ THEN REPLY #76172 /* ~Would you like to feel my strength firsthand, Dorn?~ */ GOTO 592
  IF ~  CheckStatGT(Player1,13,STR)
CheckStatGT(Player1,13,CHR)
~ THEN REPLY #76172 /* ~Would you like to feel my strength firsthand, Dorn?~ */ GOTO 591
END

IF ~~ THEN BEGIN 591 // from: 590.3
  SAY #76173 /* ~I'd see your strength used to take the tanar'ri's sword.~ [OH76173] */
  IF ~~ THEN REPLY #76174 /* ~And you shall.~ */ EXTERN ~OHDYARR~ 90
END

IF ~~ THEN BEGIN 592 // from: 590.2
  SAY #76175 /* ~If that is your wish, I shall happily oblige!~ [OH76175] */
  IF ~~ THEN DO ~SetGlobal("OHD_PLOT","GLOBAL",-1)
SetGlobal("KICKEDOUT","LOCALS",1)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
ActionOverride("DORN",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 593 // from: 590.0
  SAY #76176 /* ~I see clearly, <CHARNAME>, which is more than can be said for you.~ [OH76176] */
  IF ~~ THEN REPLY #76177 /* ~This is an argument we can have another day. On this venture, time is not our ally.~ */ EXTERN ~OHDYARR~ 90
END

IF WEIGHT #38 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  AreaCheck("OH5120")
Global("OHD_oh5120_init","LOCALS",1)
~ THEN BEGIN 594 // from:
  SAY #76185 /* ~At last! The moment is at hand!~ [OH76185] */
  IF ~~ THEN GOTO 595
END

IF ~~ THEN BEGIN 595 // from: 594.0
  SAY #76186 /* ~Wait. Something's not right here... The circle isn't complete. It's not complete!~ [OH76186] */
  IF ~~ THEN REPLY #76187 /* ~What's missing?~ */ DO ~SetGlobal("OHD_oh5120_init","LOCALS",2)
~ GOTO 596
  IF ~~ THEN REPLY #76188 /* ~How is that possible?~ */ DO ~SetGlobal("OHD_oh5120_init","LOCALS",2)
~ GOTO 606
  IF ~~ THEN REPLY #76189 /* ~The hag Azothet has betrayed us!~ */ DO ~SetGlobal("OHD_oh5120_init","LOCALS",2)
~ GOTO 605
END

IF ~~ THEN BEGIN 596 // from: 595.0
  SAY #76190 /* ~The circle should contain more summoning stones.~ [OH76190] */
  IF ~~ THEN REPLY #76191 /* ~They can't have gone far. Yarrow's let nothing escape the gorge since the demon broke free.~ */ GOTO 606
  IF ~~ THEN REPLY #76192 /* ~Looks like it's missing one, two... three of them.~ */ GOTO 597
  IF ~~ THEN REPLY #76193 /* ~It appears Azothet has led you astray.~ */ GOTO 605
  IF ~  OR(3)
PartyHasItem("scrl63")
HaveSpellParty(CLERIC_RAISE_DEAD)
HaveSpellParty(CLERIC_RESURRECTION)
~ THEN REPLY #76194 /* ~Perhaps the corpse can tell us where to find them.~ */ EXIT
END

IF ~~ THEN BEGIN 597 // from: 596.1
  SAY #76195 /* ~Curse me for a fool! Azothet betrayed me!~ [OH76195] */
  IF ~~ THEN REPLY #76196 /* ~Calm yourself, Dorn. There are other possibilities.~ */ GOTO 598
  IF ~~ THEN REPLY #76197 /* ~Curse me for a fool. I followed you into this place.~ */ GOTO 600
  IF ~~ THEN REPLY #76198 /* ~It certainly looks that way.~ */ GOTO 603
END

IF ~~ THEN BEGIN 598 // from: 597.0
  SAY #76199 /* ~Such as?~ [OH76199] */
  IF ~~ THEN REPLY #76200 /* ~The gorge is far from empty. Any number of creatures could have purloined the stones.~ */ GOTO 599
END

IF ~~ THEN BEGIN 599 // from: 598.0
  SAY #76201 /* ~Hrmm. You may be right.~ [OH76201] */
  IF ~~ THEN REPLY #76202 /* ~And if I am? If one or more of the inhabitants of the gorge have the missing stones?~ */ GOTO 609
END

IF ~~ THEN BEGIN 600 // from: 597.1
  SAY #76203 /* ~You blame me for this?~ [OH76203] */
  IF ~~ THEN REPLY #76204 /* ~I blame no one but myself for the messes I get in.~ */ GOTO 603
  IF ~~ THEN REPLY #76205 /* ~I would if I didn't think doing so would earn me a sword through the gut.~ */ GOTO 604
  IF ~  CheckStatGT(Player1,14,STR)
CheckStatGT(Player1,13,CHR)
~ THEN REPLY #76206 /* ~Who else would I blame? Ur-Gothoz? Azothet? They didn't bid me join them on a fool's errand.~ */ GOTO 601
  IF ~  OR(2)
!CheckStatGT(Player1,14,STR)
!CheckStatGT(Player1,13,CHR)
~ THEN REPLY #76206 /* ~Who else would I blame? Ur-Gothoz? Azothet? They didn't bid me join them on a fool's errand.~ */ GOTO 602
END

IF ~~ THEN BEGIN 601 // from: 600.2
  SAY #76207 /* ~We'll get nowhere quarreling amongst ourselves. We must explore the gorge—find the missing stones.~ [OH76207] */
  IF ~~ THEN REPLY #76208 /* ~Agreed. It's not like leaving's an option at this point.~ */ EXIT
END

IF ~~ THEN BEGIN 602 // from: 600.3
  SAY #76209 /* ~Nor did they bid you die on one, but die you shall!~ [OH76209] */
  IF ~~ THEN DO ~SetGlobal("OHD_PLOT","GLOBAL",-1)
SetGlobal("KICKEDOUT","LOCALS",1)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
ActionOverride("DORN",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 603 // from: 600.0 597.2
  SAY #76210 /* ~It's possible Azothet didn't deliberately send us to our doom.~ [OH76210] */
  IF ~~ THEN REPLY #76211 /* ~Anything's possible.~ */ GOTO 606
END

IF ~~ THEN BEGIN 604 // from: 600.1
  SAY #76212 /* ~You choose a wise course.~ [OH76212] */
  IF ~~ THEN REPLY #76213 /* ~Better late than never.~ */ GOTO 606
END

IF ~~ THEN BEGIN 605 // from: 596.2 595.2
  SAY #76214 /* ~I never trusted the crone... But there are other possibilities.~ [OH76214] */
  IF ~~ THEN GOTO 606
END

IF ~~ THEN BEGIN 606 // from: 605.0 604.0 603.0 596.0 595.1
  SAY #76215 /* ~Perhaps the tanar'ri took the stones to prevent itself from being forced back into the Abyss.~ [OH76215] */
  IF ~~ THEN REPLY #76216 /* ~Other creatures make their home in this vile pit. Maybe they can help us?~ */ GOTO 608
  IF ~~ THEN REPLY #76217 /* ~Either that, or some of the other things down here got hold of them.~ */ GOTO 610
  IF ~~ THEN REPLY #76218 /* ~That's what I'd do.~ */ GOTO 607
END

IF ~~ THEN BEGIN 607 // from: 606.2
  SAY #76219 /* ~As would I.~ [OH76219] */
  IF ~~ THEN REPLY #76220 /* ~It appears we must find the tanar'ri.~ */ GOTO 611
END

IF ~~ THEN BEGIN 608 // from: 606.0
  SAY #76221 /* ~We'll make them help us.~ [OH76221] */
  IF ~~ THEN REPLY #76222 /* ~Let's try asking them first.~ */ GOTO 612
  IF ~~ THEN REPLY #76223 /* ~If they refuse us, they will die.~ */ GOTO 609
END

IF ~~ THEN BEGIN 609 // from: 608.1 599.0
  SAY #76224 /* ~Your understanding of the correct application of power is admirable.~ [OH76224] */
  IF ~~ THEN REPLY #76225 /* ~There's much to admire about me.~ */ GOTO 611
  IF ~~ THEN REPLY #76226 /* ~When you've got it, flaunt it over the heads of your enemies until they're lying in battered and bloody heaps.~ */ GOTO 614
  IF ~~ THEN REPLY #76227 /* ~As is yours. Let's introduce this pit to its new masters.~ */ EXIT
END

IF ~~ THEN BEGIN 610 // from: 606.1
  SAY #76228 /* ~The stones must still be here somewhere.~ [OH76228] */
  IF ~~ THEN REPLY #76229 /* ~Yarrow would never let them leave.~ */ GOTO 611
END

IF ~~ THEN BEGIN 611 // from: 610.0 609.0 607.0
  SAY #76230 /* ~Very well. We'll scour every inch of this gorge till we find the stones.~ [OH76230] */
  IF ~~ THEN REPLY #76231 /* ~We could just find the tanar'ri, kill it, and leave.~ */ GOTO 615
  IF ~~ THEN REPLY #76232 /* ~Sounds like fun.~ */ GOTO 613
  IF ~  OR(3)
PartyHasItem("scrl63")
HaveSpellParty(CLERIC_RAISE_DEAD)
HaveSpellParty(CLERIC_RESURRECTION)
~ THEN REPLY #76233 /* ~An impossible task. There must be an easier way.~ */ DO ~AddJournalEntry(90349,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 612 // from: 608.0
  SAY #76234 /* ~If you insist, we'll let them think they have a choice. But one way or another, I will have the answers I seek.~ [OH76234] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 613 // from: 611.1
  SAY #76235 /* ~It's not like we've any other option.~ [OH76235] */
  IF ~~ THEN REPLY #76236 /* ~What you say is true. And also terribly depressing. Well, let's get on with it, then.~ */ DO ~AddJournalEntry(90348,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 614 // from: 609.1
  SAY #76237 /* ~Hah! I admire your spirit, <CHARNAME>. You make good company for one such as me.~ [OH76237] */
  IF ~~ THEN REPLY #76238 /* ~The gorge awaits.~ */ EXIT
END

IF ~~ THEN BEGIN 615 // from: 611.0
  SAY #76239 /* ~And lose my chance to rid myself of Ur-Gothoz? No. We'll find the tanar'ri and take its stygian blade, to be sure. But only for use in the ritual.~ [OH76239] */
  IF ~  CheckStatGT(Player1,13,STR)
CheckStatGT(Player1,13,CHR)
~ THEN REPLY #76240 /* ~This fool's quest of yours will be both our ends.~ */ GOTO 617
  IF ~  OR(2)
!CheckStatGT(Player1,13,STR)
!CheckStatGT(Player1,13,CHR)
~ THEN REPLY #76240 /* ~This fool's quest of yours will be both our ends.~ */ GOTO 618
  IF ~~ THEN REPLY #76241 /* ~Well said. I knew you'd see it my way.~ */ GOTO 616
END

IF ~~ THEN BEGIN 616 // from: 615.2
  SAY #76242 /* ~I see it our way. Let's waste no more time in this place.~ [OH76242] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 617 // from: 615.0
  SAY #76243 /* ~You'll see how foolish my quest is when we've got the summoning stones and the abyssal blade.~ [OH76243] */
  IF ~~ THEN REPLY #76244 /* ~I can't wait. Let's go see what the gorge has to offer us.~ */ EXIT
END

IF ~~ THEN BEGIN 618 // from: 615.1
  SAY #76245 /* ~I may be on a fool's quest, but your fool's tongue has sealed your doom!~ [OH76245] */
  IF ~~ THEN DO ~AddJournalEntry(90350,INFO)
SetGlobal("OHD_PLOT","GLOBAL",-1)
SetGlobal("KICKEDOUT","LOCALS",1)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
ActionOverride("DORN",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 619 // from: 622.1
  SAY #76250 /* ~Your circle is incomplete, druid. Where are the summoning stones?~ [OH76250] */
  IF ~~ THEN REPLY #76253 /* ~I seek your missing summoning stones.~ */ EXTERN ~OHDVERN~ 11
  IF ~~ THEN REPLY #76254 /* ~I'll get back to you on that.~ */ EXIT
  IF ~  CheckStatGT(Player1,13,STR)
CheckStatGT(Player1,13,CHR)
~ THEN REPLY #76255 /* ~If you wish to continue breathing, you'll tell me where to find the stones to complete your summoning circle.~ */ EXTERN ~OHDVERN~ 8
  IF ~  OR(2)
!CheckStatGT(Player1,13,STR)
!CheckStatGT(Player1,13,CHR)
~ THEN REPLY #76255 /* ~If you wish to continue breathing, you'll tell me where to find the stones to complete your summoning circle.~ */ EXTERN ~OHDVERN~ 6
END

IF ~~ THEN BEGIN 620 // from:
  SAY #76267 /* ~Then return to the Hell from whence you came!~ [OH76267] */
  IF ~~ THEN DO ~AddJournalEntry(76266,INFO)
ActionOverride("ohdvern",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 621 // from:
  SAY #76273 /* ~Don't play games with me, druid. Where are the stones of summoning?~ [OH76273] */
  IF ~~ THEN EXTERN ~OHDVERN~ 11
END

IF ~~ THEN BEGIN 622 // from:
  SAY #76278 /* ~You came here willingly, <CHARNAME>. No one put a sword to your throat.~ [OH76278] */
  IF ~~ THEN REPLY #76279 /* ~I came here willingly, and I'll leave the same way—the sooner, the better. Now, druid, where can we find the circle's stones?~ */ EXTERN ~OHDVERN~ 11
  IF ~~ THEN REPLY #76280 /* ~I sort of wish someone had. Then I'd have an excuse.~ */ GOTO 619
  IF ~~ THEN REPLY #76281 /* ~I came here seeking power and fortune. Thus far, I've been disappointed.~ */ GOTO 623
END

IF ~~ THEN BEGIN 623 // from: 622.2
  SAY #76284 /* ~I share your disappointment, but trust our current circumstances are but a fleeting setback. Now, druid—where are the summoning stones?~ [OH76284] */
  IF ~~ THEN EXTERN ~OHDVERN~ 11
END

IF ~~ THEN BEGIN 624 // from:
  SAY #76301 /* ~He died.~ [OH76301] */
  IF ~~ THEN REPLY #76302 /* ~Obviously. But he might have done something between opening the portal and dying.~ */ GOTO 625
END

IF ~~ THEN BEGIN 625 // from: 624.0
  SAY #76303 /* ~And what if he did? All that matters now is where we can find the stones.~ [OH76303] */
  IF ~~ THEN REPLY #76304 /* ~We'll find them faster if you let him finish his story. Go on, druid.~ */ EXTERN ~OHDVERN~ 16
END

IF ~~ THEN BEGIN 626 // from:
  SAY #76311 /* ~The Abyss take you both! Enough stories—tell us where we can find the stones!~ [OH76311] */
  IF ~~ THEN EXTERN ~OHDVERN~ 23
END

IF ~~ THEN BEGIN 627 // from:
  SAY #76330 /* ~Tell us where we can find the stones, druid, or I'll return you to the Hell from whence you came!~ [OH76330] */
  IF ~  CheckStatGT(Player1,13,STR)
CheckStatGT(Player1,13,CHR)
~ THEN REPLY #76331 /* ~Dorn here is clearly another matter.~ */ EXTERN ~OHDVERN~ 25
  IF ~  OR(2)
!CheckStatGT(Player1,13,STR)
!CheckStatGT(Player1,13,CHR)
~ THEN REPLY #76331 /* ~Dorn here is clearly another matter.~ */ EXTERN ~OHDVERN~ 6
END

IF ~~ THEN BEGIN 628 // from:
  SAY #76365 /* ~I weary of this druid. Come, <CHARNAME>. The sooner we collect the stones, the sooner we can be free of this place.~ [OH76365] */
  IF ~~ THEN DO ~AddJournalEntry(90346,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 629 // from:
  SAY #76378 /* ~The nereid's mind is broken. We've no time for this nonsense.~ [OH76378] */
  IF ~~ THEN REPLY #76379 /* ~She may yet be able to help us.~ */ EXTERN ~OHDWNTRB~ 7
  IF ~~ THEN REPLY #76380 /* ~You're right. Perhaps she'll be more forthcoming some other time.~ */ EXIT
END

IF ~~ THEN BEGIN 630 // from:
  SAY #76386 /* ~I'll gut you like a fish!~ [OH76386] */
  IF ~~ THEN EXTERN ~OHDWNTRB~ 6
END

IF ~~ THEN BEGIN 631 // from:
  SAY #76397 /* ~Give us the stones, nereid.~ [OH76397] */
  IF ~~ THEN EXTERN ~OHDWNTRB~ 10
END

IF ~~ THEN BEGIN 632 // from:
  SAY #76398 /* ~We've wasted enough time with this nereid's drivel. Where can we find the stones?~ [OH76398] */
  IF ~~ THEN EXTERN ~OHDWNTRB~ 10
END

IF ~~ THEN BEGIN 633 // from:
  SAY #76415 /* ~Tell us where to find the stones, or I swear your stream will run warm and red with your blood!~ [OH76415] */
  IF ~~ THEN REPLY #76416 /* ~You'd better tell him, Winterbrook. You've suffered enough in this cursed place. I'd not see you endure more.~ */ EXTERN ~OHDWNTRB~ 26
  IF ~~ THEN REPLY #76417 /* ~Do nereids bleed red?~ */ GOTO 635
  IF ~  OR(2)
CheckStatLT(Player1,14,STR)
CheckStatLT(Player1,15,CHR)
~ THEN REPLY #76418 /* ~Listen to the half-orc, nereid. My patience is at an end.~ */ EXTERN ~OHDWNTRB~ 13
  IF ~  CheckStatGT(Player1,13,STR)
CheckStatGT(Player1,14,CHR)
~ THEN REPLY #76418 /* ~Listen to the half-orc, nereid. My patience is at an end.~ */ EXTERN ~OHDWNTRB~ 16
END

IF ~~ THEN BEGIN 634 // from:
  SAY #76422 /* ~You should have given us the stones, nereid. You've brought this on yourself!~ [OH76422] */
  IF ~~ THEN DO ~SetGlobal("OHD_WINTERB_HOSTILE","OH5200",1)
Attack("ohdwntrb")
ActionOverride("ohdwntrb",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 635 // from: 633.1
  SAY #76423 /* ~In a moment, you'll have an answer!~ [OH76423] */
  IF ~~ THEN DO ~SetGlobal("OHD_WINTERB_HOSTILE","OH5200",1)
Attack("ohdwntrb")
ActionOverride("ohdwntrb",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 636 // from:
  SAY #76425 /* ~She mocks us, <CHARNAME>. You cannot allow this insolence to go unpunished.~ [OH76425] */
  IF ~~ THEN REPLY #76426 /* ~Nor shall I.~ */ EXTERN ~OHDWNTRB~ 61
END

IF ~~ THEN BEGIN 637 // from: 645.2
  SAY #76432 /* ~Finally!~ [OH76432] */
  IF ~~ THEN EXTERN ~OHDWNTRB~ 61
END

IF ~~ THEN BEGIN 638 // from:
  SAY #76441 /* ~This discussion makes a mockery of our quest. Where is the stone, woman?~ [OH76441] */
  IF ~~ THEN EXTERN ~OHDWNTRB~ 19
END

IF ~~ THEN BEGIN 639 // from:
  SAY #76462 /* ~What? I'm looking at her like I would anything else.~ [OH76462] */
  IF ~~ THEN REPLY #76463 /* ~Exactly. It's unnerving.~ */ GOTO 640
END

IF ~~ THEN BEGIN 640 // from: 639.0
  SAY #76464 /* ~Well, where would you have me look?~ [OH76464] */
  IF ~~ THEN REPLY #76465 /* ~Elsewhere. Just let me talk to Winterbrook for a moment or two.~ */ GOTO 641
END

IF ~~ THEN BEGIN 641 // from: 640.0
  SAY #76466 /* ~You'll have me closing my eyes next.~ [OH76466] */
  IF ~~ THEN REPLY #76467 /* ~Hopefully, it won't come to that. Winterbrook, you were telling us about the summoning stones?~ */ EXTERN ~OHDWNTRB~ 24
END

IF ~~ THEN BEGIN 642 // from:
  SAY #76470 /* ~Ice melts, blood dries, but steel is eternal!~ [OH76470] */
  IF ~~ THEN EXTERN ~OHDWNTRB~ 61
END

IF ~~ THEN BEGIN 643 // from:
  SAY #76478 /* ~Servant?~ [OH76478] */
  IF ~~ THEN REPLY #76479 /* ~Please, Winterbrook. Without the stone, Resurrection Gorge is doomed.~ */ EXTERN ~OHDWNTRB~ 30
  IF ~  CheckStatLT(Player1,14,CHR)
~ THEN REPLY #76480 /* ~I'll admit, any picture with Dorn in it will not be a portrait of the entirely trustworthy. But in this instance, I beseech you, for your and the sake of all who live in or near the gorge, please, give us the stone. ~ */ GOTO 644
  IF ~  CheckStatGT(Player1,13,CHR)
~ THEN REPLY #76480 /* ~I'll admit, any picture with Dorn in it will not be a portrait of the entirely trustworthy. But in this instance, I beseech you, for your and the sake of all who live in or near the gorge, please, give us the stone. ~ */ EXTERN ~OHDWNTRB~ 38
  IF ~  CheckStatLT(Player1,12,CHR)
!Global("OHD_spared_xachrimos","GLOBAL",1)
~ THEN REPLY #76481 /* ~What you believe is irrelevant. We need the stone. Give it to us or I'll let Dorn have his way with you.~ */ EXTERN ~OHDWNTRB~ 49
  IF ~  CheckStatLT(Player1,12,CHR)
Global("OHD_spared_xachrimos","GLOBAL",1)
~ THEN REPLY #76481 /* ~What you believe is irrelevant. We need the stone. Give it to us or I'll let Dorn have his way with you.~ */ EXTERN ~OHDWNTRB~ 63
  IF ~  CheckStatGT(Player1,11,CHR)
~ THEN REPLY #76481 /* ~What you believe is irrelevant. We need the stone. Give it to us or I'll let Dorn have his way with you.~ */ EXTERN ~OHDWNTRB~ 38
END

IF ~~ THEN BEGIN 644 // from: 643.1
  SAY #88475 /* ~Servant?!~ [OH88475] */
  IF ~~ THEN EXTERN ~OHDWNTRB~ 36
END

IF ~~ THEN BEGIN 645 // from:
  SAY #76516 /* ~Have you lost your mind, <CHARNAME>? Are you truly going to argue with this madwoman over the preferences of an inanimate object?~ [OH76516] */
  IF ~  CheckStatLT(Player1,14,CHR)
~ THEN REPLY #76517 /* ~He's got a point, Winterbrook. We need the stone to save the gorge. Will you help us?~ */ EXTERN ~OHDWNTRB~ 49
  IF ~  CheckStatGT(Player1,13,CHR)
~ THEN REPLY #76517 /* ~He's got a point, Winterbrook. We need the stone to save the gorge. Will you help us?~ */ EXTERN ~OHDWNTRB~ 46
  IF ~~ THEN REPLY #76518 /* ~No. I'm done talking.~ */ GOTO 637
END

IF ~~ THEN BEGIN 646 // from:
  SAY #76541 /* ~My blade grows uneasy in its sheath, <CHARNAME>. How much longer are we going to indulge this madwoman's lunacy?~ [OH76541] */
  IF ~  CheckStatLT(Player1,15,CHR)
!Global("UHD_spared_xachrimos","GLOBAL",1)
~ THEN REPLY #76542 /* ~Please, Winterbrook. We need your help. Give us the stone.~ */ EXTERN ~OHDWNTRB~ 49
  IF ~  CheckStatLT(Player1,15,CHR)
Global("OHD_spared_xachrimos","GLOBAL",1)
~ THEN REPLY #76542 /* ~Please, Winterbrook. We need your help. Give us the stone.~ */ EXTERN ~OHDWNTRB~ 63
  IF ~  CheckStatGT(Player1,14,CHR)
~ THEN REPLY #76542 /* ~Please, Winterbrook. We need your help. Give us the stone.~ */ EXTERN ~OHDWNTRB~ 46
  IF ~~ THEN REPLY #76543 /* ~No longer. My patience with you is at an end, nereid.~ */ EXTERN ~OHDWNTRB~ 61
END

IF ~~ THEN BEGIN 647 // from:
  SAY #76549 /* ~Curse you, <CHARNAME>!~ [OH76549] */
  IF ~~ THEN EXTERN ~OHDWNTRB~ 61
END

IF ~~ THEN BEGIN 648 // from:
  SAY #76560 /* ~"Be reasonable"? You're pathetic, <CHARNAME>. ~ [OH76560] */
  IF ~~ THEN REPLY #76561 /* ~The nereid's suffered much, but I believe there's still a spark of her former self that might be willing to assist us.~ */ EXTERN ~OHDWNTRB~ 50
  IF ~  OR(2)
CheckStatLT(Player1,15,STR)
CheckStatLT(Player1,14,CHR)
~ THEN REPLY #76562 /* ~I've been called worse by better than you, Dorn.~ */ GOTO 660
  IF ~  CheckStatGT(Player1,14,STR)
CheckStatGT(Player1,13,CHR)
~ THEN REPLY #76562 /* ~I've been called worse by better than you, Dorn.~ */ GOTO 649
  IF ~  OR(2)
CheckStatLT(Player1,15,STR)
CheckStatLT(Player1,14,CHR)
~ THEN REPLY #76563 /* ~Say that again, Dorn. Say it again and see what reward it gets you.~ */ EXTERN ~OHDWNTRB~ 54
  IF ~  CheckStatGT(Player1,14,STR)
CheckStatGT(Player1,13,CHR)
~ THEN REPLY #76563 /* ~Say that again, Dorn. Say it again and see what reward it gets you.~ */ GOTO 651
END

IF ~~ THEN BEGIN 649 // from: 648.2
  SAY #76565 /* ~You seriously believe this wretched creature offers anything but frustration, obfuscation, and distraction?~ [OH76565] */
  IF ~~ THEN REPLY #75121 /* ~I do.~ */ EXTERN ~OHDWNTRB~ 51
  IF ~~ THEN REPLY #76566 /* ~Not really, no.~ */ GOTO 650
  IF ~~ THEN REPLY #76567 /* ~I believe she'll offer us what we want, one way or the other. Additionally, I'd like to say that the vocabulary book you picked up has really been making a difference.~ */ GOTO 651
END

IF ~~ THEN BEGIN 650 // from: 649.1
  SAY #76572 /* ~Then why do you allow her to distract us from our goal?~ [OH76572] */
  IF ~~ THEN REPLY #76573 /* ~I had hoped she might aid us in reaching it.~ */ GOTO 652
  IF ~~ THEN REPLY #76574 /* ~Hope springs eternal in the <PRO_RACE> breast.~ */ GOTO 651
  IF ~~ THEN REPLY #76575 /* ~She'll distract us no longer.~ */ EXTERN ~OHDWNTRB~ 61
END

IF ~~ THEN BEGIN 651 // from: 650.1 649.2 648.4
  SAY #76576 /* ~You must know there can be no reasoning with this madwoman.~ [OH76576] */
  IF ~~ THEN REPLY #76577 /* ~That's no reason not to try.~ */ GOTO 652
  IF ~~ THEN REPLY #76578 /* ~You're right. Take your sword and talk some sense into her.~ */ EXTERN ~OHDWNTRB~ 61
END

IF ~~ THEN BEGIN 652 // from: 651.0 650.0
  SAY #76579 /* ~You're madder than she is if you think she'll willingly help us.~ [OH76579] */
  IF ~~ THEN REPLY #76580 /* ~I seek only to prevent unnecessary bloodshed—either hers or ours.~ */ GOTO 654
  IF ~~ THEN REPLY #76581 /* ~I am here in the shadows of Resurrection Gorge, so there's certainly an argument to be made that that's the case.~ */ GOTO 653
  IF ~  OR(2)
CheckStatLT(Player1,14,STR)
CheckStatLT(Player1,14,CHR)
~ THEN REPLY #76582 /* ~Willingly or not, she will help us. Won't you, Winterbrook?~ */ EXTERN ~OHDWNTRB~ 53
  IF ~  CheckStatGT(Player1,13,STR)
CheckStatGT(Player1,13,CHR)
~ THEN REPLY #76582 /* ~Willingly or not, she will help us. Won't you, Winterbrook?~ */ EXTERN ~OHDWNTRB~ 46
END

IF ~~ THEN BEGIN 653 // from: 659.0 652.1
  SAY #76583 /* ~Enough of this pointless nonsense! If she won't hand over the stone, I'll simply have to take it!~ [OH76583] */
  IF ~~ THEN EXTERN ~OHDWNTRB~ 61
END

IF ~~ THEN BEGIN 654 // from: 652.0
  SAY #76584 /* ~"Unnecessary bloodshed"? What happened to you, <CHARNAME>? I believed you a being of strength and power, a worthy ally. Instead you play dither with fools.~ [OH76584] */
  IF ~  CheckStatLT(Player1,14,STR)
~ THEN REPLY #76585 /* ~It was your infatuation with strength and power that brought us here, Dorn. I may share your fate, but I'll not repeat your mistakes.~ */ GOTO 656
  IF ~  CheckStatGT(Player1,13,STR)
~ THEN REPLY #76585 /* ~It was your infatuation with strength and power that brought us here, Dorn. I may share your fate, but I'll not repeat your mistakes.~ */ GOTO 655
  IF ~~ THEN REPLY #76586 /* ~You'll see your belief justified with blood, half-orc!~ */ GOTO 661
  IF ~~ THEN REPLY #76587 /* ~You're right, Dorn. But the dithering is done.~ */ EXTERN ~OHDWNTRB~ 61
END

IF ~~ THEN BEGIN 655 // from: 654.1
  SAY #76588 /* ~Keep talking, <PRO_RACE>, and you'll experience a wholly different fate, I promise you that.~ [OH76588] */
  IF ~  CheckStatLT(Player1,16,CHR)
~ THEN REPLY #76589 /* ~We'll deal with this another time. Winterbrook. The stone. We need it.~ */ EXTERN ~OHDWNTRB~ 57
  IF ~  CheckStatGT(Player1,15,CHR)
~ THEN REPLY #76589 /* ~We'll deal with this another time. Winterbrook. The stone. We need it.~ */ EXTERN ~OHDWNTRB~ 46
END

IF ~~ THEN BEGIN 656 // from: 654.0
  SAY #76590 /* ~You'll not live to repeat the mistake you just made.~ [OH76590] */
  IF ~~ THEN GOTO 661
END

IF ~~ THEN BEGIN 657 // from:
  SAY #76593 /* ~You had your chance with <CHARNAME>, nereid. Now you'll see how Dorn Il-Khan deals with those who would stand 'twixt him and his goals.~ [OH76593] */
  IF ~~ THEN EXTERN ~OHDWNTRB~ 61
END

IF ~~ THEN BEGIN 658 // from:
  SAY #76609 /* ~Fortunately, I've no such misgivings.~ [OH76609] */
  IF ~~ THEN EXTERN ~OHDWNTRB~ 61
END

IF ~~ THEN BEGIN 659 // from:
  SAY #76610 /* ~A joke? You waste our time telling jokes to this pathetic witch?~ [OH76610] */
  IF ~~ THEN GOTO 653
END

IF ~~ THEN BEGIN 660 // from: 648.1
  SAY #76615 /* ~Better than me?~ [OH76615] */
  IF ~~ THEN GOTO 661
END

IF ~~ THEN BEGIN 661 // from: 660.0 656.0 654.2
  SAY #76616 /* ~I'll see your guts on the ground, <CHARNAME>.~ [OH76616] */
  IF ~~ THEN DO ~SetGlobal("OHD_PLOT","GLOBAL",-1)
SetGlobal("KICKEDOUT","LOCALS",1)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
ActionOverride("DORN",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 662 // from:
  SAY #76618 /* ~The stream can have my toes—I'll have your head!~ [OH76618] */
  IF ~~ THEN DO ~SetGlobal("OHD_WINTERB_HOSTILE","OH5200",1)
Attack("ohdwntrb")
ActionOverride("ohdwntrb",Enemy())
ActionOverride("ohdwntrb",Attack([PC]))
~ EXIT
END

IF WEIGHT #39 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("OHD_fil_dialog","OH5200",1)
~ THEN BEGIN 663 // from:
  SAY #76628 /* ~Faerie dragons. This will be aggravating.~ [OH76628] */
  IF ~~ THEN REPLY #76629 /* ~They're harmless.~ */ EXTERN ~OHDTMFIL~ 1
  IF ~~ THEN REPLY #76630 /* ~Come on, they're cute. That one has a puffy tail!~ */ EXTERN ~OHDTMFIL~ 1
  IF ~~ THEN REPLY #76631 /* ~You're right. Just looking at them gives me a headache.~ */ EXTERN ~OHDTMFIL~ 0
END

IF ~~ THEN BEGIN 664 // from:
  SAY #76713 /* ~Die, dragon!~ [OH76713] */
  IF ~~ THEN DO ~SetGlobal("OHD_fil_hostile","OH5200",2)
ActionOverride("ohdtmfil",Enemy())
Attack("ohdtmfil")
~ EXIT
END

IF ~~ THEN BEGIN 665 // from:
  SAY #76767 /* ~I'll strip the scales from your body, you featherless cockatiel!~ [OH76767] */
  IF ~~ THEN DO ~SetGlobal("OHD_fil_hostile","OH5200",1)
ActionOverride("ohdtmfil",Enemy())
Attack("ohdtmfil")
~ EXIT
END

IF ~~ THEN BEGIN 666 // from:
  SAY #76787 /* ~Cease your endless blathering, <CHARNAME>! We're not here to discuss creature comforts with a dragon! We need to find the summoning stones!~ [OH76787] */
  IF ~~ THEN EXTERN ~OHDTMFIL~ 47
END

IF ~~ THEN BEGIN 667 // from:
  SAY #76820 /* ~We shall be rewarded for it.~ [OH76820] */
  IF ~~ THEN REPLY #76821 /* ~I hope you're right, Dorn. For both our sakes.~ */ GOTO 670
  IF ~~ THEN REPLY #76822 /* ~Your optimism is as impressive as it is inexplicable.~ */ GOTO 671
  IF ~  OR(2)
CheckStatLT(Player1,15,STR)
CheckStatLT(Player1,14,CHR)
~ THEN REPLY #76823 /* ~It better, Dorn. For your sake.~ */ GOTO 669
  IF ~  CheckStatGT(Player1,14,STR)
CheckStatGT(Player1,13,CHR)
~ THEN REPLY #76823 /* ~It better, Dorn. For your sake.~ */ GOTO 668
END

IF ~~ THEN BEGIN 668 // from: 667.3
  SAY #76824 /* ~Your threats ring hollow in this place, <CHARNAME>. Let us do what we came here to do. If either of us are dissatisfied with the result, we can take the matter up then.~ [OH76824] */
  IF ~~ THEN REPLY #76825 /* ~Agreed. Dragon, what do you know of the stones?~ */ EXTERN ~OHDTMFIL~ 43
END

IF ~~ THEN BEGIN 669 // from: 676.2 676.0 675.0 672.3 667.2
  SAY #76826 /* ~You go too far, <PRO_RACE>. Here is your reward!~ [OH76826] */
  IF ~~ THEN DO ~SetGlobal("OHD_PLOT","GLOBAL",-1)
SetGlobal("KICKEDOUT","LOCALS",1)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
ActionOverride("DORN",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 670 // from: 677.0 667.0
  SAY #76827 /* ~What can you tell us of the summoning stones, dragon?~ [OH76827] */
  IF ~~ THEN EXTERN ~OHDTMFIL~ 52
END

IF ~~ THEN BEGIN 671 // from: 667.1
  SAY #76828 /* ~I will prevail against whatever this foul pit throws at us, of that I am certain. Can you not say the same, <CHARNAME>?~ [OH76828] */
  IF ~~ THEN REPLY #76829 /* ~The only certainty I have is that I shall do my best to conquer the challenges ahead.~ */ GOTO 672
  IF ~~ THEN REPLY #76830 /* ~I can say many things, Dorn, but for now I'd rather listen to Fil tell us about the stones.~ */ EXTERN ~OHDTMFIL~ 52
  IF ~~ THEN REPLY #76831 /* ~Your certainty is but a shadow of my own, Dorn. Nothing can thwart us, so long as we work together.~ */ GOTO 673
END

IF ~~ THEN BEGIN 672 // from: 671.0
  SAY #76832 /* ~"I'll do my best"? Only cowards and failures talk like that. Which are you, <CHARNAME>? ~ [OH76832] */
  IF ~  OR(2)
CheckStatLT(Player1,15,STR)
CheckStatLT(Player1,14,CHR)
~ THEN REPLY #76833 /* ~Neither, at least not yet. But only a fool ignores the possibility of failure.~ */ GOTO 675
  IF ~  CheckStatGT(Player1,14,STR)
CheckStatGT(Player1,13,CHR)
~ THEN REPLY #76833 /* ~Neither, at least not yet. But only a fool ignores the possibility of failure.~ */ GOTO 674
  IF ~~ THEN REPLY #76834 /* ~What you call cowardice and failure I call wisdom and survival, Dorn.~ */ GOTO 676
  IF ~  OR(2)
CheckStatLT(Player1,14,STR)
CheckStatLT(Player1,13,CHR)
~ THEN REPLY #76835 /* ~Draw your blade and find out, half-orc.~ */ GOTO 669
  IF ~  CheckStatGT(Player1,13,STR)
CheckStatGT(Player1,12,CHR)
~ THEN REPLY #76835 /* ~Draw your blade and find out, half-orc.~ */ GOTO 677
END

IF ~~ THEN BEGIN 673 // from: 671.2
  SAY #76836 /* ~Hah! That's who I was looking for—someone worthy to share my victories.~ [OH76836] */
  IF ~~ THEN REPLY #76837 /* ~Your greatest victory is yet to come, Dorn. Dragon, tell us what you know of the stones.~ */ EXTERN ~OHDTMFIL~ 52
END

IF ~~ THEN BEGIN 674 // from: 672.1
  SAY #76838 /* ~The greater fool dwells upon it.~ [OH76838] */
  IF ~~ THEN REPLY #76839 /* ~We're neither of us fools. Dragon, do you know anything of the stones we seek?~ */ EXTERN ~OHDTMFIL~ 52
END

IF ~~ THEN BEGIN 675 // from: 687.2 672.0
  SAY #76840 /* ~You call me a fool?~ [OH76840] */
  IF ~~ THEN GOTO 669
END

IF ~~ THEN BEGIN 676 // from: 672.2
  SAY #76841 /* ~Your faltering rationalizations sicken me, <PRO_RACE>.~ [OH76841] */
  IF ~  OR(2)
CheckStatLT(Player1,14,STR)
CheckStatLT(Player1,13,CHR)
~ THEN REPLY #76842 /* ~No more than your pigheaded obstinacy sickens me, half-orc.~ */ GOTO 669
  IF ~  CheckStatGT(Player1,13,STR)
CheckStatGT(Player1,12,CHR)
~ THEN REPLY #76842 /* ~No more than your pigheaded obstinacy sickens me, half-orc.~ */ GOTO 677
  IF ~~ THEN REPLY #76843 /* ~I have a cure for that particularly sickness. It's a bit radical, but you clearly have little use for your ears.~ */ GOTO 669
END

IF ~~ THEN BEGIN 677 // from: 676.1 672.4
  SAY #76844 /* ~Keep talking, Bhaalspawn, and your sickness may come to an abrupt and bloody end.~ [OH76844] */
  IF ~~ THEN REPLY #76845 /* ~I look forward to it, Dorn. But if you're not of a mind to play surgeon now, let us attend to the matter at hand.~ */ GOTO 670
END

IF ~~ THEN BEGIN 678 // from:
  SAY #76846 /* ~That's no business of this dragon's or anyone else.~ [OH76846] */
  IF ~~ THEN REPLY #76847 /* ~I'm sorry, Dorn, but I believe Fil here will respond best to forthrightness.~ */ EXTERN ~OHDTMFIL~ 63
END

IF ~~ THEN BEGIN 679 // from: 681.2
  SAY #76860 /* ~Your wings won't save you from my wrath, dragon!~ [OH76860] */
  IF ~~ THEN DO ~SetGlobal("OHD_fil_hostile","OH5200",1)
ActionOverride("ohdtmfil",Enemy())
Attack("ohdtmfil")
~ EXIT
END

IF ~~ THEN BEGIN 680 // from:
  SAY #76861 /* ~My blade will open him nose-tip to tail!~ [OH76861] */
  IF ~~ THEN REPLY #86862 /* ~That's rather a bleak philosophy, don't you think?~ */ EXTERN ~OHDTMFIL~ 73
END

IF ~~ THEN BEGIN 681 // from:
  SAY #76866 /* ~You try to extort Dorn Il-Khan? I'll have your skin for boots!~ [OH76866] */
  IF ~~ THEN REPLY #76867 /* ~Calm yourself, Dorn. It's only fair that we offer something in exchange for the stones.~ */ DO ~SetGlobal("OHD_extort","LOCALS",1)
~ GOTO 682
  IF ~~ THEN REPLY #76868 /* ~Come, Dorn. There's barely enough skin there to cover even one of those massive hoofs you call feet.~ */ DO ~SetGlobal("OHD_extort","LOCALS",1)
~ GOTO 683
  IF ~~ THEN REPLY #76869 /* ~Take it. This dragon's of no use to us. But a warning: I've heard faerie dragon skin is often rife with ticks.~ */ DO ~SetGlobal("OHD_extort","LOCALS",1)
~ GOTO 679
END

IF ~~ THEN BEGIN 682 // from: 681.0
  SAY #76870 /* ~Fair? You would speak to me of fair while this dragon tries to steal what's rightfully ours?~ [OH76870] */
  IF ~~ THEN EXTERN ~OHDTMFIL~ 69
END

IF ~~ THEN BEGIN 683 // from: 681.1
  SAY #76874 /* ~You call my feet big?~ [OH76874] */
  IF ~~ THEN REPLY #76875 /* ~All the better to kick people to death with, granny.~ */ EXTERN ~OHDTMFIL~ 71
  IF ~~ THEN REPLY #76876 /* ~I knew an old lady who lived in a shoe. That shoe couldn't contain your feet.~ */ EXTERN ~OHDTMFIL~ 72
  IF ~~ THEN REPLY #76877 /* ~They're large and mighty, just like the rest of you.~ */ EXTERN ~OHDTMFIL~ 71
END

IF ~~ THEN BEGIN 684 // from:
  SAY #76881 /* ~You'll find out how big when they stomp you into a crimson paste!~ [OH76881] */
  IF ~~ THEN REPLY #76882 /* ~I've seen it happen, Fil, and to bigger creatures than you. Where are the stones?~ */ EXTERN ~OHDTMFIL~ 52
END

IF ~~ THEN BEGIN 685 // from:
  SAY #76892 /* ~You'll make a fine meal, dragon.~ [OH76892] */
  IF ~~ THEN DO ~SetGlobal("OHD_fil_hostile","OH5200",1)
ActionOverride("ohdtmfil",Enemy())
Attack("ohdtmfil")
~ EXIT
END

IF ~~ THEN BEGIN 686 // from: 688.0
  SAY #76918 /* ~If you attempt to cheat us, dragon, I promise you'll regret it.~ [OH76918] */
  IF ~~ THEN EXTERN ~OHDTMFIL~ 87
END

IF ~~ THEN BEGIN 687 // from:
  SAY #76921 /* ~She said there would be some obstacles.~ [OH76921] */
  IF ~~ THEN REPLY #76922 /* ~If she hadn't promised you freedom from Ur-Gothoz, I'd say she was a mistress of understatement.~ */ GOTO 688
  IF ~~ THEN REPLY #76923 /* ~She got that right. I hope she got the bit about binding Ur-Gothoz right, too. Let's do this.~ */ EXTERN ~OHDTMFIL~ 86
  IF ~  OR(2)
CheckStatLT(Player1,14,STR)
CheckStatLT(Player1,14,CHR)
~ THEN REPLY #76924 /* ~A fallen tree is an obstacle. Bargaining with a dragonfae is foolishness. She has turned us into fools, Dorn!~ */ GOTO 675
  IF ~  CheckStatGT(Player1,13,STR)
CheckStatGT(Player1,13,CHR)
~ THEN REPLY #76924 /* ~A fallen tree is an obstacle. Bargaining with a dragonfae is foolishness. She has turned us into fools, Dorn!~ */ GOTO 688
END

IF ~~ THEN BEGIN 688 // from: 687.3 687.0
  SAY #76925 /* ~Let's find these crystals and get this over with.~ [OH76925] */
  IF ~~ THEN GOTO 686
END

IF ~~ THEN BEGIN 689 // from:
  SAY #76946 /* ~I'll tear your wings from your body, you reptilian vermin!~ [OH76946] */
  IF ~~ THEN EXTERN ~OHDTMFIL~ 95
END

IF ~~ THEN BEGIN 690 // from:
  SAY #76963 /* ~Don't be a fool, <CHARNAME>. Give the dragon the crystals now and we'll never get the stone.~ [OH76963] */
  IF ~~ THEN EXTERN ~OHDTMFIL~ 101
END

IF ~~ THEN BEGIN 691 // from: 692.2
  SAY #76992 /* ~I'll give you a Great and Magnificent death, you flapping rodent!~ [OH76992] */
  IF ~~ THEN DO ~ActionOverride("ohdtmfil",Enemy())
Attack("ohdtmfil")
~ EXIT
END

IF ~~ THEN BEGIN 692 // from:
  SAY #77004 /* ~You'll let this rodent live?~ [OH77004] */
  IF ~~ THEN REPLY #77005 /* ~Indulge your bloodlust with some other creature, Dorn. There's plenty here more worthy of your blade.~ */ EXTERN ~OHDTMFIL~ 125
  IF ~~ THEN REPLY #77006 /* ~Oh, let the dragon go, Dorn. It's irritating, but it's harmless.~ */ EXTERN ~OHDTMFIL~ 116
  IF ~~ THEN REPLY #77007 /* ~Yeah, now that I think about it, it doesn't really inspire, does it? Kill the dragon; let's see if that feels better.~ */ GOTO 691
END

IF ~~ THEN BEGIN 693 // from:
  SAY #77016 /* ~I give you a swift death, you windy snake!~ [OH77016] */
  IF ~~ THEN DO ~ActionOverride("ohdtmfil",Enemy())
Attack("ohdtmfil")
~ EXIT
END

IF ~~ THEN BEGIN 694 // from:
  SAY #77025 /* ~But my sword will go right in!~ [OH77025] */
  IF ~~ THEN DO ~ActionOverride("ohdtmfil",Enemy())
Attack("ohdtmfil")
~ EXIT
END

IF ~~ THEN BEGIN 695 // from:
  SAY #77038 /* ~I'll see you dance at the end of my blade, demon!~ [OH77038] */
  IF ~~ THEN DO ~ActionOverride("ohdxach",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 696 // from:
  SAY #77038 /* ~I'll see you dance at the end of my blade, demon!~ [OH77038] */
  IF ~~ THEN EXTERN ~OHDXACH~ 1
END

IF ~~ THEN BEGIN 697 // from:
  SAY #77045 /* ~Then pay the price!~ [OH77045] */
  IF ~~ THEN EXTERN ~OHDXACH~ 5
END

IF ~~ THEN BEGIN 698 // from:
  SAY #77051 /* ~Back to the Abyss with you, tanar'ri!~ [OH77051] */
  IF ~~ THEN EXTERN ~OHDXACH~ 1
END

IF ~~ THEN BEGIN 699 // from: 707.2 707.0 701.3 701.1
  SAY #77057 /* ~If he has power to offer, why wouldn't I take it?~ [OH77057] */
  IF ~~ THEN REPLY #77058 /* ~Where do I begin?~ */ GOTO 700
  IF ~~ THEN REPLY #77059 /* ~Because you're not fool enough to take a demon at its word.~ */ GOTO 706
  IF ~~ THEN REPLY #77060 /* ~Do I really need to explain this to you? Are you truly that stupid?~ */ GOTO 704
END

IF ~~ THEN BEGIN 700 // from: 699.0
  SAY #77061 /* ~Do us all a favor, and don't.~ [OH77061] */
  IF ~~ THEN EXTERN ~OHDXACH~ 9
END

IF ~~ THEN BEGIN 701 // from:
  SAY #77062 /* ~What do you have to offer me?~ [OH77062] */
  IF ~~ THEN REPLY #77063 /* ~Dorn, no! You cannot trust a tanar'ri.~ */ GOTO 705
  IF ~~ THEN REPLY #77064 /* ~Seriously? You're ready to go through this all again?~ */ GOTO 699
  IF ~  OR(2)
CheckStatLT(Player1,15,STR)
CheckStatLT(Player1,13,CHR)
~ THEN REPLY #77065 /* ~Il-Khan, you weak-minded fool!~ */ GOTO 707
  IF ~  CheckStatGT(Player1,14,STR)
CheckStatGT(Player1,12,CHR)
~ THEN REPLY #77065 /* ~Il-Khan, you weak-minded fool!~ */ GOTO 699
END

IF ~~ THEN BEGIN 702 // from:
  SAY #77067 /* ~The abyssal blade! I need that sword if I'm to bind Ur-Gothoz to my will.~ [OH77067] */
  IF ~~ THEN REPLY #77068 /* ~You'll also need the missing summoning stones.~ */ EXTERN ~OHDXACH~ 10
END

IF ~~ THEN BEGIN 703 // from:
  SAY #77072 /* ~The tanar'ri tells it true. A demon's oath, once made, cannot be broken—not by the demon, at any rate.~ [OH77072] */
  IF ~~ THEN REPLY #77073 /* ~And you'll swear an oath? You'll give us the sword and all the summoning stones you possess?~ */ EXTERN ~OHDXACH~ 12
END

IF ~~ THEN BEGIN 704 // from: 699.2
  SAY #77075 /* ~You call me stupid, <CHARNAME>?~ [OH77075] */
  IF ~~ THEN GOTO 708
END

IF ~~ THEN BEGIN 705 // from: 701.0
  SAY #77077 /* ~I trust it not at all, but I would see what it has to offer.~ [OH77077] */
  IF ~~ THEN REPLY #77078 /* ~You bargained with another demon once, and look where it got you.~ */ GOTO 706
END

IF ~~ THEN BEGIN 706 // from: 705.0 699.1
  SAY #77079 /* ~It got me the power I needed to slay my foes and triumph over all who would oppose me.~ [OH77079] */
  IF ~~ THEN EXTERN ~OHDXACH~ 14
END

IF ~~ THEN BEGIN 707 // from: 701.2
  SAY #77080 /* ~You overstep your place, <PRO_RACE>.~ [OH77080] */
  IF ~~ THEN REPLY #77081 /* ~Only to bring you to your senses. You can't believe this demon means you anything but harm.~ */ GOTO 699
  IF ~  CheckStatLT(Player1,14,STR)
CheckStatLT(Player1,15,CHR)
~ THEN REPLY #77082 /* ~You overstep sanity, half-orc.~ */ GOTO 708
  IF ~  CheckStatGT(Player1,13,STR)
CheckStatGT(Player1,14,CHR)
~ THEN REPLY #77082 /* ~You overstep sanity, half-orc.~ */ GOTO 699
  IF ~~ THEN REPLY #77083 /* ~You dare to tell me my place? I'll stuff your tongue down your miserable throat!~ */ GOTO 708
END

IF ~~ THEN BEGIN 708 // from: 707.3 707.1 704.0
  SAY #77084 /* ~You brought this on yourself!~ [OH77084] */
  IF ~~ THEN DO ~SetGlobal("OHD_PLOT","GLOBAL",-1)
SetGlobal("KICKEDOUT","LOCALS",1)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
ActionOverride("DORN",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 709 // from:
  SAY #77096 /* ~Wait, <CHARNAME>. I would hear what he has to say.~ [OH77096] */
  IF ~~ THEN EXTERN ~OHDXACH~ 18
END

IF ~~ THEN BEGIN 710 // from:
  SAY #77098 /* ~Compliments mean nothing to me, demon. You said you had wealth to offer.~ [OH77098] */
  IF ~~ THEN REPLY #77099 /* ~And you listened to him.~ */ EXTERN ~OHDXACH~ 24
END

IF ~~ THEN BEGIN 711 // from:
  SAY #77102 /* ~<CHARNAME>, a word?~ [OH77102] */
  IF ~~ THEN GOTO 712
END

IF ~~ THEN BEGIN 712 // from: 711.0
  SAY #77103 /* ~I'll need his sword to perform the ritual.~ [OH77103] */
  IF ~~ THEN REPLY #77104 /* ~Xachrimos! We'll also need your sword.~ */ EXTERN ~OHDXACH~ 21
END

IF ~~ THEN BEGIN 713 // from: 715.2
  SAY #77116 /* ~Die, tanar'ri! Die, that I may have your power!~ [OH77116] */
  IF ~~ THEN DO ~ActionOverride("ohdxach",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 714 // from:
  SAY #77129 /* ~How much gold?~ [OH77129] */
  IF ~~ THEN EXTERN ~OHDXACH~ 27
END

IF ~~ THEN BEGIN 715 // from:
  SAY #77131 /* ~I like the sound of that.~ [OH77131] */
  IF ~~ THEN REPLY #77132 /* ~Just remember whose mouth the sound is coming from.~ */ EXTERN ~OHDXACH~ 28
  IF ~~ THEN REPLY #77133 /* ~Use your head, Dorn. He plans to cheat us.~ */ EXTERN ~OHDXACH~ 29
  IF ~~ THEN REPLY #77134 /* ~I'd like the sound of this demon's screams more.~ */ GOTO 713
END

IF ~~ THEN BEGIN 716 // from:
  SAY #77157 /* ~What treachery is this?~ [OH77157] */
  IF ~~ THEN EXTERN ~OHDXACH~ 39
END

IF ~~ THEN BEGIN 717 // from:
  SAY #77167 /* ~No one makes a fool of Dorn Il-Khan and lives!~ [OH77167] */
  IF ~~ THEN DO ~ActionOverride("ohdxach",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 718 // from:
  SAY #77168 /* ~I'll bury your corpse under yon statue, you snake-tongued deceiver!~ [OH77168] */
  IF ~~ THEN DO ~ActionOverride("ohdxach",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 719 // from: 720.0
  SAY #77173 /* ~Feel your own blade's kiss!~ [OH77173] */
  IF ~~ THEN DO ~ActionOverride("ohdxach",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 720 // from:
  SAY #77175 /* ~The hell he does!~ [OH77175] */
  IF ~~ THEN GOTO 719
END

IF ~~ THEN BEGIN 721 // from:
  SAY #77188 /* ~We still have business in this hole, <CHARNAME>. Have you forgotten why we came here in the first place?~ [OH77188] */
  IF ~~ THEN REPLY #77189 /* ~Even if I did, I've got you here to remind me.~ */ GOTO 722
END

IF ~~ THEN BEGIN 722 // from: 721.0
  SAY #77190 /* ~Begone, dryad. When we're ready to leave, we'll summon you.~ [OH77190] */
  IF ~~ THEN EXTERN ~OHDYARR~ 93
END

IF ~~ THEN BEGIN 723 // from:
  SAY #77192 /* ~There's other rewards still to be found. Begone, dryad. Should we have need of you, we'll let you know.~ [OH77192] */
  IF ~~ THEN EXTERN ~OHDYARR~ 93
END

IF WEIGHT #40 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("OHD_ritual","OH5120",2)
~ THEN BEGIN 724 // from:
  SAY #77219 /* ~<CHARNAME>, a word.~ [OH77219] */
  IF ~~ THEN REPLY #77220 /* ~What is it, Dorn?~ */ DO ~SetGlobal("OHD_ritual","OH5120",3)
~ GOTO 725
END

IF ~~ THEN BEGIN 725 // from: 724.0
  SAY #77221 /* ~The ritual requires the sacrifice of a sapient being.~ [OH77221] */
  IF ~~ THEN REPLY #77222 /* ~It's too much, Dorn. I cannot allow it.~ */ GOTO 726
  IF ~~ THEN REPLY #77223 /* ~Fortunately, we can scrounge up a few sapient beings to sacrifice.~ */ GOTO 739
  IF ~  Global("OHD_vernus_resurrected","OH5120",1)
~ THEN REPLY #77224 /* ~The druid who created the circle was revived. It is only fitting he die again, a victim of his own design.~ */ EXTERN ~OHDVERN~ 38
  IF ~  !Global("OHD_vernus_resurrected","OH5120",1)
~ THEN REPLY #77225 /* ~We could resurrect the druid who created the circle. It would be amusing to see him die twice as a victim of his own design.~ */ GOTO 751
END

IF ~~ THEN BEGIN 726 // from: 725.0
  SAY #77226 /* ~After all we've endured, you would deny me now?~ [OH77226] */
  IF ~~ THEN REPLY #77227 /* ~You want to sacrifice an innocent life! How can you not be concerned with that?~ */ GOTO 727
  IF ~~ THEN REPLY #77228 /* ~I would have denied you earlier, but there were scheduling conflicts. You know how it goes.~ */ GOTO 729
  IF ~~ THEN REPLY #77229 /* ~Only a fool would attempt to deny you anything, Dorn. And I am no fool.~ */ GOTO 739
END

IF ~~ THEN BEGIN 727 // from: 726.0
  SAY #77230 /* ~A sapient life, not an innocent one—though it makes no difference to me either way. Nothing must stand between me and my goal.~ [OH77230] */
  IF ~~ THEN REPLY #77231 /* ~Not even me?~ */ GOTO 728
  IF ~~ THEN REPLY #77232 /* ~You have a way with words, Dorn—hammers have a similar way with anvils.~ */ GOTO 737
  IF ~~ THEN REPLY #77233 /* ~And nothing shall.~ */ GOTO 739
END

IF ~~ THEN BEGIN 728 // from: 727.0
  SAY #77234 /* ~Help me on my quest or stand aside, <CHARNAME>, but do not test me on this.~ [OH77234] */
  IF ~~ THEN REPLY #77235 /* ~I'm afraid you leave me little choice.~ */ GOTO 730
END

IF ~~ THEN BEGIN 729 // from: 726.1
  SAY #77236 /* ~I know how it will go if you attempt to bar my path.~ [OH77236] */
  IF ~~ THEN REPLY #77237 /* ~You leave me little choice, Dorn. I'll not allow you to slay one of my friends.~ */ GOTO 732
  IF ~~ THEN REPLY #77238 /* ~Not well for one of us, I suspect.~ */ GOTO 735
  IF ~~ THEN REPLY #77239 /* ~I have walked alongside you this far. I'll not stop now.~ */ GOTO 739
END

IF ~~ THEN BEGIN 730 // from: 736.0 728.0
  SAY #77240 /* ~And you leave me with none.~ [OH77240] */
  IF ~~ THEN GOTO 731
END

IF ~~ THEN BEGIN 731 // from: 730.0
  SAY #77241 /* ~Die!~ [OH77241] */
  IF ~~ THEN DO ~SetGlobal("OHD_PLOT","GLOBAL",-1)
SetGlobal("KICKEDOUT","LOCALS",1)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
ActionOverride("DORN",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 732 // from: 798.2 781.2 729.0
  SAY #77242 /* ~Then die in their place!~ [OH77242] */
  IF ~~ THEN DO ~SetGlobal("OHD_PLOT","GLOBAL",-1)
SetGlobal("KICKEDOUT","LOCALS",1)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
ActionOverride("DORN",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 733 // from: 795.0 778.0 740.0 735.0
  SAY #77243 /* ~Then pay the price for your obstinacy!~ [OH77243] */
  IF ~~ THEN DO ~SetGlobal("OHD_PLOT","GLOBAL",-1)
SetGlobal("KICKEDOUT","LOCALS",1)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
ActionOverride("DORN",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 734 // from: 743.0
  SAY #77244 /* ~Then join all the others who stood in my way!~ [OH77244] */
  IF ~~ THEN DO ~SetGlobal("OHD_PLOT","GLOBAL",-1)
SetGlobal("KICKEDOUT","LOCALS",1)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
ActionOverride("DORN",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 735 // from: 740.1 729.1
  SAY #77245 /* ~Choose, <CHARNAME>. Will you stand with me or against me?~ [OH77245] */
  IF ~~ THEN REPLY #77246 /* ~I can't be with you, not in this.~ */ GOTO 733
  IF ~~ THEN REPLY #77247 /* ~Left to my own devices, I'd rather stand over there, out of arm's reach.~ */ GOTO 736
  IF ~~ THEN REPLY #77248 /* ~I'm with you, of course.~ */ GOTO 739
END

IF ~~ THEN BEGIN 736 // from: 735.1
  SAY #77249 /* ~With me or against me. There are no other options.~ [OH77249] */
  IF ~~ THEN REPLY #77250 /* ~Then I'm against you. You leave me with little choice.~ */ GOTO 730
  IF ~~ THEN REPLY #77251 /* ~When you put it that way, I guess I'm with you.~ */ GOTO 739
END

IF ~~ THEN BEGIN 737 // from: 727.1
  SAY #77252 /* ~I leave the pretty words to you, <PRO_RACE>. I've other things to consider.~ [OH77252] */
  IF ~~ THEN GOTO 739
END

IF ~~ THEN BEGIN 738 // from: 798.0 781.0
  SAY #77253 /* ~Let your friends bury you, <PRO_RACE>!~ [OH77253] */
  IF ~~ THEN DO ~SetGlobal("OHD_PLOT","GLOBAL",-1)
SetGlobal("KICKEDOUT","LOCALS",1)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
ActionOverride("DORN",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 739 // from: 758.0 740.2 737.0 736.1 735.2 729.2 727.2 726.2 725.1
  SAY #77254 /* ~Who would you see die that I might gain greater power?~ [OH77254] */
  IF ~~ THEN REPLY #77255 /* ~No one. This has gone far enough.~ */ GOTO 740
  IF ~  NumInPartyGT(2)
~ THEN REPLY #77256 /* ~What if it were one of us?~ */ GOTO 741
  IF ~  CheckStatGT(Player1,14,INT)
~ THEN REPLY #77257 /* ~If all that is required is a sapient creature... perhaps we could summon one and use it for our purposes.~ */ GOTO 747
  IF ~  Global("OHD_vernus_resurrected","OH5120",1)
~ THEN REPLY #77258 /* ~What about Vernus?~ */ EXTERN ~OHDVERN~ 38
  IF ~  !Global("OHD_vernus_resurrected","OH5120",1)
~ THEN REPLY #77259 /* ~That corpse could be handy.~ */ GOTO 751
END

IF ~~ THEN BEGIN 740 // from: 739.0
  SAY #77278 /* ~You would refuse me?~ [OH77278] */
  IF ~~ THEN REPLY #77279 /* ~I must.~ */ GOTO 733
  IF ~~ THEN REPLY #77280 /* ~I don't want to, but yeah.~ */ GOTO 735
  IF ~~ THEN REPLY #77281 /* ~Of course not. We've sacrificed much to get you here; we cannot turn back now.~ */ GOTO 739
END

IF ~~ THEN BEGIN 741 // from: 752.0 739.1
  SAY #77282 /* ~Yes... an excellent idea. Instruct one of them to enter the circle, but be sure not to reveal why. Then I need only write Ur-Gothoz's name in our sacrifice's blood, and his power shall be mine.~ [OH77282] */
  IF ~~ THEN REPLY #77283 /* ~Are you sure you want to write Ur-Gothoz's name?~ */ GOTO 744
  IF ~~ THEN REPLY #77284 /* ~There goes the neighborhood. If it were a better neighborhood, I might be a little worried.~ */ GOTO 743
  IF ~~ THEN REPLY #77285 /* ~With the glabrezu's power as your own, you'll be unstoppable.~ */ EXIT
END

IF ~~ THEN BEGIN 742 // from:
  SAY #77286 /* ~Now, I need only write Ur-Gothoz's name in the druid's blood and the demon's power shall be mine.~ [OH77286] */
  IF ~~ THEN REPLY #77287 /* ~But is Ur-Gothoz's name the one you truly want to write?~ */ GOTO 744
  IF ~~ THEN REPLY #77288 /* ~There goes the neighborhood. If the neighborhood weren't in such dire repair, I'd be concerned.~ */ GOTO 743
  IF ~~ THEN REPLY #77289 /* ~It is time for the servant to become the master.~ */ GOTO 752
END

IF ~~ THEN BEGIN 743 // from: 742.1 741.1
  SAY #77290 /* ~Still your tongue and help me perform the ritual.~ [OH77290] */
  IF ~~ THEN REPLY #77291 /* ~I cannot. I will not.~ */ GOTO 734
  IF ~~ THEN REPLY #77292 /* ~Still my tongue? Your loss...~ */ GOTO 752
  IF ~~ THEN REPLY #77293 /* ~As you wish. I'll place someone within the circle.~ */ EXIT
END

IF ~~ THEN BEGIN 744 // from: 742.0 741.0
  SAY #77294 /* ~If not his, then whose?~ [OH77294] */
  IF ~~ THEN REPLY #77295 /* ~Clearly Azothet has power to rival Ur-Gothoz's own. Perhaps greater. Why not bind her to the sword?~ */ GOTO 745
  IF ~~ THEN REPLY #77296 /* ~You are right. You have lived under Ur-Gothoz's thumb for too long. It's time he pay for his treatment of you.~ */ EXIT
END

IF ~~ THEN BEGIN 745 // from: 744.0
  SAY #77297 /* ~If I did such a thing, Ur-Gothoz would surely learn of it... and reward me.~ [OH77297] */
  IF ~~ THEN REPLY #77298 /* ~Sounds like a steal of a deal to me.~ */ GOTO 746
  IF ~~ THEN REPLY #77299 /* ~But you would still be bound as his servant.~ */ GOTO 746
END

IF ~~ THEN BEGIN 746 // from: 745.1 745.0
  SAY #77300 /* ~Hrmm. This has become a... complex matter. I shall think upon it while you position someone within the circle.~ [OH77300] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 747 // from: 752.1 739.2
  SAY #92463 /* ~We could simply sacrifice one of these others.~ [OH92463] */
  IF ~~ THEN REPLY #92468 /* ~I have uses for them. And we have the ability to find another sapient.~ */ GOTO 748
  IF ~~ THEN REPLY #92469 /* ~Could. But won't.~ */ GOTO 749
  IF ~~ THEN REPLY #92470 /* ~You defy me, half-orc?~ */ GOTO 750
END

IF ~~ THEN BEGIN 748 // from: 751.0 747.0
  SAY #92464 /* ~Very well. Let it be done.~ [OH92464] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 749 // from: 751.1 747.1
  SAY #92465 /* ~Such skittishness is beneath you, <CHARNAME>. But very well. We shall do as you suggest.~ [OH92465] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 750 // from: 751.2 747.2
  SAY #92466 /* ~I think you value these others more highly than they deserve. But if you would see them spared, so be it. We will do as you suggest.~ [OH92466] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 751 // from: 752.3 739.4 725.3
  SAY #92463 /* ~We could simply sacrifice one of these others.~ [OH92463] */
  IF ~~ THEN REPLY #92471 /* ~I have uses for them, and we have the ability to create another candidate.~ */ GOTO 748
  IF ~~ THEN REPLY #92469 /* ~Could. But won't.~ */ GOTO 749
  IF ~~ THEN REPLY #92470 /* ~You defy me, half-orc?~ */ GOTO 750
END

IF WEIGHT #41 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("OHD_ritual","OH5120",3)
~ THEN BEGIN 752 // from: 743.1 742.2
  SAY #77301 /* ~We still need a sapient being within the circle before I can begin the ritual.~ [OH77301] */
  IF ~  NumInPartyGT(2)
~ THEN REPLY #77302 /* ~What if it were one of us?~ */ GOTO 741
  IF ~  CheckStatGT(Player1,14,INT)
~ THEN REPLY #77303 /* ~If all that is required is a sapient creature... perhaps we could summon one and use it for our purposes.~ */ GOTO 747
  IF ~  Global("OHD_vernus_resurrected","OH5120",1)
~ THEN REPLY #77304 /* ~What about Vernus?~ */ EXTERN ~OHDVERN~ 38
  IF ~  !Global("OHD_vernus_resurrected","OH5120",1)
~ THEN REPLY #77305 /* ~That corpse could be handy.~ */ GOTO 751
END

IF WEIGHT #42 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("OHD_ritual","OH5120",4)
~ THEN BEGIN 753 // from:
  SAY #77306 /* ~Someone has entered the circle. Now let me draw the name upon the ground.~ [OH77306] */
  IF ~~ THEN REPLY #77307 /* ~Wait, let me think about this some more.~ */ GOTO 754
  IF ~  Global("OHD_ritual_target","OH5120",1)
~ THEN REPLY #77308 /* ~Do it, summon forth Ur-Gothoz and free yourself!~ */ DO ~EraseJournalEntry(90346)
AddJournalEntry(90346,QUEST_DONE)
AddJournalEntry(100203,INFO)
SetGlobal("OHD_ritual_urgothoz","OH5120",1)
SetGlobal("OHD_ritual","OH5120",5)
~ EXIT
  IF ~  Global("OHD_ritual_target","OH5120",2)
~ THEN REPLY #77308 /* ~Do it, summon forth Ur-Gothoz and free yourself!~ */ DO ~EraseJournalEntry(90346)
AddJournalEntry(90346,QUEST_DONE)
AddJournalEntry(92477,INFO)
SetGlobal("OHD_ritual_urgothoz","OH5120",1)
SetGlobal("OHD_ritual","OH5120",5)
~ EXIT
  IF ~  Global("OHD_ritual_target","OH5120",3)
~ THEN REPLY #77308 /* ~Do it, summon forth Ur-Gothoz and free yourself!~ */ DO ~EraseJournalEntry(90346)
AddJournalEntry(90346,QUEST_DONE)
AddJournalEntry(102760,INFO)
SetGlobal("OHD_ritual_urgothoz","OH5120",1)
SetGlobal("OHD_ritual","OH5120",5)
~ EXIT
  IF ~  Global("OHD_ritual_target","OH5120",4)
~ THEN REPLY #77308 /* ~Do it, summon forth Ur-Gothoz and free yourself!~ */ DO ~EraseJournalEntry(90346)
AddJournalEntry(90346,QUEST_DONE)
AddJournalEntry(92478,INFO)
SetGlobal("OHD_ritual_urgothoz","OH5120",1)
SetGlobal("OHD_ritual","OH5120",5)
~ EXIT
  IF ~  Global("OHD_ritual_target","OH5120",5)
~ THEN REPLY #77308 /* ~Do it, summon forth Ur-Gothoz and free yourself!~ */ DO ~EraseJournalEntry(90346)
AddJournalEntry(90346,QUEST_DONE)
AddJournalEntry(92479,INFO)
SetGlobal("OHD_ritual_urgothoz","OH5120",1)
SetGlobal("OHD_ritual","OH5120",5)
~ EXIT
  IF ~  Global("OHD_ritual_target","OH5120",6)
~ THEN REPLY #77308 /* ~Do it, summon forth Ur-Gothoz and free yourself!~ */ DO ~EraseJournalEntry(90346)
AddJournalEntry(90346,QUEST_DONE)
AddJournalEntry(92480,INFO)
SetGlobal("OHD_ritual_urgothoz","OH5120",1)
SetGlobal("OHD_ritual","OH5120",5)
~ EXIT
  IF ~  Global("OHD_ritual_target","OH5120",7)
~ THEN REPLY #77308 /* ~Do it, summon forth Ur-Gothoz and free yourself!~ */ DO ~EraseJournalEntry(90346)
AddJournalEntry(90346,QUEST_DONE)
AddJournalEntry(92481,INFO)
SetGlobal("OHD_ritual_urgothoz","OH5120",1)
SetGlobal("OHD_ritual","OH5120",5)
~ EXIT
  IF ~  Global("OHD_ritual_target","OH5120",8)
~ THEN REPLY #77308 /* ~Do it, summon forth Ur-Gothoz and free yourself!~ */ DO ~EraseJournalEntry(90346)
AddJournalEntry(90346,QUEST_DONE)
AddJournalEntry(92482,INFO)
SetGlobal("OHD_ritual_urgothoz","OH5120",1)
SetGlobal("OHD_ritual","OH5120",5)
~ EXIT
  IF ~  Global("OHD_ritual_target","OH5120",9)
~ THEN REPLY #77308 /* ~Do it, summon forth Ur-Gothoz and free yourself!~ */ DO ~EraseJournalEntry(90346)
AddJournalEntry(90346,QUEST_DONE)
AddJournalEntry(92490,INFO)
SetGlobal("OHD_ritual_urgothoz","OH5120",1)
SetGlobal("OHD_ritual","OH5120",5)
~ EXIT
  IF ~  Global("OHD_ritual_target","OH5120",10)
~ THEN REPLY #77308 /* ~Do it, summon forth Ur-Gothoz and free yourself!~ */ DO ~EraseJournalEntry(90346)
AddJournalEntry(90346,QUEST_DONE)
AddJournalEntry(92493,INFO)
SetGlobal("OHD_ritual_urgothoz","OH5120",1)
SetGlobal("OHD_ritual","OH5120",5)
~ EXIT
  IF ~  Global("OHD_ritual_target","OH5120",11)
~ THEN REPLY #77308 /* ~Do it, summon forth Ur-Gothoz and free yourself!~ */ DO ~EraseJournalEntry(90346)
AddJournalEntry(90346,QUEST_DONE)
AddJournalEntry(92495,INFO)
SetGlobal("OHD_ritual_urgothoz","OH5120",1)
SetGlobal("OHD_ritual","OH5120",5)
~ EXIT
  IF ~  Global("OHD_ritual_target","OH5120",12)
~ THEN REPLY #77308 /* ~Do it, summon forth Ur-Gothoz and free yourself!~ */ DO ~EraseJournalEntry(90346)
AddJournalEntry(90346,QUEST_DONE)
AddJournalEntry(92497,INFO)
SetGlobal("OHD_ritual_urgothoz","OH5120",1)
SetGlobal("OHD_ritual","OH5120",5)
~ EXIT
  IF ~  Global("OHD_ritual_target","OH5120",13)
~ THEN REPLY #77308 /* ~Do it, summon forth Ur-Gothoz and free yourself!~ */ DO ~EraseJournalEntry(90346)
AddJournalEntry(90346,QUEST_DONE)
AddJournalEntry(92499,INFO)
SetGlobal("OHD_ritual_urgothoz","OH5120",1)
SetGlobal("OHD_ritual","OH5120",5)
~ EXIT
  IF ~  Global("OHD_ritual_target","OH5120",14)
~ THEN REPLY #77308 /* ~Do it, summon forth Ur-Gothoz and free yourself!~ */ DO ~EraseJournalEntry(90346)
AddJournalEntry(90346,QUEST_DONE)
AddJournalEntry(92501,INFO)
SetGlobal("OHD_ritual_urgothoz","OH5120",1)
SetGlobal("OHD_ritual","OH5120",5)
~ EXIT
  IF ~  Global("OHD_ritual_target","OH5120",15)
~ THEN REPLY #77308 /* ~Do it, summon forth Ur-Gothoz and free yourself!~ */ DO ~EraseJournalEntry(90346)
AddJournalEntry(90346,QUEST_DONE)
AddJournalEntry(92502,INFO)
SetGlobal("OHD_ritual_urgothoz","OH5120",1)
SetGlobal("OHD_ritual","OH5120",5)
~ EXIT
  IF ~  Global("OHD_ritual_target","OH5120",16)
~ THEN REPLY #77308 /* ~Do it, summon forth Ur-Gothoz and free yourself!~ */ DO ~EraseJournalEntry(90346)
AddJournalEntry(90346,QUEST_DONE)
AddJournalEntry(100205,INFO)
SetGlobal("OHD_ritual_urgothoz","OH5120",1)
SetGlobal("OHD_ritual","OH5120",5)
~ EXIT
  IF ~  Global("OHD_ritual_target","OH5120",17)
~ THEN REPLY #77308 /* ~Do it, summon forth Ur-Gothoz and free yourself!~ */ DO ~EraseJournalEntry(90346)
AddJournalEntry(90346,QUEST_DONE)
AddJournalEntry(92505,INFO)
SetGlobal("OHD_ritual_urgothoz","OH5120",1)
SetGlobal("OHD_ritual","OH5120",5)
~ EXIT
  IF ~  Global("OHD_ritual_target","OH5120",18)
~ THEN REPLY #77308 /* ~Do it, summon forth Ur-Gothoz and free yourself!~ */ DO ~EraseJournalEntry(90346)
AddJournalEntry(90346,QUEST_DONE)
AddJournalEntry(92504,INFO)
SetGlobal("OHD_ritual_urgothoz","OH5120",1)
SetGlobal("OHD_ritual","OH5120",5)
~ EXIT
  IF ~  Global("OHD_ritual_target","OH5120",19)
~ THEN REPLY #77308 /* ~Do it, summon forth Ur-Gothoz and free yourself!~ */ DO ~EraseJournalEntry(90346)
AddJournalEntry(90346,QUEST_DONE)
AddJournalEntry(92475,INFO)
SetGlobal("OHD_ritual_urgothoz","OH5120",1)
SetGlobal("OHD_ritual","OH5120",5)
~ EXIT
  IF ~  Global("OHD_ritual_target","OH5120",20)
~ THEN REPLY #77308 /* ~Do it, summon forth Ur-Gothoz and free yourself!~ */ DO ~EraseJournalEntry(90346)
AddJournalEntry(90346,QUEST_DONE)
AddJournalEntry(92476,INFO)
SetGlobal("OHD_ritual_urgothoz","OH5120",1)
SetGlobal("OHD_ritual","OH5120",5)
~ EXIT
  IF ~  Global("OHD_ritual_target","OH5120",1)
~ THEN REPLY #77309 /* ~Bring Azothet forth. Surely her powers trapped within a sword would be more valuable?~ */ DO ~EraseJournalEntry(90346)
AddJournalEntry(90346,QUEST_DONE)
AddJournalEntry(100204,INFO)
SetGlobal("OHD_ritual_azothet","OH5120",1)
SetGlobal("OHD_ritual","OH5120",5)
~ EXIT
  IF ~  Global("OHD_ritual_target","OH5120",2)
~ THEN REPLY #77309 /* ~Bring Azothet forth. Surely her powers trapped within a sword would be more valuable?~ */ DO ~EraseJournalEntry(90346)
AddJournalEntry(90346,QUEST_DONE)
AddJournalEntry(96114,INFO)
SetGlobal("OHD_ritual_azothet","OH5120",1)
SetGlobal("OHD_ritual","OH5120",5)
~ EXIT
  IF ~  Global("OHD_ritual_target","OH5120",3)
~ THEN REPLY #77309 /* ~Bring Azothet forth. Surely her powers trapped within a sword would be more valuable?~ */ DO ~EraseJournalEntry(90346)
AddJournalEntry(90346,QUEST_DONE)
AddJournalEntry(102762,INFO)
SetGlobal("OHD_ritual_azothet","OH5120",1)
SetGlobal("OHD_ritual","OH5120",5)
~ EXIT
  IF ~  Global("OHD_ritual_target","OH5120",4)
~ THEN REPLY #77309 /* ~Bring Azothet forth. Surely her powers trapped within a sword would be more valuable?~ */ DO ~EraseJournalEntry(90346)
AddJournalEntry(90346,QUEST_DONE)
AddJournalEntry(96116,INFO)
SetGlobal("OHD_ritual_azothet","OH5120",1)
SetGlobal("OHD_ritual","OH5120",5)
~ EXIT
  IF ~  Global("OHD_ritual_target","OH5120",5)
~ THEN REPLY #77309 /* ~Bring Azothet forth. Surely her powers trapped within a sword would be more valuable?~ */ DO ~EraseJournalEntry(90346)
AddJournalEntry(90346,QUEST_DONE)
AddJournalEntry(96117,INFO)
SetGlobal("OHD_ritual_azothet","OH5120",1)
SetGlobal("OHD_ritual","OH5120",5)
~ EXIT
  IF ~  Global("OHD_ritual_target","OH5120",6)
~ THEN REPLY #77309 /* ~Bring Azothet forth. Surely her powers trapped within a sword would be more valuable?~ */ DO ~EraseJournalEntry(90346)
AddJournalEntry(90346,QUEST_DONE)
AddJournalEntry(96118,INFO)
SetGlobal("OHD_ritual_azothet","OH5120",1)
SetGlobal("OHD_ritual","OH5120",5)
~ EXIT
  IF ~  Global("OHD_ritual_target","OH5120",7)
~ THEN REPLY #77309 /* ~Bring Azothet forth. Surely her powers trapped within a sword would be more valuable?~ */ DO ~EraseJournalEntry(90346)
AddJournalEntry(90346,QUEST_DONE)
AddJournalEntry(96119,INFO)
SetGlobal("OHD_ritual_azothet","OH5120",1)
SetGlobal("OHD_ritual","OH5120",5)
~ EXIT
  IF ~  Global("OHD_ritual_target","OH5120",8)
~ THEN REPLY #77309 /* ~Bring Azothet forth. Surely her powers trapped within a sword would be more valuable?~ */ DO ~EraseJournalEntry(90346)
AddJournalEntry(90346,QUEST_DONE)
AddJournalEntry(96120,INFO)
SetGlobal("OHD_ritual_azothet","OH5120",1)
SetGlobal("OHD_ritual","OH5120",5)
~ EXIT
  IF ~  Global("OHD_ritual_target","OH5120",9)
~ THEN REPLY #77309 /* ~Bring Azothet forth. Surely her powers trapped within a sword would be more valuable?~ */ DO ~EraseJournalEntry(90346)
AddJournalEntry(90346,QUEST_DONE)
AddJournalEntry(96121,INFO)
SetGlobal("OHD_ritual_azothet","OH5120",1)
SetGlobal("OHD_ritual","OH5120",5)
~ EXIT
  IF ~  Global("OHD_ritual_target","OH5120",10)
~ THEN REPLY #77309 /* ~Bring Azothet forth. Surely her powers trapped within a sword would be more valuable?~ */ DO ~EraseJournalEntry(90346)
AddJournalEntry(90346,QUEST_DONE)
AddJournalEntry(96122,INFO)
SetGlobal("OHD_ritual_azothet","OH5120",1)
SetGlobal("OHD_ritual","OH5120",5)
~ EXIT
  IF ~  Global("OHD_ritual_target","OH5120",11)
~ THEN REPLY #77309 /* ~Bring Azothet forth. Surely her powers trapped within a sword would be more valuable?~ */ DO ~EraseJournalEntry(90346)
AddJournalEntry(90346,QUEST_DONE)
AddJournalEntry(96123,INFO)
SetGlobal("OHD_ritual_azothet","OH5120",1)
SetGlobal("OHD_ritual","OH5120",5)
~ EXIT
  IF ~  Global("OHD_ritual_target","OH5120",12)
~ THEN REPLY #77309 /* ~Bring Azothet forth. Surely her powers trapped within a sword would be more valuable?~ */ DO ~EraseJournalEntry(90346)
AddJournalEntry(90346,QUEST_DONE)
AddJournalEntry(96124,INFO)
SetGlobal("OHD_ritual_azothet","OH5120",1)
SetGlobal("OHD_ritual","OH5120",5)
~ EXIT
  IF ~  Global("OHD_ritual_target","OH5120",13)
~ THEN REPLY #77309 /* ~Bring Azothet forth. Surely her powers trapped within a sword would be more valuable?~ */ DO ~EraseJournalEntry(90346)
AddJournalEntry(90346,QUEST_DONE)
AddJournalEntry(96125,INFO)
SetGlobal("OHD_ritual_azothet","OH5120",1)
SetGlobal("OHD_ritual","OH5120",5)
~ EXIT
  IF ~  Global("OHD_ritual_target","OH5120",14)
~ THEN REPLY #77309 /* ~Bring Azothet forth. Surely her powers trapped within a sword would be more valuable?~ */ DO ~EraseJournalEntry(90346)
AddJournalEntry(90346,QUEST_DONE)
AddJournalEntry(96126,INFO)
SetGlobal("OHD_ritual_azothet","OH5120",1)
SetGlobal("OHD_ritual","OH5120",5)
~ EXIT
  IF ~  Global("OHD_ritual_target","OH5120",15)
~ THEN REPLY #77309 /* ~Bring Azothet forth. Surely her powers trapped within a sword would be more valuable?~ */ DO ~EraseJournalEntry(90346)
AddJournalEntry(90346,QUEST_DONE)
AddJournalEntry(96127,INFO)
SetGlobal("OHD_ritual_azothet","OH5120",1)
SetGlobal("OHD_ritual","OH5120",5)
~ EXIT
  IF ~  Global("OHD_ritual_target","OH5120",16)
~ THEN REPLY #77309 /* ~Bring Azothet forth. Surely her powers trapped within a sword would be more valuable?~ */ DO ~EraseJournalEntry(90346)
AddJournalEntry(90346,QUEST_DONE)
AddJournalEntry(100206,INFO)
SetGlobal("OHD_ritual_azothet","OH5120",1)
SetGlobal("OHD_ritual","OH5120",5)
~ EXIT
  IF ~  Global("OHD_ritual_target","OH5120",17)
~ THEN REPLY #77309 /* ~Bring Azothet forth. Surely her powers trapped within a sword would be more valuable?~ */ DO ~EraseJournalEntry(90346)
AddJournalEntry(90346,QUEST_DONE)
AddJournalEntry(96129,INFO)
SetGlobal("OHD_ritual_azothet","OH5120",1)
SetGlobal("OHD_ritual","OH5120",5)
~ EXIT
  IF ~  Global("OHD_ritual_target","OH5120",18)
~ THEN REPLY #77309 /* ~Bring Azothet forth. Surely her powers trapped within a sword would be more valuable?~ */ DO ~EraseJournalEntry(90346)
AddJournalEntry(90346,QUEST_DONE)
AddJournalEntry(96128,INFO)
SetGlobal("OHD_ritual_azothet","OH5120",1)
SetGlobal("OHD_ritual","OH5120",5)
~ EXIT
  IF ~  Global("OHD_ritual_target","OH5120",19)
~ THEN REPLY #77309 /* ~Bring Azothet forth. Surely her powers trapped within a sword would be more valuable?~ */ DO ~EraseJournalEntry(90346)
AddJournalEntry(90346,QUEST_DONE)
AddJournalEntry(92509,INFO)
SetGlobal("OHD_ritual_azothet","OH5120",1)
SetGlobal("OHD_ritual","OH5120",5)
~ EXIT
  IF ~  Global("OHD_ritual_target","OH5120",20)
~ THEN REPLY #77309 /* ~Bring Azothet forth. Surely her powers trapped within a sword would be more valuable?~ */ DO ~EraseJournalEntry(90346)
AddJournalEntry(90346,QUEST_DONE)
AddJournalEntry(92476,INFO)
SetGlobal("OHD_ritual_azothet","OH5120",1)
SetGlobal("OHD_ritual","OH5120",5)
~ EXIT
END

IF ~~ THEN BEGIN 754 // from: 753.0
  SAY #102541 /* ~Decide. Quickly.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 755 // from:
  SAY #77409 /* ~Whatever is necessary to gain the power I desire.~ [OH77409] */
  IF ~~ THEN REPLY #77410 /* ~Wait, Dorn. We can't sacrifice him.~ */ GOTO 756
  IF ~~ THEN REPLY #77411 /* ~That's the way the bough breaks sometimes. Sorry, druid.~ */ EXTERN ~OHDVERN~ 39
  IF ~~ THEN REPLY #77412 /* ~You've died once already, druid. Perhaps that will make this easier for you.~ */ EXTERN ~OHDVERN~ 40
END

IF ~~ THEN BEGIN 756 // from: 755.0
  SAY #77413 /* ~I say we can.~ [OH77413] */
  IF ~~ THEN REPLY #77414 /* ~There must be another way.~ */ GOTO 758
  IF ~~ THEN REPLY #77415 /* ~Look at that face. How can you even think of killing something as cute as that?~ */ GOTO 759
  IF ~~ THEN REPLY #77416 /* ~For the life of me, I can't recall. Though I suppose it would be more accurate to say for the life of him.~ */ EXTERN ~OHDVERN~ 39
END

IF ~~ THEN BEGIN 757 // from:
  SAY #77418 /* ~Silence, druid!~ [OH77418] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 758 // from: 756.0
  SAY #77420 /* ~There is, of course.~ [OH77420] */
  IF ~~ THEN GOTO 739
END

IF ~~ THEN BEGIN 759 // from: 756.1
  SAY #77421 /* ~With ease.~ [OH77421] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 760 // from:
  SAY #77320 /* ~Not the time, <CHARNAME>!~ */
  IF ~~ THEN DO ~ActionOverride("ohdugoth",Enemy())
AddJournalEntry(96130,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 761 // from:
  SAY #77325 /* ~No longer will I toil in service to your whims, Ur-Gothoz. All that you possess shall be mine!~ [OH77325] */
  IF ~~ THEN EXTERN ~OHDUGOTH~ 47
END

IF WEIGHT #43 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("OHD_ritual","OH5120",9)
Global("OHD_ritual_urgothoz","OH5120",1)
~ THEN BEGIN 762 // from:
  SAY #77326 /* ~By all the gods in heaven and demons of the Abyss! The blade's power is...~ [OH77326] */
  IF ~~ THEN REPLY #77327 /* ~Magnificent?~ */ DO ~SetGlobal("OHD_ritual","OH5120",10)
~ GOTO 763
  IF ~~ THEN REPLY #77328 /* ~More than a little disturbing.~ */ DO ~SetGlobal("OHD_ritual","OH5120",10)
~ GOTO 763
  IF ~~ THEN REPLY #77329 /* ~Horrifying?~ */ DO ~SetGlobal("OHD_ritual","OH5120",10)
~ GOTO 763
END

IF ~~ THEN BEGIN 763 // from: 762.2 762.1 762.0
  SAY #77330 /* ~Yes, but it's not just the blade—something is amiss. My patron has been neutered, but my blackguard powers remain...~ [OH77330] */
  IF ~~ THEN REPLY #77331 /* ~How is that possible?~ */ DO ~SetGlobal("OHD_ritual","OH5120",10)
StartCutSceneMode()
StartCutSceneEx("ohdcut9c",FALSE)
~ EXIT
  IF ~~ THEN REPLY #77332 /* ~Uh oh.~ */ DO ~SetGlobal("OHD_ritual","OH5120",10)
StartCutSceneMode()
StartCutSceneEx("ohdcut9c",FALSE)
~ EXIT
  IF ~~ THEN REPLY #77333 /* ~You say that like it's a bad thing.~ */ DO ~SetGlobal("OHD_ritual","OH5120",10)
StartCutSceneMode()
StartCutSceneEx("ohdcut9c",FALSE)
~ EXIT
END

IF WEIGHT #44 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("OHD_ritual","OH5120",10)
!Global("ohd_azothet_reveal","OH5120",2)
!GlobalGT("OHD_ritual_postazothet","OH5120",0)
~ THEN BEGIN 764 // from:
  SAY #77334 /* ~Azothet! What is the meaning of this?~ [OH77334] */
  IF ~~ THEN EXTERN ~OHDAZOTH~ 20
END

IF WEIGHT #45 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("ohd_azothet_reveal","OH5120",2)
~ THEN BEGIN 765 // from:
  SAY #77341 /* ~Ur-Gothoz's power is mine now, Azothet. What makes you think I'll bend my knee to you?~ [OH77341] */
  IF ~~ THEN DO ~SetGlobal("ohd_azothet_reveal","OH5120",3)
~ EXTERN ~OHDAZOTH~ 21
END

IF ~~ THEN BEGIN 766 // from:
  SAY #77347 /* ~Damn you, <CHARNAME>! Were you not here, this decision would be so easy.~ [OH77347] */
  IF ~~ THEN EXTERN ~OHDAZOTH~ 23
END

IF ~~ THEN BEGIN 767 // from:
  SAY #77352 /* ~You are right on that score, <CHARNAME>.~ [OH77352] */
  IF ~~ THEN GOTO 773
END

IF ~~ THEN BEGIN 768 // from: 771.0
  SAY #77353 /* ~No! Marilith or no, I'll not be cowed into submission!~ [OH77353] */
  IF ~~ THEN EXTERN ~OHDAZOTH~ 24
END

IF ~~ THEN BEGIN 769 // from:
  SAY #77360 /* ~What are you offering?~ [OH77360] */
  IF ~~ THEN REPLY #77361 /* ~Nothing she can offer is worth the freedom you'll lose.~ */ EXTERN ~OHDAZOTH~ 22
  IF ~~ THEN REPLY #77362 /* ~Seriously? SERIOUSLY?~ */ EXTERN ~OHDAZOTH~ 27
  IF ~~ THEN REPLY #77363 /* ~It better be a lot.~ */ EXTERN ~OHDAZOTH~ 27
END

IF ~~ THEN BEGIN 770 // from: 771.2
  SAY #77364 /* ~Back to the Abyss with you, marilith!~ [OH77364] */
  IF ~~ THEN EXTERN ~OHDAZOTH~ 24
END

IF ~~ THEN BEGIN 771 // from:
  SAY #77365 /* ~Curse your impudent tongue, <PRO_RACE>! If this were any other time...~ [OH77365] */
  IF ~  CheckStatLT(Player1,15,CHR)
~ THEN REPLY #77366 /* ~But it's not any other time. Do as your new mistress commands.~ */ GOTO 768
  IF ~  CheckStatGT(Player1,14,CHR)
~ THEN REPLY #77366 /* ~But it's not any other time. Do as your new mistress commands.~ */ GOTO 772
  IF ~~ THEN REPLY #77367 /* ~You curse the wrong person, Dorn. It's she who would enslave you that should feel your rage.~ */ GOTO 770
END

IF ~~ THEN BEGIN 772 // from: 771.1
  SAY #77372 /* ~I've served Ur-Gothoz. Doing the same for Azothet could hardly be worse.~ [OH77372] */
  IF ~~ THEN REPLY #77373 /* ~If that's your wish, I'll not stand in your way.~ */ GOTO 773
  IF ~~ THEN REPLY #77374 /* ~You've gained a sword and lost your senses, Dorn. You can't seriously bend your knee to the likes of this.~ */ EXTERN ~OHDAZOTH~ 28
END

IF ~~ THEN BEGIN 773 // from: 772.0 767.0
  SAY #77376 /* ~I am yours to command, Azothet.~ [OH77376] */
  IF ~~ THEN EXTERN ~OHDAZOTH~ 29
END

IF WEIGHT #46 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("OHD_ritual_postazothet","OH5120",2)
~ THEN BEGIN 774 // from:
  SAY #77378 /* ~In my wildest dreams, I never imagined I would wield such power as this.~ [OH77378] */
  IF ~~ THEN REPLY #77379 /* ~And what use will you put it to, Dorn?~ */ DO ~SetGlobal("OHD_ritual_postazothet","OH5120",3)
~ GOTO 783
  IF ~~ THEN REPLY #77380 /* ~Really? You need a better quality of wildest dream, my friend.~ */ DO ~SetGlobal("OHD_ritual_postazothet","OH5120",3)
~ GOTO 784
  IF ~~ THEN REPLY #77381 /* ~Then you must use it.~ */ DO ~SetGlobal("OHD_ritual_postazothet","OH5120",3)
~ GOTO 784
END

IF ~~ THEN BEGIN 775 // from:
  SAY #77382 /* ~What do you mean?~ [OH77382] */
  IF ~~ THEN REPLY #77383 /* ~Ur-Gothoz no longer commands you. Your life is your own. My question is, what are you going to make of it?~ */ GOTO 783
  IF ~~ THEN REPLY #77384 /* ~Nothing. It just seemed like a suitably dramatic thing to say.~ */ EXIT
END

IF ~~ THEN BEGIN 776 // from:
  SAY #77385 /* ~You've proven your worth to me, <CHARNAME>. Would that I could say the same for these others.~ [OH77385] */
  IF ~~ THEN REPLY #77386 /* ~What are you saying?~ */ GOTO 777
END

IF ~~ THEN BEGIN 777 // from: 776.0
  SAY #77387 /* ~It is time, <CHARNAME>—past time, in fact—that we rid ourselves of these sycophants that cling to you like so many leeches.~ [OH77387] */
  IF ~~ THEN REPLY #77388 /* ~You call my friends leeches?~ */ GOTO 780
  IF ~~ THEN REPLY #77389 /* ~Well, this conversation's certainly taken an unpleasant turn.~ */ GOTO 782
  IF ~~ THEN REPLY #77390 /* ~They have their uses to me.~ */ GOTO 778
END

IF ~~ THEN BEGIN 778 // from: 782.0 777.2
  SAY #77391 /* ~To seal our unholy union, they must die.~ [OH77391] */
  IF ~~ THEN REPLY #77392 /* ~I won't allow that to happen.~ */ GOTO 733
  IF ~~ THEN REPLY #77393 /* ~What, all of them?~ */ GOTO 781
  IF ~~ THEN REPLY #77390 /* ~They have their uses to me.~ */ GOTO 779
END

IF ~~ THEN BEGIN 779 // from: 781.1 780.1 778.2
  SAY #77395 /* ~Very well then. Pick the one whose blood will bind us together for all time.~ [OH77395] */
  IF ~~ THEN REPLY #77396 /* ~Eternity beckons!~ */ EXIT
END

IF ~~ THEN BEGIN 780 // from: 777.0
  SAY #77398 /* ~I call them what they are: parasites all.~ [OH77398] */
  IF ~~ THEN REPLY #77399 /* ~You can't expect me to do nothing while you malign my friends and allies, Dorn. Your new sword will be put to use sooner than you expected.~ */ GOTO 785
  IF ~~ THEN REPLY #77400 /* ~Your newfound power has blinded you, Dorn. These people are not without their uses.~ */ GOTO 779
END

IF ~~ THEN BEGIN 781 // from: 778.1
  SAY #77401 /* ~Well—I suppose one would suffice.~ [OH77401] */
  IF ~~ THEN REPLY #77402 /* ~You've gained a sword and lost your mind, Dorn.~ */ GOTO 738
  IF ~~ THEN REPLY #77403 /* ~That's better. Much more reasonable.~ */ GOTO 779
  IF ~~ THEN REPLY #77404 /* ~You think I'd kill one of them for you? You overestimate your value to me, half-orc.~ */ GOTO 732
END

IF ~~ THEN BEGIN 782 // from: 777.1
  SAY #77405 /* ~These worms weaken you, <CHARNAME>. They cannot be tolerated.~ [OH77405] */
  IF ~~ THEN GOTO 778
END

IF ~~ THEN BEGIN 783 // from: 775.0 774.0
  SAY #77406 /* ~Whatever I choose. With this ebon blade in my hand, nothing is beyond my power.~ [OH77406] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 784 // from: 774.2 774.1
  SAY #77407 /* ~With this blade in my hand, my dreams shall become reality.~ [OH77407] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 785 // from: 780.0
  SAY #77253 /* ~Let your friends bury you, <PRO_RACE>!~ [OH77253] */
  IF ~~ THEN DO ~AddJournalEntry(96133,INFO)
SetGlobal("OHD_PLOT","GLOBAL",-1)
SetGlobal("KICKEDOUT","LOCALS",1)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
ActionOverride("DORN",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 786 // from:
  SAY #77424 /* ~You thought to tempt me with Ur-Gothoz's power, witch. But taking yours suits me better.~ [OH77424] */
  IF ~~ THEN EXTERN ~OHDAZOTH~ 31
END

IF ~~ THEN BEGIN 787 // from:
  SAY #77429 /* ~As my sword, you'll see a thousand thousand other deaths first!~ [OH77429] */
  IF ~~ THEN DO ~AddJournalEntry(92569,INFO)
ActionOverride("ohdazoth",Enemy())
~ EXIT
END

IF WEIGHT #47 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("OHD_ritual","OH5120",9)
Global("OHD_ritual_azothet","OH5120",1)
~ THEN BEGIN 788 // from:
  SAY #77437 /* ~By all the gods in heaven and demons of the Abyss! I've never known such power! It's...~ [OH77437] */
  IF ~~ THEN REPLY #77438 /* ~Magnificent?~ */ DO ~SetGlobal("OHD_ritual","OH5120",10)
~ GOTO 789
  IF ~~ THEN REPLY #77439 /* ~More than a little disturbing.~ */ DO ~SetGlobal("OHD_ritual","OH5120",10)
~ GOTO 789
  IF ~~ THEN REPLY #77440 /* ~Horrifying?~ */ DO ~SetGlobal("OHD_ritual","OH5120",10)
~ GOTO 792
END

IF ~~ THEN BEGIN 789 // from: 792.0 788.1 788.0
  SAY #77441 /* ~In my wildest dreams, I never imagined I would wield such power as this.~ [OH77441] */
  IF ~~ THEN REPLY #77442 /* ~And what use will you put it to, Dorn?~ */ GOTO 790
  IF ~~ THEN REPLY #77443 /* ~Really? You need a better quality of wildest dream, my friend.~ */ GOTO 800
  IF ~~ THEN REPLY #77444 /* ~Then you must use it.~ */ GOTO 790
END

IF ~~ THEN BEGIN 790 // from: 789.2 789.0
  SAY #77445 /* ~What do you mean?~ [OH77445] */
  IF ~~ THEN REPLY #77446 /* ~A blade that powerful is worthy of the epics. What are you going to do with that power?~ */ GOTO 801
  IF ~~ THEN REPLY #77447 /* ~Nothing. It just seemed like a suitably dramatic thing to say.~ */ DO ~SetGlobal("OHD_ritual","OH5120",10)
StartCutSceneMode()
StartCutSceneEx("ohdcut9d",FALSE)
~ EXIT
  IF ~~ THEN REPLY #77448 /* ~Azothet's power flows fresh in the black metal. Use it now to strike Ur-Gothoz down!~ */ GOTO 791
END

IF ~~ THEN BEGIN 791 // from: 790.2
  SAY #77449 /* ~A brilliant scheme, <CHARNAME>. Help me write his name in the circle while it retains its summoning power.~ [OH77449] */
  IF ~~ THEN DO ~SetGlobal("OHD_ritual","OH5120",14)
StartCutSceneMode()
StartCutSceneEx("ohdcut10",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 792 // from: 788.2
  SAY #77450 /* ~It is beyond anything I've ever known.~ [OH77450] */
  IF ~~ THEN GOTO 789
END

IF ~~ THEN BEGIN 793 // from:
  SAY #77451 /* ~You need not fear the horrors to come, <CHARNAME>. You've proven your worth. Would that I could say the same for these others.~ [OH77451] */
  IF ~~ THEN REPLY #77451 /* ~You need not fear the horrors to come, <CHARNAME>. You've proven your worth. Would that I could say the same for these others.~ [OH77451] */ GOTO 794
END

IF ~~ THEN BEGIN 794 // from: 793.0
  SAY #77453 /* ~It is time, <CHARNAME>—past time, in fact—that we rid ourselves of these sycophants that cling to you like so many leeches.~ [OH77453] */
  IF ~~ THEN REPLY #77454 /* ~You call my friends leeches?~ */ GOTO 797
  IF ~~ THEN REPLY #77455 /* ~You're drunk on power, Dorn. Get some sleep and we can discuss this in the morning when your head is clear.~ */ GOTO 802
  IF ~~ THEN REPLY #77456 /* ~They have their uses to me.~ */ GOTO 795
END

IF ~~ THEN BEGIN 795 // from: 802.0 794.2
  SAY #77457 /* ~To seal our unholy union, they must die.~ [OH77457] */
  IF ~~ THEN REPLY #77458 /* ~I won't allow that to happen.~ */ GOTO 733
  IF ~~ THEN REPLY #77459 /* ~What, all of them?~ */ GOTO 798
  IF ~~ THEN REPLY #77460 /* ~A pointless waste of valuable resources. One death should be sufficient to seal any unholy union.~ */ GOTO 796
END

IF ~~ THEN BEGIN 796 // from: 798.1 795.2
  SAY #77461 /* ~Very well then. Pick the one whose blood will bind us together for all time.~ [OH77461] */
  IF ~~ THEN REPLY #74521 /* ~As you wish.~ */ EXIT
  IF ~~ THEN REPLY #77362 /* ~Seriously? SERIOUSLY?~ */ GOTO 810
END

IF ~~ THEN BEGIN 797 // from: 794.0
  SAY #77463 /* ~I call them what they are: parasites all.~ [OH77463] */
  IF ~~ THEN REPLY #77464 /* ~You can't expect me to do nothing while you malign my friends and allies, Dorn. Your new sword will be put to use sooner than you expected.~ */ GOTO 803
  IF ~~ THEN REPLY #77465 /* ~Your new found power has blinded you, Dorn. These people are not without their uses.~ */ GOTO 798
END

IF ~~ THEN BEGIN 798 // from: 797.1 795.1
  SAY #77466 /* ~Well—I suppose one would suffice.~ [OH77466] */
  IF ~~ THEN REPLY #77467 /* ~You've gained a sword and lost your mind, Dorn.~ */ GOTO 738
  IF ~~ THEN REPLY #77468 /* ~That's better. Much more reasonable.~ */ GOTO 796
  IF ~~ THEN REPLY #77469 /* ~You think I'd kill one of them for you? You overestimate your value to me, half-orc.~ */ GOTO 732
END

IF ~~ THEN BEGIN 799 // from:
  SAY #77470 /* ~Whatever purpose I see fit, of course.~ [OH77470] */
  IF ~~ THEN GOTO 800
END

IF ~~ THEN BEGIN 800 // from: 799.0 789.1
  SAY #77471 /* ~With this blade in my hand, my dreams shall become reality.~ [OH77471] */
  IF ~~ THEN DO ~SetGlobal("OHD_ritual","OH5120",10)
StartCutSceneMode()
StartCutSceneEx("ohdcut9d",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 801 // from: 790.0
  SAY #77472 /* ~Whatever I choose. With this ebon blade in my hand, nothing is beyond my power.~ [OH77472] */
  IF ~~ THEN DO ~SetGlobal("OHD_ritual","OH5120",10)
StartCutSceneMode()
StartCutSceneEx("ohdcut9d",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 802 // from: 794.1
  SAY #77473 /* ~You're wrong. It's only now, after all this time, that I finally see things clearly.~ [OH77473] */
  IF ~~ THEN GOTO 795
END

IF ~~ THEN BEGIN 803 // from: 797.0
  SAY #77253 /* ~Let your friends bury you, <PRO_RACE>!~ [OH77253] */
  IF ~~ THEN DO ~AddJournalEntry(92577,INFO)
SetGlobal("OHD_PLOT","GLOBAL",-1)
SetGlobal("KICKEDOUT","LOCALS",1)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
ActionOverride("DORN",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 804 // from:
  SAY #77476 /* ~My new friend shall explain for me!~ [OH77476] */
  IF ~~ THEN DO ~AddJournalEntry(92583,INFO)
SetGlobal("OHD_ritual","OH5120",16)
ActionOverride("ohdugoth",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 805 // from:
  SAY #77482 /* ~It is true, Ur-Gothoz. Azothet's power is now mine.~ [OH77482] */
  IF ~~ THEN EXTERN ~OHDUGOTH~ 35
END

IF ~~ THEN BEGIN 806 // from:
  SAY #77484 /* ~I sought only to do as I believed you would wish.~ [OH77484] */
  IF ~~ THEN EXTERN ~OHDUGOTH~ 36
END

IF ~~ THEN BEGIN 807 // from:
  SAY #77486 /* ~Thank you, Ur-Gothoz.~ [OH77486] */
  IF ~~ THEN DO ~AddJournalEntry(92586,INFO)
StartCutSceneEx("ohdcut9g",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 808 // from:
  SAY #77488 /* ~Azothet is no more. She is bound in this sword; her power is now mine.~ [OH77488] */
  IF ~~ THEN EXTERN ~OHDUGOTH~ 38
END

IF ~~ THEN BEGIN 809 // from:
  SAY #90363 /* ~Die in the name of Dorn Il-Khan!~ [OH90363] */
  IF ~~ THEN DO ~AddJournalEntry(92583,INFO)
SetGlobal("OHD_ritual","OH5120",16)
ActionOverride("ohdugoth",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 810 // from: 796.1
  SAY #77490 /* ~I offer you everything and you refuse? You've made a grave error, <CHARNAME>. Once, I might have let this insult pass, but no more. I'll take your Bhaalspawn power for myself, and we shall be together forever!~ [OH77490] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 811 // from:
  SAY #77491 /* ~I knew you were the one, <CHARNAME>—I knew it from the first moment I laid eyes upon you. Together we are as gods... The Abyss will tremble and the heavens fall before us!~ [OH77491] */
  IF ~~ THEN REPLY #77492 /* ~Shut up and kiss me, Dorn.~ */ EXIT
  IF ~~ THEN REPLY #77493 /* ~Is that it? And here I thought we'd be doing something impressive.~ */ EXIT
  IF ~~ THEN REPLY #77494 /* ~May the gods help those who stand against us. Nothing else will save them.~ */ EXIT
END

IF WEIGHT #48 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("OHD_ritual","OH5120",19)
~ THEN BEGIN 812 // from:
  SAY #77495 /* ~Freedom, at last... But the cost...~ [OH77495] */
  IF ~~ THEN REPLY #77496 /* ~One's freedom is a prize to be valued above all else.~ */ DO ~SetGlobal("OHD_ritual","OH5120",20)
~ GOTO 813
  IF ~~ THEN REPLY #77497 /* ~I'd tell you to look on the bright side, Dorn... if I seriously believed you had one.~ */ DO ~SetGlobal("OHD_ritual","OH5120",20)
~ EXIT
  IF ~~ THEN REPLY #77498 /* ~Count yourself lucky you didn't pay for it with your life.~ */ DO ~SetGlobal("OHD_ritual","OH5120",20)
~ GOTO 814
END

IF ~~ THEN BEGIN 813 // from: 812.0
  SAY #77499 /* ~Without a patron, my powers are diminished, but my options are greatly increased. And from now on, the blood I shed will be for my benefit and mine alone. ~ [OH77499] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 814 // from: 812.2
  SAY #77500 /* ~True enough... Though there's many who will pay for it with theirs.~ [OH77500] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 815 // from:
  SAY #81446 /* ~A wise one.~ */
  IF ~~ THEN EXTERN ~HEXXAT~ 65
  IF ~  IsValidForPartyDialogue("jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 548
END

IF ~~ THEN BEGIN 816 // from:
  SAY #82277 /* ~Speak for yourself, <CHARNAME>.~ */
  IF ~~ THEN EXTERN ~OHHGM03~ 0
END

IF ~~ THEN BEGIN 817 // from:
  SAY #83352 /* ~Where's the challenge in that?~ */
  IF ~~ THEN EXTERN ~HEXXATJ~ 384
END

IF ~~ THEN BEGIN 818 // from:
  SAY #83354 /* ~It's only in being tested that we know our strength.~ */
  IF ~~ THEN EXTERN ~HEXXATJ~ 382
END

IF ~~ THEN BEGIN 819 // from:
  SAY #84237 /* ~We can kill him now, right?~ */
  IF ~~ THEN EXTERN ~OHHQAIS~ 24
END

IF WEIGHT #49 /* Triggers after states #: 843 844 845 even though they appear after this state */
~  Global("OHH_dornconflict","GLOBAL",2)
~ THEN BEGIN 820 // from:
  SAY #100156 /* ~Keep your eyes to yourself, vampire. ~ */
  IF ~~ THEN DO ~SetGlobal("OHH_dornconflict","GLOBAL",3)
~ EXTERN ~HEXXATJ~ 256
END

IF ~~ THEN BEGIN 821 // from:
  SAY #100158 /* ~Do not play games with me. <CHARNAME> is mine.~ */
  IF ~~ THEN EXTERN ~HEXXATJ~ 257
END

IF ~~ THEN BEGIN 822 // from:
  SAY #100160 /* ~I think she is something you will never possess while I live.~ */
  IF ~~ THEN REPLY #100168 /* ~I'm sorry, Hexxat. Dorn and I share something special.~ */ DO ~SetGlobal("HexxatRomanceActive","GLOBAL",3)
~ EXTERN ~HEXXATJ~ 258
  IF ~~ THEN REPLY #100169 /* ~You presume too much, Dorn. ~ */ DO ~SetGlobal("DornRomanceActive","GLOBAL",3)
~ GOTO 823
  IF ~~ THEN REPLY #100170 /* ~Come now. Surely the three of us can reach an accommodation...~ */ GOTO 825
END

IF ~~ THEN BEGIN 823 // from: 822.1
  SAY #100162 /* ~You would take this leech as a lover? So be it.~ */
  IF ~~ THEN GOTO 824
END

IF ~~ THEN BEGIN 824 // from: 826.0 823.0
  SAY #100163 /* ~I'll enjoy seeing her drain your lifeblood and toss you aside for her next victim.~ */
  IF ~~ THEN EXTERN ~HEXXATJ~ 259
END

IF ~~ THEN BEGIN 825 // from: 822.2
  SAY #100165 /* ~If you would be mine, <CHARNAME>, you must be mine alone.~ */
  IF ~~ THEN REPLY #100171 /* ~I am nobody's, Dorn. Certainly not yours.~ */ DO ~SetGlobal("DornRomanceActive","GLOBAL",3)
~ GOTO 826
  IF ~~ THEN REPLY #100172 /* ~Then I am yours.~ */ DO ~SetGlobal("HexxatRomanceActive","GLOBAL",3)
~ EXTERN ~HEXXATJ~ 260
END

IF ~~ THEN BEGIN 826 // from: 825.0
  SAY #100166 /* ~So you would rather the vampire? Pfah.~ */
  IF ~~ THEN GOTO 824
END

IF ~~ THEN BEGIN 827 // from:
  SAY #89489 /* ~You'll rue the day you try to exchange me for a bear, <CHARNAME>.~ */
  IF ~~ THEN EXIT
  IF ~  IsValidForPartyDialogue("mazzy")
~ THEN EXTERN ~MAZZYJ~ 209
END

IF ~~ THEN BEGIN 828 // from:
  SAY #93670 /* ~Indeed. Vengeance is a worthy goal—let it focus your thoughts, sharpen them to a point you may then plunge into the hearts of your foes.~ */
  IF ~~ THEN EXIT
  IF ~  IsValidForPartyDialogue("VALYGAR")
~ THEN EXTERN ~VALYGARJ~ 132
END

IF ~~ THEN BEGIN 829 // from:
  SAY #88214 /* ~Ha. Yes, <CHARNAME> is good with the obvious.~ */
  IF ~~ THEN EXTERN ~OHNREGI~ 2
END

IF ~~ THEN BEGIN 830 // from:
  SAY #88216 /* ~You are no brother of mine. Keep your distance.~ */
  IF ~~ THEN EXTERN ~OHNREGI~ 3
END

IF ~~ THEN BEGIN 831 // from:
  SAY #93667 /* ~<CHARNAME>'s restraint has saved your life. You are fortunate <PRO_HESHE> was here to stay my hand.~ */
  IF ~~ THEN DO ~SetGlobal("ohn_regi_plot","global",7)
~ EXIT
END

IF ~~ THEN BEGIN 832 // from:
  SAY #102304 /* ~Take the offer, <CHARNAME>. I like this woman's style.~ */
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Yoshimo")
~ THEN REPLY #21513 /* ~How do you know of my involvement with the Shadow Thieves, or even that they are Shadow Thieves?~ */ EXTERN ~BODHI~ 7
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Yoshimo")
~ THEN REPLY #21514 /* ~You know an awful lot about me. Where have you learned all of this?~ */ EXTERN ~BODHI~ 7
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Yoshimo")
~ THEN REPLY #21515 /* ~It sounds like you've been spying on me. Why should I trust you?~ */ EXTERN ~BODHI~ 8
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Yoshimo")
~ THEN REPLY #21812 /* ~Sweet deal, but what do you gain? I am no fool! What is it you will take from me?~ */ EXTERN ~BODHI~ 9
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 154
  IF ~  !IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 149
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 408
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 126
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 59
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 88
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 222
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 98
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 76
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Yoshimo")
~ THEN REPLY #59400 /* ~I don't care about my "friend." I want Irenicus for revenge and for what he can do for me!~ */ EXTERN ~BODHI~ 133
  IF ~  IsValidForPartyDialogue("hexxat")
~ THEN EXTERN ~HEXXATJ~ 595
END

IF ~~ THEN BEGIN 833 // from:
  SAY #102303 /* ~Some things are worth the risk, moonmaiden.~ */
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Yoshimo")
~ THEN REPLY #21513 /* ~How do you know of my involvement with the Shadow Thieves, or even that they are Shadow Thieves?~ */ EXTERN ~BODHI~ 7
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Yoshimo")
~ THEN REPLY #21514 /* ~You know an awful lot about me. Where have you learned all of this?~ */ EXTERN ~BODHI~ 7
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Yoshimo")
~ THEN REPLY #21515 /* ~It sounds like you've been spying on me. Why should I trust you?~ */ EXTERN ~BODHI~ 8
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Yoshimo")
~ THEN REPLY #21812 /* ~Sweet deal, but what do you gain? I am no fool! What is it you will take from me?~ */ EXTERN ~BODHI~ 9
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 154
  IF ~  !IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 149
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 408
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 126
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 59
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 88
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 222
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 98
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 76
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Yoshimo")
~ THEN REPLY #59400 /* ~I don't care about my "friend." I want Irenicus for revenge and for what he can do for me!~ */ EXTERN ~BODHI~ 133
  IF ~  IsValidForPartyDialogue("hexxat")
~ THEN EXTERN ~HEXXATJ~ 596
  IF ~  IsValidForPartyDialogue("dorn")
~ THEN GOTO 834
END

IF ~~ THEN BEGIN 834 // from: 833.15
  SAY #102304 /* ~Take the offer, <CHARNAME>. I like this woman's style.~ */
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Yoshimo")
~ THEN REPLY #21513 /* ~How do you know of my involvement with the Shadow Thieves, or even that they are Shadow Thieves?~ */ EXTERN ~BODHI~ 7
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Yoshimo")
~ THEN REPLY #21514 /* ~You know an awful lot about me. Where have you learned all of this?~ */ EXTERN ~BODHI~ 7
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Yoshimo")
~ THEN REPLY #21515 /* ~It sounds like you've been spying on me. Why should I trust you?~ */ EXTERN ~BODHI~ 8
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Yoshimo")
~ THEN REPLY #21812 /* ~Sweet deal, but what do you gain? I am no fool! What is it you will take from me?~ */ EXTERN ~BODHI~ 9
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 154
  IF ~  !IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 149
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 408
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 126
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 59
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 88
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 222
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 98
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 76
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Yoshimo")
~ THEN REPLY #59400 /* ~I don't care about my "friend." I want Irenicus for revenge and for what he can do for me!~ */ EXTERN ~BODHI~ 133
  IF ~  IsValidForPartyDialogue("hexxat")
~ THEN EXTERN ~HEXXATJ~ 596
END

IF ~~ THEN BEGIN 835 // from:
  SAY #102303 /* ~Some things are worth the risk, moonmaiden.~ */
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Yoshimo")
~ THEN REPLY #21513 /* ~How do you know of my involvement with the Shadow Thieves, or even that they are Shadow Thieves?~ */ EXTERN ~BODHI~ 7
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Yoshimo")
~ THEN REPLY #21514 /* ~You know an awful lot about me. Where have you learned all of this?~ */ EXTERN ~BODHI~ 7
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Yoshimo")
~ THEN REPLY #21515 /* ~It sounds like you've been spying on me. Why should I trust you?~ */ EXTERN ~BODHI~ 8
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Yoshimo")
~ THEN REPLY #21812 /* ~Sweet deal, but what do you gain? I am no fool! What is it you will take from me?~ */ EXTERN ~BODHI~ 9
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 154
  IF ~  !IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 149
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 408
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 126
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 59
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 88
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 222
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 98
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 76
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Yoshimo")
~ THEN REPLY #59400 /* ~I don't care about my "friend." I want Irenicus for revenge and for what he can do for me!~ */ EXTERN ~BODHI~ 133
  IF ~  IsValidForPartyDialogue("hexxat")
~ THEN EXTERN ~HEXXATJ~ 597
  IF ~  IsValidForPartyDialogue("dorn")
~ THEN GOTO 836
END

IF ~~ THEN BEGIN 836 // from: 835.15
  SAY #102304 /* ~Take the offer, <CHARNAME>. I like this woman's style.~ */
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Yoshimo")
~ THEN REPLY #21513 /* ~How do you know of my involvement with the Shadow Thieves, or even that they are Shadow Thieves?~ */ EXTERN ~BODHI~ 7
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Yoshimo")
~ THEN REPLY #21514 /* ~You know an awful lot about me. Where have you learned all of this?~ */ EXTERN ~BODHI~ 7
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Yoshimo")
~ THEN REPLY #21515 /* ~It sounds like you've been spying on me. Why should I trust you?~ */ EXTERN ~BODHI~ 8
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Yoshimo")
~ THEN REPLY #21812 /* ~Sweet deal, but what do you gain? I am no fool! What is it you will take from me?~ */ EXTERN ~BODHI~ 9
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 154
  IF ~  !IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 149
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 408
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 126
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 59
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
IsValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 88
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
IsValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 222
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 98
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Korgan")
IsValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 76
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Mazzy")
!IsValidForPartyDialogue("Jaheira")
!IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Valygar")
!IsValidForPartyDialogue("Aerie")
!IsValidForPartyDialogue("Anomen")
!IsValidForPartyDialogue("Korgan")
!IsValidForPartyDialogue("Yoshimo")
~ THEN REPLY #59400 /* ~I don't care about my "friend." I want Irenicus for revenge and for what he can do for me!~ */ EXTERN ~BODHI~ 133
  IF ~  IsValidForPartyDialogue("hexxat")
~ THEN EXTERN ~HEXXATJ~ 597
END

IF ~~ THEN BEGIN 837 // from:
  SAY #102324 /* ~One of the greatest elven cities of the age, and it disappeared right in front of your eyes. Hah!~ */
  IF ~  !IsValidForPartyDialogue("NALIA")
!IsValidForPartyDialogue("MINSC")
!IsValidForPartyDialogue("CERND")
~ THEN EXTERN ~C6ELHAN2~ 29
  IF ~  IsValidForPartyDialogue("NALIA")
~ THEN EXTERN ~NALIAJ~ 289
  IF ~  IsValidForPartyDialogue("MINSC")
!IsValidForPartyDialogue("NALIA")
~ THEN EXTERN ~MINSCJ~ 185
  IF ~  IsValidForPartyDialogue("CERND")
!IsValidForPartyDialogue("NALIA")
!IsValidForPartyDialogue("MINSC")
~ THEN EXTERN ~CERNDJ~ 122
  IF ~  IsValidForPartyDialogue("hexxat")
~ THEN EXTERN ~HEXXATJ~ 607
  IF ~  IsValidForPartyDialogue("rasaad")
~ THEN EXTERN ~RASAADJ~ 788
  IF ~  IsValidForPartyDialogue("neera")
~ THEN EXTERN ~NEERAJ~ 133
END

IF ~~ THEN BEGIN 838 // from:
  SAY #102330 /* ~Hah! Prepare for the slaughter, Bodhi!~ */
  IF ~  !IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("MINSC")
~ THEN EXTERN ~C6BODHI~ 14
  IF ~  IsValidForPartyDialogue("JAHEIRA")
~ THEN EXTERN ~JAHEIRAJ~ 488
  IF ~  IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("JAHEIRA")
~ THEN EXTERN ~ANOMENJ~ 278
  IF ~  IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("ANOMEN")
~ THEN EXTERN ~HAERDAJ~ 128
  IF ~  IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("HAERDALIS")
~ THEN EXTERN ~KORGANJ~ 158
  IF ~  IsValidForPartyDialogue("MINSC")
!IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~MINSCJ~ 184
  IF ~  IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("MINSC")
!IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~IMOEN2J~ 36
  IF ~  Global("OHR_rint_bodhi","GLOBAL",0)
InParty("rasaad")
IsValidForPartyDialogue("rasaad")
~ THEN DO ~SetGlobal("OHR_rint_bodhi","GLOBAL",1)
~ EXTERN ~RASAADJ~ 312
  IF ~  Global("OHD_dint_bodhi","GLOBAL",0)
InParty("Dorn")
IsValidForPartyDialogue("Dorn")
~ THEN DO ~SetGlobal("OHD_dint_bodhi","GLOBAL",1)
~ GOTO 16
  IF ~  Global("OHH_hint_bodhi","GLOBAL",0)
InParty("hexxat")
IsValidForPartyDialogue("hexxat")
~ THEN DO ~SetGlobal("OHH_hint_bodhi","GLOBAL",1)
~ EXTERN ~HEXXATJ~ 269
  IF ~  IsValidForPartyDialogue("hexxat")
~ THEN EXTERN ~HEXXATJ~ 609
END

IF ~~ THEN BEGIN 839 // from:
  SAY #102330 /* ~Hah! Prepare for the slaughter, Bodhi!~ */
  IF ~  !IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("MINSC")
~ THEN EXTERN ~C6BODHI~ 14
  IF ~  IsValidForPartyDialogue("JAHEIRA")
~ THEN EXTERN ~JAHEIRAJ~ 488
  IF ~  IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("JAHEIRA")
~ THEN EXTERN ~ANOMENJ~ 278
  IF ~  IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("ANOMEN")
~ THEN EXTERN ~HAERDAJ~ 128
  IF ~  IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("HAERDALIS")
~ THEN EXTERN ~KORGANJ~ 158
  IF ~  IsValidForPartyDialogue("MINSC")
!IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~MINSCJ~ 184
  IF ~  IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("MINSC")
!IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~IMOEN2J~ 36
  IF ~  Global("OHR_rint_bodhi","GLOBAL",0)
InParty("rasaad")
IsValidForPartyDialogue("rasaad")
~ THEN DO ~SetGlobal("OHR_rint_bodhi","GLOBAL",1)
~ EXTERN ~RASAADJ~ 312
  IF ~  Global("OHD_dint_bodhi","GLOBAL",0)
InParty("Dorn")
IsValidForPartyDialogue("Dorn")
~ THEN DO ~SetGlobal("OHD_dint_bodhi","GLOBAL",1)
~ GOTO 16
  IF ~  Global("OHH_hint_bodhi","GLOBAL",0)
InParty("hexxat")
IsValidForPartyDialogue("hexxat")
~ THEN DO ~SetGlobal("OHH_hint_bodhi","GLOBAL",1)
~ EXTERN ~HEXXATJ~ 269
  IF ~  IsValidForPartyDialogue("hexxat")
~ THEN EXTERN ~HEXXATJ~ 610
END

IF ~~ THEN BEGIN 840 // from:
  SAY #102330 /* ~Hah! Prepare for the slaughter, Bodhi!~ */
  IF ~  !IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("MINSC")
~ THEN EXTERN ~C6BODHI~ 14
  IF ~  IsValidForPartyDialogue("JAHEIRA")
~ THEN EXTERN ~JAHEIRAJ~ 488
  IF ~  IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("JAHEIRA")
~ THEN EXTERN ~ANOMENJ~ 278
  IF ~  IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("ANOMEN")
~ THEN EXTERN ~HAERDAJ~ 128
  IF ~  IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("HAERDALIS")
~ THEN EXTERN ~KORGANJ~ 158
  IF ~  IsValidForPartyDialogue("MINSC")
!IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~MINSCJ~ 184
  IF ~  IsValidForPartyDialogue("Imoen2")
!IsValidForPartyDialogue("MINSC")
!IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~IMOEN2J~ 36
  IF ~  Global("OHR_rint_bodhi","GLOBAL",0)
InParty("rasaad")
IsValidForPartyDialogue("rasaad")
~ THEN DO ~SetGlobal("OHR_rint_bodhi","GLOBAL",1)
~ EXTERN ~RASAADJ~ 312
  IF ~  Global("OHD_dint_bodhi","GLOBAL",0)
InParty("Dorn")
IsValidForPartyDialogue("Dorn")
~ THEN DO ~SetGlobal("OHD_dint_bodhi","GLOBAL",1)
~ GOTO 16
  IF ~  Global("OHH_hint_bodhi","GLOBAL",0)
InParty("hexxat")
IsValidForPartyDialogue("hexxat")
~ THEN DO ~SetGlobal("OHH_hint_bodhi","GLOBAL",1)
~ EXTERN ~HEXXATJ~ 269
  IF ~  IsValidForPartyDialogue("hexxat")
~ THEN EXTERN ~HEXXATJ~ 611
END

IF ~~ THEN BEGIN 841 // from:
  SAY #102337 /* ~ 'Twould amuse me to hear her screams, but she might have more than entertainment value. I leave the decision to you.~ */
  IF ~~ THEN EXIT
  IF ~  IsValidForPartyDialogue("rasaad")
~ THEN EXTERN ~RASAADJ~ 791
END

IF ~~ THEN BEGIN 842 // from:
  SAY #102337 /* ~ 'Twould amuse me to hear her screams, but she might have more than entertainment value. I leave the decision to you.~ */
  IF ~~ THEN EXIT
  IF ~  IsValidForPartyDialogue("rasaad")
~ THEN EXTERN ~RASAADJ~ 792
END

IF WEIGHT #0 ~  Global("OH_UnderdarkComments","GLOBAL",1)
~ THEN BEGIN 843 // from:
  SAY #102296 /* ~What is this place you have brought us to, <CHARNAME>?~ */
  IF ~~ THEN DO ~SetGlobal("OH_UnderdarkComments","GLOBAL",2)
~ EXIT
  IF ~  IsValidForPartyDialogue("hexxat")
~ THEN EXTERN ~HEXXATJ~ 612
  IF ~  IsValidForPartyDialogue("neera")
~ THEN EXTERN ~NEERAJ~ 137
  IF ~  IsValidForPartyDialogue("rasaad")
~ THEN EXTERN ~RASAADJ~ 793
END

IF WEIGHT #1 ~  Global("OH_tanner","AR0502",1)
~ THEN BEGIN 844 // from:
  SAY #102313 /* ~ 'Ware, <CHARNAME>! Something is amiss here.~ */
  IF ~~ THEN DO ~SetGlobal("OH_tanner","AR0502",2)
~ EXIT
  IF ~  IsValidForPartyDialogue("hexxat")
~ THEN EXTERN ~HEXXATJ~ 614
  IF ~  IsValidForPartyDialogue("neera")
~ THEN EXTERN ~NEERAJ~ 139
  IF ~  IsValidForPartyDialogue("rasaad")
~ THEN EXTERN ~RASAADJ~ 794
END

IF WEIGHT #2 ~  Global("OH_Adalon","AR2102",1)
~ THEN BEGIN 845 // from:
  SAY #102335 /* ~Haha! Now this is a battle I can get behind!~ */
  IF ~~ THEN DO ~SetGlobal("OH_Adalon","AR2102",2)
~ EXIT
  IF ~  InParty("rasaad")
~ THEN DO ~SetGlobal("OH_Adalon","AR2102",2)
ActionOverride("rasaad",ChangeAIScript("",DEFAULT))
ActionOverride("rasaad",Enemy())
ActionOverride("rasaad",LeaveParty())
~ EXIT
END

IF ~~ THEN BEGIN 846 // from:
  SAY #88459 /* ~Leave the brat behind. ~ */
  IF ~~ THEN EXTERN ~NEERA~ 22
  IF ~  IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 165
  IF ~  IsValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 135
END

IF ~~ THEN BEGIN 847 // from:
  SAY #103149 /* ~My patron grants me more power than you ever could, vampire. And I doubt she'll let me bow to another.~ */
  IF ~~ THEN EXTERN ~BODHIAMB~ 28
END

IF WEIGHT #50 ~  AreaCheck("OH4230")
Global("OHR_FINALE","GLOBAL",17)
~ THEN BEGIN 848 // from:
  SAY #83156 /* ~I can think of few more appropriate places to meet my end, <CHARNAME>—but I'd rather not meet it yet.~ */
  IF ~~ THEN DO ~SetGlobal("OHR_FINALE","GLOBAL",18)
SetGlobalTimer("OHR_TIMER_ALORFIGHT","OH4230",THREE_MINUTES)
~ EXIT
  IF ~  IsValidForPartyDialogue("HAERDALIS")
~ THEN EXTERN ~HAERDAJ~ 182
  IF ~  IsValidForPartyDialogue("KORGAN")
~ THEN EXTERN ~KORGANJ~ 265
  IF ~  IsValidForPartyDialogue("AERIE")
~ THEN EXTERN ~AERIEJ~ 275
  IF ~  IsValidForPartyDialogue("JAN")
~ THEN EXTERN ~JANJ~ 222
  IF ~  IsValidForPartyDialogue("VALYGAR")
~ THEN EXTERN ~VALYGARJ~ 160
  IF ~  IsValidForPartyDialogue("JAHEIRA")
~ THEN EXTERN ~JAHEIRAJ~ 601
  IF ~  IsValidForPartyDialogue("NEERA")
~ THEN EXTERN ~NEERAJ~ 535
END

IF WEIGHT #51 ~  AreaCheck("OH4220")
Global("OHR_FINALE","GLOBAL",24)
~ THEN BEGIN 849 // from:
  SAY #83251 /* ~We took care of the hard part.~ */
  IF ~~ THEN EXTERN ~OHRDWS01~ 11
  IF ~  StateCheck("OHRDWS01",STATE_REALLY_DEAD)
~ THEN EXTERN ~OHRDWS02~ 6
  IF ~  IsValidForPartyDialogue("HAERDALIS")
~ THEN EXTERN ~HAERDAJ~ 183
END

IF ~~ THEN BEGIN 850 // from:
  SAY #83273 /* ~If you'd really like to know, I've some theories I could share with you.~ */
  IF ~~ THEN EXTERN ~RASAADJ~ 954
  IF ~  IsValidForPartyDialogue("NEERA")
~ THEN EXTERN ~NEERAJ~ 537
END

IF ~~ THEN BEGIN 851 // from:
  SAY #82717 /* ~For myself!~ */
  IF ~~ THEN EXIT
  IF ~  IsValidForPartyDialogue("HEXXAT")
~ THEN EXTERN ~HEXXATJ~ 622
  IF ~  IsValidForPartyDialogue("MINSC")
~ THEN EXTERN ~MINSCJ~ 276
END

IF ~~ THEN BEGIN 852 // from:
  SAY #82701 /* ~Try it, Sharran! I'll chop your mountain down with the side of my hand!~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #52 ~  Global("DornToBLovetalks","GLOBAL",2)
~ THEN BEGIN 853 // from:
  SAY #96863 /* ~We are partners, are we not? ~ */
  IF ~~ THEN REPLY #96815 /* ~We're far more than that, I think.~ */ DO ~IncrementGlobal("DornToBLovetalks","GLOBAL",1)
~ GOTO 854
  IF ~~ THEN REPLY #96816 /* ~Lovers, not partners. ~ */ DO ~IncrementGlobal("DornToBLovetalks","GLOBAL",1)
~ GOTO 854
  IF ~~ THEN REPLY #96817 /* ~Call it what you will.~ */ DO ~IncrementGlobal("DornToBLovetalks","GLOBAL",1)
~ GOTO 854
END

IF ~~ THEN BEGIN 854 // from: 853.2 853.1 853.0
  SAY #96864 /* ~I once predicted you would become a power in the realms... and I was right.~ */
  IF ~~ THEN GOTO 855
END

IF ~~ THEN BEGIN 855 // from: 854.0
  SAY #96865 /* ~I have stood by you and fought by your side. We have become lovers and more. ~ */
  IF ~~ THEN REPLY #96818 /* ~Much more.~ */ GOTO 856
  IF ~~ THEN REPLY #96819 /* ~Much to my astonishment. But somehow... so we have.~ */ GOTO 856
  IF ~~ THEN REPLY #96820 /* ~What do you want?~ */ GOTO 856
END

IF ~~ THEN BEGIN 856 // from: 855.2 855.1 855.0
  SAY #96866 /* ~I would be more than your lover, <CHARNAME>. I would be your sworn brother, an avatar of your will in the realms.~ */
  IF ~~ THEN GOTO 857
END

IF ~~ THEN BEGIN 857 // from: 856.0
  SAY #96867 /* ~Will you grant me this boon, <CHARNAME>? Will you share with me your glory?~ */
  IF ~~ THEN REPLY #96821 /* ~It will be yours.~ */ GOTO 858
  IF ~~ THEN REPLY #96822 /* ~That's a lot to ask for, Dorn.~ */ GOTO 859
  IF ~~ THEN REPLY #96823 /* ~You're mad, half-orc.~ */ GOTO 859
END

IF ~~ THEN BEGIN 858 // from: 860.0 859.0 857.0
  SAY #96868 /* ~We WILL make our mark upon the realms, <CHARNAME>. I promise you that.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 859 // from: 857.2 857.1
  SAY #96869 /* ~I simply ask you to share your power with me. Is that not what partners do?~ */
  IF ~~ THEN REPLY #96824 /* ~I suppose. Fine, then. You will have it.~ */ GOTO 858
  IF ~~ THEN REPLY #96825 /* ~Not these partners.~ */ GOTO 860
  IF ~~ THEN REPLY #96826 /* ~This is what you wanted all along, wasn't it? I was nothing to you but a means to an end.~ */ GOTO 862
END

IF ~~ THEN BEGIN 860 // from: 859.1
  SAY #96870 /* ~Then you do not truly love me. What is it? Do you love me, or do you distrust me?~ */
  IF ~~ THEN REPLY #96827 /* ~If it will make you happy, Dorn, I will share what power I can.~ */ GOTO 858
  IF ~~ THEN REPLY #96828 /* ~I can't. I'm sorry.~ */ GOTO 861
END

IF ~~ THEN BEGIN 861 // from: 860.1
  SAY #96871 /* ~You are not the <PRO_MANWOMAN> I thought you were. We are finished, you and I. ~ */
  IF ~~ THEN DO ~SetGlobal("DornRomanceActive","GLOBAL",3)
SetGlobal("OHD_romancerejected","GLOBAL",1)
RealSetGlobalTimer("OHD_rejected_timer","GLOBAL",ONE_DAY)
~ EXIT
END

IF ~~ THEN BEGIN 862 // from: 859.2
  SAY #96872 /* ~I thought you more than that. Much more.~ */
  IF ~~ THEN GOTO 863
END

IF ~~ THEN BEGIN 863 // from: 862.0
  SAY #96873 /* ~I see now I was wrong. We are finished, you and I. ~ */
  IF ~~ THEN DO ~SetGlobal("DornRomanceActive","GLOBAL",3)
SetGlobal("OHD_romancerejected","GLOBAL",1)
RealSetGlobalTimer("OHD_rejected_timer","GLOBAL",ONE_DAY)
~ EXIT
END

IF WEIGHT #53 ~  Global("DornToBLovetalks","GLOBAL",4)
~ THEN BEGIN 864 // from:
  SAY #96874 /* ~The time is almost upon us. We will face Amelyssan, and you will take your rightful place as a new power in the realms.~ */
  IF ~~ THEN REPLY #96829 /* ~Let's just get this over with.~ */ DO ~IncrementGlobal("DornToBLovetalks","GLOBAL",1)
~ GOTO 866
  IF ~~ THEN REPLY #96830 /* ~WE will take our rightful place as a power in the realms. ~ */ DO ~IncrementGlobal("DornToBLovetalks","GLOBAL",1)
~ GOTO 865
  IF ~~ THEN REPLY #96831 /* ~Yes. I will. ~ */ DO ~IncrementGlobal("DornToBLovetalks","GLOBAL",1)
~ GOTO 866
END

IF ~~ THEN BEGIN 865 // from: 864.1
  SAY #96875 /* ~Of course.~ */
  IF ~~ THEN GOTO 866
END

IF ~~ THEN BEGIN 866 // from: 865.0 864.2 864.0
  SAY #96876 /* ~How do you feel?~ */
  IF ~~ THEN REPLY #96832 /* ~I am eager to see this done.~ */ GOTO 867
  IF ~~ THEN REPLY #96833 /* ~Worried. A little anxious. ~ */ GOTO 868
  IF ~~ THEN REPLY #96834 /* ~A little peckish. I could use a sandwich right about now.~ */ GOTO 870
  IF ~~ THEN REPLY #96835 /* ~Relieved. This has been a long time coming.~ */ GOTO 869
END

IF ~~ THEN BEGIN 867 // from: 866.0
  SAY #96877 /* ~As am I. It will be a good fight.~ */
  IF ~~ THEN GOTO 871
END

IF ~~ THEN BEGIN 868 // from: 866.1
  SAY #96878 /* ~Do not be. We WILL get what we deserve.~ */
  IF ~~ THEN GOTO 871
END

IF ~~ THEN BEGIN 869 // from: 866.3
  SAY #96879 /* ~It has.~ */
  IF ~~ THEN GOTO 871
END

IF ~~ THEN BEGIN 870 // from: 866.2
  SAY #96880 /* ~Your levity is misplaced, as usual.~ */
  IF ~~ THEN GOTO 871
END

IF ~~ THEN BEGIN 871 // from: 870.0 869.0 868.0 867.0
  SAY #96881 /* ~Remember what you feel at this moment. What happens next will shape the fate of the realms.~ */
  IF ~~ THEN GOTO 872
END

IF ~~ THEN BEGIN 872 // from: 871.0
  SAY #96882 /* ~Do not forget what you have promised me, <CHARNAME>. ~ */
  IF ~~ THEN REPLY #96836 /* ~I won't. We shall wield a power supreme.~ */ GOTO 873
  IF ~~ THEN REPLY #96837 /* ~I can't give you that sort of power, Dorn.~ */ GOTO 874
  IF ~~ THEN REPLY #96838 /* ~I'm sorry, Dorn. I can't give you what you want.~ */ GOTO 875
END

IF ~~ THEN BEGIN 873 // from: 874.0 872.0
  SAY #96883 /* ~A force like none the realms have seen before.~ */
  IF ~~ THEN GOTO 876
END

IF ~~ THEN BEGIN 874 // from: 872.1
  SAY #96884 /* ~You WILL grant me the power you have promised, my love. Or I will take it from you.~ */
  IF ~~ THEN REPLY #96839 /* ~Hah! That's my man. Don't worry, Dorn: I will share it when the time comes.~ */ GOTO 873
  IF ~~ THEN REPLY #96840 /* ~You'll try. And then you'll die.~ */ GOTO 901
END

IF ~~ THEN BEGIN 875 // from: 878.1 877.2 876.2 872.2
  SAY #96885 /* ~What?! I give you my love and devotion, and this is how you repay me?~ */
  IF ~~ THEN GOTO 901
END

IF ~~ THEN BEGIN 876 // from: 873.0
  SAY #96886 /* ~<CHARNAME> of Candlekeep. Bhaalspawn. Will you bleed for love of me?~ */
  IF ~~ THEN REPLY #96841 /* ~I will.~ */ GOTO 877
  IF ~~ THEN REPLY #96842 /* ~You would have me cut myself?~ */ GOTO 878
  IF ~~ THEN REPLY #96843 /* ~No. I'm sorry, Dorn. I can't do it.~ */ GOTO 875
END

IF ~~ THEN BEGIN 877 // from: 878.0 876.0
  SAY #96887 /* ~There. Now say the words.~ */
  IF ~~ THEN REPLY #96844 /* ~Dorn of clan Il-Khan. Scourge of the Sword Coast. Will you bleed for love of me?~ */ GOTO 879
  IF ~~ THEN REPLY #96845 /* ~Dorn Il-Khan, blah blah blah, cut yourself and bleed on me. ~ */ GOTO 880
  IF ~~ THEN REPLY #96846 /* ~I... I can't. I'm sorry.~ */ GOTO 875
END

IF ~~ THEN BEGIN 878 // from: 876.1
  SAY #96888 /* ~Take the knife, <CHARNAME>. ~ */
  IF ~~ THEN REPLY #96847 /* ~Very well.~ */ GOTO 877
  IF ~~ THEN REPLY #96848 /* ~Forget it, Dorn. This isn't happening.~ */ GOTO 875
END

IF ~~ THEN BEGIN 879 // from: 877.0
  SAY #96889 /* ~I will. ~ */
  IF ~~ THEN GOTO 881
END

IF ~~ THEN BEGIN 880 // from: 877.1
  SAY #96890 /* ~You would make a mockery of a sacred rite of binding?~ */
  IF ~~ THEN GOTO 901
END

IF ~~ THEN BEGIN 881 // from: 879.0
  SAY #96891 /* ~Now clasp my hand in yours.~ */
  IF ~  Gender(Player1,MALE)
~ THEN GOTO 882
  IF ~  Gender(Player1,FEMALE)
~ THEN GOTO 883
END

IF ~~ THEN BEGIN 882 // from: 881.0
  SAY #96892 /* ~Hear me, Amelyssan! <CHARNAME> and I are bonded, blood brothers, companions, and lovers!~ */
  IF ~~ THEN GOTO 884
END

IF ~~ THEN BEGIN 883 // from: 881.1
  SAY #96893 /* ~Hear me, Amelyssan! <CHARNAME> and I are bonded in blood, companions and lovers!~ */
  IF ~~ THEN GOTO 884
END

IF ~~ THEN BEGIN 884 // from: 883.0 882.0
  SAY #96894 /* ~Do you feel the ground shake beneath you? You should, for WE ARE COMING FOR YOU!~ */
  IF ~~ THEN REPLY #96849 /* ~You can run, but you can't hide, you misbegotten harlot!~ */ GOTO 885
  IF ~~ THEN REPLY #96850 /* ~That's a bit much, don't you think?~ */ GOTO 886
  IF ~~ THEN REPLY #96851 /* ~I love you.~ */ GOTO 887
END

IF ~~ THEN BEGIN 885 // from: 884.0
  SAY #96895 /* ~Hah! She will indeed. Let us go, then, my love. The future is ours for the taking.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 886 // from: 884.1
  SAY #96896 /* ~She should quake before us.~ */
  IF ~~ THEN GOTO 888
END

IF ~~ THEN BEGIN 887 // from: 884.2
  SAY #96897 /* ~And I you.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 888 // from: 886.0
  SAY #96898 /* ~Let us go, my love. The future is ours for the taking. ~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #54 ~  Global("OHD_saradushtalk","GLOBAL",1)
~ THEN BEGIN 889 // from:
  SAY #96899 /* ~Yaga-Shura dead, a city burning, and you well on your way to victory. This is no contest; it is a slaughter. Our enemies fall before us.~ */
  IF ~~ THEN DO ~SetGlobal("OHD_saradushtalk","GLOBAL",2)
RealSetGlobalTimer("DornToBLovetalksTimer","GLOBAL",EIGHTEEN_HOURS)
~ GOTO 890
END

IF ~~ THEN BEGIN 890 // from: 889.0
  SAY #96900 /* ~This is a glorious day.~ */
  IF ~~ THEN REPLY #96852 /* ~A lucky one, you mean.~ */ GOTO 891
  IF ~~ THEN REPLY #96853 /* ~I can think of a few good ways to celebrate...~ */ GOTO 892
  IF ~~ THEN REPLY #96854 /* ~Glorious? I think not.~ */ GOTO 893
END

IF ~~ THEN BEGIN 891 // from: 890.0
  SAY #96901 /* ~More than lucky. ~ */
  IF ~~ THEN GOTO 896
END

IF ~~ THEN BEGIN 892 // from: 890.1
  SAY #96902 /* ~As can I. ~ */
  IF ~~ THEN GOTO 896
END

IF ~~ THEN BEGIN 893 // from: 890.2
  SAY #96903 /* ~Are you not pleased, my love? ~ */
  IF ~~ THEN REPLY #96855 /* ~I just—this wasn't what I expected.~ */ GOTO 896
  IF ~~ THEN REPLY #96856 /* ~A city destroyed and its inhabitants dead? Oh, yes. I'm thrilled. ~ */ GOTO 894
  IF ~~ THEN REPLY #96857 /* ~Only a madman could find pleasure in this.~ */ GOTO 895
END

IF ~~ THEN BEGIN 894 // from: 893.1
  SAY #96904 /* ~So you should be.~ */
  IF ~~ THEN GOTO 896
END

IF ~~ THEN BEGIN 895 // from: 893.2
  SAY #96905 /* ~A madman, am I? You will regret your words, <CHARNAME>! ~ */
  IF ~~ THEN DO ~LeaveParty()
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 896 // from: 894.0 893.0 892.0 891.0
  SAY #96906 /* ~This is our destiny, <CHARNAME>. I have never been more sure of it. ~ */
  IF ~~ THEN REPLY #96858 /* ~Nor have I. Whatever Bhaalspawn remain will fall before me. I WILL claim the power that is my birthright.~ */ GOTO 897
  IF ~~ THEN REPLY #96859 /* ~I'm glad one of us is feeling confident.~ */ GOTO 898
  IF ~~ THEN REPLY #96860 /* ~We'll see.~ */ GOTO 899
END

IF ~~ THEN BEGIN 897 // from: 896.0
  SAY #96907 /* ~You are magnificent. ~ */
  IF ~~ THEN GOTO 900
END

IF ~~ THEN BEGIN 898 // from: 896.1
  SAY #96908 /* ~It is a certainty. ~ */
  IF ~~ THEN GOTO 900
END

IF ~~ THEN BEGIN 899 // from: 896.2
  SAY #96909 /* ~Indeed we will, my love. ~ */
  IF ~~ THEN GOTO 900
END

IF ~~ THEN BEGIN 900 // from: 899.0 898.0 897.0
  SAY #96910 /* ~The others are not awake yet... let us TRULY celebrate this great victory.~ */
  IF ~~ THEN REPLY #96861 /* ~I'm game if you are... ~ */ DO ~ClearAllActions()
StartCutSceneMode()
FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
Wait(2)
SmallWait(1)
EndCutSceneMode()
~ EXIT
  IF ~~ THEN REPLY #96862 /* ~Later. We've a long day ahead of us first.~ */ EXIT
END

IF ~~ THEN BEGIN 901 // from: 880.0 875.0 874.1
  SAY #96911 /* ~If you will not share your power with me, <CHARNAME>, I will take it!~ */
  IF ~~ THEN DO ~LeaveParty()
Enemy()
~ EXIT
END

IF WEIGHT #55 ~  Global("OHD_romancerejected","GLOBAL",2)
~ THEN BEGIN 902 // from:
  SAY #96911 /* ~If you will not share your power with me, <CHARNAME>, I will take it!~ */
  IF ~~ THEN DO ~SetGlobal("OHD_romancerejected","GLOBAL",3)
LeaveParty()
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 903 // from:
  SAY #98517 /* ~A dark fate? I think you mean a glorious one.~ */
  IF ~~ THEN EXTERN ~SARVOLO~ 9
END

IF ~~ THEN BEGIN 904 // from:
  SAY #98520 /* ~Mind yourself, taleteller, or you'll find yourself in darkness's embrace. I'll hear no more of this "dark fate" nonsense.~ */
  IF ~~ THEN EXTERN ~SARVOLO~ 9
END

IF ~~ THEN BEGIN 905 // from:
  SAY #95203 /* ~Hahah! At last the time has come. Fulfill your destiny, <CHARNAME>! Become the new god of murder and usher in a new age of chaos and destruction!~ [OH95203] */
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
  IF ~  IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 152
  IF ~  IsValidForPartyDialogue("Sarevok")
!Alignment("Sarevok",MASK_EVIL)
~ THEN EXTERN ~SAREV25J~ 2
  IF ~  IsValidForPartyDialogue("Sarevok")
Alignment("Sarevok",MASK_EVIL)
~ THEN EXTERN ~SAREV25J~ 3
  IF ~  IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 261
  IF ~  IsValidForPartyDialogue("Nalia")
~ THEN EXTERN ~NALIAJ~ 327
  IF ~  IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 167
  IF ~  IsValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 205
  IF ~  IsValidForPartyDialogue("Cernd")
~ THEN EXTERN ~CERNDJ~ 143
  IF ~  IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 211
  IF ~  IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 209
  IF ~  IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 250
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 291
  IF ~  IsValidForPartyDialogue("rasaad")
!Global("RasaadRomanceActive","GLOBAL",2)
Global("OHR_FinSol","GLOBAL",0)
~ THEN DO ~SetGlobal("OHR_FinSol","GLOBAL",1)
~ EXTERN ~RASAADJ~ 872
  IF ~  IsValidForPartyDialogue("rasaad")
Global("RasaadRomanceActive","GLOBAL",2)
Global("OHR_FinSol","GLOBAL",0)
~ THEN DO ~SetGlobal("OHR_FinSol","GLOBAL",1)
~ EXTERN ~RASAADJ~ 877
END

IF ~~ THEN BEGIN 906 // from:
  SAY #95206 /* ~Yes! The time has come, <CHARNAME>! Fulfill our destinies! Become the new god of murder, and together we will usher in an age of chaos and destruction!~ [OH95206] */
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
  IF ~  IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 152
  IF ~  IsValidForPartyDialogue("Sarevok")
!Alignment("Sarevok",MASK_EVIL)
~ THEN EXTERN ~SAREV25J~ 2
  IF ~  IsValidForPartyDialogue("Sarevok")
Alignment("Sarevok",MASK_EVIL)
~ THEN EXTERN ~SAREV25J~ 3
  IF ~  IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 261
  IF ~  IsValidForPartyDialogue("Nalia")
~ THEN EXTERN ~NALIAJ~ 327
  IF ~  IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 167
  IF ~  IsValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 205
  IF ~  IsValidForPartyDialogue("Cernd")
~ THEN EXTERN ~CERNDJ~ 143
  IF ~  IsValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 211
  IF ~  IsValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 209
  IF ~  IsValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 250
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 291
  IF ~  IsValidForPartyDialogue("rasaad")
!Global("RasaadRomanceActive","GLOBAL",2)
Global("OHR_FinSol","GLOBAL",0)
~ THEN DO ~SetGlobal("OHR_FinSol","GLOBAL",1)
~ EXTERN ~RASAADJ~ 872
  IF ~  IsValidForPartyDialogue("rasaad")
Global("RasaadRomanceActive","GLOBAL",2)
Global("OHR_FinSol","GLOBAL",0)
~ THEN DO ~SetGlobal("OHR_FinSol","GLOBAL",1)
~ EXTERN ~RASAADJ~ 877
END

IF ~~ THEN BEGIN 907 // from:
  SAY #100192 /* ~YES! Take what is rightfully yours! Take the power, become a god, and know that I, Dorn Il-Khan, am the first and most devoted worshipper of <CHARNAME>, <PRO_LADYLORD> of Murder!~ */
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
  IF ~  IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 155
  IF ~  IsValidForPartyDialogue("Sarevok")
Alignment("Sarevok",MASK_EVIL)
~ THEN EXTERN ~SAREV25J~ 4
  IF ~  IsValidForPartyDialogue("Sarevok")
!Alignment("Sarevok",MASK_EVIL)
~ THEN EXTERN ~SAREV25J~ 6
  IF ~  IsValidForPartyDialogue("Rasaad")
Global("OHR_PCGod","GLOBAL",0)
Global("RasaadRomanceActive","GLOBAL",2)
~ THEN DO ~SetGlobal("OHR_PCGod","GLOBAL",1)
~ EXTERN ~RASAADJ~ 880
END

IF ~~ THEN BEGIN 908 // from:
  SAY #100193 /* ~<CHARNAME>! You have the power of a god at your fingertips and you do not take it? Hmm. I would call you a fool—but you'd be a greater fool still to have left my side. I am... pleased with your decision.~ */
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
  IF ~  IsValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 156
  IF ~  IsValidForPartyDialogue("Sarevok")
Alignment("Sarevok",MASK_EVIL)
~ THEN EXTERN ~SAREV25J~ 5
  IF ~  IsValidForPartyDialogue("Sarevok")
!Alignment("Sarevok",MASK_EVIL)
~ THEN EXTERN ~SAREV25J~ 7
  IF ~  IsValidForPartyDialogue("Rasaad")
Global("OHR_PCNotGod","GLOBAL",0)
Global("RasaadRomanceActive","GLOBAL",2)
~ THEN DO ~SetGlobal("OHR_PCNotGod","GLOBAL",1)
~ EXTERN ~RASAADJ~ 881
END

IF ~~ THEN BEGIN 909 // from:
  SAY #99050 /* ~I'll show you pain, wraith. The Bhaalspawn will not harm me.~ */
  IF ~~ THEN EXTERN ~HGWRA01~ 24
END

IF WEIGHT #56 ~  Global("OHD_wraith","GLOBAL",1)
~ THEN BEGIN 910 // from:
  SAY #99051 /* ~Kryll? But I saw you die—I broke your neck. What trickery is this?~ */
  IF ~~ THEN EXTERN ~OHDKRYLL~ 0
END

IF ~~ THEN BEGIN 911 // from:
  SAY #99052 /* ~Aye. And then you betrayed me and left me to die!~ */
  IF ~~ THEN EXTERN ~OHDKRYLL~ 1
END

IF ~~ THEN BEGIN 912 // from:
  SAY #99053 /* ~Do not call me that. ~ */
  IF ~~ THEN EXTERN ~OHDKRYLL~ 2
END

IF ~~ THEN BEGIN 913 // from:
  SAY #99054 /* ~You got what you deserved.~ */
  IF ~~ THEN EXTERN ~OHDKRYLL~ 3
END

IF ~~ THEN BEGIN 914 // from:
  SAY #99055 /* ~No! No, I—I did not—~ */
  IF ~~ THEN REPLY #99062 /* ~You didn't know, Dorn!~ */ DO ~SetGlobal("OHD_wraith","GLOBAL",2)
~ EXTERN ~HGWRA01~ 25
  IF ~~ THEN REPLY #99063 /* ~No more, Gorion! This is beyond cruelty!~ */ DO ~SetGlobal("OHD_wraith","GLOBAL",2)
~ EXTERN ~HGWRA01~ 25
  IF ~~ THEN REPLY #99064 /* ~Do not speak to him that way, specter.~ */ DO ~SetGlobal("OHD_wraith","GLOBAL",2)
~ EXTERN ~HGWRA01~ 25
  IF ~~ THEN REPLY #99065 /* ~It's not real, Dorn! It's a lie!~ */ DO ~SetGlobal("OHD_wraith","GLOBAL",2)
~ EXTERN ~HGWRA01~ 25
END

IF WEIGHT #57 ~  Global("OHD_bollard","OH5500",1)
~ THEN BEGIN 915 // from:
  SAY #89870 /* ~That man there—he seems familiar. Where do I know him from...?~ [OH89870] */
  IF ~~ THEN REPLY #89922 /* ~While I normally encourage pausing to reflect, this isn't the best time for it.~ */ DO ~SetGlobal("OHD_bollard","OH5500",2)
~ EXIT
  IF ~  CheckStatGT(Player1,13,INT)
~ THEN REPLY #89923 /* ~Oh, crap. It's Bollard Firejaw.~ */ DO ~SetGlobal("OHD_bollard","OH5500",2)
~ GOTO 916
  IF ~  CheckStatLT(Player1,14,INT)
~ THEN REPLY #89924 /* ~Best not hang around and figure out where you've met before. Whoever he is, I doubt it's a cherished memory.~ */ DO ~SetGlobal("OHD_bollard","OH5500",2)
~ EXIT
  IF ~~ THEN REPLY #89925 /* ~Ignore him. We've got more important things to worry about than some sorry choirboy.~ */ DO ~SetGlobal("OHD_bollard","OH5500",2)
~ EXIT
END

IF ~~ THEN BEGIN 916 // from: 915.1
  SAY #89871 /* ~Who?~ [OH89871] */
  IF ~~ THEN REPLY #89926 /* ~He was a priest. You killed him.~ */ GOTO 917
  IF ~~ THEN REPLY #89927 /* ~I'll tell you later. We've got to get out of here.~ */ GOTO 919
  IF ~~ THEN REPLY #89928 /* ~A priest you murdered.~ */ GOTO 920
END

IF ~~ THEN BEGIN 917 // from: 916.0
  SAY #89872 /* ~I've killed a lot of priests.~ [OH89872] */
  IF ~~ THEN REPLY #89929 /* ~The Temple of the Radiant Heart. There was a wedding. You don't remember this?~ */ GOTO 918
  IF ~~ THEN REPLY #89930 /* ~If you want to live to kill more, then move!~ */ EXIT
  IF ~~ THEN REPLY #89931 /* ~This may be the one who kills you.~ */ GOTO 920
END

IF ~~ THEN BEGIN 918 // from: 917.0
  SAY #89875 /* ~Hrmm... I remember him now.~ [OH89875] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 919 // from: 916.1
  SAY #89877 /* ~I'll take your word for it.~ [OH89877] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 920 // from: 917.2 916.2
  SAY #89879 /* ~Curse the luck! I need to silence him before he recognizes me and raises an alarm.~ [OH89879] */
  IF ~~ THEN REPLY #89932 /* ~No, we need to get out of here before he recognizes you.~ */ EXIT
  IF ~~ THEN REPLY #89933 /* ~Quiet and subtle isn't your strong suit, Dorn. Are you sure you're up for this?~ */ EXIT
  IF ~~ THEN REPLY #89934 /* ~Do it quickly.~ */ EXIT
END

IF ~~ THEN BEGIN 921 // from:
  SAY #89894 /* ~One death is enough for most, priest!~ [OH89894] */
  IF ~~ THEN DO ~ActionOverride("OHDBOLL",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 922 // from:
  SAY #89903 /* ~Speak for yourself, <CHARNAME>.~ [OH89903] */
  IF ~~ THEN EXTERN ~OHDBOLL~ 2
END

IF ~~ THEN BEGIN 923 // from:
  SAY #89918 /* ~I can't believe that worked.~ [OH89918] */
  IF ~~ THEN REPLY #89950 /* ~I'm a little surprised myself.~ */ GOTO 924
  IF ~~ THEN REPLY #89951 /* ~Shut up and walk.~ */ GOTO 925
  IF ~~ THEN REPLY #89952 /* ~There's no fool greater than a holy fool.~ */ GOTO 926
END

IF ~~ THEN BEGIN 924 // from: 923.0
  SAY #89919 /* ~Let's begone from this place quickly, before we have any other unexpected reunions.~ [OH89919] */
  IF ~~ THEN DO ~SetGlobal("OHD_bollreturns","OH5500",1)
ActionOverride("OHDBOLL",EscapeAreaDestroy(5))
~ EXIT
END

IF ~~ THEN BEGIN 925 // from: 923.1
  SAY #89920 /* ~Mind your place, <PRO_RACE>. I'm not your servant.~ [OH89920] */
  IF ~~ THEN DO ~SetGlobal("OHD_bollreturns","OH5500",1)
ActionOverride("OHDBOLL",EscapeAreaDestroy(5))
~ EXIT
END

IF ~~ THEN BEGIN 926 // from: 923.2
  SAY #89921 /* ~Truer words were never spoken—certainly not in this place.~ [OH89921] */
  IF ~~ THEN DO ~SetGlobal("OHD_bollreturns","OH5500",1)
ActionOverride("OHDBOLL",EscapeAreaDestroy(5))
~ EXIT
END

IF ~~ THEN BEGIN 927 // from:
  SAY #89782 /* ~Taste the Abyss, planetar!~ [OH89782] */
  IF ~~ THEN DO ~Shout(310)
ActionOverride("OHDPLANL",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 928 // from:
  SAY #89696 /* ~We aren't here to listen to some god's toady wax on about the joys of divine servitude, <CHARNAME>...~ [OH89696] */
  IF ~~ THEN EXTERN ~OHDPLANL~ 20
END

IF ~~ THEN BEGIN 929 // from:
  SAY #89697 /* ~I'm with you, <CHARNAME>.~ [OH89697] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 930 // from:
  SAY #89699 /* ~On the other hand, one of those sigils would come in handy...~ [OH89699] */
  IF ~~ THEN DO ~SetGlobal("OHD_said_sigil_handy","OH5500",1)
~ EXTERN ~OHDPLANL~ 21
END

IF WEIGHT #58 ~  Global("OHD_gateearly","OH5500",1)
~ THEN BEGIN 931 // from:
  SAY #89678 /* ~Are you truly going to return through the gateway before our work is finished? We only get one shot at this, <CHARNAME>.~ [OH89678] */
  IF ~~ THEN REPLY #89684 /* ~The scroll. Right. I forgot.~ */ DO ~SetGlobal("OHD_gateearly","OH5500",0)
~ EXIT
  IF ~~ THEN REPLY #89685 /* ~Remind me again why we're here?~ */ DO ~SetGlobal("OHD_gateearly","OH5500",0)
~ GOTO 932
  IF ~~ THEN REPLY #89686 /* ~I'm sorry, Dorn, but I'm leaving this place behind.~ */ DO ~SetGlobal("OHD_gateearly","OH5500",0)
~ GOTO 933
END

IF ~~ THEN BEGIN 932 // from: 931.1
  SAY #89679 /* ~We must erase my name from the Scroll of Retribution, else avenging planetars will continue to plague us. I imagine that Tyr does not look kindly upon those that defile his realm. We must hurry before he or something else takes notice.~ [OH89679] */
  IF ~~ THEN REPLY #79687 /* ~In fairness, these people were just trying to kill me.~ */ EXIT
  IF ~  !IsValidForPartyDialogue("neera")
~ THEN REPLY #89688 /* ~All right. Hey, while we're here, can we go check out Mount Celestia? I hear they have some solars you wouldn't believe poking around up there.~ */ GOTO 935
  IF ~  IsValidForPartyDialogue("neera")
~ THEN REPLY #89688 /* ~All right. Hey, while we're here, can we go check out Mount Celestia? I hear they have some solars you wouldn't believe poking around up there.~ */ EXTERN ~NEERAJ~ 540
  IF ~~ THEN REPLY #89689 /* ~This is your burden to bear, Dorn. I'm leaving.~ */ GOTO 933
END

IF ~~ THEN BEGIN 933 // from: 932.3 931.2
  SAY #89680 /* ~I... see. I always worked better alone anyway. Hrmm. I won't pretend to be upset about our parting, <CHARNAME>. I doubt we will see each other again.~ [OH89680] */
  IF ~~ THEN REPLY #89690 /* ~Wait—I've changed my mind.~ */ GOTO 934
  IF ~~ THEN REPLY #89691 /* ~Farewell, Dorn Il-Khan.~ */ DO ~AddJournalEntry(89694,INFO)
LeaveParty()
EscapeAreaDestroy(5)
~ EXIT
END

IF ~~ THEN BEGIN 934 // from: 933.0
  SAY #89681 /* ~Very well then. Let's get going... the innocence of this place produces a stench that hangs in my nostrils.~ [OH89681] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 935 // from: 932.1
  SAY #89683 /* ~Now is not the time.~ [OH89683] */
  IF ~~ THEN REPLY #89693 /* ~Let's go, then.~ */ EXIT
END

IF ~~ THEN BEGIN 936 // from:
  SAY #89668 /* ~I shall. Make sure not to fall behind.~ [OH89668] */
  IF ~~ THEN DO ~ActionOverride("OHDSWORD",DestroySelf())
~ EXIT
END

IF ~~ THEN BEGIN 937 // from:
  SAY #89669 /* ~You knew we'd find little welcome here, <CHARNAME>. Better this than the alternative.~ [OH89669] */
  IF ~~ THEN DO ~ActionOverride("OHDSWORD",DestroySelf())
~ EXIT
END

IF ~~ THEN BEGIN 938 // from:
  SAY #89670 /* ~Agreed.~ [OH89670] */
  IF ~~ THEN DO ~ActionOverride("OHDSWORD",DestroySelf())
~ EXIT
END

IF ~~ THEN BEGIN 939 // from:
  SAY #93035 /* ~<CHARNAME>! What is happening here?~ [OH93035] */
  IF ~~ THEN REPLY #93039 /* ~You are paying for your crimes, Dorn.~ */ GOTO 941
  IF ~~ THEN REPLY #93040 /* ~They must have learned what we did.~ */ GOTO 940
  IF ~~ THEN REPLY #93041 /* ~Isn't it obvious?~ */ GOTO 942
END

IF ~~ THEN BEGIN 940 // from: 939.1
  SAY #93036 /* ~Curse your incompetence! I should have been the one to hold the quill.~ [OH93036] */
  IF ~~ THEN EXTERN ~OHDPLANJ~ 1
END

IF ~~ THEN BEGIN 941 // from: 939.0
  SAY #93037 /* ~You didn't remove my name from the Scroll? I'll have your head for this!~ [OH93037] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 942 // from: 939.2
  SAY #93038 /* ~You left my name in the Scroll of Retribution? You treacherous bastard, I'll see you to the Abyss in pieces for this!~ [OH93038] */
  IF ~~ THEN EXIT
END

IF WEIGHT #59 ~  Global("OHD_inscribed_azothet","GLOBAL",3)
~ THEN BEGIN 943 // from:
  SAY #93000 /* ~A word, <CHARNAME>?~ [OH93000] */
  IF ~~ THEN REPLY #93026 /* ~What can I do for you, Dorn?~ */ DO ~SetGlobal("OHD_inscribed_azothet","GLOBAL",4)
~ GOTO 944
  IF ~~ THEN REPLY #93015 /* ~Can it wait?~ */ DO ~SetGlobal("OHD_inscribed_azothet","GLOBAL",4)
~ GOTO 945
  IF ~~ THEN REPLY #93027 /* ~Not now, Dorn.~ */ DO ~SetGlobal("OHD_inscribed_azothet","GLOBAL",4)
~ GOTO 946
END

IF ~~ THEN BEGIN 944 // from: 946.0 945.0 943.0
  SAY #93001 /* ~I would have you know that I— I—~ [OH93001] */
  IF ~~ THEN REPLY #93017 /* ~Are you all right?~ */ GOTO 947
  IF ~~ THEN REPLY #93028 /* ~You don't look so good, Dorn. Worse than usual, I mean.~ */ GOTO 947
  IF ~~ THEN REPLY #93019 /* ~Spit it out.~ */ GOTO 947
END

IF ~~ THEN BEGIN 945 // from: 943.1
  SAY #93002 /* ~It cannot.~ [OH93002] */
  IF ~~ THEN GOTO 944
END

IF ~~ THEN BEGIN 946 // from: 943.2
  SAY #93003 /* ~Now, <CHARNAME>.~ [OH93003] */
  IF ~~ THEN GOTO 944
END

IF ~~ THEN BEGIN 947 // from: 944.2 944.1 944.0
  SAY #93004 /* ~Something has happened. My powers, they are diminished!~ [OH93004] */
  IF ~~ THEN GOTO 958
  IF ~  Global("OHD_urgothoz_sword","GLOBAL",1)
~ THEN EXTERN ~OHDSWORD~ 2
END

IF ~~ THEN BEGIN 948 // from:
  SAY #93043 /* ~Azothet is dead. I am a blackguard no more.~ [OH93043] */
  IF ~~ THEN GOTO 959
  IF ~  Global("OHD_urgothoz_sword","GLOBAL",1)
~ THEN EXTERN ~OHDSWORD~ 3
END

IF ~~ THEN BEGIN 949 // from:
  SAY #93006 /* ~I am free. For the first time in—I know not how long—Dorn Il-Khan is free.~ [OH93006] */
  IF ~~ THEN REPLY #93020 /* ~Enjoy it, my friend. You've earned it.~ */ GOTO 950
  IF ~~ THEN REPLY #93021 /* ~I sense the Scroll of Retribution at work.~ */ GOTO 951
  IF ~~ THEN REPLY #93022 /* ~Use it well.~ */ GOTO 950
END

IF ~~ THEN BEGIN 950 // from: 949.2 949.0
  SAY #93007 /* ~I did not do it alone. I'll not forget how you assisted me in Lunia. You will be rewarded, I promise you.~ [OH93007] */
  IF ~~ THEN DO ~RemovePaladinHood()
~ EXIT
  IF ~  Global("OHD_urgothoz_sword","GLOBAL",1)
~ THEN EXTERN ~OHDSWORD~ 4
END

IF ~~ THEN BEGIN 951 // from: 949.1
  SAY #93008 /* ~Hah! Our names will be remembered in legend, <CHARNAME>! The gods themselves do our bidding!~ [OH93008] */
  IF ~~ THEN GOTO 952
END

IF ~~ THEN BEGIN 952 // from: 951.0
  SAY #93009 /* ~I'll not forget how you assisted me in Lunia. You will be rewarded, <CHARNAME>, I promise you that.~ [OH93009] */
  IF ~~ THEN DO ~RemovePaladinHood()
~ EXIT
  IF ~  Global("OHD_urgothoz_sword","GLOBAL",1)
~ THEN EXTERN ~OHDSWORD~ 4
END

IF WEIGHT #60 ~  Global("OHD_inscribed_urgothoz","GLOBAL",3)
~ THEN BEGIN 953 // from:
  SAY #93000 /* ~A word, <CHARNAME>?~ [OH93000] */
  IF ~~ THEN REPLY #93014 /* ~What is it, Dorn?~ */ DO ~SetGlobal("OHD_inscribed_urgothoz","GLOBAL",4)
~ GOTO 954
  IF ~~ THEN REPLY #93015 /* ~Can it wait?~ */ DO ~SetGlobal("OHD_inscribed_urgothoz","GLOBAL",4)
~ GOTO 955
  IF ~~ THEN REPLY #93016 /* ~Not right now, Dorn.~ */ DO ~SetGlobal("OHD_inscribed_urgothoz","GLOBAL",4)
~ GOTO 956
END

IF ~~ THEN BEGIN 954 // from: 956.0 955.0 953.0
  SAY #93001 /* ~I would have you know that I— I—~ [OH93001] */
  IF ~~ THEN REPLY #93017 /* ~Are you all right?~ */ GOTO 957
  IF ~~ THEN REPLY #93018 /* ~You don't look so good, Dorn. I mean, you never look good, but right now you look even worse than usual.~ */ GOTO 957
  IF ~~ THEN REPLY #93019 /* ~Spit it out.~ */ GOTO 957
END

IF ~~ THEN BEGIN 955 // from: 953.1
  SAY #92002 /* ~I'll do it myself if you'd like. Just give me some ink and sand.~ */
  IF ~~ THEN GOTO 954
END

IF ~~ THEN BEGIN 956 // from: 953.2
  SAY #92003 /* ~Never mind. I'll do it myself.~ */
  IF ~~ THEN GOTO 954
END

IF ~~ THEN BEGIN 957 // from: 954.2 954.1 954.0
  SAY #93004 /* ~Something has happened. My powers, they are diminished!~ [OH93004] */
  IF ~~ THEN GOTO 958
  IF ~  Global("OHD_azothet_sword","GLOBAL",1)
~ THEN EXTERN ~OHDSWORD~ 5
END

IF ~~ THEN BEGIN 958 // from: 957.0 947.0
  SAY #93005 /* ~Ur-Gothoz is dead. I am a blackguard no more.~ [OH93005] */
  IF ~~ THEN GOTO 959
  IF ~  Global("OHD_azothet_sword","GLOBAL",1)
~ THEN EXTERN ~OHDSWORD~ 6
END

IF ~~ THEN BEGIN 959 // from: 958.0 948.0
  SAY #93006 /* ~I am free. For the first time in—I know not how long—Dorn Il-Khan is free.~ [OH93006] */
  IF ~~ THEN REPLY #93020 /* ~Enjoy it, my friend. You've earned it.~ */ GOTO 960
  IF ~~ THEN REPLY #93021 /* ~I sense the Scroll of Retribution at work.~ */ GOTO 961
  IF ~~ THEN REPLY #93022 /* ~Use it well.~ */ GOTO 960
END

IF ~~ THEN BEGIN 960 // from: 959.2 959.0
  SAY #93007 /* ~I did not do it alone. I'll not forget how you assisted me in Lunia. You will be rewarded, I promise you.~ [OH93007] */
  IF ~~ THEN DO ~RemovePaladinHood()
~ EXIT
  IF ~  Global("OHD_azothet_sword","GLOBAL",1)
~ THEN EXTERN ~OHDSWORD~ 7
END

IF ~~ THEN BEGIN 961 // from: 959.1
  SAY #93008 /* ~Hah! Our names will be remembered in legend, <CHARNAME>! The gods themselves do our bidding!~ [OH93008] */
  IF ~~ THEN GOTO 962
END

IF ~~ THEN BEGIN 962 // from: 961.0
  SAY #93009 /* ~I'll not forget how you assisted me in Lunia. You will be rewarded, <CHARNAME>, I promise you that.~ [OH93009] */
  IF ~~ THEN DO ~RemovePaladinHood()
~ EXIT
  IF ~  Global("OHD_azothet_sword","GLOBAL",1)
~ THEN EXTERN ~OHDSWORD~ 7
END

IF ~~ THEN BEGIN 963 // from:
  SAY #93010 /* ~Silence, Azothet! You serve me now—don't ever forget that.~ [OH93010] */
  IF ~~ THEN DO ~RemovePaladinHood()
~ EXIT
END

IF ~~ THEN BEGIN 964 // from:
  SAY #92602 /* ~Saemon Havarian, dead at an angel's hand. The Scroll of Retribution has done its work.~ [OH92602] */
  IF ~~ THEN REPLY #92611 /* ~Remember, that could very easily be us lying there.~ */ DO ~AddJournalEntry(93044,INFO)
~ GOTO 965
  IF ~~ THEN REPLY #92612 /* ~Well. That's mildly unsettling.~ */ DO ~AddJournalEntry(93044,INFO)
~ GOTO 967
  IF ~~ THEN REPLY #92613 /* ~If the gods only knew, eh, Dorn?~ */ DO ~AddJournalEntry(93044,INFO)
~ GOTO 966
END

IF ~~ THEN BEGIN 965 // from: 964.0
  SAY #92603 /* ~But it isn't, <CHARNAME>. The strong survive, as always.~ [OH92603] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 966 // from: 964.2
  SAY #92604 /* ~Someday they will, <CHARNAME>. I'll tell them myself, as they kneel before me.~ [OH92604] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 967 // from: 964.1
  SAY #92605 /* ~Unsettling, <CHARNAME>? Nay. Call it poetic, or glorious, or at the least, amusing.~ [OH92605] */
  IF ~~ THEN EXIT
END

IF WEIGHT #61 ~  Global("OHD_gromnir","AR5002",1)
~ THEN BEGIN 968 // from:
  SAY #92253 /* ~Hold, <CHARNAME>. I recognize that half-orc. When I first heard the name, I suspected as much—but this confirms it. An elder cousin of mine sits before us.~ [OH92253] */
  IF ~~ THEN REPLY #92271 /* ~You're related to Gromnir, a Bhaalspawn?~ */ GOTO 969
END

IF ~~ THEN BEGIN 969 // from: 968.0
  SAY #92254 /* ~We are merely of the same tribe. Our blood relation is less... clear now that I know of his lineage. But I warn you, <CHARNAME>: While our human blood made both Gromnir and me outcasts in our own tribe, he was always different. He took to slaughter a little too eagerly. ~ [OH92254] */
  IF ~~ THEN GOTO 970
  IF ~  IsValidForPartyDialogue("neera")
~ THEN EXTERN ~NEERAJ~ 541
END

IF ~~ THEN BEGIN 970 // from: 969.0
  SAY #92256 /* ~That I, of all people, say this should tell you something of Gromnir's depravity. He celebrated his victories in excessive and disgusting fashion—and bear in mind, I was told this by someone whose mouth was stuffed with raw pig fat at the time. The shamans didn't know what to do with him. He was eventually cast out.~ */
  IF ~~ THEN REPLY #92272 /* ~The blood of Bhaal courses through his veins; I know all too well what it can drive someone to do.~ */ GOTO 971
END

IF ~~ THEN BEGIN 971 // from: 970.0
  SAY #92257 /* ~I as well, <CHARNAME>. I as well.~ [OH92257] */
  IF ~~ THEN DO ~SetGlobal("OHD_gromnir","AR5002",2)
~ EXIT
END

IF WEIGHT #62 ~  Global("OHD_gromnir","AR5002",3)
~ THEN BEGIN 972 // from:
  SAY #92259 /* ~Things are starting to unravel. If Gromnir makes an attempt on our lives, I will not stay my hand.~ [OH92259] */
  IF ~~ THEN REPLY #92274 /* ~You would stand against your own cousin?~ */ GOTO 973
END

IF ~~ THEN BEGIN 973 // from: 972.0
  SAY #92260 /* ~Without hesitation. Family has little value for me, and Gromnir has always been a poor brawler. Even now he holds his weapon foolishly, with a carelessly weak grip. Cutting him down will be a simple matter.~ [OH92260] */
  IF ~~ THEN DO ~SetGlobal("OHD_gromnir","AR5002",4)
SetGlobal("OHD_gromnir_talk","GLOBAL",1)
ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("OHDGROM1",FALSE)
~ EXIT
END

IF WEIGHT #63 ~  Global("OHD_gromnir_talk","GLOBAL",3)
~ THEN BEGIN 974 // from:
  SAY #92262 /* ~Gromnir was less of a pushover than I had anticipated, and yet he was still a fool to stand against us.~ [OH92262] */
  IF ~  !IsValidForPartyDialogue("sarevok")
~ THEN REPLY #92275 /* ~How does it feel to have slain your own kin?~ */ DO ~SetGlobal("OHD_gromnir_talk","GLOBAL",4)
~ GOTO 975
  IF ~  IsValidForPartyDialogue("sarevok")
~ THEN REPLY #92275 /* ~How does it feel to have slain your own kin?~ */ DO ~SetGlobal("OHD_gromnir_talk","GLOBAL",4)
~ EXTERN ~SAREV25J~ 22
END

IF ~~ THEN BEGIN 975 // from: 974.0
  SAY #92264 /* ~Hrmm. It is... strange. Family is of little consequence as far as I am concerned, and I have spurned closer relations in the past. And yet... <CHARNAME>, why does one surround themselves with allies, as you have with me?~ [OH92264] */
  IF ~~ THEN REPLY #92276 /* ~So that I may lead them on adventures the likes of which they will never see again.~ */ GOTO 976
  IF ~~ THEN REPLY #92277 /* ~For protection. There is safety in numbers.~ */ GOTO 977
  IF ~~ THEN REPLY #92278 /* ~I need their strength to accomplish my goals.~ */ GOTO 978
  IF ~~ THEN REPLY #92279 /* ~For companionship. The journey is long, and stories mixed with backtalk are the lifeblood of a traveler.~ */ GOTO 980
END

IF ~~ THEN BEGIN 976 // from: 975.0
  SAY #92266 /* ~Truly? I can say that you have indeed done so, then. But I have no interest in excitement for its own sake, or in entertaining lesser beings. If that is why you lead this motley band, then perhaps you and I are more different than I thought.~ [OH92266] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 977 // from: 975.1
  SAY #92267 /* ~Hrmm. A rare showing of wisdom. You are powerful, <CHARNAME>. More powerful than I, though I am loath to admit it. Yet still you seek protection. I... believe I understand. A battle won with crushing victory is more satisfying than the one you lose by the width of a hair.~ [OH92267] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 978 // from: 975.2
  SAY #92268 /* ~Yes! They are but tools, tools to be used! Exploited! You and I, we are artisans of destruction. We create art each time our swords are drawn. Those who would follow you are merely brushes used to create masterpieces.~ [OH92268] */
  IF ~~ THEN REPLY #92280 /* ~But Dorn, you follow me. Are you a tool to be used?~ */ GOTO 979
END

IF ~~ THEN BEGIN 979 // from: 978.0
  SAY #92269 /* ~Hah! <CHARNAME>, you and I know better than that.~ [OH92269] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 980 // from: 975.3
  SAY #92270 /* ~You fear the calls of the night, the glowing eyes that gaze upon you from the darkness while you make camp? You disappoint me, <CHARNAME>. What tales worth hearing have your companions shared? Marital woes? Their god hasn't looked upon them kindly in the last while? Feh! Yours is a tale of deities and demons, of divinity itself! That you would turn an ear to the mewlings of such mundane creatures disgusts me.~ [OH92270] */
  IF ~~ THEN EXIT
END

IF WEIGHT #64 ~  Global("OHD_homeagain_dorn","OH5400",1)
~ THEN BEGIN 981 // from:
  SAY #92244 /* ~Hah! We've done a great thing this day, <CHARNAME>. We have defied the gods themselves and triumphed! I can scarcely believe it, but the divine blood spattered upon my hands is proof enough.~ [OH92244] */
  IF ~~ THEN REPLY #92249 /* ~I wish that I could be as happy about that as you seem to be. We prevailed today, but the gods have long memories.~ */ GOTO 982
  IF ~~ THEN REPLY #92250 /* ~Not a bad day, to be sure. It won't be easy to top it.~ */ GOTO 984
  IF ~~ THEN REPLY #92251 /* ~What we achieved was more than a great thing. It is the stuff of legends.~ */ GOTO 983
END

IF ~~ THEN BEGIN 982 // from: 981.0
  SAY #92245 /* ~Hrmm. Let them come. They had a scroll with my name on it, but I've got a sword with theirs.~ [OH92245] */
  IF ~~ THEN GOTO 983
END

IF ~~ THEN BEGIN 983 // from: 982.0 981.2
  SAY #92246 /* ~Mark my words, <CHARNAME>. A day is coming when the gods themselves will tremble to hear our names. I can feel it. This is only the beginning... friend.~ [OH92246] */
  IF ~~ THEN DO ~AddJournalEntry(92252,INFO)
SetGlobal("OHD_homeagain_dorn","OH5400",2)
~ EXIT
END

IF ~~ THEN BEGIN 984 // from: 981.1
  SAY #92247 /* ~Have a little faith... friend. I'm sure we'll think of something.~ [OH92247] */
  IF ~~ THEN DO ~AddJournalEntry(92252,INFO)
SetGlobal("OHD_homeagain_dorn","OH5400",2)
~ EXIT
END

IF ~~ THEN BEGIN 985 // from:
  SAY #92216 /* ~Damn you, <CHARNAME>! And damn me for letting you lead me to my doom!~ [OH92216] */
  IF ~~ THEN DO ~SetGlobal("OHD_timeout","OH5500",2)
SetGlobal("OHD_LuniaHostile","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 986 // from:
  SAY #92203 /* ~You'll know it twice as well soon, fool!~ [OH92203] */
  IF ~~ THEN DO ~SetGlobal("OHD_bollreturns","OH5500",3)
~ EXIT
END

IF ~~ THEN BEGIN 987 // from:
  SAY #92108 /* ~"Would" defile it? We HAVE defiled it, you silver-scaled vermin.~ [OH92108] */
  IF ~~ THEN REPLY #92148 /* ~We don't have time for this, Dorn. If they close the portals, we'll have no way to escape!~ */ GOTO 989
  IF ~  !IsValidForPartyDialogue("dorn")
~ THEN REPLY #92149 /* ~If we do this, we do it quickly. Anyone who falls gets left behind. Understood?~ */ EXTERN ~OHDDIXTH~ 8
  IF ~  IsValidForPartyDialogue("dorn")
~ THEN REPLY #92149 /* ~If we do this, we do it quickly. Anyone who falls gets left behind. Understood?~ */ GOTO 993
  IF ~  !IsValidForPartyDialogue("dorn")
~ THEN REPLY #92150 /* ~And we're about to defile it some more.~ */ EXTERN ~OHDDIXTH~ 6
  IF ~  IsValidForPartyDialogue("dorn")
~ THEN REPLY #92150 /* ~And we're about to defile it some more.~ */ GOTO 993
END

IF ~~ THEN BEGIN 988 // from:
  SAY #92117 /* ~Don't talk to these silver-scaled vermin, <CHARNAME>. Kill them!~ [OH92117] */
  IF ~~ THEN REPLY #92151 /* ~We don't have time for this, Dorn. If they close the portals, we'll have no way to escape!~ */ GOTO 989
  IF ~~ THEN REPLY #92153 /* ~If we do this, we do it quickly. Anyone who falls gets left behind. Understood?~ */ EXTERN ~OHDDIXTH~ 8
  IF ~~ THEN REPLY #92153 /* ~If we do this, we do it quickly. Anyone who falls gets left behind. Understood?~ */ GOTO 993
  IF ~~ THEN REPLY #92154 /* ~After you, half-orc.~ */ GOTO 993
END

IF ~~ THEN BEGIN 989 // from: 988.0 987.0
  SAY #92118 /* ~Count your blessings, snakes!~ [OH92118] */
  IF ~~ THEN DO ~ActionOverride("OHDDIXTH",Enemy())
ActionOverride("OHDDDOLR",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 990 // from:
  SAY #92130 /* ~Die for Ur-Gothoz, dragon!~ [OH92130] */
  IF ~~ THEN DO ~ActionOverride("OHDDIXTH",Enemy())
ActionOverride("OHDDDOLR",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 991 // from:
  SAY #92131 /* ~Dragon's blood for my patron, Azothet!~ [OH92131] */
  IF ~~ THEN DO ~ActionOverride("OHDDIXTH",Enemy())
ActionOverride("OHDDDOLR",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 992 // from:
  SAY #92136 /* ~From Lunia to the Abyss, Tyr-lover!~ [OH92136] */
  IF ~~ THEN DO ~ActionOverride("OHDDIXTH",Enemy())
ActionOverride("OHDDDOLR",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 993 // from: 988.3 988.2 987.4 987.2
  SAY #92109 /* ~Any who fall get left behind. Agreed?~ [OH92109] */
  IF ~~ THEN EXTERN ~OHDDIXTH~ 6
  IF ~  IsValidForPartyDialogue("neera")
~ THEN EXTERN ~NEERAJ~ 544
  IF ~  IsValidForPartyDialogue("viconia")
~ THEN EXTERN ~VICONIJ~ 480
  IF ~  IsValidForPartyDialogue("minsc")
~ THEN EXTERN ~MINSCJ~ 280
  IF ~  IsValidForPartyDialogue("haerdalis")
~ THEN EXTERN ~HAERDAJ~ 185
  IF ~  IsValidForPartyDialogue("edwin")
~ THEN EXTERN ~EDWINJ~ 225
  IF ~  IsValidForPartyDialogue("hexxat")
~ THEN EXTERN ~HEXXATJ~ 631
  IF ~  IsValidForPartyDialogue("korgan")
~ THEN EXTERN ~KORGANJ~ 275
END

IF WEIGHT #65 ~  Global("OHD_planetar","OH5400",1)
~ THEN BEGIN 994 // from:
  SAY #89622 /* ~Hold, <CHARNAME>! Something appears!~ [OH89622] */
  IF ~~ THEN DO ~SetGlobal("OHD_planetar","OH5400",2)
~ EXIT
END

IF ~~ THEN BEGIN 995 // from:
  SAY #89626 /* ~That's precisely what it is.~ [OH89626] */
  IF ~~ THEN EXTERN ~OHDPLANJ~ 9
END

IF ~~ THEN BEGIN 996 // from:
  SAY #89629 /* ~With me, <CHARNAME>! Help me drive this prancing cockatiel back to Lunia!~ [OH89629] */
  IF ~~ THEN DO ~ActionOverride("OHDPLANJ",Enemy())
~ EXIT
END

IF WEIGHT #66 ~  Global("OHD_planetar","OH5400",7)
~ THEN BEGIN 997 // from:
  SAY #89631 /* ~We have triumphed... for the moment. Planetars are implacable foes. As long as my name is in this Scroll of Retribution, she and her kind will keep on coming, in greater and greater numbers.~ [OH89631] */
  IF ~~ THEN REPLY #89646 /* ~Things will only get worse from here.~ */ DO ~SetGlobal("OHD_planetar","OH5400",8)
EraseJournalEntry(90346)
AddJournalEntry(90346,QUEST_DONE)
AddJournalEntry(89660,QUEST)
AddJournalEntry(89658,INFO)
~ GOTO 998
  IF ~~ THEN REPLY #89647 /* ~And now my name's going in the Scroll. Great.~ */ DO ~SetGlobal("OHD_planetar","OH5400",8)
EraseJournalEntry(90346)
AddJournalEntry(90346,QUEST_DONE)
AddJournalEntry(89660,QUEST)
AddJournalEntry(89658,INFO)
~ GOTO 1004
  IF ~~ THEN REPLY #89648 /* ~There must be a way to erase our names from the Scroll.~ */ DO ~SetGlobal("OHD_planetar","OH5400",8)
EraseJournalEntry(90346)
AddJournalEntry(90346,QUEST_DONE)
AddJournalEntry(89660,QUEST)
AddJournalEntry(89658,INFO)
~ GOTO 999
END

IF ~~ THEN BEGIN 998 // from: 997.0
  SAY #89632 /* ~They will, until our names are removed from the scroll.~ [OH89632] */
  IF ~~ THEN REPLY #89649 /* ~Is that even possible?~ */ GOTO 1004
  IF ~~ THEN REPLY #89650 /* ~Where is the Scroll kept?~ */ GOTO 999
  IF ~~ THEN REPLY #89651 /* ~What are you suggesting, here, Dorn?~ */ GOTO 1006
END

IF ~~ THEN BEGIN 999 // from: 998.1 997.2
  SAY #89633 /* ~Most likely in Lunia.~ [OH89633] */
  IF ~  OR(3)
PartyHasItem("ohdsw2hb")
PartyHasItem("ohdsw2hc")
PartyHasItem("ohdsw2hd")
~ THEN EXTERN ~OHDSWORD~ 10
  IF ~  !PartyHasItem("ohdsw2hb")
!PartyHasItem("ohdsw2hc")
!PartyHasItem("ohdsw2hd")
~ THEN GOTO 1004
END

IF ~~ THEN BEGIN 1000 // from:
  SAY #89635 /* ~You are being uncharacteristically helpful, Azothet.~ [OH89635] */
  IF ~~ THEN EXTERN ~OHDSWORD~ 11
END

IF ~~ THEN BEGIN 1001 // from:
  SAY #89636 /* ~You are being uncharacteristically helpful, Ur-Gothoz.~ [OH89636] */
  IF ~~ THEN EXTERN ~OHDSWORD~ 11
END

IF ~~ THEN BEGIN 1002 // from: 1004.2 1003.0
  SAY #89638 /* ~What I'm suggesting is that we go to war, <CHARNAME>. We go to war with Heaven.~ [OH89638] */
  IF ~~ THEN DO ~SetGlobal("ohd_portalon","OH5400",1)
~ EXIT
END

IF ~~ THEN BEGIN 1003 // from:
  SAY #89639 /* ~With this feather from the planetar's wing, I can open a portal to Lunia any time I wish.~ [OH89639] */
  IF ~~ THEN GOTO 1002
END

IF ~~ THEN BEGIN 1004 // from: 999.1 998.0 997.1
  SAY #89640 /* ~We have a feather from the planetar's wing. That should enable us to open a portal to Lunia.~ [OH89640] */
  IF ~~ THEN REPLY #89655 /* ~And what do we do then?~ */ GOTO 1005
  IF ~~ THEN REPLY #89656 /* ~Isn't Lunia the exact place we should be avoiding at all costs?~ */ GOTO 1006
  IF ~~ THEN REPLY #89657 /* ~You suggest we attack the gods in their place of power?~ */ GOTO 1002
END

IF ~~ THEN BEGIN 1005 // from: 1004.0
  SAY #89641 /* ~Then, <CHARNAME>? Then we go to war. We go to war with Heaven.~ [OH89641] */
  IF ~~ THEN DO ~SetGlobal("ohd_portalon","OH5400",1)
~ EXIT
END

IF ~~ THEN BEGIN 1006 // from: 1004.1 998.2
  SAY #89642 /* ~Not if we want to clear our names from the Scroll of Retribution. Not if we want to live.~ [OH89642] */
  IF ~~ THEN DO ~SetGlobal("ohd_portalon","OH5400",1)
~ EXIT
END

IF ~~ THEN BEGIN 1007 // from:
  SAY #92101 /* ~Come and try it! The gods can always use more martyrs!~ [OH92101] */
  IF ~~ THEN DO ~SetGlobal("OHD_gods_damned_martyrs","OH5500",2)
~ EXIT
END

IF WEIGHT #67 ~  Global("OHD_finished_comments","OH5500",1)
~ THEN BEGIN 1008 // from:
  SAY #92099 /* ~There, it is done. Our mission is finished, and we should move quickly to leave. Cut down all who oppose us!~ [OH92099] */
  IF ~~ THEN DO ~SetGlobal("OHD_finished_comments","OH5500",2)
~ EXIT
END

IF ~~ THEN BEGIN 1009 // from:
  SAY #91387 /* ~And my name is the last you'll ever hear!~ [OH91387] */
  IF ~~ THEN DO ~ActionOverride("OHDRDEF",Enemy())
ActionOverride("OHDNAIMA",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 1010 // from:
  SAY #91970 /* ~Get ready to eat your own fingers, scribe.~ [OH91970] */
  IF ~~ THEN DO ~ActionOverride("OHDRDEF",Enemy())
ActionOverride("OHDNAIMA",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 1011 // from:
  SAY #91974 /* ~To the Abyss with you, secretary!~ [OH91974] */
  IF ~~ THEN DO ~ActionOverride("OHDRDEF",Enemy())
ActionOverride("OHDNAIMA",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 1012 // from:
  SAY #91425 /* ~Enough blather! I'll see you dead!~ [OH91425] */
  IF ~~ THEN EXTERN ~OHDRDEF~ 22
END

IF ~~ THEN BEGIN 1013 // from:
  SAY #91425 /* ~Enough blather! I'll see you dead!~ [OH91425] */
  IF ~~ THEN EXTERN ~OHDRDEF~ 22
END

IF ~~ THEN BEGIN 1014 // from:
  SAY #91434 /* ~I'll not let this sanctimonious cretin stand between us and the scroll!~ [OH91434] */
  IF ~~ THEN DO ~AddJournalEntry(91526,INFO)
ActionOverride("OHDRDEF",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 1015 // from:
  SAY #91438 /* ~Death to the righteous!~ [OH91438] */
  IF ~~ THEN DO ~AddJournalEntry(91526,INFO)
ActionOverride("OHDRDEF",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 1016 // from:
  SAY #91462 /* ~No excuses! Die for your wretched god!~ [OH91462] */
  IF ~~ THEN DO ~AddJournalEntry(91526,INFO)
ActionOverride("OHDRDEF",Enemy())
Attack("OHDNAIMA")
~ EXIT
END

IF ~~ THEN BEGIN 1017 // from:
  SAY #91465 /* ~Die as you lived, righteous and blind fools!~ [OH91465] */
  IF ~~ THEN DO ~AddJournalEntry(91526,INFO)
ActionOverride("OHDRDEF",Enemy())
Attack("OHDNAIMA")
~ EXIT
END

IF ~~ THEN BEGIN 1018 // from:
  SAY #91467 /* ~Die as you lived, righteous and blind!~ [OH91467] */
  IF ~~ THEN DO ~AddJournalEntry(91526,INFO)
ActionOverride("OHDRDEF",Enemy())
Attack("OHDNAIMA")
~ EXIT
END

IF WEIGHT #68 ~  Global("OHD_playerkillstree","OH5500",3)
~ THEN BEGIN 1019 // from:
  SAY #90142 /* ~Mine must be the hand that corrupts this tree!~ [OH90142] */
  IF ~~ THEN REPLY #90158 /* ~Dorn, please. Leave this to me.~ */ DO ~SetGlobal("OHD_playerkillstree","OH5500",4)
~ EXIT
  IF ~~ THEN REPLY #90159 /* ~You idiot, you're going to get us killed!~ */ DO ~SetGlobal("OHD_playerkillstree","OH5500",4)
~ EXIT
  IF ~~ THEN REPLY #90160 /* ~I told you I'd take care of it.~ */ DO ~SetGlobal("OHD_playerkillstree","OH5500",4)
~ EXIT
END

IF WEIGHT #69 ~  Global("OHD_playerkillstree","OH5500",5)
Global("OHD_urgothoz_patron","GLOBAL",1)
~ THEN BEGIN 1020 // from:
  SAY #90143 /* ~YES! Ur-Gothoz is pleased!~ [OH90143] */
  IF ~~ THEN REPLY #90161 /* ~I'm glad to hear it, but I'd be even more glad if NOBODY ELSE heard it.~ */ GOTO 1022
  IF ~~ THEN REPLY #90162 /* ~I can't tell you how terribly happy I am for him. Let's get out of here before someone notices what you've done.~ */ GOTO 1025
  IF ~~ THEN REPLY #90163 /* ~Dorn, I swear, if we make it out of Lunia, you and I are going to have words about this.~ */ GOTO 1026
END

IF WEIGHT #70 ~  Global("OHD_playerkillstree","OH5500",5)
Global("OHD_azothet_patron","GLOBAL",1)
~ THEN BEGIN 1021 // from:
  SAY #90144 /* ~YES! Azothet's delight knows no bounds!~ [OH90144] */
  IF ~~ THEN REPLY #90161 /* ~I'm glad to hear it, but I'd be even more glad if NOBODY ELSE heard it.~ */ GOTO 1022
  IF ~~ THEN REPLY #99391 /* ~I can't tell you how terribly happy I am for her. Let's get out of here before someone notices what you've done.~ */ GOTO 1025
  IF ~~ THEN REPLY #90163 /* ~Dorn, I swear, if we make it out of Lunia, you and I are going to have words about this.~ */ GOTO 1026
END

IF ~~ THEN BEGIN 1022 // from: 1021.0 1020.0
  SAY #90145 /* ~I care not! All that matters is my patron's pleasure!~ [OH90145] */
  IF ~~ THEN DO ~SetGlobal("OHD_playerkillstree","OH5500",6)
~ EXIT
END

IF ~~ THEN BEGIN 1023 // from:
  SAY #90148 /* ~What Ur-Gothoz wills!~ [OH90148] */
  IF ~~ THEN DO ~ActionOverride("OHDZARA",Enemy())
ActionOverride("OHDRIKKO",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 1024 // from:
  SAY #90149 /* ~Whatever my patron, Azothet, desires!~ [OH90149] */
  IF ~~ THEN DO ~ActionOverride("OHDZARA",Enemy())
ActionOverride("OHDRIKKO",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 1025 // from: 1021.1 1020.1
  SAY #90150 /* ~Very well!~ [OH90150] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1026 // from: 1021.2 1020.2
  SAY #90151 /* ~If you would challenge me, <CHARNAME>, do it here and now.~ [OH90151] */
  IF ~~ THEN DO ~SetGlobal("OHD_playerkillstree","OH5500",8)
~ EXIT
END

IF ~~ THEN BEGIN 1027 // from:
  SAY #90154 /* ~Die for Ur-Gothoz!~ [OH90154] */
  IF ~~ THEN DO ~ActionOverride("OHDZARA",Enemy())
ActionOverride("OHDRIKKO",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 1028 // from:
  SAY #90155 /* ~I shed her blood for you, Azothet!~ [OH90155] */
  IF ~~ THEN DO ~ActionOverride("OHDZARA",Enemy())
ActionOverride("OHDRIKKO",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 1029 // from:
  SAY #90113 /* ~I would.~ [OH90113] */
  IF ~~ THEN EXTERN ~OHDZARA~ 8
END

IF ~~ THEN BEGIN 1030 // from:
  SAY #90124 /* ~Let's see how ready you are, fool!~ [OH90124] */
  IF ~~ THEN DO ~ActionOverride("OHDZARA",Enemy())
ActionOverride("OHDRIKKO",Enemy())
~ EXIT
END

IF WEIGHT #71 ~  Global("OHD_dornkillstree","OH5500",2)
~ THEN BEGIN 1031 // from:
  SAY #90105 /* ~It is done.~ [OH90105] */
  IF ~  !Global("OHD_azothet_sword","GLOBAL",1)
!Global("OHD_urgothoz_sword","GLOBAL",1)
~ THEN REPLY #90110 /* ~Good. Let's get out of here before anyone realizes.~ */ DO ~SetGlobal("OHD_dornkillstree","OH5500",3)
~ EXIT
  IF ~  OR(2)
Global("OHD_azothet_sword","GLOBAL",1)
Global("OHD_urgothoz_sword","GLOBAL",1)
~ THEN REPLY #90110 /* ~Good. Let's get out of here before anyone realizes.~ */ DO ~SetGlobal("OHD_dornkillstree","OH5500",3)
~ EXTERN ~OHDSWORD~ 12
  IF ~~ THEN REPLY #90111 /* ~Are you sure? Nothing's happening.~ */ DO ~SetGlobal("OHD_dornkillstree","OH5500",3)
~ GOTO 1033
  IF ~  !Global("OHD_azothet_sword","GLOBAL",1)
!Global("OHD_urgothoz_sword","GLOBAL",1)
~ THEN REPLY #90112 /* ~Excellent.~ */ DO ~SetGlobal("OHD_dornkillstree","OH5500",3)
~ EXIT
  IF ~  OR(2)
Global("OHD_azothet_sword","GLOBAL",1)
Global("OHD_urgothoz_sword","GLOBAL",1)
~ THEN REPLY #90112 /* ~Excellent.~ */ DO ~SetGlobal("OHD_dornkillstree","OH5500",3)
~ EXTERN ~OHDSWORD~ 12
END

IF ~~ THEN BEGIN 1032 // from:
  SAY #90107 /* ~I like you where you are, demon.~ [OH90107] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1033 // from: 1031.2
  SAY #90108 /* ~It will, and soon. We'd best be away from here before that happens.~ [OH90108] */
  IF ~  !Global("OHD_azothet_sword","GLOBAL",1)
!Global("OHD_urgothoz_sword","GLOBAL",1)
~ THEN EXIT
  IF ~  OR(2)
Global("OHD_azothet_sword","GLOBAL",1)
Global("OHD_urgothoz_sword","GLOBAL",1)
~ THEN EXTERN ~OHDSWORD~ 12
END

IF ~~ THEN BEGIN 1034 // from:
  SAY #90109 /* ~We'd best be on our way before anyone realizes what has happened.~ [OH90109] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1035 // from:
  SAY #89984 /* ~Might I have a word in private, <CHARNAME>?~ [OH89984] */
  IF ~  Global("OHD_urgothoz_patron","GLOBAL",1)
~ THEN REPLY #90056 /* ~Of course, Dorn.~ */ GOTO 1038
  IF ~  Global("OHD_azothet_patron","GLOBAL",1)
~ THEN REPLY #90056 /* ~Of course, Dorn.~ */ GOTO 1039
  IF ~~ THEN REPLY #90058 /* ~Later, Dorn.~ */ GOTO 1036
  IF ~~ THEN REPLY #90060 /* ~Say your piece, Dorn.~ */ GOTO 1037
END

IF ~~ THEN BEGIN 1036 // from: 1035.2
  SAY #89986 /* ~NOW, <CHARNAME>.~ [OH89986] */
  IF ~  Global("OHD_urgothoz_patron","GLOBAL",1)
~ THEN REPLY #90062 /* ~Very well, if you insist.~ */ GOTO 1038
  IF ~  Global("OHD_azothet_patron","GLOBAL",1)
~ THEN REPLY #90062 /* ~Very well, if you insist.~ */ GOTO 1039
END

IF ~~ THEN BEGIN 1037 // from: 1035.3
  SAY #89989 /* ~In private, <CHARNAME>.~ [OH89989] */
  IF ~  Global("OHD_urgothoz_patron","GLOBAL",1)
~ THEN REPLY #90062 /* ~Very well, if you insist.~ */ GOTO 1038
  IF ~  Global("OHD_azothet_patron","GLOBAL",1)
~ THEN REPLY #90062 /* ~Very well, if you insist.~ */ GOTO 1039
END

IF ~~ THEN BEGIN 1038 // from: 1037.0 1036.0 1035.0
  SAY #89991 /* ~Ur-Gothoz demands the tree's corruption.~ [OH89991] */
  IF ~~ THEN REPLY #90066 /* ~And how does he propose you accomplish this?~ */ GOTO 1041
  IF ~~ THEN REPLY #90068 /* ~If he wants the tree corrupted, he can damn well come do it himself.~ */ GOTO 1040
  IF ~~ THEN REPLY #90069 /* ~Ur-Gothoz demands too much.~ */ GOTO 1040
END

IF ~~ THEN BEGIN 1039 // from: 1037.1 1036.1 1035.1
  SAY #89994 /* ~Azothet commands me to destroy the tree.~ [OH89994] */
  IF ~~ THEN REPLY #90070 /* ~She what? How are you supposed to manage that?~ */ GOTO 1041
  IF ~~ THEN REPLY #90071 /* ~Azothet can take a flying leap into the Abyss.~ */ GOTO 1040
  IF ~~ THEN REPLY #90072 /* ~Azothet is more eager to see you perish than I expected.~ */ GOTO 1040
END

IF ~~ THEN BEGIN 1040 // from: 1039.2 1039.1 1038.2 1038.1
  SAY #89996 /* ~I must do as my patron bids.~ [OH89996] */
  IF ~~ THEN REPLY #90073 /* ~Of course. How will you do the deed?~ */ GOTO 1041
  IF ~  Global("OHD_azothet_sword","GLOBAL",1)
!Global("OHD_urgothoz_sword","GLOBAL",1)
~ THEN REPLY #90074 /* ~How many times must I hear this song before you tire of singing it?~ */ GOTO 1042
  IF ~  Global("OHD_urgothoz_sword","GLOBAL",1)
!Global("OHD_azothet_sword","GLOBAL",1)
~ THEN REPLY #90074 /* ~How many times must I hear this song before you tire of singing it?~ */ GOTO 1043
  IF ~~ THEN REPLY #90075 /* ~You're a damned fool, Dorn. You should have had done with patrons once and for all in the great tree.~ */ GOTO 1044
END

IF ~~ THEN BEGIN 1041 // from: 1043.0 1042.0 1040.0 1039.0 1038.0
  SAY #89998 /* ~A divine sword plunged into the tree's base should get the job done.~ [OH89998] */
  IF ~~ THEN REPLY #90076 /* ~You go get a sword. I'm going to take advantage of the divine flesh.~ */ DO ~SetGlobal("OHD_dornkillstree","OH5500",1)
~ EXIT
  IF ~~ THEN REPLY #90077 /* ~Fortunately, there's plenty of those around. Unfortunately, you're going to use one to corrupt a holy tree and get us both killed.~ */ GOTO 1052
END

IF ~~ THEN BEGIN 1042 // from: 1040.1
  SAY #90000 /* ~As many times as Ur-Gothoz requires.~ [OH90000] */
  IF ~~ THEN GOTO 1041
END

IF ~~ THEN BEGIN 1043 // from: 1040.2
  SAY #90002 /* ~For as long as she commands me, I'll sing as many verses as Azothet deems fit.~ [OH90002] */
  IF ~~ THEN GOTO 1041
END

IF ~~ THEN BEGIN 1044 // from: 1040.3
  SAY #90005 /* ~You call me a fool, <CHARNAME>?~ [OH90005] */
  IF ~~ THEN REPLY #90078 /* ~Of course not, Dorn. Why would I ever do that?~ */ GOTO 1052
  IF ~~ THEN REPLY #90079 /* ~I call myself a fool for ever coming to this place. But I'd rather live as a fool than die as one like your patron proposes.~ */ GOTO 1048
  IF ~  OR(2)
CheckStatLT(Player1,14,STR)
CheckStatLT(Player1,13,CHR)
~ THEN REPLY #90080 /* ~Lower your voice or I'll call you a dead fool.~ */ GOTO 1045
  IF ~  CheckStatGT(Player1,13,STR)
CheckStatGT(Player1,12,CHR)
~ THEN REPLY #90080 /* ~Lower your voice or I'll call you a dead fool.~ */ GOTO 1046
END

IF ~~ THEN BEGIN 1045 // from: 1044.2
  SAY #98216 /* ~You dare speak to me thus? The only thing you'll call me is your killer!~ */
  IF ~~ THEN DO ~LeaveParty()
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 1046 // from: 1044.3
  SAY #90007 /* ~Count yourself lucky we are where we are, <PRO_RACE>. ~ [OH90007] */
  IF ~~ THEN REPLY #90081 /* ~Yeah, I don't think that's going to happen. Now let's find the Scroll and do what we came here to do.~ */ GOTO 1047
  IF ~~ THEN REPLY #90082 /* ~It's your good fortune, Dorn.~ */ GOTO 1055
END

IF ~~ THEN BEGIN 1047 // from: 1046.0
  SAY #90010 /* ~We shall—after I deal with the tree.~ [OH90010] */
  IF ~~ THEN DO ~SetGlobal("OHD_dornkillstree","OH5500",1)
~ EXIT
END

IF ~~ THEN BEGIN 1048 // from: 1044.1
  SAY #90012 /* ~Do as you will, <PRO_RACE>. Leave the tree to me.~ [OH90012] */
  IF ~~ THEN REPLY #90083 /* ~I can't let you do that, Dorn.~ */ GOTO 1049
  IF ~~ THEN REPLY #90084 /* ~No. I'll do it.~ */ GOTO 1051
  IF ~~ THEN REPLY #90085 /* ~Finish it quickly, and please, for once in your misbegotten life, try not to call attention to yourself.~ */ GOTO 1056
END

IF ~~ THEN BEGIN 1049 // from: 1048.0
  SAY #90014 /* ~You think you can stop me?~ [OH90014] */
  IF ~~ THEN REPLY #90086 /* ~I think I must.~ */ GOTO 1050
  IF ~~ THEN REPLY #90087 /* ~You're as subtle as an umber hulk in an antiques shop. Let me handle the tree.~ */ GOTO 1051
  IF ~~ THEN REPLY #90088 /* ~I think you're going to get us killed.~ */ GOTO 1052
END

IF ~~ THEN BEGIN 1050 // from: 1052.2 1049.0
  SAY #90019 /* ~Damn you, <CHARNAME>! This wasn't how I wanted things to end.~ [OH90019] */
  IF ~~ THEN REPLY #90089 /* ~Wait, we don't have to end things like this.~ */ GOTO 1055
  IF ~~ THEN REPLY #90090 /* ~Fine. Have at thee, Dorn Il-Khan!~ */ DO ~LeaveParty()
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 1051 // from: 1049.1 1048.1
  SAY #90022 /* ~I knew there was a reason I liked you, <CHARNAME>.~ [OH90022] */
  IF ~~ THEN DO ~AddJournalEntry(90095,INFO)
SetGlobal("OHD_playerkillstree","OH5500",1)
SetGlobal("OHD_treereminder","OH5500",1)
SetGlobalTimer("OHD_treereminder_timer","OH5500",ONE_HOUR)
~ EXIT
END

IF ~~ THEN BEGIN 1052 // from: 1049.2 1044.0 1041.1
  SAY #90025 /* ~Damn it, <CHARNAME>, as a babe at your mother's teat, I doubt you whined so much.~ [OH90025] */
  IF ~~ THEN REPLY #90091 /* ~I never knew my mother, Dorn. Go, do what you're going to do, and be quick about it.~ */ GOTO 1053
  IF ~~ THEN REPLY #90092 /* ~Well, why would I? As a babe with a teat, I was probably in good spirits.~ */ GOTO 1054
  IF ~~ THEN REPLY #90093 /* ~You go too far, half-orc.~ */ GOTO 1050
END

IF ~~ THEN BEGIN 1053 // from: 1052.0
  SAY #90028 /* ~I will be.~ [OH90028] */
  IF ~~ THEN DO ~AddJournalEntry(90095,INFO)
SetGlobal("OHD_dornkillstree","OH5500",1)
~ EXIT
END

IF ~~ THEN BEGIN 1054 // from: 1052.1
  SAY #90032 /* ~Keep that image in mind and be silent a moment while I deal with the silver tree.~ [OH90032] */
  IF ~~ THEN DO ~AddJournalEntry(90095,INFO)
SetGlobal("OHD_dornkillstree","OH5500",1)
~ EXIT
END

IF ~~ THEN BEGIN 1055 // from: 1050.0 1046.1
  SAY #90034 /* ~When we're out of this place, you and I are going to talk about this, <CHARNAME>. But right now, I've other matters to attend to.~ [OH90034] */
  IF ~~ THEN DO ~AddJournalEntry(90095,INFO)
SetGlobal("OHD_dornkillstree","OH5500",1)
~ EXIT
END

IF ~~ THEN BEGIN 1056 // from: 1048.2
  SAY #90036 /* ~I'll see what I can do.~ [OH90036] */
  IF ~~ THEN DO ~AddJournalEntry(90095,INFO)
SetGlobal("OHD_dornkillstree","OH5500",1)
~ EXIT
END

IF WEIGHT #72 ~  Global("OHD_treereminder","OH5500",2)
~ THEN BEGIN 1057 // from:
  SAY #90038 /* ~<CHARNAME>. When are you going to deal with the tree?~ [OH90038] */
  IF ~~ THEN DO ~SetGlobal("OHD_treereminder","OH5500",3)
SetGlobalTimer("OHD_treereminder_timer","OH5500",ONE_HOUR)
~ EXIT
END

IF WEIGHT #73 ~  Global("OHD_treereminder","OH5500",4)
~ THEN BEGIN 1058 // from:
  SAY #90039 /* ~My patron grows impatient, <CHARNAME>. The tree must be corrupted, now.~ [OH90039] */
  IF ~~ THEN DO ~SetGlobal("OHD_treereminder","OH5500",5)
SetGlobalTimer("OHD_treereminder_timer","OH5500",ONE_HOUR)
~ EXIT
END

IF WEIGHT #74 ~  Global("OHD_treereminder","OH5500",6)
~ THEN BEGIN 1059 // from:
  SAY #90040 /* ~Damn your lying tongue, <CHARNAME>! I'll kill the tree myself.~ [OH90040] */
  IF ~~ THEN DO ~SetGlobal("OHD_treereminder","OH5500",7)
SetGlobal("OHD_dornkillstree","OH5500",1)
~ EXIT
END

IF ~~ THEN BEGIN 1060 // from:
  SAY #85443 /* ~Enough! No more words. Let the killing commence!~ */
  IF ~~ THEN DO ~SetGlobal("OHH_phreya_z","OH7300",1)
SetGlobal("OHH_phreya","OH7300",2)
~ EXIT
END

IF ~~ THEN BEGIN 1061 // from:
  SAY #85461 /* ~I'll tear your web to shreds!~ */
  IF ~~ THEN DO ~SetGlobal("OHH_phreya","OH7300",2)
~ EXIT
END

IF WEIGHT #75 ~  Global("OHH_necroticcomment","OH7300",1)
InParty("hexxat")
~ THEN BEGIN 1062 // from:
  SAY #85598 /* ~The necrotic barrier rips and tears at your living flesh. Only something already dead can cross this barrier.~ */
  IF ~~ THEN EXTERN ~HEXXATJ~ 826
END

IF ~~ THEN BEGIN 1063 // from:
  SAY #85600 /* ~It wouldn't.~ */
  IF ~~ THEN EXTERN ~HEXXATJ~ 827
END

IF WEIGHT #76 ~  Global("OHH_necroticcomment","OH7300",1)
!InParty("hexxat")
~ THEN BEGIN 1064 // from:
  SAY #85614 /* ~A necrotic barrier. The living cannot pass through here.~ */
  IF ~~ THEN REPLY #85618 /* ~Are you sure?~ */ DO ~SetGlobal("OHH_necroticcomment","OH7300",2)
AddJournalEntry(86490,INFO)
~ GOTO 1065
  IF ~~ THEN REPLY #85619 /* ~There must be a way to get through.~ */ DO ~SetGlobal("OHH_necroticcomment","OH7300",2)
AddJournalEntry(86490,INFO)
~ GOTO 1066
  IF ~~ THEN REPLY #85620 /* ~There must be something we can do to disrupt the barrier.~ */ DO ~SetGlobal("OHH_necroticcomment","OH7300",2)
AddJournalEntry(86490,INFO)
~ GOTO 1067
END

IF ~~ THEN BEGIN 1065 // from: 1064.0
  SAY #85615 /* ~Feel free to test it and find out for yourself.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1066 // from: 1064.1
  SAY #85616 /* ~There is. But dying would defeat the purpose of this venture.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1067 // from: 1064.2
  SAY #85617 /* ~Undoubtedly. But we might spend the rest of eternity figuring out what it is.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1068 // from:
  SAY #85766 /* ~It can—if it knows the penalty for treachery is greater than doing what it promises.~ */
  IF ~~ THEN EXTERN ~OHHKORK~ 9
END

IF ~~ THEN BEGIN 1069 // from:
  SAY #85767 /* ~Just say the word, <CHARNAME>...~ */
  IF ~~ THEN EXTERN ~OHHKORK~ 9
END

IF ~~ THEN BEGIN 1070 // from:
  SAY #86276 /* ~You've accomplished much. You cannot deny it.~ */
  IF ~~ THEN EXTERN ~HEXXATJ~ 903
END

IF WEIGHT #77 ~  Global("OHH_hexxatdeadcomments","GLOBAL",1)
~ THEN BEGIN 1071 // from:
  SAY #86292 /* ~There's nothing here to mourn. She got what she desired, and that's the end of it.~ */
  IF ~~ THEN DO ~SetGlobal("OHH_hexxatdeadcomments","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 1072 // from:
  SAY #102317 /* ~We will kill him, woman, but fret not—you'll not live to see it!~ */
  IF ~  True()
~ THEN EXTERN ~HGNYA01~ 30
  IF ~  IsValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 268
  IF ~  IsValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 154
  IF ~  IsValidForPartyDialogue("Cernd")
~ THEN EXTERN ~CERNDJ~ 150
  IF ~  IsValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 179
  IF ~  IsValidForPartyDialogue("hexxat")
~ THEN EXTERN ~HEXXATJ~ 933
  IF ~  IsValidForPartyDialogue("neera")
~ THEN EXTERN ~NEERAJ~ 577
  IF ~  IsValidForPartyDialogue("rasaad")
~ THEN EXTERN ~RASAADJ~ 1043
END

IF ~~ THEN BEGIN 1073 // from:
  SAY #102321 /* ~A worthy ally, if not a particularly trustworthy one.~ */
  IF ~  True()
~ THEN UNSOLVED_JOURNAL #73858 /* ~Destiny's next stop

According to Sarevok, the place I need to go next is the Tethyrian city of Saradush. I may not have much of a choice, either... this pocket plane isn't a simple portal that takes me where I want to go. It takes me where I need to be.~ */ EXIT
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN UNSOLVED_JOURNAL #73858 /* ~Destiny's next stop

According to Sarevok, the place I need to go next is the Tethyrian city of Saradush. I may not have much of a choice, either... this pocket plane isn't a simple portal that takes me where I want to go. It takes me where I need to be.~ */ EXTERN ~KELDORJ~ 296
  IF ~  IsValidForPartyDialogue("HaerDalis")
~ THEN UNSOLVED_JOURNAL #73858 /* ~Destiny's next stop

According to Sarevok, the place I need to go next is the Tethyrian city of Saradush. I may not have much of a choice, either... this pocket plane isn't a simple portal that takes me where I want to go. It takes me where I need to be.~ */ EXTERN ~HAERDAJ~ 172
  IF ~  IsValidForPartyDialogue("Jaheira")
~ THEN UNSOLVED_JOURNAL #73858 /* ~Destiny's next stop

According to Sarevok, the place I need to go next is the Tethyrian city of Saradush. I may not have much of a choice, either... this pocket plane isn't a simple portal that takes me where I want to go. It takes me where I need to be.~ */ EXTERN ~JAHEIRAJ~ 584
  IF ~  IsValidForPartyDialogue("Valygar")
~ THEN UNSOLVED_JOURNAL #73858 /* ~Destiny's next stop

According to Sarevok, the place I need to go next is the Tethyrian city of Saradush. I may not have much of a choice, either... this pocket plane isn't a simple portal that takes me where I want to go. It takes me where I need to be.~ */ EXTERN ~VALYGARJ~ 151
  IF ~  IsValidForPartyDialogue("rasaad")
~ THEN EXTERN ~RASAADJ~ 1046
  IF ~  IsValidForPartyDialogue("neera")
~ THEN EXTERN ~NEERAJ~ 579
END

IF ~~ THEN BEGIN 1074 // from:
  SAY #228394 /* ~Yes, Ajantis, calm yourself. I'm sure my roguish ways will not interfere with your... pious lifestyle.~ [DN30B] */
  IF ~~ THEN EXTERN ~AJANTJ~ 4
END

IF WEIGHT #78 ~  InParty("DORN")
Global("DORNCDEV","GLOBAL",2)
Global("DORNPLOT","GLOBAL",2)
!AreaCheck("BG5500")
!Global("KRYLLDEAD","GLOBAL",1)
~ THEN BEGIN 1075 // from:
  SAY #228395 /* ~Hold, <CHARNAME>. I would speak with you.~ [DN31] */
  IF ~~ THEN REPLY #228396 /* ~Aye, what is it?~ */ GOTO 1076
  IF ~~ THEN REPLY #228397 /* ~It will have to wait, Dorn.~ */ EXIT
END

IF ~~ THEN BEGIN 1076 // from: 1075.0
  SAY #228398 /* ~Regarding my mission, I have a lead on one of my former companions, the necromancer Kryll. She was seen east of the Nashkel mines, but I know nothing more specific. I found a woman who knew where I could find Kryll, but she did not respond well to my interrogation.~ [DN32] */
  IF ~~ THEN REPLY #228399 /* ~Where is she now?~ */ GOTO 1077
  IF ~~ THEN REPLY #228400 /* ~Perhaps "interrogation" isn't the approach you should take when asking questions.~ */ GOTO 1078
END

IF ~~ THEN BEGIN 1077 // from: 1076.0
  SAY #228401 /* ~Taris, as she is called, is somewhere in Nashkel. She was searching for her husband, or something like that. I do not commit such trivialities to memory.~ [DN33] */
  IF ~~ THEN REPLY #228402 /* ~I'll keep her in mind.~ */ DO ~SetGlobal("DORNCDEV","GLOBAL",3)
~ UNSOLVED_JOURNAL #228403 /* ~Bad Cop
Dorn has suggested that I speak with Taris in Nashkel, since she seems to know something about the whereabouts of his next target, Kryll. Dorn's rough demeanor frightened Taris too much to gain any useful information. He hoped a lighter touch would succeed where his menace failed.~ */ EXIT
END

IF ~~ THEN BEGIN 1078 // from: 1076.1
  SAY #228404 /* ~Perhaps I lack finesse, <PRO_RACE>, but that is why I'm following you across this godforsaken coast. The woman with the information goes by the name of Taris. When last I saw her, she was in Nashkel, looking for her husband.~ [DN34] */
  IF ~~ THEN REPLY #228402 /* ~I'll keep her in mind.~ */ DO ~SetGlobal("DORNCDEV","GLOBAL",3)
~ UNSOLVED_JOURNAL #228403 /* ~Bad Cop
Dorn has suggested that I speak with Taris in Nashkel, since she seems to know something about the whereabouts of his next target, Kryll. Dorn's rough demeanor frightened Taris too much to gain any useful information. He hoped a lighter touch would succeed where his menace failed.~ */ EXIT
END

IF WEIGHT #79 ~  InParty("DORN")
AreaCheck("BG5500")
Global("kryll_conv","GLOBAL",0)
NumDeadGT("KRYSKEL",0)
Exists("KRYLL")
~ THEN BEGIN 1079 // from:
  SAY #228405 /* ~The undead rarely rise up of their own accord, <CHARNAME>. This business reeks of Kryll. Step carefully. She lurks nearby.~ [DN46] */
  IF ~~ THEN REPLY #228406 /* ~Do you intend to kill her?~ */ GOTO 1080
  IF ~~ THEN REPLY #228407 /* ~This necromancer is no match for us.~ */ GOTO 1081
END

IF ~~ THEN BEGIN 1080 // from: 1079.0
  SAY #228408 /* ~I have dreamt of little else these past months. Ever since I was granted these new powers, the desire to drive my blade into the neck of each and every betrayer has driven me forward.~ [DN47] */
  IF ~~ THEN REPLY #228409 /* ~Who granted you these powers? I still want to know more about the source of your abilities.~ */ GOTO 1082
  IF ~~ THEN REPLY #228410 /* ~I see. We should continue onward.~ */ DO ~SetGlobal("kryll_conv","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 1081 // from: 1079.1
  SAY #228411 /* ~Despite the powers I have been granted and my craving to tear her flesh apart, I remain cautious. It would be wise for you to do the same.~ [DN48] */
  IF ~~ THEN REPLY #228409 /* ~Who granted you these powers? I still want to know more about the source of your abilities.~ */ GOTO 1082
  IF ~~ THEN REPLY #228412 /* ~We shall see, Dorn. Let us continue onward to end this once and for all.~ */ DO ~SetGlobal("kryll_conv","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY #228413 /* ~Keep your weaknesses to yourself, blackguard.~ */ GOTO 1083
END

IF ~~ THEN BEGIN 1082 // from: 1081.0 1080.0
  SAY #228414 /* ~I made a deal and agreed to certain conditions. I will speak no more on this matter.~ [DN49] */
  IF ~~ THEN DO ~SetGlobal("kryll_conv","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 1083 // from: 1081.2
  SAY #228415 /* ~Hrmm. Bravado will only get you so far.~ [DN50] */
  IF ~~ THEN DO ~SetGlobal("kryll_conv","GLOBAL",1)
~ EXIT
END

IF WEIGHT #80 ~  Exists("KRYLL")
AreaCheck("BG5500")
!Dead("KRYLL")
Allegiance("KRYLL",NEUTRAL)
NextTriggerObject("KRYLL")
Detect([PC])
~ THEN BEGIN 1084 // from:
  SAY #228416 /* ~I thought you alone saw past my half-orc blood, Kryll. Now I see you are just like the others. Perhaps Senjak was too handsome for you to ignore, but I've taken care of that!~ [DN51] */
  IF ~~ THEN EXTERN ~KRYLL~ 0
END

IF ~~ THEN BEGIN 1085 // from:
  SAY #228417 /* ~Petty? You left me to die in Luskan. There will be no forgiveness! Stand and die, Kryll!~ [DN53] */
  IF ~~ THEN EXTERN ~KRYLL~ 1
END

IF WEIGHT #81 ~  InParty("DORN")
IsValidForPartyDialogue("DORN")
Global("KRYLLDEAD","GLOBAL",1)
Global("DORNPLOT","GLOBAL",2)
GlobalLT("kryll_conv","GLOBAL",2)
~ THEN BEGIN 1086 // from:
  SAY #228418 /* ~I can see you suffer, Kryll. I can see your soul writhe in the Abyss. Of all my betrayers, you are the one whose pain pleases me most.~ [DN55] */
  IF ~~ THEN REPLY #228419 /* ~Most men would not speak such ill of the dead, Dorn.~ */ GOTO 1087
  IF ~~ THEN REPLY #228420 /* ~I would assume that you speak metaphorically, Dorn? Or can you really gaze into the Abyss?~ */ GOTO 1088
END

IF ~~ THEN BEGIN 1087 // from: 1086.0
  SAY #228421 /* ~Most men have not been betrayed by their lover. Question me again after you've shared my experience.~ [DN56] */
  IF ~~ THEN DO ~SetGlobal("kryll_conv","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 1088 // from: 1086.1
  SAY #228422 /* ~Perhaps not literally. Not with my eyes. But I do have channels of communication. Enough of this. Let us search the body.~ [DN57] */
  IF ~~ THEN DO ~SetGlobal("kryll_conv","GLOBAL",2)
~ EXIT
END

IF WEIGHT #82 ~  IsValidForPartyDialogue("DORN")
Global("DORNTARIS","GLOBAL",1)
~ THEN BEGIN 1089 // from:
  SAY #228423 /* ~Hrmm. When I asked this woman about Kryll, the description I gave matched the mystery woman who took away her husband. When I demanded more information, she fled. Typical.~ [DN40] */
  IF ~~ THEN REPLY #228424 /* ~Taris, please continue.~ */ DO ~SetGlobal("DORNTARIS","GLOBAL",2)
~ EXTERN ~TARIS~ 5
END

IF WEIGHT #83 ~  Global("DORNTARIS","GLOBAL",3)
IsValidForPartyDialogue("DORN")
~ THEN BEGIN 1090 // from:
  SAY #228425 /* ~I do not. Kryll was a necromancer of some ability. And she was, let us say, "friendly" enough at times. But she is not a leader of men. Something is amiss.~ [DN45] */
  IF ~~ THEN REPLY #228426 /* ~Perhaps there is more going on than you had anticipated.~ */ DO ~SetGlobal("DORNTARIS","GLOBAL",4)
EraseJournalEntry(228403)
~ UNSOLVED_JOURNAL #228427 /* ~Charmed, I'm Sure
Taris has pointed us somewhere east of Nashkel. Her husband, along with several others, seems to have fallen under the spell of the sorceress Kryll. Dorn is eager to track her down.~ */ EXIT
END

IF WEIGHT #84 ~  InParty("DORN")
IsValidForPartyDialogue("DORN")
PartyHasItem("DNNOTE")
Global("DORNPLOT","GLOBAL",2)
Global("kryll_conv","GLOBAL",2)
~ THEN BEGIN 1091 // from:
  SAY #228428 /* ~That note, let me read it. At last! Simmeon, the king bastard himself. Quickly, <CHARNAME>, let us make haste!~ [DN58] */
  IF ~~ THEN REPLY #228429 /* ~Aren't you worried he knows you are coming? He could be waiting with a trap.~ */ DO ~SetGlobal("DORNPLOT","GLOBAL",3)
~ GOTO 1092
END

IF ~~ THEN BEGIN 1092 // from: 1091.0
  SAY #228430 /* ~It matters not. I will escape any trap they lay for me; I will overcome any obstacle they place in my path. I know better than to trust the word of those I have slain already, but I sense it is true that he gave the order. Simmeon must die.~ [DN59] */
  IF ~~ THEN REPLY #228431 /* ~He invited Kryll to join him. It stands to reason he's more than ready for you.~ */ GOTO 1093
  IF ~~ THEN REPLY #228432 /* ~Whatever happened to caution, Dorn? Let us continue onward, we will meet Simmeon soon enough.~ */ DO ~EraseJournalEntry(228427)
~ UNSOLVED_JOURNAL #228433 /* ~Another One Bites the Dust
We have slain Kryll, and Dorn stands one step closer to his final vengeance against his betrayers. Kryll possessed a note from the final member of his old adventuring party, Simmeon. Simmeon seems to be awaiting her outside the entrance to Baldur's Gate.~ */ EXIT
END

IF ~~ THEN BEGIN 1093 // from: 1092.0
  SAY #228434 /* ~Hrmm. Have you lost your taste for revenge, <PRO_RACE>? I would not have expected you to turn down a challenge. Until now, you have proven to be a capable leader.~ [DN60] */
  IF ~~ THEN REPLY #228435 /* ~I do not spurn any challenges! Aye then, let us find Simmeon and have words with him.~ */ DO ~EraseJournalEntry(228427)
~ UNSOLVED_JOURNAL #228433 /* ~Another One Bites the Dust
We have slain Kryll, and Dorn stands one step closer to his final vengeance against his betrayers. Kryll possessed a note from the final member of his old adventuring party, Simmeon. Simmeon seems to be awaiting her outside the entrance to Baldur's Gate.~ */ EXIT
  IF ~~ THEN REPLY #228436 /* ~Perhaps I am more cautious than you, Dorn. My capable nature may stem from that. Let us journey onward.~ */ DO ~EraseJournalEntry(228427)
~ UNSOLVED_JOURNAL #228433 /* ~Another One Bites the Dust
We have slain Kryll, and Dorn stands one step closer to his final vengeance against his betrayers. Kryll possessed a note from the final member of his old adventuring party, Simmeon. Simmeon seems to be awaiting her outside the entrance to Baldur's Gate.~ */ EXIT
END

IF WEIGHT #85 ~  InParty("DORN")
AreaCheck("BG0900")
!Dead("SIMMEON")
Global("wyrms_inter","BG0900",1)
Global("DORNPLOT","GLOBAL",3)
~ THEN BEGIN 1094 // from:
  SAY #228437 /* ~I can almost feel his presence. My patron hums with excitement about this soul. It pulses with energy. Come, <CHARNAME>! We stand at the threshold.~ [DN61] */
  IF ~~ THEN REPLY #228438 /* ~After all of this is done, I want to know more about this "patron" of yours.~ */ GOTO 1095
END

IF ~~ THEN BEGIN 1095 // from: 1094.0
  SAY #228439 /* ~When Simmeon's broken body lies at my feet, perhaps I shall reward you with the rest of my tale. But not yet.~ [DN62] */
  IF ~~ THEN DO ~SetGlobal("wyrms_inter","BG0900",2)
~ EXIT
END

IF ~~ THEN BEGIN 1096 // from:
  SAY #228440 /* ~At least you know you deserve my revenge. The others pointed to you, hoping I would show them mercy. Will you also beg?~ [DN64] */
  IF ~~ THEN EXTERN ~SIMMEON~ 1
END

IF ~~ THEN BEGIN 1097 // from:
  SAY #228441 /* ~Knowing the source of my powers does you no good, brigand. Ur-Gothoz will feed upon your soul!~ [DN66] */
  IF ~~ THEN EXTERN ~SIMMEON~ 2
END

IF WEIGHT #86 ~  InParty("DORN")
IsValidForPartyDialogue("DORN")
Dead("SIMMEON")
Global("DORNPLOT","GLOBAL",4)
~ THEN BEGIN 1098 // from:
  SAY #228442 /* ~At last, Simmeon lies dead, his patron broken! Ur-Gothoz feasts on the souls of my betrayers! My revenge is complete!~ [DN71] */
  IF ~~ THEN REPLY #228443 /* ~What happened to Simmeon before the battle? It looked as if he had powers like yours.~ */ DO ~SetGlobal("DORNPLOT","GLOBAL",5)
~ GOTO 1099
  IF ~~ THEN REPLY #228444 /* ~What will you do now? Your quest is over.~ */ DO ~SetGlobal("DORNPLOT","GLOBAL",5)
~ GOTO 1100
  IF ~~ THEN REPLY #228445 /* ~Now you can cast off the evil that has taken hold of you!~ */ DO ~SetGlobal("DORNPLOT","GLOBAL",5)
~ GOTO 1101
END

IF ~~ THEN BEGIN 1099 // from: 1098.0
  SAY #228446 /* ~As I understand it, Simmeon accepted the same dark pact as I, only with a different patron, an enemy of Ur-Gothoz.~ [DN73] */
  IF ~~ THEN REPLY #228447 /* ~Ur-Gothoz? What exactly is he? It?~ */ GOTO 1102
  IF ~~ THEN REPLY #228448 /* ~Simmeon made a poor choice, it seems. What will you do now that he has fallen?~ */ GOTO 1100
END

IF ~~ THEN BEGIN 1100 // from: 1103.0 1102.0 1099.1 1098.1
  SAY #228449 /* ~I know little more than that Ur-Gothoz demands blood, an easy price for me to pay while pursuing my vendetta. Your path has been even bloodier. Perhaps I should continue to follow it at your side. Yes, even as I say so, I sense Ur-Gothoz approves. Will you... keep me by your side, <CHARNAME>?~ [DN74] */
  IF ~~ THEN REPLY #228450 /* ~I would be glad to have you battle alongside me.~ */ GOTO 1104
  IF ~~ THEN REPLY #228451 /* ~Perhaps not... I think it would be best if we parted ways.~ */ GOTO 1154
END

IF ~~ THEN BEGIN 1101 // from: 1098.2
  SAY #228452 /* ~What? Did you think me a prisoner? A fear-driven weakling? No, I agreed to the pact with Ur-Gothoz knowing just what I would receive and what I must do in return. The power is mine, and so is the obligation. I would no sooner sacrifice them than you would sacrifice an arm.~ [DN75] */
  IF ~~ THEN REPLY #228453 /* ~Your decisions are yours to make, Dorn. I will respect them.~ */ GOTO 1104
  IF ~~ THEN REPLY #228454 /* ~But your powers stem from an evil source.~ */ GOTO 1103
END

IF ~~ THEN BEGIN 1102 // from: 1099.0
  SAY #228455 /* ~Ur-Gothoz is an outsider to these realms. Our world interests him, and his power interested me. Our pact makes me his chosen instrument.~ [DN76] */
  IF ~~ THEN REPLY #228444 /* ~What will you do now? Your quest is over.~ */ GOTO 1100
END

IF ~~ THEN BEGIN 1103 // from: 1101.1
  SAY #228456 /* ~"Evil" is a term wept by the weak and the defeated. What have I done? Well, I have cleansed the world of a band of treacherous dogs. The powers Ur-Gothoz has granted me have accomplished what many would consider... a great good. Do not annoy me with such simplistic notions of "morality."~ [DN77] */
  IF ~~ THEN REPLY #228444 /* ~What will you do now? Your quest is over.~ */ GOTO 1100
END

IF ~~ THEN BEGIN 1104 // from: 1101.0 1100.0
  SAY #228457 /* ~Good. Let us leave this place. I have much to consider about my future.~ [DN78] */
  IF ~~ THEN DO ~AddJournalEntry(228458,QUEST_DONE)
~ EXIT
  IF ~  InParty("KAGAIN")
~ THEN EXTERN ~KAGAIJ~ 7
END

IF ~~ THEN BEGIN 1105 // from:
  SAY #228459 /* ~I'll take it under consideration, dwarf.~ [DN77B] */
  IF ~~ THEN DO ~AddJournalEntry(228458,QUEST_DONE)
~ EXIT
END

IF WEIGHT #87 ~  InParty("DORN")
IsValidForPartyDialogue("DORN")
Global("DORNCDEV2","GLOBAL",2)
~ THEN BEGIN 1106 // from:
  SAY #228460 /* ~Hrmm, Baldur's Gate. This place reminds me of Luskan. Both cities teem with wretches unfit to grovel at my feet.~ [DNT100] */
  IF ~~ THEN REPLY #228461 /* ~Luskan? I take it you've had some dealings in that city.~ */ GOTO 1109
  IF ~~ THEN REPLY #228462 /* ~These people are not here to serve you, Dorn.~ */ GOTO 1107
  IF ~~ THEN REPLY #228463 /* ~I don't have time to listen to this, Dorn.~ */ DO ~SetGlobal("DORNCDEV2","GLOBAL",1)
SetGlobalTimer("DORNTIMER2","GLOBAL",THIRTY_DAYS)
~ EXIT
END

IF ~~ THEN BEGIN 1107 // from: 1106.1
  SAY #228464 /* ~Your feigned innocence is amusing, <CHARNAME>. These people are sheep compared to us. We stride through the world as kings, and the weak tremble at our approach.~ [DNT101] */
  IF ~~ THEN REPLY #228465 /* ~Where you see pawns of little value, I see people with lives and stories. They are no worse than us.~ */ GOTO 1108
  IF ~~ THEN REPLY #230779 /* ~Maybe you're right, Dorn. These people will never amount to anything.~ */ GOTO 1115
END

IF ~~ THEN BEGIN 1108 // from: 1107.0
  SAY #228466 /* ~Bah! The tale of a man who woke up, hammered on iron, and fell back into bed several thousand times is no story at all! It is pathetic and sickening.~ [DNT102] */
  IF ~~ THEN REPLY #228467 /* ~Surely your story is much better. What is the tale of Dorn Il-Khan?~ */ GOTO 1110
END

IF ~~ THEN BEGIN 1109 // from: 1115.0 1106.0
  SAY #228468 /* ~Perhaps.~ [DNT104] */
  IF ~~ THEN REPLY #228469 /* ~If we are to be allies, I must know a little more about you.~ */ GOTO 1110
END

IF ~~ THEN BEGIN 1110 // from: 1109.0 1108.0
  SAY #228470 /* ~As for my past, you have only to know I punish treachery. As for the present, take comfort in knowing that no one shall stand between you and your goals, so long as I remain at your side.~ [DNT105] */
  IF ~~ THEN REPLY #228471 /* ~How did you become such a skilled fighter?~ */ GOTO 1111
END

IF ~~ THEN BEGIN 1111 // from: 1110.0
  SAY #228472 /* ~After ogres raided my tribe in the Spine of the World, my human mother and I escaped to Luskan. There, I discovered the nature of... "civilized" men.~ [DNT106] */
  IF ~~ THEN REPLY #228473 /* ~What can you tell me about your time with this band?~ */ GOTO 1112
END

IF ~~ THEN BEGIN 1112 // from: 1111.0
  SAY #228474 /* ~Those times were not all bad. Riding across the mountains, slaying all challengers, and plundering ancient temples are good ways to start a legend. But now the blood I most wish to spill belongs to my former companions.~ [DN_28474] */
  IF ~~ THEN REPLY #228475 /* ~How so?~ */ GOTO 1113
END

IF ~~ THEN BEGIN 1113 // from: 1112.0
  SAY #228476 /* ~Jealous of our plunder, rival bands spread word that we were tomb robbers and thieves. Local lords sent out men to capture us. Simmeon, our leader, decided it was time for a show of force. We pillaged the town of Barrow, slaying men, women, and children to show their lords not to trifle with us.~ [DN_28476] */
  IF ~~ THEN REPLY #228477 /* ~What happened then?~ */ GOTO 1114
END

IF ~~ THEN BEGIN 1114 // from: 1113.0
  SAY #228478 /* ~Hrmm. Perhaps another time, <CHARNAME>.~ */
  IF ~~ THEN DO ~SetGlobal("DORNCDEV2","GLOBAL",3)
SetGlobalTimer("DORNTIMER3","GLOBAL",SEVEN_DAYS)
AddJournalEntry(228479,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 1115 // from: 1107.1
  SAY #228480 /* ~Yes! You and I are not like these livestock. Our names are destined to be known far and wide!~ [DNT103] */
  IF ~~ THEN REPLY #228481 /* ~You mentioned Luskan before. Did you have some dealings there?~ */ GOTO 1109
END

IF WEIGHT #88 ~  Global("DORNCDEV3","GLOBAL",1)
InParty("DORN")
IsValidForPartyDialogue("DORN")
~ THEN BEGIN 1116 // from:
  SAY #228482 /* ~What do you want? I take no pleasure in idle chatter.~ [DNT121] */
  IF ~~ THEN REPLY #228483 /* ~I would like to know more about what happened in Barrow.~ */ GOTO 1117
  IF ~~ THEN REPLY #228484 /* ~Never mind, I'll speak to you later.~ */ DO ~SetGlobal("DORNCDEV3","GLOBAL",0)
SetGlobalTimer("DORNTIMER3","GLOBAL",SEVEN_DAYS)
~ EXIT
END

IF ~~ THEN BEGIN 1117 // from: 1116.0
  SAY #228485 /* ~Hrmm. Perhaps it is time I revealed more of the story.~ [DNT122] */
  IF ~~ THEN REPLY #228486 /* ~I would appreciate it.~ */ GOTO 1118
END

IF ~~ THEN BEGIN 1118 // from: 1117.0
  SAY #231835 /* ~We met little resistance from the villagers. They had few warriors of any merit. Those who dared defend themselves soon fell to our spells and swords. Then, it was only a matter of slaughtering the women and children.~ [DNT123] */
  IF ~~ THEN REPLY #228488 /* ~Slaughtering an entire village to send a message, isn't that overkill?~ */ GOTO 1119
  IF ~~ THEN REPLY #228489 /* ~You did what was necessary. The local lord needed a strong message.~ */ GOTO 1120
  IF ~~ THEN REPLY #228490 /* ~What else could you do? The local lord needed a strong message.~ */ GOTO 1122
END

IF ~~ THEN BEGIN 1119 // from: 1118.0
  SAY #228491 /* ~Don't be so naive! I did not "permit" it. I led the charge! If I had been more wary, perhaps it would have ended differently.~ [DNT124] */
  IF ~~ THEN GOTO 1122
END

IF ~~ THEN BEGIN 1120 // from: 1118.1
  SAY #228492 /* ~Hrm. Well, we were not the sort to take prisoners. The only knot I know how to tie is a noose.~ [DNT125] */
  IF ~~ THEN GOTO 1122
  IF ~  InParty("GARRICK")
~ THEN EXTERN ~GARRIJ~ 3
END

IF ~~ THEN BEGIN 1121 // from:
  SAY #228493 /* ~A mewling child like you couldn't accomplish the least of my bloody deeds!~ [DNT125B] */
  IF ~~ THEN GOTO 1122
END

IF ~~ THEN BEGIN 1122 // from: 1121.0 1120.0 1119.0 1118.2
  SAY #228494 /* ~Standing among the corpses like gods of destruction, I smiled because I felt the ecstasy of triumph. The others smiled for a different reason.~ [DNT126] */
  IF ~~ THEN REPLY #228495 /* ~You were a monster among monsters.~ */ GOTO 1123
  IF ~~ THEN REPLY #228496 /* ~That sounds like a harrowing experience. Why were your friends smiling?~ */ GOTO 1124
  IF ~~ THEN REPLY #228497 /* ~I have a bad feeling I know why your friends were smiling.~ */ GOTO 1124
END

IF ~~ THEN BEGIN 1123 // from: 1122.0
  SAY #228498 /* ~Hrm. Perhaps I am a monster. Better for you that I fight at your side rather than stalking you through the darkness.~ [DNT127] */
  IF ~~ THEN REPLY #228499 /* ~There's no need to threaten me. Why were your friends smiling?~ */ GOTO 1124
END

IF ~~ THEN BEGIN 1124 // from: 1123.0 1122.2 1122.1
  SAY #228500 /* ~As I was about to discover, they were not my friends. The slaughter at Barrow was only half of the plan they had made without me.~ [DNT128] */
  IF ~~ THEN REPLY #228501 /* ~What plan?~ */ GOTO 1125
END

IF ~~ THEN BEGIN 1125 // from: 1124.0
  SAY #228502 /* ~Even remembering this tale makes me angry, and that is dangerous for everyone—including you. Ask me again later... when I am calm.~ [DNT129] */
  IF ~~ THEN DO ~SetGlobal("DORNCDEV3","GLOBAL",2)
SetGlobalTimer("DORNTIMER4","GLOBAL",SEVEN_DAYS)
AddJournalEntry(228503,INFO)
~ EXIT
END

IF WEIGHT #89 ~  InParty("DORN")
IsValidForPartyDialogue("DORN")
Global("DORNCDEV4","GLOBAL",1)
~ THEN BEGIN 1126 // from:
  SAY #228504 /* ~Let me guess: You have been wondering what the smiles of my former companions meant after the massacre at Barrow.~ [DNT131] */
  IF ~~ THEN REPLY #228505 /* ~Yes, your tale intrigues me.~ */ GOTO 1127
  IF ~~ THEN REPLY #228506 /* ~Please do. I'd like to know what it takes to hurt a monster like you.~ */ GOTO 1127
END

IF ~~ THEN BEGIN 1127 // from: 1126.1 1126.0
  SAY #228507 /* ~Rather than silencing the pleas of the fallen, my companions turned their weapons toward me. "We need a scapegoat," Simmeon said. "And we think it should be you."~ [DNT132] */
  IF ~~ THEN REPLY #228508 /* ~Why you?~ */ GOTO 1128
END

IF ~~ THEN BEGIN 1128 // from: 1127.0
  SAY #228509 /* ~I could have cut down any one of them, but together they overcame me with spells and the strength of numbers. They left me unconscious among the dead.~ [DNT136] */
  IF ~~ THEN GOTO 1129
END

IF ~~ THEN BEGIN 1129 // from: 1128.0
  SAY #228510 /* ~While I was awaiting execution in a Luskan dungeon, I came to understand Simmeon's plan. If the local lords believed they had captured the leader of our group, they would cease their pursuit.~ [DNT138] */
  IF ~~ THEN GOTO 1130
END

IF ~~ THEN BEGIN 1130 // from: 1129.0
  SAY #228511 /* ~Simmeon left me behind to wear the mantle of the Butcher of Barrow alone. My true hatred was born on that day. I swore revenge on them all.~ [DNT139] */
  IF ~~ THEN GOTO 1132
  IF ~  IsValidForPartyDialogue("KIVAN")
~ THEN EXTERN ~KIVANJ~ 7
  IF ~  IsValidForPartyDialogue("EDWIN")
~ THEN EXTERN ~EDWINJ~ 249
END

IF ~~ THEN BEGIN 1131 // from:
  SAY #228512 /* ~If you grow tired of my voice, mage, I could remove your ears.~ [DNT135B] */
  IF ~~ THEN EXTERN ~EDWINJ~ 250
END

IF ~~ THEN BEGIN 1132 // from: 1130.0
  SAY #228513 /* ~For a month, I rotted in that darkness. My ears were filled with the chittering of rats and the curses the guards heaped upon me... and their hatred only fed my own.~ [DNT140] */
  IF ~~ THEN REPLY #228514 /* ~How did you escape from the prison?~ */ GOTO 1133
END

IF ~~ THEN BEGIN 1133 // from: 1132.0
  SAY #228515 /* ~Be silent, <PRO_RACE>. You asked for this tale. Telling it reminds me of the rage I felt in those days, so do not interrupt. Listen carefully, because I will tell the rest of this story only once.~ [DNT141] */
  IF ~~ THEN GOTO 1134
END

IF ~~ THEN BEGIN 1134 // from: 1133.0
  SAY #228516 /* ~My hatred for Simmeon and the others ran deep—deep enough that something outside this world felt it. A cruel and powerful entity answered my desire for revenge.~ [DNT142] */
  IF ~~ THEN GOTO 1135
END

IF ~~ THEN BEGIN 1135 // from: 1134.0
  SAY #228517 /* ~This outsider offered me a pact. In exchange for the power to break loose of my bonds and wreak vengeance on my betrayers, I would become his champion in the mortal realm. The souls of those I slay feed his hunger.~ [DNT143] */
  IF ~~ THEN GOTO 1138
  IF ~  InParty("VICONIA")
~ THEN EXTERN ~VICONIJ~ 486
END

IF ~~ THEN BEGIN 1136 // from:
  SAY #228518 /* ~Do you have a problem with half-orcs, drow? Perhaps we should parade you through Baldur's Gate and see what reaction your appearance draws.~ [DNT143B] */
  IF ~~ THEN EXTERN ~VICONIJ~ 487
END

IF ~~ THEN BEGIN 1137 // from:
  SAY #228519 /* ~You may take solace in their desire when they burn you at the stake. That is what comes of judging others by their appearance.~ [DNT143D] */
  IF ~~ THEN EXTERN ~VICONIJ~ 488
END

IF ~~ THEN BEGIN 1138 // from: 1135.0
  SAY #228520 /* ~Once I made the compact, it was my turn to make my captors suffer. Bursting out of my cell, I slew all who stood in my way, pausing only to give special attention to my tormentors.~ [DNT144] */
  IF ~~ THEN DO ~SetGlobal("DORNCDEV4","GLOBAL",-1)
SetGlobalTimer("DORN_SAFANA","GLOBAL",ONE_DAY)
AddJournalEntry(228521,INFO)
~ GOTO 1139
END

IF ~~ THEN BEGIN 1139 // from: 1138.0
  SAY #228522 /* ~Whispering to me from his distant world, my patron led me to you, <CHARNAME>. He foresees great things for us if we continue to fight side by side.~ [DNT146] */
  IF ~~ THEN REPLY #228078 /* ~Very well.~ */ EXIT
  IF ~  InParty("BRANWEN")
~ THEN EXTERN ~BRANWJ~ 2
END

IF ~~ THEN BEGIN 1140 // from:
  SAY #228523 /* ~And what would you have done? Allowed the executioner to take your head? I wield powers beyond your reckoning. Were I so inclined, I could eclipse you as champion of your god.~ [DNT146B] */
  IF ~~ THEN EXTERN ~BRANWJ~ 3
END

IF WEIGHT #90 ~  InParty("DORN")
IsValidForPartyDialogue("DORN")
Global("DORNCDEV5","GLOBAL",2)
~ THEN BEGIN 1141 // from:
  SAY #228524 /* ~I can hardly believe it. You, the spawn of Bhaal himself! Ur-Gothoz was wise to tie my fate to yours. Think of the rivers of blood we could spill across the realms!~ [DNT150] */
  IF ~~ THEN REPLY #228525 /* ~I won't follow in the footsteps of my father. I will not continue his legacy of evil.~ */ GOTO 1142
  IF ~~ THEN REPLY #228526 /* ~While the prospect of having divine heritage intrigues me, I cannot say I'm comfortable with the source.~ */ GOTO 1143
  IF ~~ THEN REPLY #228527 /* ~Yes, I look forward to exploiting my bloodline to its fullest.~ */ GOTO 1145
END

IF ~~ THEN BEGIN 1142 // from: 1141.0
  SAY #228528 /* ~You should embrace this path. What a gift, to have the blood of a dark god coursing through your veins! Do you not see the possibilities? We could silence all who oppose us! No one would dare call my lineage into question!~ [DNT151] */
  IF ~~ THEN REPLY #228529 /* ~Your ultimate fate is none of my concern, Dorn. I do not intend to drag you along behind me forever.~ */ GOTO 1144
  IF ~~ THEN REPLY #228530 /* ~Perhaps you are correct, but I will not abuse my heritage.~ */ GOTO 1143
END

IF ~~ THEN BEGIN 1143 // from: 1142.1 1141.1
  SAY #230811 /* ~The source of your divine essence doesn't matter, don't you see? Bhaal is DEAD! I say that the blood of a god is the blood of a god. It matters not from whence it came.~ [DNT152] */
  IF ~~ THEN REPLY #230812 /* ~Perhaps when you discover that you are the progeny of a dead god who foresaw his death and left a score of mortal progeny across the realms, you can share you wisdom with me. Until then, I do not wish to hear your ramblings.~ */ GOTO 1144
  IF ~~ THEN REPLY #230813 /* ~You are right. I should embrace this gift.~ */ GOTO 1145
END

IF ~~ THEN BEGIN 1144 // from: 1143.0 1142.0
  SAY #228533 /* ~Hrmm... I can see I'm not getting through to you. But consider this: Had I not embraced the offerings of Ur-Gothoz, I would never have achieved such greatness.~ [DNT153] */
  IF ~~ THEN DO ~SetGlobal("DORNCDEV5","GLOBAL",-1)
~ JOURNAL #228536 /* ~Right Hand of Darkness
Dorn has become intensely excited about my status as the offspring of Bhaal. He doesn't seem to understand how much my heritage disturbs me.~ */ EXIT
END

IF ~~ THEN BEGIN 1145 // from: 1143.1 1141.2
  SAY #228534 /* ~Yes! I can see it now. A great fate awaits you. Do not forget those who have bled for you when you finally ascend.~ [DNT154] */
  IF ~~ THEN REPLY #228535 /* ~We shall see.~ */ DO ~SetGlobal("DORNCDEV5","GLOBAL",-1)
~ JOURNAL #230818 /* ~Right-Hand Man
Dorn has become intensely excited about my status as the offspring of Bhaal. He seems to see himself as my right hand, working for the next god of murder for fame and glory.~ */ EXIT
END

IF ~~ THEN BEGIN 1146 // from:
  SAY #228537 /* ~I do not deny my hardships, nor do I seek your sympathy.~ [DN115] */
  IF ~~ THEN EXTERN ~SAFANJ~ 8
END

IF ~~ THEN BEGIN 1147 // from:
  SAY #228538 /* ~Step back, woman. Dexterous hands may tempt other men, but I can see them for what they are—thieves' tools. If I see you near my gear again, I will slice your throat.~ [DN117] */
  IF ~~ THEN EXTERN ~SAFANJ~ 9
END

IF ~~ THEN BEGIN 1148 // from:
  SAY #228539 /* ~I have no time to deal with the likes of you.~ [DN120] */
  IF ~~ THEN EXTERN ~SHARTJ~ 5
END

IF ~~ THEN BEGIN 1149 // from:
  SAY #228540 /* ~Heel, wench, or I will carve the soul out of your frail flesh!~ [DN122] */
  IF ~~ THEN EXTERN ~SHARTJ~ 6
END

IF ~~ THEN BEGIN 1150 // from:
  SAY #228541 /* ~An unfair contest, woman. Face me after a day's rest with only a blade in your hand, and we shall see who is the better fighter. I tire of this distraction.~ [DN125] */
  IF ~~ THEN DO ~SetGlobal("DORN_SHARTEEL_FIGHT","GLOBAL",5)
ActionOverride("Sharteel",ClearActions("Sharteel"))
ClearActions(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 1151 // from:
  SAY #228542 /* ~What are you...?!~ [DN127] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1152 // from:
  SAY #228543 /* ~Haha... HAHAHAHAHA! You pathetic runt, did you think your dazzling show of lights could steal my powers? Why, if I were not so amused, I would stomp you to death!~ [DN130] */
  IF ~~ THEN EXTERN ~TIAXJ~ 5
END

IF ~~ THEN BEGIN 1153 // from:
  SAY #228544 /* ~Step away from me, insect.~ [DN132] */
  IF ~~ THEN EXIT
END

IF WEIGHT #91 ~  !InParty("DORN")
~ THEN BEGIN 1154 // from: 1100.1
  SAY #228545 /* ~Either you jest or your judgment has lapsed, <CHARNAME>, and I am not a man who enjoys humor. I will return to the Friendly Arm Inn until you come to your senses.~ [DN70] */
  IF ~~ THEN REPLY #228546 /* ~Perhaps we shall travel together again in the future, Dorn.~ */ DO ~SetGlobal("DORNPARTY","GLOBAL",0)
SetDialogue("DORNP_")
ChangeEnemyAlly("DORN",NEUTRAL)
EscapeAreaMove("BG2301",1132,727,S)
~ EXIT
  IF ~~ THEN REPLY #228547 /* ~Wait! I've made a mistake. Please continue by my side.~ */ DO ~SetGlobal("DORNPARTY","GLOBAL",1)
JoinParty()
~ EXIT
END

IF ~~ THEN BEGIN 1155 // from:
  SAY #228355 /* ~I am not your servant. Get your own ale!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1156 // from:
  SAY #230354 /* ~Do you worry it is a mistake to bring others on your mission? Someone could betray you.~ [DNR101] */
  IF ~~ THEN REPLY #230355 /* ~Anyone who crosses me dies.~ */ GOTO 1157
  IF ~~ THEN REPLY #230356 /* ~Do I have to start worrying about you, Dorn?~ */ GOTO 1158
  IF ~~ THEN REPLY #230357 /* ~Is there someone you suspect?~ */ GOTO 1161
END

IF ~~ THEN BEGIN 1157 // from: 1156.0
  SAY #230358 /* ~Good. My betrayers let me live, but yours might not make such a mistake.~ [DNR102] */
  IF ~~ THEN REPLY #230359 /* ~No one crosses me and lives.~ */ GOTO 1159
  IF ~~ THEN REPLY #230364 /* ~How did they make such a mistake?~ */ GOTO 1160
  IF ~~ THEN REPLY #230361 /* ~Is there someone you suspect?~ */ GOTO 1161
END

IF ~~ THEN BEGIN 1158 // from: 1156.1
  SAY #230362 /* ~You can rely on me as long as your leadership remains strong and sure.~ [DNR103] */
  IF ~~ THEN REPLY #230363 /* ~No one crosses me and lives.~ */ GOTO 1159
  IF ~~ THEN REPLY #230360 /* ~Who would betray me? I'm adorable.~ */ GOTO 1161
  IF ~~ THEN REPLY #230365 /* ~Is there someone else I can't trust?~ */ GOTO 1161
END

IF ~~ THEN BEGIN 1159 // from: 1158.0 1157.0
  SAY #230366 /* ~That is good, but you must remain alert to any treachery.~ [DNR104] */
  IF ~~ THEN REPLY #230367 /* ~Who do you think I need to keep an eye on?~ */ GOTO 1161
  IF ~~ THEN REPLY #230368 /* ~Something tells me you've been untrusting even before Simmeon betrayed you.~ */ GOTO 1189
END

IF ~~ THEN BEGIN 1160 // from: 1157.1
  SAY #230369 /* ~They underestimated the power of my anger to punish their treachery.~ [DNR105] */
  IF ~~ THEN REPLY #230367 /* ~Who do you think I need to keep an eye on?~ */ GOTO 1161
  IF ~~ THEN REPLY #230368 /* ~Something tells me you've been untrusting even before Simmeon betrayed you.~ */ GOTO 1189
END

IF ~~ THEN BEGIN 1161 // from: 1160.0 1159.0 1158.2 1158.1 1157.2 1156.2
  SAY #230370 /* ~Since you ask...~ [DNR106] */
  IF ~  InParty("DYNAHEIR")
~ THEN EXTERN ~DYNAHJ~ 14
  IF ~  InParty("IMOEN2")
~ THEN EXTERN ~IMOEN2J~ 182
  IF ~  InParty("KHALID")
~ THEN EXTERN ~KHALIJ~ 9
  IF ~  InParty("MINSC")
~ THEN EXTERN ~MINSCJ~ 296
  IF ~  InParty("ALORA")
~ THEN EXTERN ~ALORAJ~ 3
  IF ~  InParty("CORAN")
~ THEN EXTERN ~CORANJ~ 10
  IF ~  InParty("KIVAN")
~ THEN EXTERN ~KIVANJ~ 6
  IF ~  InParty("XAN")
~ THEN EXTERN ~XANJ~ 5
  IF ~  InParty("BRANWEN")
~ THEN EXTERN ~BRANWJ~ 5
  IF ~  InParty("FALDORN")
~ THEN EXTERN ~FALDOJ~ 2
  IF ~  InParty("JAHEIRA")
~ THEN EXTERN ~JAHEIRAJ~ 616
  IF ~  InParty("SKIE")
~ THEN EXTERN ~SKIEJ~ 5
  IF ~  InParty("GARRICK")
~ THEN EXTERN ~GARRIJ~ 4
  IF ~  InParty("QUAYLE")
~ THEN EXTERN ~QUAYLJ~ 2
  IF ~  InParty("SAFANA")
~ THEN EXTERN ~SAFANJ~ 9
  IF ~  InParty("EDWIN")
~ THEN EXTERN ~EDWINJ~ 251
  IF ~  InParty("KAGAIN")
~ THEN EXTERN ~KAGAIJ~ 8
  IF ~  InParty("ELDOTH")
~ THEN EXTERN ~ELDOTJ~ 17
  IF ~  InParty("MONTARON")
~ THEN EXTERN ~MONTAJ~ 7
  IF ~  InParty("VICONIA")
~ THEN EXTERN ~VICONIJ~ 501
  IF ~  InParty("SHARTEEL")
~ THEN EXTERN ~SHARTJ~ 8
  IF ~  InParty("TIAX")
~ THEN EXTERN ~TIAXJ~ 6
  IF ~  InParty("XZAR")
~ THEN EXTERN ~XZARJ~ 8
  IF ~  InParty("RASAAD")
~ THEN EXTERN ~RASAADJ~ 1163
  IF ~  InParty("NEERA")
~ THEN EXTERN ~NEERAJ~ 857
END

IF ~~ THEN BEGIN 1162 // from:
  SAY #230372 /* ~I distrust her witch's ways and phony shows of virtue.~ [DNR106B] */
  IF ~  InParty("IMOEN2")
~ THEN EXTERN ~IMOEN2J~ 182
  IF ~  InParty("KHALID")
~ THEN EXTERN ~KHALIJ~ 9
  IF ~  InParty("MINSC")
~ THEN EXTERN ~MINSCJ~ 296
  IF ~  InParty("ALORA")
~ THEN EXTERN ~ALORAJ~ 3
  IF ~  InParty("CORAN")
~ THEN EXTERN ~CORANJ~ 10
  IF ~  InParty("KIVAN")
~ THEN EXTERN ~KIVANJ~ 6
  IF ~  InParty("XAN")
~ THEN EXTERN ~XANJ~ 5
  IF ~  InParty("BRANWEN")
~ THEN EXTERN ~BRANWJ~ 5
  IF ~  InParty("FALDORN")
~ THEN EXTERN ~FALDOJ~ 2
  IF ~  InParty("JAHEIRA")
~ THEN EXTERN ~JAHEIRAJ~ 616
  IF ~  InParty("SKIE")
~ THEN EXTERN ~SKIEJ~ 5
  IF ~  InParty("GARRICK")
~ THEN EXTERN ~GARRIJ~ 4
  IF ~  InParty("QUAYLE")
~ THEN EXTERN ~QUAYLJ~ 2
  IF ~  InParty("SAFANA")
~ THEN EXTERN ~SAFANJ~ 9
  IF ~  InParty("EDWIN")
~ THEN EXTERN ~EDWINJ~ 251
  IF ~  InParty("KAGAIN")
~ THEN EXTERN ~KAGAIJ~ 8
  IF ~  InParty("ELDOTH")
~ THEN EXTERN ~ELDOTJ~ 17
  IF ~  InParty("MONTARON")
~ THEN EXTERN ~MONTAJ~ 7
  IF ~  InParty("VICONIA")
~ THEN EXTERN ~VICONIJ~ 501
  IF ~  InParty("SHARTEEL")
~ THEN EXTERN ~SHARTJ~ 8
  IF ~  InParty("TIAX")
~ THEN EXTERN ~TIAXJ~ 6
  IF ~  InParty("XZAR")
~ THEN EXTERN ~XZARJ~ 8
  IF ~  InParty("RASAAD")
~ THEN EXTERN ~RASAADJ~ 1163
  IF ~  InParty("NEERA")
~ THEN EXTERN ~NEERAJ~ 857
END

IF ~~ THEN BEGIN 1163 // from:
  SAY #230374 /* ~She is a foolish child.~ [DNR106D] */
  IF ~  InParty("KHALID")
~ THEN EXTERN ~KHALIJ~ 9
  IF ~  InParty("MINSC")
~ THEN EXTERN ~MINSCJ~ 296
  IF ~  InParty("ALORA")
~ THEN EXTERN ~ALORAJ~ 3
  IF ~  InParty("CORAN")
~ THEN EXTERN ~CORANJ~ 10
  IF ~  InParty("KIVAN")
~ THEN EXTERN ~KIVANJ~ 6
  IF ~  InParty("XAN")
~ THEN EXTERN ~XANJ~ 5
  IF ~  InParty("BRANWEN")
~ THEN EXTERN ~BRANWJ~ 5
  IF ~  InParty("FALDORN")
~ THEN EXTERN ~FALDOJ~ 2
  IF ~  InParty("JAHEIRA")
~ THEN EXTERN ~JAHEIRAJ~ 616
  IF ~  InParty("SKIE")
~ THEN EXTERN ~SKIEJ~ 5
  IF ~  InParty("GARRICK")
~ THEN EXTERN ~GARRIJ~ 4
  IF ~  InParty("QUAYLE")
~ THEN EXTERN ~QUAYLJ~ 2
  IF ~  InParty("SAFANA")
~ THEN EXTERN ~SAFANJ~ 9
  IF ~  InParty("EDWIN")
~ THEN EXTERN ~EDWINJ~ 251
  IF ~  InParty("KAGAIN")
~ THEN EXTERN ~KAGAIJ~ 8
  IF ~  InParty("ELDOTH")
~ THEN EXTERN ~ELDOTJ~ 17
  IF ~  InParty("MONTARON")
~ THEN EXTERN ~MONTAJ~ 7
  IF ~  InParty("VICONIA")
~ THEN EXTERN ~VICONIJ~ 501
  IF ~  InParty("SHARTEEL")
~ THEN EXTERN ~SHARTJ~ 8
  IF ~  InParty("TIAX")
~ THEN EXTERN ~TIAXJ~ 6
  IF ~  InParty("XZAR")
~ THEN EXTERN ~XZARJ~ 8
  IF ~  InParty("RASAAD")
~ THEN EXTERN ~RASAADJ~ 1163
  IF ~  InParty("NEERA")
~ THEN EXTERN ~NEERAJ~ 857
END

IF ~~ THEN BEGIN 1164 // from:
  SAY #230376 /* ~A sneeze would make that stammering coward surrender.~ [DNR106F] */
  IF ~  InParty("MINSC")
~ THEN EXTERN ~MINSCJ~ 296
  IF ~  InParty("ALORA")
~ THEN EXTERN ~ALORAJ~ 3
  IF ~  InParty("CORAN")
~ THEN EXTERN ~CORANJ~ 10
  IF ~  InParty("KIVAN")
~ THEN EXTERN ~KIVANJ~ 6
  IF ~  InParty("XAN")
~ THEN EXTERN ~XANJ~ 5
  IF ~  InParty("BRANWEN")
~ THEN EXTERN ~BRANWJ~ 5
  IF ~  InParty("FALDORN")
~ THEN EXTERN ~FALDOJ~ 2
  IF ~  InParty("JAHEIRA")
~ THEN EXTERN ~JAHEIRAJ~ 616
  IF ~  InParty("SKIE")
~ THEN EXTERN ~SKIEJ~ 5
  IF ~  InParty("GARRICK")
~ THEN EXTERN ~GARRIJ~ 4
  IF ~  InParty("QUAYLE")
~ THEN EXTERN ~QUAYLJ~ 2
  IF ~  InParty("SAFANA")
~ THEN EXTERN ~SAFANJ~ 9
  IF ~  InParty("EDWIN")
~ THEN EXTERN ~EDWINJ~ 251
  IF ~  InParty("KAGAIN")
~ THEN EXTERN ~KAGAIJ~ 8
  IF ~  InParty("ELDOTH")
~ THEN EXTERN ~ELDOTJ~ 17
  IF ~  InParty("MONTARON")
~ THEN EXTERN ~MONTAJ~ 7
  IF ~  InParty("VICONIA")
~ THEN EXTERN ~VICONIJ~ 501
  IF ~  InParty("SHARTEEL")
~ THEN EXTERN ~SHARTJ~ 8
  IF ~  InParty("TIAX")
~ THEN EXTERN ~TIAXJ~ 6
  IF ~  InParty("XZAR")
~ THEN EXTERN ~XZARJ~ 8
  IF ~  InParty("RASAAD")
~ THEN EXTERN ~RASAADJ~ 1163
  IF ~  InParty("NEERA")
~ THEN EXTERN ~NEERAJ~ 857
END

IF ~~ THEN BEGIN 1165 // from:
  SAY #230378 /* ~He is a mighty warrior, but he loves that "gerbil" above all else.~ [DNR106H] */
  IF ~~ THEN EXTERN ~MINSCJ~ 296
END

IF ~~ THEN BEGIN 1166 // from:
  SAY #230380 /* ~I do not threaten your... hamster.~ [DNR106J] */
  IF ~  InParty("ALORA")
~ THEN EXTERN ~ALORAJ~ 3
  IF ~  InParty("CORAN")
~ THEN EXTERN ~CORANJ~ 10
  IF ~  InParty("KIVAN")
~ THEN EXTERN ~KIVANJ~ 6
  IF ~  InParty("XAN")
~ THEN EXTERN ~XANJ~ 5
  IF ~  InParty("BRANWEN")
~ THEN EXTERN ~BRANWJ~ 5
  IF ~  InParty("FALDORN")
~ THEN EXTERN ~FALDOJ~ 2
  IF ~  InParty("JAHEIRA")
~ THEN EXTERN ~JAHEIRAJ~ 616
  IF ~  InParty("SKIE")
~ THEN EXTERN ~SKIEJ~ 5
  IF ~  InParty("GARRICK")
~ THEN EXTERN ~GARRIJ~ 4
  IF ~  InParty("QUAYLE")
~ THEN EXTERN ~QUAYLJ~ 2
  IF ~  InParty("SAFANA")
~ THEN EXTERN ~SAFANJ~ 9
  IF ~  InParty("EDWIN")
~ THEN EXTERN ~EDWINJ~ 251
  IF ~  InParty("KAGAIN")
~ THEN EXTERN ~KAGAIJ~ 8
  IF ~  InParty("ELDOTH")
~ THEN EXTERN ~ELDOTJ~ 17
  IF ~  InParty("MONTARON")
~ THEN EXTERN ~MONTAJ~ 7
  IF ~  InParty("VICONIA")
~ THEN EXTERN ~VICONIJ~ 501
  IF ~  InParty("SHARTEEL")
~ THEN EXTERN ~SHARTJ~ 8
  IF ~  InParty("TIAX")
~ THEN EXTERN ~TIAXJ~ 6
  IF ~  InParty("XZAR")
~ THEN EXTERN ~XZARJ~ 8
  IF ~  InParty("RASAAD")
~ THEN EXTERN ~RASAADJ~ 1163
  IF ~  InParty("NEERA")
~ THEN EXTERN ~NEERAJ~ 857
END

IF ~~ THEN BEGIN 1167 // from:
  SAY #230382 /* ~The miniature thief? You even have to ask?~ [DNR106L] */
  IF ~  InParty("CORAN")
~ THEN EXTERN ~CORANJ~ 10
  IF ~  InParty("KIVAN")
~ THEN EXTERN ~KIVANJ~ 6
  IF ~  InParty("XAN")
~ THEN EXTERN ~XANJ~ 5
  IF ~  InParty("BRANWEN")
~ THEN EXTERN ~BRANWJ~ 5
  IF ~  InParty("FALDORN")
~ THEN EXTERN ~FALDOJ~ 2
  IF ~  InParty("JAHEIRA")
~ THEN EXTERN ~JAHEIRAJ~ 616
  IF ~  InParty("SKIE")
~ THEN EXTERN ~SKIEJ~ 5
  IF ~  InParty("GARRICK")
~ THEN EXTERN ~GARRIJ~ 4
  IF ~  InParty("QUAYLE")
~ THEN EXTERN ~QUAYLJ~ 2
  IF ~  InParty("SAFANA")
~ THEN EXTERN ~SAFANJ~ 9
  IF ~  InParty("EDWIN")
~ THEN EXTERN ~EDWINJ~ 251
  IF ~  InParty("KAGAIN")
~ THEN EXTERN ~KAGAIJ~ 8
  IF ~  InParty("ELDOTH")
~ THEN EXTERN ~ELDOTJ~ 17
  IF ~  InParty("MONTARON")
~ THEN EXTERN ~MONTAJ~ 7
  IF ~  InParty("VICONIA")
~ THEN EXTERN ~VICONIJ~ 501
  IF ~  InParty("SHARTEEL")
~ THEN EXTERN ~SHARTJ~ 8
  IF ~  InParty("TIAX")
~ THEN EXTERN ~TIAXJ~ 6
  IF ~  InParty("XZAR")
~ THEN EXTERN ~XZARJ~ 8
  IF ~  InParty("RASAAD")
~ THEN EXTERN ~RASAADJ~ 1163
  IF ~  InParty("NEERA")
~ THEN EXTERN ~NEERAJ~ 857
END

IF ~~ THEN BEGIN 1168 // from:
  SAY #230384 /* ~I would watch where he points that bow.~ [DNR106N] */
  IF ~  InParty("KIVAN")
~ THEN EXTERN ~KIVANJ~ 6
  IF ~  InParty("XAN")
~ THEN EXTERN ~XANJ~ 5
  IF ~  InParty("BRANWEN")
~ THEN EXTERN ~BRANWJ~ 5
  IF ~  InParty("FALDORN")
~ THEN EXTERN ~FALDOJ~ 2
  IF ~  InParty("JAHEIRA")
~ THEN EXTERN ~JAHEIRAJ~ 616
  IF ~  InParty("SKIE")
~ THEN EXTERN ~SKIEJ~ 5
  IF ~  InParty("GARRICK")
~ THEN EXTERN ~GARRIJ~ 4
  IF ~  InParty("QUAYLE")
~ THEN EXTERN ~QUAYLJ~ 2
  IF ~  InParty("SAFANA")
~ THEN EXTERN ~SAFANJ~ 9
  IF ~  InParty("EDWIN")
~ THEN EXTERN ~EDWINJ~ 251
  IF ~  InParty("KAGAIN")
~ THEN EXTERN ~KAGAIJ~ 8
  IF ~  InParty("ELDOTH")
~ THEN EXTERN ~ELDOTJ~ 17
  IF ~  InParty("MONTARON")
~ THEN EXTERN ~MONTAJ~ 7
  IF ~  InParty("VICONIA")
~ THEN EXTERN ~VICONIJ~ 501
  IF ~  InParty("SHARTEEL")
~ THEN EXTERN ~SHARTJ~ 8
  IF ~  InParty("TIAX")
~ THEN EXTERN ~TIAXJ~ 6
  IF ~  InParty("XZAR")
~ THEN EXTERN ~XZARJ~ 8
  IF ~  InParty("RASAAD")
~ THEN EXTERN ~RASAADJ~ 1163
  IF ~  InParty("NEERA")
~ THEN EXTERN ~NEERAJ~ 857
END

IF ~~ THEN BEGIN 1169 // from:
  SAY #230386 /* ~He has already proven himself weak for love.~ [DNR106P] */
  IF ~  InParty("XAN")
~ THEN EXTERN ~XANJ~ 5
  IF ~  InParty("BRANWEN")
~ THEN EXTERN ~BRANWJ~ 5
  IF ~  InParty("FALDORN")
~ THEN EXTERN ~FALDOJ~ 2
  IF ~  InParty("JAHEIRA")
~ THEN EXTERN ~JAHEIRAJ~ 616
  IF ~  InParty("SKIE")
~ THEN EXTERN ~SKIEJ~ 5
  IF ~  InParty("GARRICK")
~ THEN EXTERN ~GARRIJ~ 4
  IF ~  InParty("QUAYLE")
~ THEN EXTERN ~QUAYLJ~ 2
  IF ~  InParty("SAFANA")
~ THEN EXTERN ~SAFANJ~ 9
  IF ~  InParty("EDWIN")
~ THEN EXTERN ~EDWINJ~ 251
  IF ~  InParty("KAGAIN")
~ THEN EXTERN ~KAGAIJ~ 8
  IF ~  InParty("ELDOTH")
~ THEN EXTERN ~ELDOTJ~ 17
  IF ~  InParty("MONTARON")
~ THEN EXTERN ~MONTAJ~ 7
  IF ~  InParty("VICONIA")
~ THEN EXTERN ~VICONIJ~ 501
  IF ~  InParty("SHARTEEL")
~ THEN EXTERN ~SHARTJ~ 8
  IF ~  InParty("TIAX")
~ THEN EXTERN ~TIAXJ~ 6
  IF ~  InParty("XZAR")
~ THEN EXTERN ~XZARJ~ 8
  IF ~  InParty("RASAAD")
~ THEN EXTERN ~RASAADJ~ 1163
  IF ~  InParty("NEERA")
~ THEN EXTERN ~NEERAJ~ 857
END

IF ~~ THEN BEGIN 1170 // from:
  SAY #230388 /* ~The elf mutters doom and defeat.~ [DNR107B] */
  IF ~  InParty("BRANWEN")
~ THEN EXTERN ~BRANWJ~ 5
  IF ~  InParty("FALDORN")
~ THEN EXTERN ~FALDOJ~ 2
  IF ~  InParty("JAHEIRA")
~ THEN EXTERN ~JAHEIRAJ~ 616
  IF ~  InParty("SKIE")
~ THEN EXTERN ~SKIEJ~ 5
  IF ~  InParty("GARRICK")
~ THEN EXTERN ~GARRIJ~ 4
  IF ~  InParty("QUAYLE")
~ THEN EXTERN ~QUAYLJ~ 2
  IF ~  InParty("SAFANA")
~ THEN EXTERN ~SAFANJ~ 9
  IF ~  InParty("EDWIN")
~ THEN EXTERN ~EDWINJ~ 251
  IF ~  InParty("KAGAIN")
~ THEN EXTERN ~KAGAIJ~ 8
  IF ~  InParty("ELDOTH")
~ THEN EXTERN ~ELDOTJ~ 17
  IF ~  InParty("MONTARON")
~ THEN EXTERN ~MONTAJ~ 7
  IF ~  InParty("VICONIA")
~ THEN EXTERN ~VICONIJ~ 501
  IF ~  InParty("SHARTEEL")
~ THEN EXTERN ~SHARTJ~ 8
  IF ~  InParty("TIAX")
~ THEN EXTERN ~TIAXJ~ 6
  IF ~  InParty("XZAR")
~ THEN EXTERN ~XZARJ~ 8
  IF ~  InParty("RASAAD")
~ THEN EXTERN ~RASAADJ~ 1163
  IF ~  InParty("NEERA")
~ THEN EXTERN ~NEERAJ~ 857
END

IF ~~ THEN BEGIN 1171 // from:
  SAY #230390 /* ~A fine warrior, but she serves her god before she serves you.~ [DNR107D] */
  IF ~  InParty("FALDORN")
~ THEN EXTERN ~FALDOJ~ 2
  IF ~  InParty("JAHEIRA")
~ THEN EXTERN ~JAHEIRAJ~ 616
  IF ~  InParty("SKIE")
~ THEN EXTERN ~SKIEJ~ 5
  IF ~  InParty("GARRICK")
~ THEN EXTERN ~GARRIJ~ 4
  IF ~  InParty("QUAYLE")
~ THEN EXTERN ~QUAYLJ~ 2
  IF ~  InParty("SAFANA")
~ THEN EXTERN ~SAFANJ~ 9
  IF ~  InParty("EDWIN")
~ THEN EXTERN ~EDWINJ~ 251
  IF ~  InParty("KAGAIN")
~ THEN EXTERN ~KAGAIJ~ 8
  IF ~  InParty("ELDOTH")
~ THEN EXTERN ~ELDOTJ~ 17
  IF ~  InParty("MONTARON")
~ THEN EXTERN ~MONTAJ~ 7
  IF ~  InParty("VICONIA")
~ THEN EXTERN ~VICONIJ~ 501
  IF ~  InParty("SHARTEEL")
~ THEN EXTERN ~SHARTJ~ 8
  IF ~  InParty("TIAX")
~ THEN EXTERN ~TIAXJ~ 6
  IF ~  InParty("XZAR")
~ THEN EXTERN ~XZARJ~ 8
  IF ~  InParty("RASAAD")
~ THEN EXTERN ~RASAADJ~ 1163
  IF ~  InParty("NEERA")
~ THEN EXTERN ~NEERAJ~ 857
END

IF ~~ THEN BEGIN 1172 // from:
  SAY #230392 /* ~She cares too much about roots and squirrels.~ [DNR107F] */
  IF ~  InParty("JAHEIRA")
~ THEN EXTERN ~JAHEIRAJ~ 616
  IF ~  InParty("SKIE")
~ THEN EXTERN ~SKIEJ~ 5
  IF ~  InParty("GARRICK")
~ THEN EXTERN ~GARRIJ~ 4
  IF ~  InParty("QUAYLE")
~ THEN EXTERN ~QUAYLJ~ 2
  IF ~  InParty("SAFANA")
~ THEN EXTERN ~SAFANJ~ 9
  IF ~  InParty("EDWIN")
~ THEN EXTERN ~EDWINJ~ 251
  IF ~  InParty("KAGAIN")
~ THEN EXTERN ~KAGAIJ~ 8
  IF ~  InParty("ELDOTH")
~ THEN EXTERN ~ELDOTJ~ 17
  IF ~  InParty("MONTARON")
~ THEN EXTERN ~MONTAJ~ 7
  IF ~  InParty("VICONIA")
~ THEN EXTERN ~VICONIJ~ 501
  IF ~  InParty("SHARTEEL")
~ THEN EXTERN ~SHARTJ~ 8
  IF ~  InParty("TIAX")
~ THEN EXTERN ~TIAXJ~ 6
  IF ~  InParty("XZAR")
~ THEN EXTERN ~XZARJ~ 8
  IF ~  InParty("RASAAD")
~ THEN EXTERN ~RASAADJ~ 1163
  IF ~  InParty("NEERA")
~ THEN EXTERN ~NEERAJ~ 857
END

IF ~~ THEN BEGIN 1173 // from:
  SAY #230394 /* ~She serves the Harpers, not you.~ [DNR107H] */
  IF ~  InParty("SKIE")
~ THEN EXTERN ~SKIEJ~ 5
  IF ~  InParty("GARRICK")
~ THEN EXTERN ~GARRIJ~ 4
  IF ~  InParty("QUAYLE")
~ THEN EXTERN ~QUAYLJ~ 2
  IF ~  InParty("SAFANA")
~ THEN EXTERN ~SAFANJ~ 9
  IF ~  InParty("EDWIN")
~ THEN EXTERN ~EDWINJ~ 251
  IF ~  InParty("KAGAIN")
~ THEN EXTERN ~KAGAIJ~ 8
  IF ~  InParty("ELDOTH")
~ THEN EXTERN ~ELDOTJ~ 17
  IF ~  InParty("MONTARON")
~ THEN EXTERN ~MONTAJ~ 7
  IF ~  InParty("VICONIA")
~ THEN EXTERN ~VICONIJ~ 501
  IF ~  InParty("SHARTEEL")
~ THEN EXTERN ~SHARTJ~ 8
  IF ~  InParty("TIAX")
~ THEN EXTERN ~TIAXJ~ 6
  IF ~  InParty("XZAR")
~ THEN EXTERN ~XZARJ~ 8
  IF ~  InParty("RASAAD")
~ THEN EXTERN ~RASAADJ~ 1163
  IF ~  InParty("NEERA")
~ THEN EXTERN ~NEERAJ~ 857
END

IF ~~ THEN BEGIN 1174 // from:
  SAY #230396 /* ~She betrayed her father. She will betray you. And listen, she speaks of conspiracy.~ [DNR107J] */
  IF ~  InParty("GARRICK")
~ THEN EXTERN ~GARRIJ~ 4
  IF ~  InParty("QUAYLE")
~ THEN EXTERN ~QUAYLJ~ 2
  IF ~  InParty("SAFANA")
~ THEN EXTERN ~SAFANJ~ 9
  IF ~  InParty("EDWIN")
~ THEN EXTERN ~EDWINJ~ 251
  IF ~  InParty("KAGAIN")
~ THEN EXTERN ~KAGAIJ~ 8
  IF ~  InParty("ELDOTH")
~ THEN EXTERN ~ELDOTJ~ 17
  IF ~  InParty("MONTARON")
~ THEN EXTERN ~MONTAJ~ 7
  IF ~  InParty("VICONIA")
~ THEN EXTERN ~VICONIJ~ 501
  IF ~  InParty("SHARTEEL")
~ THEN EXTERN ~SHARTJ~ 8
  IF ~  InParty("TIAX")
~ THEN EXTERN ~TIAXJ~ 6
  IF ~  InParty("XZAR")
~ THEN EXTERN ~XZARJ~ 8
  IF ~  InParty("RASAAD")
~ THEN EXTERN ~RASAADJ~ 1163
  IF ~  InParty("NEERA")
~ THEN EXTERN ~NEERAJ~ 857
END

IF ~~ THEN BEGIN 1175 // from:
  SAY #230398 /* ~The conceited fool serves only himself.~ [DNR107L] */
  IF ~  InParty("QUAYLE")
~ THEN EXTERN ~QUAYLJ~ 2
  IF ~  InParty("SAFANA")
~ THEN EXTERN ~SAFANJ~ 9
  IF ~  InParty("EDWIN")
~ THEN EXTERN ~EDWINJ~ 251
  IF ~  InParty("KAGAIN")
~ THEN EXTERN ~KAGAIJ~ 8
  IF ~  InParty("ELDOTH")
~ THEN EXTERN ~ELDOTJ~ 17
  IF ~  InParty("MONTARON")
~ THEN EXTERN ~MONTAJ~ 7
  IF ~  InParty("VICONIA")
~ THEN EXTERN ~VICONIJ~ 501
  IF ~  InParty("SHARTEEL")
~ THEN EXTERN ~SHARTJ~ 8
  IF ~  InParty("TIAX")
~ THEN EXTERN ~TIAXJ~ 6
  IF ~  InParty("XZAR")
~ THEN EXTERN ~XZARJ~ 8
  IF ~  InParty("RASAAD")
~ THEN EXTERN ~RASAADJ~ 1163
  IF ~  InParty("NEERA")
~ THEN EXTERN ~NEERAJ~ 857
END

IF ~~ THEN BEGIN 1176 // from:
  SAY #230400 /* ~You can never trust one who deals in illusion.~ [DNR107N] */
  IF ~  InParty("SAFANA")
~ THEN EXTERN ~SAFANJ~ 9
  IF ~  InParty("EDWIN")
~ THEN EXTERN ~EDWINJ~ 251
  IF ~  InParty("KAGAIN")
~ THEN EXTERN ~KAGAIJ~ 8
  IF ~  InParty("ELDOTH")
~ THEN EXTERN ~ELDOTJ~ 17
  IF ~  InParty("MONTARON")
~ THEN EXTERN ~MONTAJ~ 7
  IF ~  InParty("VICONIA")
~ THEN EXTERN ~VICONIJ~ 501
  IF ~  InParty("SHARTEEL")
~ THEN EXTERN ~SHARTJ~ 8
  IF ~  InParty("TIAX")
~ THEN EXTERN ~TIAXJ~ 6
  IF ~  InParty("XZAR")
~ THEN EXTERN ~XZARJ~ 8
  IF ~  InParty("RASAAD")
~ THEN EXTERN ~RASAADJ~ 1163
  IF ~  InParty("NEERA")
~ THEN EXTERN ~NEERAJ~ 857
END

IF ~~ THEN BEGIN 1177 // from:
  SAY #230402 /* ~She uses her wiles to manipulate men. She cannot be trusted.~ [DNR108B] */
  IF ~  InParty("EDWIN")
~ THEN EXTERN ~EDWINJ~ 251
  IF ~  InParty("KAGAIN")
~ THEN EXTERN ~KAGAIJ~ 8
  IF ~  InParty("ELDOTH")
~ THEN EXTERN ~ELDOTJ~ 17
  IF ~  InParty("MONTARON")
~ THEN EXTERN ~MONTAJ~ 7
  IF ~  InParty("VICONIA")
~ THEN EXTERN ~VICONIJ~ 501
  IF ~  InParty("SHARTEEL")
~ THEN EXTERN ~SHARTJ~ 8
  IF ~  InParty("TIAX")
~ THEN EXTERN ~TIAXJ~ 6
  IF ~  InParty("XZAR")
~ THEN EXTERN ~XZARJ~ 8
  IF ~  InParty("RASAAD")
~ THEN EXTERN ~RASAADJ~ 1163
  IF ~  InParty("NEERA")
~ THEN EXTERN ~NEERAJ~ 857
END

IF ~~ THEN BEGIN 1178 // from:
  SAY #230404 /* ~Hear that? The Red Wizard bides his time, waiting to take control.~ [DNR108D] */
  IF ~  InParty("KAGAIN")
~ THEN EXTERN ~KAGAIJ~ 8
  IF ~  InParty("ELDOTH")
~ THEN EXTERN ~ELDOTJ~ 17
  IF ~  InParty("MONTARON")
~ THEN EXTERN ~MONTAJ~ 7
  IF ~  InParty("VICONIA")
~ THEN EXTERN ~VICONIJ~ 501
  IF ~  InParty("SHARTEEL")
~ THEN EXTERN ~SHARTJ~ 8
  IF ~  InParty("TIAX")
~ THEN EXTERN ~TIAXJ~ 6
  IF ~  InParty("XZAR")
~ THEN EXTERN ~XZARJ~ 8
  IF ~  InParty("RASAAD")
~ THEN EXTERN ~RASAADJ~ 1163
  IF ~  InParty("NEERA")
~ THEN EXTERN ~NEERAJ~ 857
END

IF ~~ THEN BEGIN 1179 // from:
  SAY #230406 /* ~The dwarf loves only gold. Anyone can buy him.~ [DNR108F] */
  IF ~  InParty("ELDOTH")
~ THEN EXTERN ~ELDOTJ~ 17
  IF ~  InParty("MONTARON")
~ THEN EXTERN ~MONTAJ~ 7
  IF ~  InParty("VICONIA")
~ THEN EXTERN ~VICONIJ~ 501
  IF ~  InParty("SHARTEEL")
~ THEN EXTERN ~SHARTJ~ 8
  IF ~  InParty("TIAX")
~ THEN EXTERN ~TIAXJ~ 6
  IF ~  InParty("XZAR")
~ THEN EXTERN ~XZARJ~ 8
  IF ~  InParty("RASAAD")
~ THEN EXTERN ~RASAADJ~ 1163
  IF ~  InParty("NEERA")
~ THEN EXTERN ~NEERAJ~ 857
END

IF ~~ THEN BEGIN 1180 // from:
  SAY #230408 /* ~That seducer lives off the women he deceives.~ [DNR108H] */
  IF ~  InParty("MONTARON")
~ THEN EXTERN ~MONTAJ~ 7
  IF ~  InParty("VICONIA")
~ THEN EXTERN ~VICONIJ~ 501
  IF ~  InParty("SHARTEEL")
~ THEN EXTERN ~SHARTJ~ 8
  IF ~  InParty("TIAX")
~ THEN EXTERN ~TIAXJ~ 6
  IF ~  InParty("XZAR")
~ THEN EXTERN ~XZARJ~ 8
  IF ~  InParty("RASAAD")
~ THEN EXTERN ~RASAADJ~ 1163
  IF ~  InParty("NEERA")
~ THEN EXTERN ~NEERAJ~ 857
END

IF ~~ THEN BEGIN 1181 // from:
  SAY #230410 /* ~The little savage has his uses, but don't turn your back on him.~ [DNR108J] */
  IF ~  InParty("VICONIA")
~ THEN EXTERN ~VICONIJ~ 501
  IF ~  InParty("SHARTEEL")
~ THEN EXTERN ~SHARTJ~ 8
  IF ~  InParty("TIAX")
~ THEN EXTERN ~TIAXJ~ 6
  IF ~  InParty("XZAR")
~ THEN EXTERN ~XZARJ~ 8
  IF ~  InParty("RASAAD")
~ THEN EXTERN ~RASAADJ~ 1163
  IF ~  InParty("NEERA")
~ THEN EXTERN ~NEERAJ~ 857
END

IF ~~ THEN BEGIN 1182 // from:
  SAY #230412 /* ~The drow serves only her dark goddess.~ [DNR108L] */
  IF ~  InParty("SHARTEEL")
~ THEN EXTERN ~SHARTJ~ 8
  IF ~  InParty("TIAX")
~ THEN EXTERN ~TIAXJ~ 6
  IF ~  InParty("XZAR")
~ THEN EXTERN ~XZARJ~ 8
  IF ~  InParty("RASAAD")
~ THEN EXTERN ~RASAADJ~ 1163
  IF ~  InParty("NEERA")
~ THEN EXTERN ~NEERAJ~ 857
END

IF ~~ THEN BEGIN 1183 // from:
  SAY #230414 /* ~Her hatred of men makes her unpredictable.~ [DNR108N] */
  IF ~  InParty("TIAX")
~ THEN EXTERN ~TIAXJ~ 6
  IF ~  InParty("XZAR")
~ THEN EXTERN ~XZARJ~ 8
  IF ~  InParty("RASAAD")
~ THEN EXTERN ~RASAADJ~ 1163
  IF ~  InParty("NEERA")
~ THEN EXTERN ~NEERAJ~ 857
END

IF ~~ THEN BEGIN 1184 // from:
  SAY #230416 /* ~Need I say more?~ [DNR108P] */
  IF ~  InParty("XZAR")
~ THEN EXTERN ~XZARJ~ 8
  IF ~  InParty("RASAAD")
~ THEN EXTERN ~RASAADJ~ 1163
  IF ~  InParty("NEERA")
~ THEN EXTERN ~NEERAJ~ 857
END

IF ~~ THEN BEGIN 1185 // from:
  SAY #230418 /* ~You can never trust the mad.~ [DNR108R] */
  IF ~  InParty("RASAAD")
~ THEN EXTERN ~RASAADJ~ 1163
  IF ~  InParty("NEERA")
~ THEN EXTERN ~NEERAJ~ 857
END

IF ~~ THEN BEGIN 1186 // from:
  SAY #230420 /* ~The sanctimonious hide their true motives behind platitudes.~ [DNR108T] */
  IF ~  InParty("NEERA")
~ THEN EXTERN ~NEERAJ~ 857
END

IF ~~ THEN BEGIN 1187 // from:
  SAY #230422 /* ~Even if that is true, you cannot trust her wild magic.~ [DNR108V] */
  IF ~~ THEN GOTO 1188
END

IF ~~ THEN BEGIN 1188 // from: 1187.0
  SAY #230423 /* ~So you see, even those you hold close cannot be trusted.~ [DNR111] */
  IF ~~ THEN REPLY #230424 /* ~That's a bleak outlook.~ */ GOTO 1189
  IF ~~ THEN REPLY #230425 /* ~You were suspicious of everyone even before Simmeon, weren't you?~ */ GOTO 1190
  IF ~~ THEN REPLY #230426 /* ~You are right. No one can be trusted.~ */ GOTO 1192
END

IF ~~ THEN BEGIN 1189 // from: 1188.0 1160.1 1159.1
  SAY #230427 /* ~It is only realistic.~ [DNR112] */
  IF ~~ THEN GOTO 1190
END

IF ~~ THEN BEGIN 1190 // from: 1189.0 1188.1
  SAY #230428 /* ~I was not suspicious enough of Simmeon's gang. They masked their hatred for my half-orc heritage, fooling me into thinking they were my friends.~ [DNR113] */
  IF ~~ THEN GOTO 1191
END

IF ~~ THEN BEGIN 1191 // from: 1190.0
  SAY #230429 /* ~Never again will I delude myself in such a manner.~ [DNR114] */
  IF ~~ THEN REPLY #230430 /* ~I am your friend.~ */ EXIT
  IF ~~ THEN REPLY #230431 /* ~We don't need to be friends. We only need to trust each other.~ */ EXIT
  IF ~~ THEN REPLY #230432 /* ~Good. I will have no fools in my company.~ */ EXIT
END

IF ~~ THEN BEGIN 1192 // from: 1188.2
  SAY #230433 /* ~The weak fear the strong, and their fear leads either to servitude or desperation. One such as you or me must always beware the treachery of the desperate.~ [DNR115] */
  IF ~~ THEN REPLY #230434 /* ~You can trust me.~ */ GOTO 1194
  IF ~~ THEN REPLY #230435 /* ~Only a fool would try to betray me.~ */ GOTO 1195
  IF ~~ THEN REPLY #230436 /* ~As long as you serve me, you need fear nothing.~ */ GOTO 1196
END

IF ~~ THEN BEGIN 1193 // from:
  SAY #230437 /* ~Hrmm. While that may one day prove true, I will not be fooled again.~ [DNR116] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1194 // from: 1192.0
  SAY #230438 /* ~Hrmm. Perhaps the strong may trust the strong, but it remains to be proved.~ [DNR117] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1195 // from: 1192.1
  SAY #230439 /* ~You may have welcomed fools into your company, but I am not one of them.~ [DNR118] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1196 // from: 1192.2
  SAY #230440 /* ~Do not mistake my companionship for servitude. I bend my knee for no one.~ [DNR119] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1197 // from:
  SAY #230441 /* ~Hrmm. You take much time to talk with people we could more easily sweep from our path. You cannot trust their words, only their actions.~ [DNR121] */
  IF ~~ THEN REPLY #230442 /* ~Not everyone has an ulterior motive.~ */ GOTO 1198
  IF ~~ THEN REPLY #230443 /* ~Sometimes it's easier to talk than fight.~ */ GOTO 1199
  IF ~~ THEN REPLY #230444 /* ~Are you questioning my decisions?~ */ GOTO 1200
END

IF ~~ THEN BEGIN 1198 // from: 1197.0
  SAY #230445 /* ~You cannot be so credulous! Everyone lies.~ [DNR122] */
  IF ~~ THEN REPLY #230446 /* ~Even you?~ */ GOTO 1201
  IF ~~ THEN REPLY #230447 /* ~I don't. I'm a paragon of honesty.~ */ GOTO 1202
  IF ~~ THEN REPLY #230448 /* ~If you lie to me, I'll put you in the ground.~ */ GOTO 1203
END

IF ~~ THEN BEGIN 1199 // from: 1197.1
  SAY #230449 /* ~Hrmm. That may be true for some, but not for Dorn Il-Khan.~ [DNR123] */
  IF ~~ THEN REPLY #230450 /* ~I don't know. You're pretty articulate for a half-orc.~ */ GOTO 1204
  IF ~~ THEN REPLY #230451 /* ~I love it when you talk about yourself in the third person. It gives me chills.~ */ GOTO 1205
  IF ~~ THEN REPLY #230452 /* ~Then shut up and let me do the talking.~ */ GOTO 1203
END

IF ~~ THEN BEGIN 1200 // from: 1197.2
  SAY #230453 /* ~What if I were?~ [DNR124] */
  IF ~~ THEN REPLY #230454 /* ~Then I would listen to what you have to say and give it careful consideration.~ */ GOTO 1206
  IF ~~ THEN REPLY #230455 /* ~Then I'm afraid I would respectfully ask you to leave.~ */ EXIT
  IF ~~ THEN REPLY #230456 /* ~If you are questioning me, I will end you.~ */ GOTO 1203
END

IF ~~ THEN BEGIN 1201 // from: 1198.0
  SAY #230457 /* ~My blade talks for me, and it always speaks truly.~ [DNR125] */
  IF ~~ THEN REPLY #230458 /* ~Why Dorn, you're a poet!~ */ GOTO 1203
  IF ~~ THEN REPLY #230459 /* ~It gives me a thrill to hear you talk tough.~ */ GOTO 1205
  IF ~~ THEN REPLY #230460 /* ~Remind your blade that I'm the one who gets the last word around here.~ */ GOTO 1203
END

IF ~~ THEN BEGIN 1202 // from: 1198.1
  SAY #230461 /* ~Impossible! Even one such as you must dissemble sometimes, if only to yourself.~ [DNR126] */
  IF ~~ THEN REPLY #230462 /* ~You make a good point.~ */ GOTO 1209
  IF ~~ THEN REPLY #230463 /* ~Are you sure that's what you think, Dorn? Maybe you're lying to yourself right now.~ */ GOTO 1204
  IF ~~ THEN REPLY #230464 /* ~If you're calling me a liar, you'll soon be a corpse.~ */ GOTO 1203
END

IF ~~ THEN BEGIN 1203 // from: 1204.2 1204.1 1202.2 1201.2 1201.0 1200.2 1199.2 1198.2
  SAY #230465 /* ~You dare talk to me like that? You put yourself in danger.~ [DNR127] */
  IF ~~ THEN REPLY #230466 /* ~Uh, perhaps I chose my words poorly. Don't hit me!~ */ GOTO 1209
  IF ~~ THEN REPLY #230467 /* ~If you can't toe the line, I have no more use for you.~ */ GOTO 1207
  IF ~~ THEN REPLY #230468 /* ~I'm not in danger, Dorn. I am the danger.~ */ GOTO 1210
END

IF ~~ THEN BEGIN 1204 // from: 1202.1 1199.0
  SAY #230469 /* ~What? Do you dare mock me?~ [DNR128] */
  IF ~~ THEN REPLY #230470 /* ~No.~ */ GOTO 1209
  IF ~~ THEN REPLY #230471 /* ~Maybe.~ */ GOTO 1203
  IF ~~ THEN REPLY #230472 /* ~Yes.~ */ GOTO 1203
END

IF ~~ THEN BEGIN 1205 // from: 1201.1 1199.1
  SAY #230473 /* ~What? What are you saying?~ [DNR129] */
  IF ~~ THEN REPLY #230474 /* ~I'm saying you're a worthy companion.~ */ GOTO 1211
  IF ~~ THEN REPLY #230475 /* ~I'm saying that I don't care what others say about you. You're my kind of blackguard.~ */ GOTO 1212
  IF ~~ THEN REPLY #230476 /* ~I'm saying don't ever change. I like you the way you are.~ */ GOTO 1239
END

IF ~~ THEN BEGIN 1206 // from: 1200.0
  SAY #230477 /* ~Hrmm. I had thought better of you.~ [DNR130] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1207 // from: 1203.1
  SAY #230478 /* ~You wish me to leave?~ [DNR131] */
  IF ~~ THEN REPLY #230479 /* ~Yes. Get out of here.~ */ GOTO 1208
  IF ~~ THEN REPLY #230480 /* ~No, not now.~ */ GOTO 1209
END

IF ~~ THEN BEGIN 1208 // from: 1207.0
  SAY #230481 /* ~If that is your wish, I will leave you.~ [DNR132] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1209 // from: 1207.1 1204.0 1203.0 1202.0
  SAY #230482 /* ~Your uncertainty is a sign of weakness. You must be decisive. You must show your strength!~ [DNR133] */
  IF ~~ THEN REPLY #230483 /* ~I surround myself with allies to be strong.~ */ GOTO 1240
  IF ~~ THEN REPLY #230484 /* ~That's what I wanted to hear. I was testing you, Dorn. You pass.~ */ GOTO 1241
  IF ~~ THEN REPLY #230485 /* ~Strength is often greater when hidden. Don't underestimate my strength or my guile.~ */ GOTO 1242
END

IF ~~ THEN BEGIN 1210 // from: 1203.2
  SAY #230486 /* ~Hrmm. Yes, you are right. You alone could defeat me. That is why I choose to remain with you.~ [DNR134] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1211 // from: 1205.0
  SAY #230487 /* ~Hrmm. A worthy companion. If only I could believe...~ [DNR135] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1212 // from: 1205.1
  SAY #230488 /* ~What others say about me?! Bah. Who dares gossip about me?~ [DNR136] */
  IF ~~ THEN REPLY #230489 /* ~Forget it, Dorn. I don't want any trouble.~ */ EXIT
  IF ~~ THEN REPLY #230490 /* ~There wasn't any talk. I was just jerking your chain.~ */ EXIT
  IF ~~ THEN REPLY #230491 /* ~There wasn't any talk. It was just an expression.~ */ EXIT
  IF ~  InParty("DYNAHEIR")
~ THEN REPLY #230492 /* ~It was Dynaheir.~ */ EXTERN ~DYNAHJ~ 15
  IF ~  InParty("IMOEN2")
~ THEN REPLY #230493 /* ~It was Imoen.~ */ EXTERN ~IMOEN2J~ 183
  IF ~  InParty("KHALID")
~ THEN REPLY #230494 /* ~It was Khalid~ */ EXTERN ~KHALIJ~ 10
  IF ~  InParty("MINSC")
~ THEN REPLY #230495 /* ~It was Minsc.~ */ EXTERN ~MINSCJ~ 297
  IF ~  InParty("MINSC")
~ THEN REPLY #230496 /* ~It was Boo.~ */ EXTERN ~MINSCJ~ 298
  IF ~  InParty("ALORA")
~ THEN REPLY #230497 /* ~It was Alora.~ */ EXTERN ~ALORAJ~ 4
  IF ~  InParty("CORAN")
~ THEN REPLY #230498 /* ~It was Coran.~ */ EXTERN ~CORANJ~ 11
  IF ~  InParty("KIVAN")
~ THEN REPLY #230499 /* ~It was Kivan.~ */ EXTERN ~KIVANJ~ 7
  IF ~  InParty("XAN")
~ THEN REPLY #230500 /* ~It was Xan.~ */ EXTERN ~XANJ~ 6
  IF ~  InParty("BRANWEN")
~ THEN REPLY #230501 /* ~It was Branwen.~ */ EXTERN ~BRANWJ~ 6
  IF ~  InParty("FALDORN")
~ THEN REPLY #230502 /* ~It was Faldorn.~ */ EXTERN ~FALDOJ~ 3
  IF ~  InParty("JAHEIRA")
~ THEN REPLY #230503 /* ~It was Jaheira.~ */ EXTERN ~JAHEIRAJ~ 617
  IF ~  InParty("SKIE")
~ THEN REPLY #230504 /* ~It was Skie.~ */ EXTERN ~SKIEJ~ 6
  IF ~  InParty("GARRICK")
~ THEN REPLY #230505 /* ~It was Garrick.~ */ EXTERN ~GARRIJ~ 5
  IF ~  InParty("QUAYLE")
~ THEN REPLY #230506 /* ~It was Quayle.~ */ EXTERN ~QUAYLJ~ 3
  IF ~  InParty("SAFANA")
~ THEN REPLY #230507 /* ~It was Safana.~ */ EXTERN ~SAFANJ~ 10
  IF ~  InParty("EDWIN")
~ THEN REPLY #230508 /* ~It was Edwin.~ */ EXTERN ~EDWINJ~ 252
  IF ~  InParty("KAGAIN")
~ THEN REPLY #230509 /* ~It was Kagain.~ */ EXTERN ~KAGAIJ~ 9
  IF ~  InParty("ELDOTH")
~ THEN REPLY #230510 /* ~It was Eldoth.~ */ EXTERN ~ELDOTJ~ 18
  IF ~  InParty("MONTARON")
~ THEN REPLY #230511 /* ~It was Montaron.~ */ EXTERN ~MONTAJ~ 8
  IF ~  InParty("VICONIA")
~ THEN REPLY #230512 /* ~It was Viconia.~ */ EXTERN ~VICONIJ~ 502
  IF ~  InParty("SHARTEEL")
~ THEN REPLY #230513 /* ~It was Shar-Teel.~ */ EXTERN ~SHARTJ~ 9
  IF ~  InParty("TIAX")
~ THEN REPLY #230514 /* ~It was Tiax.~ */ EXTERN ~TIAXJ~ 7
  IF ~  InParty("XZAR")
~ THEN REPLY #230515 /* ~It was Xzar.~ */ EXTERN ~XZARJ~ 9
  IF ~  InParty("RASAAD")
~ THEN REPLY #230516 /* ~It was Rasaad.~ */ EXTERN ~RASAADJ~ 1164
  IF ~  InParty("NEERA")
~ THEN REPLY #230517 /* ~It was Neera.~ */ EXTERN ~NEERAJ~ 858
END

IF ~~ THEN BEGIN 1213 // from:
  SAY #230519 /* ~Die, witch!~ [DNR201A] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1214 // from:
  SAY #230521 /* ~Die, you simpering child!~ [DNR202A] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1215 // from:
  SAY #230523 /* ~Die, you stammering weakling!~ [DNR203A] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1216 // from:
  SAY #230525 /* ~Die, simpleton!~ [DNR204A] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1217 // from:
  SAY #230527 /* ~Die, simpleton!~ [DNR205A] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1218 // from:
  SAY #230529 /* ~Never trust a halfling. Die, backstabber!~ [DNR206A] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1219 // from:
  SAY #230531 /* ~Die, half-elf!~ [DNR207A] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1220 // from:
  SAY #230533 /* ~Die, elf!~ [DNR208A] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1221 // from:
  SAY #230535 /* ~Die, enchanter!~ [DNR209A] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1222 // from:
  SAY #230537 /* ~Die, battle-wench!~ [DNR210A] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1223 // from:
  SAY #230539 /* ~Die, druid!~ [DNR211A] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1224 // from:
  SAY #230541 /* ~Die, Harper!~ [DNR212A] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1225 // from:
  SAY #230543 /* ~Die, thief!~ [DNR213A] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1226 // from:
  SAY #230545 /* ~Die, minstrel!~ [DNR214A] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1227 // from:
  SAY #230547 /* ~Die, gnome!~ [DNR215A] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1228 // from:
  SAY #230549 /* ~Die, temptress!~ [DNR216A] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1229 // from:
  SAY #230551 /* ~Die, Red Wizard!~ [DNR217A] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1230 // from:
  SAY #230553 /* ~Die, dwarf!~ [DNR218A] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1231 // from:
  SAY #230555 /* ~Die, cur!~ [DNR219A] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1232 // from:
  SAY #230557 /* ~Die, halfling!~ [DNR220A] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1233 // from:
  SAY #230559 /* ~Die, drow!~ [DNR221A] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1234 // from:
  SAY #230561 /* ~Die, wench!~ [DNR222A] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1235 // from:
  SAY #230563 /* ~Die, you annoying mite!~ [DNR223A] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1236 // from:
  SAY #230565 /* ~Die, lunatic!~ [DNR224A] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1237 // from:
  SAY #230567 /* ~Die, monk!~ [DNR225A] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1238 // from:
  SAY #230569 /* ~Die, sorceress!~ [DNR226A] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1239 // from: 1205.2
  SAY #230570 /* ~Hrmm. I distrust such sentiment in others, but... perhaps you and I— Oh, enough of this foolishness!~ [DNR137] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1240 // from: 1209.0
  SAY #230571 /* ~Then you are not who I thought you were. Hrm. Disappointing.~ [DNR138] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1241 // from: 1209.1
  SAY #230572 /* ~You dare test me?! Trifle with me at your peril.~ [DNR139] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1242 // from: 1209.2
  SAY #230573 /* ~Hrmm. Your argument is... persuasive. Guile is a sort of strength. You give me food for thought.~ [DNR140] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1243 // from:
  SAY #230574 /* ~There. That should still any other tongues from wagging.~ [DNR151] */
  IF ~~ THEN REPLY #230575 /* ~Don't you think you overreacted a bit?~ */ GOTO 1244
  IF ~~ THEN REPLY #230576 /* ~Thanks for sparing me the effort of doing that myself.~ */ GOTO 1245
  IF ~~ THEN REPLY #230577 /* ~I'll do the same to anyone talking behind my back—including you, Dorn.~ */ GOTO 1246
END

IF ~~ THEN BEGIN 1244 // from: 1243.0
  SAY #230578 /* ~I do not tolerate disrespect from inferiors. Neither should you.~ [DNR152] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1245 // from: 1243.1
  SAY #230579 /* ~It was a pleasure. If you need more killings, you have but to say the word.~ [DNR153] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1246 // from: 1243.2
  SAY #230580 /* ~I would expect no less. Mercy breeds contempt.~ [DNR154] */
  IF ~~ THEN EXIT
END

IF WEIGHT #92 ~  Global("DORN_ROMANCE_1","LOCALS",1)
~ THEN BEGIN 1247 // from:
  SAY #230354 /* ~Do you worry it is a mistake to bring others on your mission? Someone could betray you.~ [DNR101] */
  IF ~~ THEN REPLY #230355 /* ~Anyone who crosses me dies.~ */ DO ~SetGlobal("DORN_ROMANCE_1","LOCALS",2)
~ GOTO 1248
  IF ~~ THEN REPLY #230356 /* ~Do I have to start worrying about you, Dorn?~ */ DO ~SetGlobal("DORN_ROMANCE_1","LOCALS",2)
~ GOTO 1249
  IF ~  OR(28)
IsValidForPartyDialogue("DYNAHEIR")
IsValidForPartyDialogue("IMOEN2")
IsValidForPartyDialogue("KHALID")
IsValidForPartyDialogue("MINSC")
IsValidForPartyDialogue("ALORA")
IsValidForPartyDialogue("CORAN")
IsValidForPartyDialogue("KIVAN")
IsValidForPartyDialogue("XAN")
IsValidForPartyDialogue("BRANWEN")
IsValidForPartyDialogue("FALDORN")
IsValidForPartyDialogue("JAHEIRA")
IsValidForPartyDialogue("SKIE")
IsValidForPartyDialogue("GARRICK")
IsValidForPartyDialogue("QUAYLE")
IsValidForPartyDialogue("SAFANA")
IsValidForPartyDialogue("EDWIN")
IsValidForPartyDialogue("KAGAIN")
IsValidForPartyDialogue("ELDOTH")
IsValidForPartyDialogue("MONTARON")
IsValidForPartyDialogue("VICONIA")
IsValidForPartyDialogue("SHARTEEL")
IsValidForPartyDialogue("TIAX")
IsValidForPartyDialogue("XZAR")
IsValidForPartyDialogue("RASAAD")
IsValidForPartyDialogue("NEERA")
IsValidForPartyDialogue("BAELOTH")
IsValidForPartyDialogue("YESLICK")
IsValidForPartyDialogue("AJANTIS")
~ THEN REPLY #230357 /* ~Is there someone you suspect?~ */ DO ~SetGlobal("DORN_ROMANCE_1","LOCALS",2)
~ GOTO 1252
END

IF ~~ THEN BEGIN 1248 // from: 1247.0
  SAY #230358 /* ~Good. My betrayers let me live, but yours might not make such a mistake.~ [DNR102] */
  IF ~~ THEN REPLY #230359 /* ~No one crosses me and lives.~ */ GOTO 1250
  IF ~~ THEN REPLY #230364 /* ~How did they make such a mistake?~ */ GOTO 1251
  IF ~  OR(28)
IsValidForPartyDialogue("DYNAHEIR")
IsValidForPartyDialogue("IMOEN2")
IsValidForPartyDialogue("KHALID")
IsValidForPartyDialogue("MINSC")
IsValidForPartyDialogue("ALORA")
IsValidForPartyDialogue("CORAN")
IsValidForPartyDialogue("KIVAN")
IsValidForPartyDialogue("XAN")
IsValidForPartyDialogue("BRANWEN")
IsValidForPartyDialogue("FALDORN")
IsValidForPartyDialogue("JAHEIRA")
IsValidForPartyDialogue("SKIE")
IsValidForPartyDialogue("GARRICK")
IsValidForPartyDialogue("QUAYLE")
IsValidForPartyDialogue("SAFANA")
IsValidForPartyDialogue("EDWIN")
IsValidForPartyDialogue("KAGAIN")
IsValidForPartyDialogue("ELDOTH")
IsValidForPartyDialogue("MONTARON")
IsValidForPartyDialogue("VICONIA")
IsValidForPartyDialogue("SHARTEEL")
IsValidForPartyDialogue("TIAX")
IsValidForPartyDialogue("XZAR")
IsValidForPartyDialogue("RASAAD")
IsValidForPartyDialogue("NEERA")
IsValidForPartyDialogue("BAELOTH")
IsValidForPartyDialogue("YESLICK")
IsValidForPartyDialogue("AJANTIS")
~ THEN REPLY #230361 /* ~Is there someone you suspect?~ */ GOTO 1252
END

IF ~~ THEN BEGIN 1249 // from: 1247.1
  SAY #230362 /* ~You can rely on me as long as your leadership remains strong and sure.~ [DNR103] */
  IF ~~ THEN REPLY #230363 /* ~No one crosses me and lives.~ */ GOTO 1250
  IF ~  OR(28)
IsValidForPartyDialogue("DYNAHEIR")
IsValidForPartyDialogue("IMOEN2")
IsValidForPartyDialogue("KHALID")
IsValidForPartyDialogue("MINSC")
IsValidForPartyDialogue("ALORA")
IsValidForPartyDialogue("CORAN")
IsValidForPartyDialogue("KIVAN")
IsValidForPartyDialogue("XAN")
IsValidForPartyDialogue("BRANWEN")
IsValidForPartyDialogue("FALDORN")
IsValidForPartyDialogue("JAHEIRA")
IsValidForPartyDialogue("SKIE")
IsValidForPartyDialogue("GARRICK")
IsValidForPartyDialogue("QUAYLE")
IsValidForPartyDialogue("SAFANA")
IsValidForPartyDialogue("EDWIN")
IsValidForPartyDialogue("KAGAIN")
IsValidForPartyDialogue("ELDOTH")
IsValidForPartyDialogue("MONTARON")
IsValidForPartyDialogue("VICONIA")
IsValidForPartyDialogue("SHARTEEL")
IsValidForPartyDialogue("TIAX")
IsValidForPartyDialogue("XZAR")
IsValidForPartyDialogue("RASAAD")
IsValidForPartyDialogue("NEERA")
IsValidForPartyDialogue("BAELOTH")
IsValidForPartyDialogue("YESLICK")
IsValidForPartyDialogue("AJANTIS")
~ THEN REPLY #230360 /* ~Who would betray me? I'm adorable.~ */ GOTO 1252
  IF ~  OR(28)
IsValidForPartyDialogue("DYNAHEIR")
IsValidForPartyDialogue("IMOEN2")
IsValidForPartyDialogue("KHALID")
IsValidForPartyDialogue("MINSC")
IsValidForPartyDialogue("ALORA")
IsValidForPartyDialogue("CORAN")
IsValidForPartyDialogue("KIVAN")
IsValidForPartyDialogue("XAN")
IsValidForPartyDialogue("BRANWEN")
IsValidForPartyDialogue("FALDORN")
IsValidForPartyDialogue("JAHEIRA")
IsValidForPartyDialogue("SKIE")
IsValidForPartyDialogue("GARRICK")
IsValidForPartyDialogue("QUAYLE")
IsValidForPartyDialogue("SAFANA")
IsValidForPartyDialogue("EDWIN")
IsValidForPartyDialogue("KAGAIN")
IsValidForPartyDialogue("ELDOTH")
IsValidForPartyDialogue("MONTARON")
IsValidForPartyDialogue("VICONIA")
IsValidForPartyDialogue("SHARTEEL")
IsValidForPartyDialogue("TIAX")
IsValidForPartyDialogue("XZAR")
IsValidForPartyDialogue("RASAAD")
IsValidForPartyDialogue("NEERA")
IsValidForPartyDialogue("BAELOTH")
IsValidForPartyDialogue("YESLICK")
IsValidForPartyDialogue("AJANTIS")
~ THEN REPLY #230365 /* ~Is there someone else I can't trust?~ */ GOTO 1252
END

IF ~~ THEN BEGIN 1250 // from: 1249.0 1248.0
  SAY #230366 /* ~That is good, but you must remain alert to any treachery.~ [DNR104] */
  IF ~~ THEN REPLY #230368 /* ~Something tells me you've been untrusting even before Simmeon betrayed you.~ */ GOTO 1280
  IF ~  OR(28)
IsValidForPartyDialogue("DYNAHEIR")
IsValidForPartyDialogue("IMOEN2")
IsValidForPartyDialogue("KHALID")
IsValidForPartyDialogue("MINSC")
IsValidForPartyDialogue("ALORA")
IsValidForPartyDialogue("CORAN")
IsValidForPartyDialogue("KIVAN")
IsValidForPartyDialogue("XAN")
IsValidForPartyDialogue("BRANWEN")
IsValidForPartyDialogue("FALDORN")
IsValidForPartyDialogue("JAHEIRA")
IsValidForPartyDialogue("SKIE")
IsValidForPartyDialogue("GARRICK")
IsValidForPartyDialogue("QUAYLE")
IsValidForPartyDialogue("SAFANA")
IsValidForPartyDialogue("EDWIN")
IsValidForPartyDialogue("KAGAIN")
IsValidForPartyDialogue("ELDOTH")
IsValidForPartyDialogue("MONTARON")
IsValidForPartyDialogue("VICONIA")
IsValidForPartyDialogue("SHARTEEL")
IsValidForPartyDialogue("TIAX")
IsValidForPartyDialogue("XZAR")
IsValidForPartyDialogue("RASAAD")
IsValidForPartyDialogue("NEERA")
IsValidForPartyDialogue("BAELOTH")
IsValidForPartyDialogue("YESLICK")
IsValidForPartyDialogue("AJANTIS")
~ THEN REPLY #230367 /* ~Who do you think I need to keep an eye on?~ */ GOTO 1252
END

IF ~~ THEN BEGIN 1251 // from: 1248.1
  SAY #230369 /* ~They underestimated the power of my anger to punish their treachery.~ [DNR105] */
  IF ~~ THEN REPLY #230368 /* ~Something tells me you've been untrusting even before Simmeon betrayed you.~ */ GOTO 1280
  IF ~  OR(28)
IsValidForPartyDialogue("DYNAHEIR")
IsValidForPartyDialogue("IMOEN2")
IsValidForPartyDialogue("KHALID")
IsValidForPartyDialogue("MINSC")
IsValidForPartyDialogue("ALORA")
IsValidForPartyDialogue("CORAN")
IsValidForPartyDialogue("KIVAN")
IsValidForPartyDialogue("XAN")
IsValidForPartyDialogue("BRANWEN")
IsValidForPartyDialogue("FALDORN")
IsValidForPartyDialogue("JAHEIRA")
IsValidForPartyDialogue("SKIE")
IsValidForPartyDialogue("GARRICK")
IsValidForPartyDialogue("QUAYLE")
IsValidForPartyDialogue("SAFANA")
IsValidForPartyDialogue("EDWIN")
IsValidForPartyDialogue("KAGAIN")
IsValidForPartyDialogue("ELDOTH")
IsValidForPartyDialogue("MONTARON")
IsValidForPartyDialogue("VICONIA")
IsValidForPartyDialogue("SHARTEEL")
IsValidForPartyDialogue("TIAX")
IsValidForPartyDialogue("XZAR")
IsValidForPartyDialogue("RASAAD")
IsValidForPartyDialogue("NEERA")
IsValidForPartyDialogue("BAELOTH")
IsValidForPartyDialogue("YESLICK")
IsValidForPartyDialogue("AJANTIS")
~ THEN REPLY #230367 /* ~Who do you think I need to keep an eye on?~ */ GOTO 1252
END

IF ~~ THEN BEGIN 1252 // from: 1251.1 1250.1 1249.2 1249.1 1248.2 1247.2
  SAY #230370 /* ~Since you ask...~ [DNR106] */
  IF ~  InParty("DYNAHEIR")
~ THEN EXTERN ~DYNAHJ~ 14
  IF ~  InParty("IMOEN2")
~ THEN EXTERN ~IMOEN2J~ 184
  IF ~  InParty("KHALID")
~ THEN EXTERN ~KHALIJ~ 9
  IF ~  InParty("MINSC")
~ THEN EXTERN ~MINSCJ~ 299
  IF ~  InParty("ALORA")
~ THEN EXTERN ~ALORAJ~ 5
  IF ~  InParty("CORAN")
~ THEN EXTERN ~CORANJ~ 12
  IF ~  InParty("KIVAN")
~ THEN EXTERN ~KIVANJ~ 10
  IF ~  InParty("XAN")
~ THEN EXTERN ~XANJ~ 7
  IF ~  InParty("BRANWEN")
~ THEN EXTERN ~BRANWJ~ 5
  IF ~  InParty("FALDORN")
~ THEN EXTERN ~FALDOJ~ 4
  IF ~  InParty("JAHEIRA")
~ THEN EXTERN ~JAHEIRAJ~ 618
  IF ~  InParty("SKIE")
~ THEN EXTERN ~SKIEJ~ 7
  IF ~  InParty("GARRICK")
~ THEN EXTERN ~GARRIJ~ 6
  IF ~  InParty("QUAYLE")
~ THEN EXTERN ~QUAYLJ~ 4
  IF ~  InParty("SAFANA")
~ THEN EXTERN ~SAFANJ~ 12
  IF ~  InParty("EDWIN")
~ THEN EXTERN ~EDWINJ~ 253
  IF ~  InParty("KAGAIN")
~ THEN EXTERN ~KAGAIJ~ 10
  IF ~  InParty("ELDOTH")
~ THEN EXTERN ~ELDOTJ~ 19
  IF ~  InParty("MONTARON")
~ THEN EXTERN ~MONTAJ~ 9
  IF ~  InParty("VICONIA")
~ THEN EXTERN ~VICONIJ~ 501
  IF ~  InParty("SHARTEEL")
~ THEN EXTERN ~SHARTJ~ 10
  IF ~  InParty("TIAX")
~ THEN EXTERN ~TIAXJ~ 8
  IF ~  InParty("XZAR")
~ THEN EXTERN ~XZARJ~ 10
  IF ~  InParty("RASAAD")
~ THEN EXTERN ~RASAADJ~ 1163
  IF ~  InParty("NEERA")
~ THEN EXTERN ~NEERAJ~ 857
  IF ~  InParty("BAELOTH")
~ THEN EXTERN ~BAELOTHJ~ 9
  IF ~  InParty("YESLICK")
~ THEN EXTERN ~YESLIJ~ 9
  IF ~  InParty("AJANTIS")
~ THEN EXTERN ~AJANTJ~ 9
END

IF ~~ THEN BEGIN 1253 // from:
  SAY #230372 /* ~I distrust her witch's ways and phony shows of virtue.~ [DNR106B] */
  IF ~~ THEN GOTO 1279
END

IF ~~ THEN BEGIN 1254 // from:
  SAY #230374 /* ~She is a foolish child.~ [DNR106D] */
  IF ~~ THEN GOTO 1279
  IF ~  InParty("DYNAHEIR")
~ THEN EXTERN ~DYNAHJ~ 14
END

IF ~~ THEN BEGIN 1255 // from:
  SAY #230376 /* ~A sneeze would make that stammering coward surrender.~ [DNR106F] */
  IF ~~ THEN GOTO 1279
  IF ~  InParty("DYNAHEIR")
~ THEN EXTERN ~DYNAHJ~ 14
  IF ~  InParty("IMOEN2")
~ THEN EXTERN ~IMOEN2J~ 184
END

IF ~~ THEN BEGIN 1256 // from:
  SAY #230378 /* ~He is a mighty warrior, but he loves that "gerbil" above all else.~ [DNR106H] */
  IF ~~ THEN EXTERN ~MINSCJ~ 300
END

IF ~~ THEN BEGIN 1257 // from:
  SAY #230380 /* ~I do not threaten your... hamster.~ [DNR106J] */
  IF ~~ THEN GOTO 1279
  IF ~  InParty("DYNAHEIR")
~ THEN EXTERN ~DYNAHJ~ 14
  IF ~  InParty("IMOEN2")
~ THEN EXTERN ~IMOEN2J~ 184
  IF ~  InParty("KHALID")
~ THEN EXTERN ~KHALIJ~ 9
END

IF ~~ THEN BEGIN 1258 // from:
  SAY #230382 /* ~The miniature thief? You even have to ask?~ [DNR106L] */
  IF ~~ THEN GOTO 1279
  IF ~  InParty("DYNAHEIR")
~ THEN EXTERN ~DYNAHJ~ 14
  IF ~  InParty("IMOEN2")
~ THEN EXTERN ~IMOEN2J~ 184
  IF ~  InParty("KHALID")
~ THEN EXTERN ~KHALIJ~ 9
  IF ~  InParty("MINSC")
~ THEN EXTERN ~MINSCJ~ 299
END

IF ~~ THEN BEGIN 1259 // from:
  SAY #230384 /* ~I would watch where he points that bow.~ [DNR106N] */
  IF ~~ THEN GOTO 1279
  IF ~  InParty("DYNAHEIR")
~ THEN EXTERN ~DYNAHJ~ 14
  IF ~  InParty("IMOEN2")
~ THEN EXTERN ~IMOEN2J~ 184
  IF ~  InParty("KHALID")
~ THEN EXTERN ~KHALIJ~ 9
  IF ~  InParty("MINSC")
~ THEN EXTERN ~MINSCJ~ 299
  IF ~  InParty("ALORA")
~ THEN EXTERN ~ALORAJ~ 5
END

IF ~~ THEN BEGIN 1260 // from:
  SAY #230386 /* ~He has already proven himself weak for love.~ [DNR106P] */
  IF ~~ THEN GOTO 1279
  IF ~  InParty("DYNAHEIR")
~ THEN EXTERN ~DYNAHJ~ 14
  IF ~  InParty("IMOEN2")
~ THEN EXTERN ~IMOEN2J~ 184
  IF ~  InParty("KHALID")
~ THEN EXTERN ~KHALIJ~ 9
  IF ~  InParty("MINSC")
~ THEN EXTERN ~MINSCJ~ 299
  IF ~  InParty("ALORA")
~ THEN EXTERN ~ALORAJ~ 5
  IF ~  InParty("CORAN")
~ THEN EXTERN ~CORANJ~ 12
END

IF ~~ THEN BEGIN 1261 // from:
  SAY #230388 /* ~The elf mutters doom and defeat.~ [DNR107B] */
  IF ~~ THEN GOTO 1279
  IF ~  InParty("DYNAHEIR")
~ THEN EXTERN ~DYNAHJ~ 14
  IF ~  InParty("IMOEN2")
~ THEN EXTERN ~IMOEN2J~ 184
  IF ~  InParty("KHALID")
~ THEN EXTERN ~KHALIJ~ 9
  IF ~  InParty("MINSC")
~ THEN EXTERN ~MINSCJ~ 299
  IF ~  InParty("ALORA")
~ THEN EXTERN ~ALORAJ~ 5
  IF ~  InParty("CORAN")
~ THEN EXTERN ~CORANJ~ 12
  IF ~  InParty("KIVAN")
~ THEN EXTERN ~KIVANJ~ 10
END

IF ~~ THEN BEGIN 1262 // from:
  SAY #230390 /* ~A fine warrior, but she serves her god before she serves you.~ [DNR107D] */
  IF ~~ THEN GOTO 1279
  IF ~  InParty("DYNAHEIR")
~ THEN EXTERN ~DYNAHJ~ 14
  IF ~  InParty("IMOEN2")
~ THEN EXTERN ~IMOEN2J~ 184
  IF ~  InParty("KHALID")
~ THEN EXTERN ~KHALIJ~ 9
  IF ~  InParty("MINSC")
~ THEN EXTERN ~MINSCJ~ 299
  IF ~  InParty("ALORA")
~ THEN EXTERN ~ALORAJ~ 5
  IF ~  InParty("CORAN")
~ THEN EXTERN ~CORANJ~ 12
  IF ~  InParty("KIVAN")
~ THEN EXTERN ~KIVANJ~ 10
  IF ~  InParty("XAN")
~ THEN EXTERN ~XANJ~ 7
END

IF ~~ THEN BEGIN 1263 // from:
  SAY #230392 /* ~She cares too much about roots and squirrels.~ [DNR107F] */
  IF ~~ THEN GOTO 1279
  IF ~  InParty("DYNAHEIR")
~ THEN EXTERN ~DYNAHJ~ 14
  IF ~  InParty("IMOEN2")
~ THEN EXTERN ~IMOEN2J~ 184
  IF ~  InParty("KHALID")
~ THEN EXTERN ~KHALIJ~ 9
  IF ~  InParty("MINSC")
~ THEN EXTERN ~MINSCJ~ 299
  IF ~  InParty("ALORA")
~ THEN EXTERN ~ALORAJ~ 5
  IF ~  InParty("CORAN")
~ THEN EXTERN ~CORANJ~ 12
  IF ~  InParty("KIVAN")
~ THEN EXTERN ~KIVANJ~ 10
  IF ~  InParty("XAN")
~ THEN EXTERN ~XANJ~ 7
  IF ~  InParty("BRANWEN")
~ THEN EXTERN ~BRANWJ~ 5
END

IF ~~ THEN BEGIN 1264 // from:
  SAY #230394 /* ~She serves the Harpers, not you.~ [DNR107H] */
  IF ~~ THEN GOTO 1279
  IF ~  InParty("DYNAHEIR")
~ THEN EXTERN ~DYNAHJ~ 14
  IF ~  InParty("IMOEN2")
~ THEN EXTERN ~IMOEN2J~ 184
  IF ~  InParty("KHALID")
~ THEN EXTERN ~KHALIJ~ 9
  IF ~  InParty("MINSC")
~ THEN EXTERN ~MINSCJ~ 299
  IF ~  InParty("ALORA")
~ THEN EXTERN ~ALORAJ~ 5
  IF ~  InParty("CORAN")
~ THEN EXTERN ~CORANJ~ 12
  IF ~  InParty("KIVAN")
~ THEN EXTERN ~KIVANJ~ 10
  IF ~  InParty("XAN")
~ THEN EXTERN ~XANJ~ 7
  IF ~  InParty("BRANWEN")
~ THEN EXTERN ~BRANWJ~ 5
  IF ~  InParty("FALDORN")
~ THEN EXTERN ~FALDOJ~ 4
END

IF ~~ THEN BEGIN 1265 // from:
  SAY #230396 /* ~She betrayed her father. She will betray you. And listen, she speaks of conspiracy.~ [DNR107J] */
  IF ~~ THEN GOTO 1279
  IF ~  InParty("DYNAHEIR")
~ THEN EXTERN ~DYNAHJ~ 14
  IF ~  InParty("IMOEN2")
~ THEN EXTERN ~IMOEN2J~ 184
  IF ~  InParty("KHALID")
~ THEN EXTERN ~KHALIJ~ 9
  IF ~  InParty("MINSC")
~ THEN EXTERN ~MINSCJ~ 299
  IF ~  InParty("ALORA")
~ THEN EXTERN ~ALORAJ~ 5
  IF ~  InParty("CORAN")
~ THEN EXTERN ~CORANJ~ 12
  IF ~  InParty("KIVAN")
~ THEN EXTERN ~KIVANJ~ 10
  IF ~  InParty("XAN")
~ THEN EXTERN ~XANJ~ 7
  IF ~  InParty("BRANWEN")
~ THEN EXTERN ~BRANWJ~ 5
  IF ~  InParty("FALDORN")
~ THEN EXTERN ~FALDOJ~ 4
  IF ~  InParty("JAHEIRA")
~ THEN EXTERN ~JAHEIRAJ~ 618
END

IF ~~ THEN BEGIN 1266 // from:
  SAY #230398 /* ~The conceited fool serves only himself.~ [DNR107L] */
  IF ~~ THEN GOTO 1279
  IF ~  InParty("DYNAHEIR")
~ THEN EXTERN ~DYNAHJ~ 14
  IF ~  InParty("IMOEN2")
~ THEN EXTERN ~IMOEN2J~ 184
  IF ~  InParty("KHALID")
~ THEN EXTERN ~KHALIJ~ 9
  IF ~  InParty("MINSC")
~ THEN EXTERN ~MINSCJ~ 299
  IF ~  InParty("ALORA")
~ THEN EXTERN ~ALORAJ~ 5
  IF ~  InParty("CORAN")
~ THEN EXTERN ~CORANJ~ 12
  IF ~  InParty("KIVAN")
~ THEN EXTERN ~KIVANJ~ 10
  IF ~  InParty("XAN")
~ THEN EXTERN ~XANJ~ 7
  IF ~  InParty("BRANWEN")
~ THEN EXTERN ~BRANWJ~ 5
  IF ~  InParty("FALDORN")
~ THEN EXTERN ~FALDOJ~ 4
  IF ~  InParty("JAHEIRA")
~ THEN EXTERN ~JAHEIRAJ~ 618
  IF ~  InParty("SKIE")
~ THEN EXTERN ~SKIEJ~ 7
END

IF ~~ THEN BEGIN 1267 // from:
  SAY #230400 /* ~You can never trust one who deals in illusion.~ [DNR107N] */
  IF ~~ THEN GOTO 1279
  IF ~  InParty("DYNAHEIR")
~ THEN EXTERN ~DYNAHJ~ 14
  IF ~  InParty("IMOEN2")
~ THEN EXTERN ~IMOEN2J~ 184
  IF ~  InParty("KHALID")
~ THEN EXTERN ~KHALIJ~ 9
  IF ~  InParty("MINSC")
~ THEN EXTERN ~MINSCJ~ 299
  IF ~  InParty("ALORA")
~ THEN EXTERN ~ALORAJ~ 5
  IF ~  InParty("CORAN")
~ THEN EXTERN ~CORANJ~ 12
  IF ~  InParty("KIVAN")
~ THEN EXTERN ~KIVANJ~ 10
  IF ~  InParty("XAN")
~ THEN EXTERN ~XANJ~ 7
  IF ~  InParty("BRANWEN")
~ THEN EXTERN ~BRANWJ~ 5
  IF ~  InParty("FALDORN")
~ THEN EXTERN ~FALDOJ~ 4
  IF ~  InParty("JAHEIRA")
~ THEN EXTERN ~JAHEIRAJ~ 618
  IF ~  InParty("SKIE")
~ THEN EXTERN ~SKIEJ~ 7
  IF ~  InParty("GARRICK")
~ THEN EXTERN ~GARRIJ~ 6
END

IF ~~ THEN BEGIN 1268 // from:
  SAY #230402 /* ~She uses her wiles to manipulate men. She cannot be trusted.~ [DNR108B] */
  IF ~~ THEN GOTO 1279
  IF ~  InParty("DYNAHEIR")
~ THEN EXTERN ~DYNAHJ~ 14
  IF ~  InParty("IMOEN2")
~ THEN EXTERN ~IMOEN2J~ 184
  IF ~  InParty("KHALID")
~ THEN EXTERN ~KHALIJ~ 9
  IF ~  InParty("MINSC")
~ THEN EXTERN ~MINSCJ~ 299
  IF ~  InParty("ALORA")
~ THEN EXTERN ~ALORAJ~ 5
  IF ~  InParty("CORAN")
~ THEN EXTERN ~CORANJ~ 12
  IF ~  InParty("KIVAN")
~ THEN EXTERN ~KIVANJ~ 10
  IF ~  InParty("XAN")
~ THEN EXTERN ~XANJ~ 7
  IF ~  InParty("BRANWEN")
~ THEN EXTERN ~BRANWJ~ 5
  IF ~  InParty("FALDORN")
~ THEN EXTERN ~FALDOJ~ 4
  IF ~  InParty("JAHEIRA")
~ THEN EXTERN ~JAHEIRAJ~ 618
  IF ~  InParty("SKIE")
~ THEN EXTERN ~SKIEJ~ 7
  IF ~  InParty("GARRICK")
~ THEN EXTERN ~GARRIJ~ 6
  IF ~  InParty("QUAYLE")
~ THEN EXTERN ~QUAYLJ~ 4
END

IF ~~ THEN BEGIN 1269 // from:
  SAY #230404 /* ~Hear that? The Red Wizard bides his time, waiting to take control.~ [DNR108D] */
  IF ~~ THEN GOTO 1279
  IF ~  InParty("DYNAHEIR")
~ THEN EXTERN ~DYNAHJ~ 14
  IF ~  InParty("IMOEN2")
~ THEN EXTERN ~IMOEN2J~ 184
  IF ~  InParty("KHALID")
~ THEN EXTERN ~KHALIJ~ 9
  IF ~  InParty("MINSC")
~ THEN EXTERN ~MINSCJ~ 299
  IF ~  InParty("ALORA")
~ THEN EXTERN ~ALORAJ~ 5
  IF ~  InParty("CORAN")
~ THEN EXTERN ~CORANJ~ 12
  IF ~  InParty("KIVAN")
~ THEN EXTERN ~KIVANJ~ 10
  IF ~  InParty("XAN")
~ THEN EXTERN ~XANJ~ 7
  IF ~  InParty("BRANWEN")
~ THEN EXTERN ~BRANWJ~ 5
  IF ~  InParty("FALDORN")
~ THEN EXTERN ~FALDOJ~ 4
  IF ~  InParty("JAHEIRA")
~ THEN EXTERN ~JAHEIRAJ~ 618
  IF ~  InParty("SKIE")
~ THEN EXTERN ~SKIEJ~ 7
  IF ~  InParty("GARRICK")
~ THEN EXTERN ~GARRIJ~ 6
  IF ~  InParty("QUAYLE")
~ THEN EXTERN ~QUAYLJ~ 4
  IF ~  InParty("SAFANA")
~ THEN EXTERN ~SAFANJ~ 12
END

IF ~~ THEN BEGIN 1270 // from:
  SAY #230406 /* ~The dwarf loves only gold. Anyone can buy him.~ [DNR108F] */
  IF ~~ THEN GOTO 1279
  IF ~  InParty("DYNAHEIR")
~ THEN EXTERN ~DYNAHJ~ 14
  IF ~  InParty("IMOEN2")
~ THEN EXTERN ~IMOEN2J~ 184
  IF ~  InParty("KHALID")
~ THEN EXTERN ~KHALIJ~ 9
  IF ~  InParty("MINSC")
~ THEN EXTERN ~MINSCJ~ 299
  IF ~  InParty("ALORA")
~ THEN EXTERN ~ALORAJ~ 5
  IF ~  InParty("CORAN")
~ THEN EXTERN ~CORANJ~ 12
  IF ~  InParty("KIVAN")
~ THEN EXTERN ~KIVANJ~ 10
  IF ~  InParty("XAN")
~ THEN EXTERN ~XANJ~ 7
  IF ~  InParty("BRANWEN")
~ THEN EXTERN ~BRANWJ~ 5
  IF ~  InParty("FALDORN")
~ THEN EXTERN ~FALDOJ~ 4
  IF ~  InParty("JAHEIRA")
~ THEN EXTERN ~JAHEIRAJ~ 618
  IF ~  InParty("SKIE")
~ THEN EXTERN ~SKIEJ~ 7
  IF ~  InParty("GARRICK")
~ THEN EXTERN ~GARRIJ~ 6
  IF ~  InParty("QUAYLE")
~ THEN EXTERN ~QUAYLJ~ 4
  IF ~  InParty("SAFANA")
~ THEN EXTERN ~SAFANJ~ 12
  IF ~  InParty("EDWIN")
~ THEN EXTERN ~EDWINJ~ 253
END

IF ~~ THEN BEGIN 1271 // from:
  SAY #230408 /* ~That seducer lives off the women he deceives.~ [DNR108H] */
  IF ~~ THEN GOTO 1279
  IF ~  InParty("DYNAHEIR")
~ THEN EXTERN ~DYNAHJ~ 14
  IF ~  InParty("IMOEN2")
~ THEN EXTERN ~IMOEN2J~ 184
  IF ~  InParty("KHALID")
~ THEN EXTERN ~KHALIJ~ 9
  IF ~  InParty("MINSC")
~ THEN EXTERN ~MINSCJ~ 299
  IF ~  InParty("ALORA")
~ THEN EXTERN ~ALORAJ~ 5
  IF ~  InParty("CORAN")
~ THEN EXTERN ~CORANJ~ 12
  IF ~  InParty("KIVAN")
~ THEN EXTERN ~KIVANJ~ 10
  IF ~  InParty("XAN")
~ THEN EXTERN ~XANJ~ 7
  IF ~  InParty("BRANWEN")
~ THEN EXTERN ~BRANWJ~ 5
  IF ~  InParty("FALDORN")
~ THEN EXTERN ~FALDOJ~ 4
  IF ~  InParty("JAHEIRA")
~ THEN EXTERN ~JAHEIRAJ~ 618
  IF ~  InParty("SKIE")
~ THEN EXTERN ~SKIEJ~ 7
  IF ~  InParty("GARRICK")
~ THEN EXTERN ~GARRIJ~ 6
  IF ~  InParty("QUAYLE")
~ THEN EXTERN ~QUAYLJ~ 4
  IF ~  InParty("SAFANA")
~ THEN EXTERN ~SAFANJ~ 12
  IF ~  InParty("EDWIN")
~ THEN EXTERN ~EDWINJ~ 253
  IF ~  InParty("KAGAIN")
~ THEN EXTERN ~KAGAIJ~ 10
END

IF ~~ THEN BEGIN 1272 // from:
  SAY #230410 /* ~The little savage has his uses, but don't turn your back on him.~ [DNR108J] */
  IF ~~ THEN GOTO 1279
  IF ~  InParty("DYNAHEIR")
~ THEN EXTERN ~DYNAHJ~ 14
  IF ~  InParty("IMOEN2")
~ THEN EXTERN ~IMOEN2J~ 184
  IF ~  InParty("KHALID")
~ THEN EXTERN ~KHALIJ~ 9
  IF ~  InParty("MINSC")
~ THEN EXTERN ~MINSCJ~ 299
  IF ~  InParty("ALORA")
~ THEN EXTERN ~ALORAJ~ 5
  IF ~  InParty("CORAN")
~ THEN EXTERN ~CORANJ~ 12
  IF ~  InParty("KIVAN")
~ THEN EXTERN ~KIVANJ~ 10
  IF ~  InParty("XAN")
~ THEN EXTERN ~XANJ~ 7
  IF ~  InParty("BRANWEN")
~ THEN EXTERN ~BRANWJ~ 5
  IF ~  InParty("FALDORN")
~ THEN EXTERN ~FALDOJ~ 4
  IF ~  InParty("JAHEIRA")
~ THEN EXTERN ~JAHEIRAJ~ 618
  IF ~  InParty("SKIE")
~ THEN EXTERN ~SKIEJ~ 7
  IF ~  InParty("GARRICK")
~ THEN EXTERN ~GARRIJ~ 6
  IF ~  InParty("QUAYLE")
~ THEN EXTERN ~QUAYLJ~ 4
  IF ~  InParty("SAFANA")
~ THEN EXTERN ~SAFANJ~ 12
  IF ~  InParty("EDWIN")
~ THEN EXTERN ~EDWINJ~ 253
  IF ~  InParty("KAGAIN")
~ THEN EXTERN ~KAGAIJ~ 10
  IF ~  InParty("ELDOTH")
~ THEN EXTERN ~ELDOTJ~ 19
END

IF ~~ THEN BEGIN 1273 // from:
  SAY #230412 /* ~The drow serves only her dark goddess.~ [DNR108L] */
  IF ~~ THEN GOTO 1279
  IF ~  InParty("DYNAHEIR")
~ THEN EXTERN ~DYNAHJ~ 14
  IF ~  InParty("IMOEN2")
~ THEN EXTERN ~IMOEN2J~ 184
  IF ~  InParty("KHALID")
~ THEN EXTERN ~KHALIJ~ 9
  IF ~  InParty("MINSC")
~ THEN EXTERN ~MINSCJ~ 299
  IF ~  InParty("ALORA")
~ THEN EXTERN ~ALORAJ~ 5
  IF ~  InParty("CORAN")
~ THEN EXTERN ~CORANJ~ 12
  IF ~  InParty("KIVAN")
~ THEN EXTERN ~KIVANJ~ 10
  IF ~  InParty("XAN")
~ THEN EXTERN ~XANJ~ 7
  IF ~  InParty("BRANWEN")
~ THEN EXTERN ~BRANWJ~ 5
  IF ~  InParty("FALDORN")
~ THEN EXTERN ~FALDOJ~ 4
  IF ~  InParty("JAHEIRA")
~ THEN EXTERN ~JAHEIRAJ~ 618
  IF ~  InParty("SKIE")
~ THEN EXTERN ~SKIEJ~ 7
  IF ~  InParty("GARRICK")
~ THEN EXTERN ~GARRIJ~ 6
  IF ~  InParty("QUAYLE")
~ THEN EXTERN ~QUAYLJ~ 4
  IF ~  InParty("SAFANA")
~ THEN EXTERN ~SAFANJ~ 12
  IF ~  InParty("EDWIN")
~ THEN EXTERN ~EDWINJ~ 253
  IF ~  InParty("KAGAIN")
~ THEN EXTERN ~KAGAIJ~ 10
  IF ~  InParty("ELDOTH")
~ THEN EXTERN ~ELDOTJ~ 19
  IF ~  InParty("MONTARON")
~ THEN EXTERN ~MONTAJ~ 9
END

IF ~~ THEN BEGIN 1274 // from:
  SAY #230414 /* ~Her hatred of men makes her unpredictable.~ [DNR108N] */
  IF ~~ THEN GOTO 1279
  IF ~  InParty("DYNAHEIR")
~ THEN EXTERN ~DYNAHJ~ 14
  IF ~  InParty("IMOEN2")
~ THEN EXTERN ~IMOEN2J~ 184
  IF ~  InParty("KHALID")
~ THEN EXTERN ~KHALIJ~ 9
  IF ~  InParty("MINSC")
~ THEN EXTERN ~MINSCJ~ 299
  IF ~  InParty("ALORA")
~ THEN EXTERN ~ALORAJ~ 5
  IF ~  InParty("CORAN")
~ THEN EXTERN ~CORANJ~ 12
  IF ~  InParty("KIVAN")
~ THEN EXTERN ~KIVANJ~ 10
  IF ~  InParty("XAN")
~ THEN EXTERN ~XANJ~ 7
  IF ~  InParty("BRANWEN")
~ THEN EXTERN ~BRANWJ~ 5
  IF ~  InParty("FALDORN")
~ THEN EXTERN ~FALDOJ~ 4
  IF ~  InParty("JAHEIRA")
~ THEN EXTERN ~JAHEIRAJ~ 618
  IF ~  InParty("SKIE")
~ THEN EXTERN ~SKIEJ~ 7
  IF ~  InParty("GARRICK")
~ THEN EXTERN ~GARRIJ~ 6
  IF ~  InParty("QUAYLE")
~ THEN EXTERN ~QUAYLJ~ 4
  IF ~  InParty("SAFANA")
~ THEN EXTERN ~SAFANJ~ 12
  IF ~  InParty("EDWIN")
~ THEN EXTERN ~EDWINJ~ 253
  IF ~  InParty("KAGAIN")
~ THEN EXTERN ~KAGAIJ~ 10
  IF ~  InParty("ELDOTH")
~ THEN EXTERN ~ELDOTJ~ 19
  IF ~  InParty("MONTARON")
~ THEN EXTERN ~MONTAJ~ 9
  IF ~  InParty("VICONIA")
~ THEN EXTERN ~VICONIJ~ 501
END

IF ~~ THEN BEGIN 1275 // from:
  SAY #230416 /* ~Need I say more?~ [DNR108P] */
  IF ~~ THEN GOTO 1279
  IF ~  InParty("DYNAHEIR")
~ THEN EXTERN ~DYNAHJ~ 14
  IF ~  InParty("IMOEN2")
~ THEN EXTERN ~IMOEN2J~ 184
  IF ~  InParty("KHALID")
~ THEN EXTERN ~KHALIJ~ 9
  IF ~  InParty("MINSC")
~ THEN EXTERN ~MINSCJ~ 299
  IF ~  InParty("ALORA")
~ THEN EXTERN ~ALORAJ~ 5
  IF ~  InParty("CORAN")
~ THEN EXTERN ~CORANJ~ 12
  IF ~  InParty("KIVAN")
~ THEN EXTERN ~KIVANJ~ 10
  IF ~  InParty("XAN")
~ THEN EXTERN ~XANJ~ 7
  IF ~  InParty("BRANWEN")
~ THEN EXTERN ~BRANWJ~ 5
  IF ~  InParty("FALDORN")
~ THEN EXTERN ~FALDOJ~ 4
  IF ~  InParty("JAHEIRA")
~ THEN EXTERN ~JAHEIRAJ~ 618
  IF ~  InParty("SKIE")
~ THEN EXTERN ~SKIEJ~ 7
  IF ~  InParty("GARRICK")
~ THEN EXTERN ~GARRIJ~ 6
  IF ~  InParty("QUAYLE")
~ THEN EXTERN ~QUAYLJ~ 4
  IF ~  InParty("SAFANA")
~ THEN EXTERN ~SAFANJ~ 12
  IF ~  InParty("EDWIN")
~ THEN EXTERN ~EDWINJ~ 253
  IF ~  InParty("KAGAIN")
~ THEN EXTERN ~KAGAIJ~ 10
  IF ~  InParty("ELDOTH")
~ THEN EXTERN ~ELDOTJ~ 19
  IF ~  InParty("MONTARON")
~ THEN EXTERN ~MONTAJ~ 9
  IF ~  InParty("VICONIA")
~ THEN EXTERN ~VICONIJ~ 501
  IF ~  InParty("SHARTEEL")
~ THEN EXTERN ~SHARTJ~ 10
END

IF ~~ THEN BEGIN 1276 // from:
  SAY #230418 /* ~You can never trust the mad.~ [DNR108R] */
  IF ~~ THEN GOTO 1279
  IF ~  InParty("DYNAHEIR")
~ THEN EXTERN ~DYNAHJ~ 14
  IF ~  InParty("IMOEN2")
~ THEN EXTERN ~IMOEN2J~ 184
  IF ~  InParty("KHALID")
~ THEN EXTERN ~KHALIJ~ 9
  IF ~  InParty("MINSC")
~ THEN EXTERN ~MINSCJ~ 299
  IF ~  InParty("ALORA")
~ THEN EXTERN ~ALORAJ~ 5
  IF ~  InParty("CORAN")
~ THEN EXTERN ~CORANJ~ 12
  IF ~  InParty("KIVAN")
~ THEN EXTERN ~KIVANJ~ 10
  IF ~  InParty("XAN")
~ THEN EXTERN ~XANJ~ 7
  IF ~  InParty("BRANWEN")
~ THEN EXTERN ~BRANWJ~ 5
  IF ~  InParty("FALDORN")
~ THEN EXTERN ~FALDOJ~ 4
  IF ~  InParty("JAHEIRA")
~ THEN EXTERN ~JAHEIRAJ~ 618
  IF ~  InParty("SKIE")
~ THEN EXTERN ~SKIEJ~ 7
  IF ~  InParty("GARRICK")
~ THEN EXTERN ~GARRIJ~ 6
  IF ~  InParty("QUAYLE")
~ THEN EXTERN ~QUAYLJ~ 4
  IF ~  InParty("SAFANA")
~ THEN EXTERN ~SAFANJ~ 12
  IF ~  InParty("EDWIN")
~ THEN EXTERN ~EDWINJ~ 253
  IF ~  InParty("KAGAIN")
~ THEN EXTERN ~KAGAIJ~ 10
  IF ~  InParty("ELDOTH")
~ THEN EXTERN ~ELDOTJ~ 19
  IF ~  InParty("MONTARON")
~ THEN EXTERN ~MONTAJ~ 9
  IF ~  InParty("VICONIA")
~ THEN EXTERN ~VICONIJ~ 501
  IF ~  InParty("SHARTEEL")
~ THEN EXTERN ~SHARTJ~ 10
  IF ~  InParty("TIAX")
~ THEN EXTERN ~TIAXJ~ 8
END

IF ~~ THEN BEGIN 1277 // from:
  SAY #230420 /* ~The sanctimonious hide their true motives behind platitudes.~ [DNR108T] */
  IF ~~ THEN GOTO 1279
  IF ~  InParty("DYNAHEIR")
~ THEN EXTERN ~DYNAHJ~ 14
  IF ~  InParty("IMOEN2")
~ THEN EXTERN ~IMOEN2J~ 184
  IF ~  InParty("KHALID")
~ THEN EXTERN ~KHALIJ~ 9
  IF ~  InParty("MINSC")
~ THEN EXTERN ~MINSCJ~ 299
  IF ~  InParty("ALORA")
~ THEN EXTERN ~ALORAJ~ 5
  IF ~  InParty("CORAN")
~ THEN EXTERN ~CORANJ~ 12
  IF ~  InParty("KIVAN")
~ THEN EXTERN ~KIVANJ~ 10
  IF ~  InParty("XAN")
~ THEN EXTERN ~XANJ~ 7
  IF ~  InParty("BRANWEN")
~ THEN EXTERN ~BRANWJ~ 5
  IF ~  InParty("FALDORN")
~ THEN EXTERN ~FALDOJ~ 4
  IF ~  InParty("JAHEIRA")
~ THEN EXTERN ~JAHEIRAJ~ 618
  IF ~  InParty("SKIE")
~ THEN EXTERN ~SKIEJ~ 7
  IF ~  InParty("GARRICK")
~ THEN EXTERN ~GARRIJ~ 6
  IF ~  InParty("QUAYLE")
~ THEN EXTERN ~QUAYLJ~ 4
  IF ~  InParty("SAFANA")
~ THEN EXTERN ~SAFANJ~ 12
  IF ~  InParty("EDWIN")
~ THEN EXTERN ~EDWINJ~ 253
  IF ~  InParty("KAGAIN")
~ THEN EXTERN ~KAGAIJ~ 10
  IF ~  InParty("ELDOTH")
~ THEN EXTERN ~ELDOTJ~ 19
  IF ~  InParty("MONTARON")
~ THEN EXTERN ~MONTAJ~ 9
  IF ~  InParty("VICONIA")
~ THEN EXTERN ~VICONIJ~ 501
  IF ~  InParty("SHARTEEL")
~ THEN EXTERN ~SHARTJ~ 10
  IF ~  InParty("TIAX")
~ THEN EXTERN ~TIAXJ~ 8
  IF ~  InParty("XZAR")
~ THEN EXTERN ~XZARJ~ 10
END

IF ~~ THEN BEGIN 1278 // from:
  SAY #230422 /* ~Even if that is true, you cannot trust her wild magic.~ [DNR108V] */
  IF ~~ THEN GOTO 1279
  IF ~  InParty("DYNAHEIR")
~ THEN EXTERN ~DYNAHJ~ 14
  IF ~  InParty("IMOEN2")
~ THEN EXTERN ~IMOEN2J~ 184
  IF ~  InParty("KHALID")
~ THEN EXTERN ~KHALIJ~ 9
  IF ~  InParty("MINSC")
~ THEN EXTERN ~MINSCJ~ 299
  IF ~  InParty("ALORA")
~ THEN EXTERN ~ALORAJ~ 5
  IF ~  InParty("CORAN")
~ THEN EXTERN ~CORANJ~ 12
  IF ~  InParty("KIVAN")
~ THEN EXTERN ~KIVANJ~ 10
  IF ~  InParty("XAN")
~ THEN EXTERN ~XANJ~ 7
  IF ~  InParty("BRANWEN")
~ THEN EXTERN ~BRANWJ~ 5
  IF ~  InParty("FALDORN")
~ THEN EXTERN ~FALDOJ~ 4
  IF ~  InParty("JAHEIRA")
~ THEN EXTERN ~JAHEIRAJ~ 618
  IF ~  InParty("SKIE")
~ THEN EXTERN ~SKIEJ~ 7
  IF ~  InParty("GARRICK")
~ THEN EXTERN ~GARRIJ~ 6
  IF ~  InParty("QUAYLE")
~ THEN EXTERN ~QUAYLJ~ 4
  IF ~  InParty("SAFANA")
~ THEN EXTERN ~SAFANJ~ 12
  IF ~  InParty("EDWIN")
~ THEN EXTERN ~EDWINJ~ 253
  IF ~  InParty("KAGAIN")
~ THEN EXTERN ~KAGAIJ~ 10
  IF ~  InParty("ELDOTH")
~ THEN EXTERN ~ELDOTJ~ 19
  IF ~  InParty("MONTARON")
~ THEN EXTERN ~MONTAJ~ 9
  IF ~  InParty("VICONIA")
~ THEN EXTERN ~VICONIJ~ 501
  IF ~  InParty("SHARTEEL")
~ THEN EXTERN ~SHARTJ~ 10
  IF ~  InParty("TIAX")
~ THEN EXTERN ~TIAXJ~ 8
  IF ~  InParty("XZAR")
~ THEN EXTERN ~XZARJ~ 10
  IF ~  InParty("RASAAD")
~ THEN EXTERN ~RASAADJ~ 1163
END

IF ~~ THEN BEGIN 1279 // from: 1341.0 1340.0 1339.0 1278.0 1277.0 1276.0 1275.0 1274.0 1273.0 1272.0 1271.0 1270.0 1269.0 1268.0 1267.0 1266.0 1265.0 1264.0 1263.0 1262.0 1261.0 1260.0 1259.0 1258.0 1257.0 1255.0 1254.0 1253.0
  SAY #230423 /* ~So you see, even those you hold close cannot be trusted.~ [DNR111] */
  IF ~~ THEN REPLY #230424 /* ~That's a bleak outlook.~ */ GOTO 1280
  IF ~~ THEN REPLY #230425 /* ~You were suspicious of everyone even before Simmeon, weren't you?~ */ GOTO 1281
  IF ~~ THEN REPLY #230426 /* ~You are right. No one can be trusted.~ */ GOTO 1283
END

IF ~~ THEN BEGIN 1280 // from: 1279.0 1251.0 1250.0
  SAY #230427 /* ~It is only realistic.~ [DNR112] */
  IF ~~ THEN GOTO 1281
END

IF ~~ THEN BEGIN 1281 // from: 1280.0 1279.1
  SAY #230428 /* ~I was not suspicious enough of Simmeon's gang. They masked their hatred for my half-orc heritage, fooling me into thinking they were my friends.~ [DNR113] */
  IF ~~ THEN GOTO 1282
END

IF ~~ THEN BEGIN 1282 // from: 1281.0
  SAY #230429 /* ~Never again will I delude myself in such a manner.~ [DNR114] */
  IF ~~ THEN REPLY #230430 /* ~I am your friend.~ */ GOTO 1284
  IF ~~ THEN REPLY #230431 /* ~We don't need to be friends. We only need to trust each other.~ */ GOTO 1285
  IF ~~ THEN REPLY #230432 /* ~Good. I will have no fools in my company.~ */ GOTO 1286
END

IF ~~ THEN BEGIN 1283 // from: 1279.2
  SAY #230433 /* ~The weak fear the strong, and their fear leads either to servitude or desperation. One such as you or me must always beware the treachery of the desperate.~ [DNR115] */
  IF ~~ THEN REPLY #230434 /* ~You can trust me.~ */ GOTO 1285
  IF ~~ THEN REPLY #230435 /* ~Only a fool would try to betray me.~ */ GOTO 1286
  IF ~~ THEN REPLY #230436 /* ~As long as you serve me, you need fear nothing.~ */ GOTO 1287
END

IF ~~ THEN BEGIN 1284 // from: 1282.0
  SAY #230437 /* ~Hrmm. While that may one day prove true, I will not be fooled again.~ [DNR116] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1285 // from: 1283.0 1282.1
  SAY #230438 /* ~Hrmm. Perhaps the strong may trust the strong, but it remains to be proved.~ [DNR117] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1286 // from: 1283.1 1282.2
  SAY #230439 /* ~You may have welcomed fools into your company, but I am not one of them.~ [DNR118] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1287 // from: 1283.2
  SAY #230440 /* ~Do not mistake my companionship for servitude. I bend my knee for no one.~ [DNR119] */
  IF ~~ THEN EXIT
END

IF WEIGHT #93 ~  Global("DORN_ROMANCE_2","LOCALS",1)
~ THEN BEGIN 1288 // from:
  SAY #230441 /* ~Hrmm. You take much time to talk with people we could more easily sweep from our path. You cannot trust their words, only their actions.~ [DNR121] */
  IF ~~ THEN REPLY #230442 /* ~Not everyone has an ulterior motive.~ */ DO ~SetGlobal("DORN_ROMANCE_2","LOCALS",2)
~ GOTO 1289
  IF ~~ THEN REPLY #230443 /* ~Sometimes it's easier to talk than fight.~ */ DO ~SetGlobal("DORN_ROMANCE_2","LOCALS",2)
~ GOTO 1290
  IF ~~ THEN REPLY #230444 /* ~Are you questioning my decisions?~ */ DO ~SetGlobal("DORN_ROMANCE_2","LOCALS",2)
~ GOTO 1291
END

IF ~~ THEN BEGIN 1289 // from: 1288.0
  SAY #230445 /* ~You cannot be so credulous! Everyone lies.~ [DNR122] */
  IF ~~ THEN REPLY #230446 /* ~Even you?~ */ GOTO 1292
  IF ~~ THEN REPLY #230447 /* ~I don't. I'm a paragon of honesty.~ */ GOTO 1293
  IF ~~ THEN REPLY #230448 /* ~If you lie to me, I'll put you in the ground.~ */ GOTO 1294
END

IF ~~ THEN BEGIN 1290 // from: 1288.1
  SAY #230449 /* ~Hrmm. That may be true for some, but not for Dorn Il-Khan.~ [DNR123] */
  IF ~~ THEN REPLY #230450 /* ~I don't know. You're pretty articulate for a half-orc.~ */ GOTO 1295
  IF ~~ THEN REPLY #230451 /* ~I love it when you talk about yourself in the third person. It gives me chills.~ */ GOTO 1296
  IF ~~ THEN REPLY #230452 /* ~Then shut up and let me do the talking.~ */ GOTO 1294
END

IF ~~ THEN BEGIN 1291 // from: 1288.2
  SAY #230453 /* ~What if I were?~ [DNR124] */
  IF ~~ THEN REPLY #230454 /* ~Then I would listen to what you have to say and give it careful consideration.~ */ GOTO 1297
  IF ~~ THEN REPLY #230455 /* ~Then I'm afraid I would respectfully ask you to leave.~ */ GOTO 1298
  IF ~~ THEN REPLY #230456 /* ~If you are questioning me, I will end you.~ */ GOTO 1294
END

IF ~~ THEN BEGIN 1292 // from: 1289.0
  SAY #230457 /* ~My blade talks for me, and it always speaks truly.~ [DNR125] */
  IF ~~ THEN REPLY #230458 /* ~Why Dorn, you're a poet!~ */ GOTO 1294
  IF ~~ THEN REPLY #230459 /* ~It gives me a thrill to hear you talk tough.~ */ GOTO 1296
  IF ~~ THEN REPLY #230460 /* ~Remind your blade that I'm the one who gets the last word around here.~ */ GOTO 1294
END

IF ~~ THEN BEGIN 1293 // from: 1289.1
  SAY #230461 /* ~Impossible! Even one such as you must dissemble sometimes, if only to yourself.~ [DNR126] */
  IF ~~ THEN REPLY #230462 /* ~You make a good point.~ */ GOTO 1300
  IF ~~ THEN REPLY #230463 /* ~Are you sure that's what you think, Dorn? Maybe you're lying to yourself right now.~ */ GOTO 1295
  IF ~~ THEN REPLY #230464 /* ~If you're calling me a liar, you'll soon be a corpse.~ */ GOTO 1294
END

IF ~~ THEN BEGIN 1294 // from: 1295.2 1295.1 1293.2 1292.2 1292.0 1291.2 1290.2 1289.2
  SAY #230465 /* ~You dare talk to me like that? You put yourself in danger.~ [DNR127] */
  IF ~~ THEN REPLY #230466 /* ~Uh, perhaps I chose my words poorly. Don't hit me!~ */ GOTO 1300
  IF ~~ THEN REPLY #230467 /* ~If you can't toe the line, I have no more use for you.~ */ GOTO 1298
  IF ~~ THEN REPLY #230468 /* ~I'm not in danger, Dorn. I am the danger.~ */ GOTO 1301
END

IF ~~ THEN BEGIN 1295 // from: 1303.2 1293.1 1290.0
  SAY #230469 /* ~What? Do you dare mock me?~ [DNR128] */
  IF ~~ THEN REPLY #230470 /* ~No.~ */ GOTO 1300
  IF ~~ THEN REPLY #230471 /* ~Maybe.~ */ GOTO 1294
  IF ~~ THEN REPLY #230472 /* ~Yes.~ */ GOTO 1294
END

IF ~~ THEN BEGIN 1296 // from: 1292.1 1290.1
  SAY #230473 /* ~What? What are you saying?~ [DNR129] */
  IF ~~ THEN REPLY #230474 /* ~I'm saying you're a worthy companion.~ */ GOTO 1302
  IF ~~ THEN REPLY #230475 /* ~I'm saying that I don't care what others say about you. You're my kind of blackguard.~ */ GOTO 1303
  IF ~~ THEN REPLY #230476 /* ~I'm saying don't ever change. I like you the way you are.~ */ GOTO 1330
END

IF ~~ THEN BEGIN 1297 // from: 1303.1 1291.0
  SAY #230477 /* ~Hrmm. I had thought better of you.~ [DNR130] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1298 // from: 1294.1 1291.1
  SAY #230478 /* ~You wish me to leave?~ [DNR131] */
  IF ~~ THEN REPLY #230479 /* ~Yes. Get out of here.~ */ GOTO 1299
  IF ~~ THEN REPLY #230480 /* ~No, not now.~ */ GOTO 1300
END

IF ~~ THEN BEGIN 1299 // from: 1298.0
  SAY #230481 /* ~If that is your wish, I will leave you.~ [DNR132] */
  IF ~~ THEN DO ~SetGlobal("DORNPARTY","GLOBAL",0)
SetDialogue("DORNP_")
ChangeEnemyAlly("DORN",NEUTRAL)
EscapeAreaMove("BG2301",1132,727,S)
~ EXIT
END

IF ~~ THEN BEGIN 1300 // from: 1303.0 1298.1 1295.0 1294.0 1293.0
  SAY #230482 /* ~Your uncertainty is a sign of weakness. You must be decisive. You must show your strength!~ [DNR133] */
  IF ~~ THEN REPLY #230483 /* ~I surround myself with allies to be strong.~ */ GOTO 1331
  IF ~~ THEN REPLY #230484 /* ~That's what I wanted to hear. I was testing you, Dorn. You pass.~ */ GOTO 1332
  IF ~~ THEN REPLY #230485 /* ~Strength is often greater when hidden. Don't underestimate my strength or my guile.~ */ GOTO 1333
END

IF ~~ THEN BEGIN 1301 // from: 1294.2
  SAY #230486 /* ~Hrmm. Yes, you are right. You alone could defeat me. That is why I choose to remain with you.~ [DNR134] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1302 // from: 1296.0
  SAY #230487 /* ~Hrmm. A worthy companion. If only I could believe...~ [DNR135] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1303 // from: 1296.1
  SAY #230488 /* ~What others say about me?! Bah. Who dares gossip about me?~ [DNR136] */
  IF ~~ THEN REPLY #230489 /* ~Forget it, Dorn. I don't want any trouble.~ */ GOTO 1300
  IF ~~ THEN REPLY #230490 /* ~There wasn't any talk. I was just jerking your chain.~ */ GOTO 1297
  IF ~~ THEN REPLY #230491 /* ~There wasn't any talk. It was just an expression.~ */ GOTO 1295
  IF ~  InParty("DYNAHEIR")
~ THEN REPLY #230492 /* ~It was Dynaheir.~ */ EXTERN ~DYNAHJ~ 15
  IF ~  InParty("IMOEN2")
~ THEN REPLY #230493 /* ~It was Imoen.~ */ EXTERN ~IMOEN2J~ 185
  IF ~  InParty("KHALID")
~ THEN REPLY #230494 /* ~It was Khalid~ */ EXTERN ~KHALIJ~ 10
  IF ~  InParty("MINSC")
~ THEN REPLY #230495 /* ~It was Minsc.~ */ EXTERN ~MINSCJ~ 301
  IF ~  InParty("MINSC")
~ THEN REPLY #230496 /* ~It was Boo.~ */ EXTERN ~MINSCJ~ 302
  IF ~  InParty("ALORA")
~ THEN REPLY #230497 /* ~It was Alora.~ */ EXTERN ~ALORAJ~ 6
  IF ~  InParty("CORAN")
~ THEN REPLY #230498 /* ~It was Coran.~ */ EXTERN ~CORANJ~ 13
  IF ~  InParty("KIVAN")
~ THEN REPLY #230499 /* ~It was Kivan.~ */ EXTERN ~KIVANJ~ 9
  IF ~  InParty("XAN")
~ THEN REPLY #230500 /* ~It was Xan.~ */ EXTERN ~XANJ~ 8
  IF ~  InParty("BRANWEN")
~ THEN REPLY #230501 /* ~It was Branwen.~ */ EXTERN ~BRANWJ~ 6
  IF ~  InParty("FALDORN")
~ THEN REPLY #230502 /* ~It was Faldorn.~ */ EXTERN ~FALDOJ~ 5
  IF ~  InParty("JAHEIRA")
~ THEN REPLY #230503 /* ~It was Jaheira.~ */ EXTERN ~JAHEIRAJ~ 619
  IF ~  InParty("SKIE")
~ THEN REPLY #230504 /* ~It was Skie.~ */ EXTERN ~SKIEJ~ 8
  IF ~  InParty("GARRICK")
~ THEN REPLY #230505 /* ~It was Garrick.~ */ EXTERN ~GARRIJ~ 7
  IF ~  InParty("QUAYLE")
~ THEN REPLY #230506 /* ~It was Quayle.~ */ EXTERN ~QUAYLJ~ 5
  IF ~  InParty("SAFANA")
~ THEN REPLY #230507 /* ~It was Safana.~ */ EXTERN ~SAFANJ~ 13
  IF ~  InParty("EDWIN")
~ THEN REPLY #230508 /* ~It was Edwin.~ */ EXTERN ~EDWINJ~ 254
  IF ~  InParty("KAGAIN")
~ THEN REPLY #230509 /* ~It was Kagain.~ */ EXTERN ~KAGAIJ~ 11
  IF ~  InParty("ELDOTH")
~ THEN REPLY #230510 /* ~It was Eldoth.~ */ EXTERN ~ELDOTJ~ 20
  IF ~  InParty("MONTARON")
~ THEN REPLY #230511 /* ~It was Montaron.~ */ EXTERN ~MONTAJ~ 10
  IF ~  InParty("VICONIA")
~ THEN REPLY #230512 /* ~It was Viconia.~ */ EXTERN ~VICONIJ~ 502
  IF ~  InParty("SHARTEEL")
~ THEN REPLY #230513 /* ~It was Shar-Teel.~ */ EXTERN ~SHARTJ~ 11
  IF ~  InParty("TIAX")
~ THEN REPLY #230514 /* ~It was Tiax.~ */ EXTERN ~TIAXJ~ 9
  IF ~  InParty("XZAR")
~ THEN REPLY #230515 /* ~It was Xzar.~ */ EXTERN ~XZARJ~ 11
  IF ~  InParty("RASAAD")
~ THEN REPLY #230516 /* ~It was Rasaad.~ */ EXTERN ~RASAADJ~ 1164
  IF ~  InParty("NEERA")
~ THEN REPLY #230517 /* ~It was Neera.~ */ EXTERN ~NEERAJ~ 858
END

IF ~~ THEN BEGIN 1304 // from:
  SAY #230519 /* ~Die, witch!~ [DNR201A] */
  IF ~~ THEN DO ~SetGlobal("DORN_ROMANCE_FIGHT","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 1305 // from:
  SAY #230521 /* ~Die, you simpering child!~ [DNR202A] */
  IF ~~ THEN DO ~ActionOverride("IMOEN2",ChangeAIScript("IMOEN_",OVERRIDE))
SetGlobal("DORN_ROMANCE_FIGHT","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 1306 // from:
  SAY #230523 /* ~Die, you stammering weakling!~ [DNR203A] */
  IF ~~ THEN DO ~SetGlobal("DORN_ROMANCE_FIGHT","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 1307 // from:
  SAY #230525 /* ~Die, simpleton!~ [DNR204A] */
  IF ~~ THEN DO ~SetGlobal("DORN_ROMANCE_FIGHT","GLOBAL",4)
~ EXIT
END

IF ~~ THEN BEGIN 1308 // from:
  SAY #230527 /* ~Die, simpleton!~ [DNR205A] */
  IF ~~ THEN DO ~SetGlobal("DORN_ROMANCE_FIGHT","GLOBAL",5)
~ EXIT
END

IF ~~ THEN BEGIN 1309 // from:
  SAY #230529 /* ~Never trust a halfling. Die, backstabber!~ [DNR206A] */
  IF ~~ THEN DO ~SetGlobal("DORN_ROMANCE_FIGHT","GLOBAL",6)
~ EXIT
END

IF ~~ THEN BEGIN 1310 // from:
  SAY #230531 /* ~Die, half-elf!~ [DNR207A] */
  IF ~~ THEN DO ~SetGlobal("DORN_ROMANCE_FIGHT","GLOBAL",7)
~ EXIT
END

IF ~~ THEN BEGIN 1311 // from:
  SAY #230533 /* ~Die, elf!~ [DNR208A] */
  IF ~~ THEN DO ~SetGlobal("DORN_ROMANCE_FIGHT","GLOBAL",8)
~ EXIT
END

IF ~~ THEN BEGIN 1312 // from:
  SAY #230535 /* ~Die, enchanter!~ [DNR209A] */
  IF ~~ THEN DO ~ActionOverride("Xan",ChangeAIScript("XAN",OVERRIDE))
SetGlobal("DORN_ROMANCE_FIGHT","GLOBAL",9)
~ EXIT
END

IF ~~ THEN BEGIN 1313 // from:
  SAY #230537 /* ~Die, battle-wench!~ [DNR210A] */
  IF ~~ THEN DO ~ActionOverride("Branwen",ChangeAIScript("BRANWEN_",OVERRIDE))
SetGlobal("DORN_ROMANCE_FIGHT","GLOBAL",10)
~ EXIT
END

IF ~~ THEN BEGIN 1314 // from:
  SAY #230539 /* ~Die, druid!~ [DNR211A] */
  IF ~~ THEN DO ~ActionOverride("Faldorn",ChangeAIScript("FALDORN_",OVERRIDE))
SetGlobal("DORN_ROMANCE_FIGHT","GLOBAL",11)
~ EXIT
END

IF ~~ THEN BEGIN 1315 // from:
  SAY #230541 /* ~Die, Harper!~ [DNR212A] */
  IF ~~ THEN DO ~SetGlobal("DORN_ROMANCE_FIGHT","GLOBAL",12)
~ EXIT
END

IF ~~ THEN BEGIN 1316 // from:
  SAY #230543 /* ~Die, thief!~ [DNR213A] */
  IF ~~ THEN DO ~ActionOverride("Skie",ChangeAIScript("SKIE_",OVERRIDE))
SetGlobal("DORN_ROMANCE_FIGHT","GLOBAL",13)
~ EXIT
END

IF ~~ THEN BEGIN 1317 // from:
  SAY #230545 /* ~Die, minstrel!~ [DNR214A] */
  IF ~~ THEN DO ~ActionOverride("Garrick",ChangeAIScript("GARRICK_",OVERRIDE))
SetGlobal("DORN_ROMANCE_FIGHT","GLOBAL",14)
~ EXIT
END

IF ~~ THEN BEGIN 1318 // from:
  SAY #230547 /* ~Die, gnome!~ [DNR215A] */
  IF ~~ THEN DO ~SetGlobal("DORN_ROMANCE_FIGHT","GLOBAL",15)
~ EXIT
END

IF ~~ THEN BEGIN 1319 // from:
  SAY #230549 /* ~Die, temptress!~ [DNR216A] */
  IF ~~ THEN DO ~SetGlobal("DORN_ROMANCE_FIGHT","GLOBAL",16)
~ EXIT
END

IF ~~ THEN BEGIN 1320 // from:
  SAY #230551 /* ~Die, Red Wizard!~ [DNR217A] */
  IF ~~ THEN DO ~SetGlobal("DORN_ROMANCE_FIGHT","GLOBAL",17)
~ EXIT
END

IF ~~ THEN BEGIN 1321 // from:
  SAY #230553 /* ~Die, dwarf!~ [DNR218A] */
  IF ~~ THEN DO ~SetGlobal("DORN_ROMANCE_FIGHT","GLOBAL",18)
~ EXIT
END

IF ~~ THEN BEGIN 1322 // from:
  SAY #230555 /* ~Die, cur!~ [DNR219A] */
  IF ~~ THEN DO ~SetGlobal("DORN_ROMANCE_FIGHT","GLOBAL",19)
~ EXIT
END

IF ~~ THEN BEGIN 1323 // from:
  SAY #230557 /* ~Die, halfling!~ [DNR220A] */
  IF ~~ THEN DO ~SetGlobal("DORN_ROMANCE_FIGHT","GLOBAL",20)
~ EXIT
END

IF ~~ THEN BEGIN 1324 // from:
  SAY #230559 /* ~Die, drow!~ [DNR221A] */
  IF ~~ THEN DO ~SetGlobal("DORN_ROMANCE_FIGHT","GLOBAL",21)
~ EXIT
END

IF ~~ THEN BEGIN 1325 // from:
  SAY #230561 /* ~Die, wench!~ [DNR222A] */
  IF ~~ THEN DO ~SetGlobal("DORN_ROMANCE_FIGHT","GLOBAL",22)
~ EXIT
END

IF ~~ THEN BEGIN 1326 // from:
  SAY #230563 /* ~Die, you annoying mite!~ [DNR223A] */
  IF ~~ THEN DO ~SetGlobal("DORN_ROMANCE_FIGHT","GLOBAL",23)
~ EXIT
END

IF ~~ THEN BEGIN 1327 // from:
  SAY #230565 /* ~Die, lunatic!~ [DNR224A] */
  IF ~~ THEN DO ~SetGlobal("DORN_ROMANCE_FIGHT","GLOBAL",24)
~ EXIT
END

IF ~~ THEN BEGIN 1328 // from:
  SAY #230567 /* ~Die, monk!~ [DNR225A] */
  IF ~~ THEN DO ~SetGlobal("DORN_ROMANCE_FIGHT","GLOBAL",25)
~ EXIT
END

IF ~~ THEN BEGIN 1329 // from:
  SAY #230569 /* ~Die, sorceress!~ [DNR226A] */
  IF ~~ THEN DO ~SetGlobal("DORN_ROMANCE_FIGHT","GLOBAL",26)
~ EXIT
END

IF ~~ THEN BEGIN 1330 // from: 1296.2
  SAY #230570 /* ~Hrmm. I distrust such sentiment in others, but... perhaps you and I— Oh, enough of this foolishness!~ [DNR137] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1331 // from: 1300.0
  SAY #230571 /* ~Then you are not who I thought you were. Hrm. Disappointing.~ [DNR138] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1332 // from: 1300.1
  SAY #230572 /* ~You dare test me?! Trifle with me at your peril.~ [DNR139] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1333 // from: 1300.2
  SAY #230573 /* ~Hrmm. Your argument is... persuasive. Guile is a sort of strength. You give me food for thought.~ [DNR140] */
  IF ~~ THEN EXIT
END

IF WEIGHT #94 ~  Global("DORN_ROMANCE_FIGHT","GLOBAL",99)
~ THEN BEGIN 1334 // from:
  SAY #230574 /* ~There. That should still any other tongues from wagging.~ [DNR151] */
  IF ~~ THEN REPLY #230575 /* ~Don't you think you overreacted a bit?~ */ DO ~SetGlobal("DORN_ROMANCE_FIGHT","GLOBAL",-1)
~ GOTO 1335
  IF ~~ THEN REPLY #230576 /* ~Thanks for sparing me the effort of doing that myself.~ */ DO ~SetGlobal("DORN_ROMANCE_FIGHT","GLOBAL",-1)
~ GOTO 1336
  IF ~~ THEN REPLY #230577 /* ~I'll do the same to anyone talking behind my back—including you, Dorn.~ */ DO ~SetGlobal("DORN_ROMANCE_FIGHT","GLOBAL",-1)
~ GOTO 1337
END

IF ~~ THEN BEGIN 1335 // from: 1334.0
  SAY #230578 /* ~I do not tolerate disrespect from inferiors. Neither should you.~ [DNR152] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1336 // from: 1334.1
  SAY #230579 /* ~It was a pleasure. If you need more killings, you have but to say the word.~ [DNR153] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1337 // from: 1334.2
  SAY #230580 /* ~I would expect no less. Mercy breeds contempt.~ [DNR154] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1338 // from:
  SAY #231878 /* ~Silence yourself, mageling. He is not to be trusted. Drow! Speak your name.~ [DN_31878] */
  IF ~~ THEN EXTERN ~BAELOTH~ 6
END

IF ~~ THEN BEGIN 1339 // from:
  SAY #232161 /* ~And yet, it is you that I fear treachery from the least.~ */
  IF ~~ THEN GOTO 1279
  IF ~  InParty("DYNAHEIR")
~ THEN EXTERN ~DYNAHJ~ 14
  IF ~  InParty("IMOEN2")
~ THEN EXTERN ~IMOEN2J~ 184
  IF ~  InParty("KHALID")
~ THEN EXTERN ~KHALIJ~ 9
  IF ~  InParty("MINSC")
~ THEN EXTERN ~MINSCJ~ 300
  IF ~  InParty("ALORA")
~ THEN EXTERN ~ALORAJ~ 5
  IF ~  InParty("CORAN")
~ THEN EXTERN ~CORANJ~ 12
  IF ~  InParty("KIVAN")
~ THEN EXTERN ~KIVANJ~ 8
  IF ~  InParty("XAN")
~ THEN EXTERN ~XANJ~ 7
  IF ~  InParty("BRANWEN")
~ THEN EXTERN ~BRANWJ~ 5
  IF ~  InParty("FALDORN")
~ THEN EXTERN ~FALDOJ~ 4
  IF ~  InParty("JAHEIRA")
~ THEN EXTERN ~JAHEIRAJ~ 618
  IF ~  InParty("SKIE")
~ THEN EXTERN ~SKIEJ~ 7
  IF ~  InParty("GARRICK")
~ THEN EXTERN ~GARRIJ~ 6
  IF ~  InParty("QUAYLE")
~ THEN EXTERN ~QUAYLJ~ 4
  IF ~  InParty("SAFANA")
~ THEN EXTERN ~SAFANJ~ 11
  IF ~  InParty("EDWIN")
~ THEN EXTERN ~EDWINJ~ 253
  IF ~  InParty("KAGAIN")
~ THEN EXTERN ~KAGAIJ~ 10
  IF ~  InParty("ELDOTH")
~ THEN EXTERN ~ELDOTJ~ 19
  IF ~  InParty("MONTARON")
~ THEN EXTERN ~MONTAJ~ 9
  IF ~  InParty("VICONIA")
~ THEN EXTERN ~VICONIJ~ 501
  IF ~  InParty("SHARTEEL")
~ THEN EXTERN ~SHARTJ~ 10
  IF ~  InParty("TIAX")
~ THEN EXTERN ~TIAXJ~ 8
  IF ~  InParty("XZAR")
~ THEN EXTERN ~XZARJ~ 10
  IF ~  InParty("RASAAD")
~ THEN EXTERN ~RASAADJ~ 1163
  IF ~  InParty("NEERA")
~ THEN EXTERN ~NEERAJ~ 857
END

IF ~~ THEN BEGIN 1340 // from:
  SAY #232163 /* ~What of your god, dwarf? Surely Moradin takes exception to me? Surely he has whispered for you to deal with me in some way?~ */
  IF ~~ THEN GOTO 1279
  IF ~  InParty("DYNAHEIR")
~ THEN EXTERN ~DYNAHJ~ 14
  IF ~  InParty("IMOEN2")
~ THEN EXTERN ~IMOEN2J~ 184
  IF ~  InParty("KHALID")
~ THEN EXTERN ~KHALIJ~ 9
  IF ~  InParty("MINSC")
~ THEN EXTERN ~MINSCJ~ 300
  IF ~  InParty("ALORA")
~ THEN EXTERN ~ALORAJ~ 5
  IF ~  InParty("CORAN")
~ THEN EXTERN ~CORANJ~ 12
  IF ~  InParty("KIVAN")
~ THEN EXTERN ~KIVANJ~ 8
  IF ~  InParty("XAN")
~ THEN EXTERN ~XANJ~ 7
  IF ~  InParty("BRANWEN")
~ THEN EXTERN ~BRANWJ~ 5
  IF ~  InParty("FALDORN")
~ THEN EXTERN ~FALDOJ~ 4
  IF ~  InParty("JAHEIRA")
~ THEN EXTERN ~JAHEIRAJ~ 618
  IF ~  InParty("SKIE")
~ THEN EXTERN ~SKIEJ~ 7
  IF ~  InParty("GARRICK")
~ THEN EXTERN ~GARRIJ~ 6
  IF ~  InParty("QUAYLE")
~ THEN EXTERN ~QUAYLJ~ 4
  IF ~  InParty("SAFANA")
~ THEN EXTERN ~SAFANJ~ 11
  IF ~  InParty("EDWIN")
~ THEN EXTERN ~EDWINJ~ 253
  IF ~  InParty("KAGAIN")
~ THEN EXTERN ~KAGAIJ~ 10
  IF ~  InParty("ELDOTH")
~ THEN EXTERN ~ELDOTJ~ 19
  IF ~  InParty("MONTARON")
~ THEN EXTERN ~MONTAJ~ 9
  IF ~  InParty("VICONIA")
~ THEN EXTERN ~VICONIJ~ 501
  IF ~  InParty("SHARTEEL")
~ THEN EXTERN ~SHARTJ~ 10
  IF ~  InParty("TIAX")
~ THEN EXTERN ~TIAXJ~ 8
  IF ~  InParty("XZAR")
~ THEN EXTERN ~XZARJ~ 10
  IF ~  InParty("RASAAD")
~ THEN EXTERN ~RASAADJ~ 1163
  IF ~  InParty("NEERA")
~ THEN EXTERN ~NEERAJ~ 857
  IF ~  InParty("BAELOTH")
~ THEN EXTERN ~BAELOTHJ~ 9
END

IF ~~ THEN BEGIN 1341 // from:
  SAY #232165 /* ~And yet, horrifying acts have been performed under the mask of a white robe and a divine symbol. I trust you least of all, boy.~ */
  IF ~~ THEN GOTO 1279
  IF ~  InParty("DYNAHEIR")
~ THEN EXTERN ~DYNAHJ~ 14
  IF ~  InParty("IMOEN2")
~ THEN EXTERN ~IMOEN2J~ 184
  IF ~  InParty("KHALID")
~ THEN EXTERN ~KHALIJ~ 9
  IF ~  InParty("MINSC")
~ THEN EXTERN ~MINSCJ~ 300
  IF ~  InParty("ALORA")
~ THEN EXTERN ~ALORAJ~ 5
  IF ~  InParty("CORAN")
~ THEN EXTERN ~CORANJ~ 12
  IF ~  InParty("KIVAN")
~ THEN EXTERN ~KIVANJ~ 8
  IF ~  InParty("XAN")
~ THEN EXTERN ~XANJ~ 7
  IF ~  InParty("BRANWEN")
~ THEN EXTERN ~BRANWJ~ 5
  IF ~  InParty("FALDORN")
~ THEN EXTERN ~FALDOJ~ 4
  IF ~  InParty("JAHEIRA")
~ THEN EXTERN ~JAHEIRAJ~ 618
  IF ~  InParty("SKIE")
~ THEN EXTERN ~SKIEJ~ 7
  IF ~  InParty("GARRICK")
~ THEN EXTERN ~GARRIJ~ 6
  IF ~  InParty("QUAYLE")
~ THEN EXTERN ~QUAYLJ~ 4
  IF ~  InParty("SAFANA")
~ THEN EXTERN ~SAFANJ~ 11
  IF ~  InParty("EDWIN")
~ THEN EXTERN ~EDWINJ~ 253
  IF ~  InParty("KAGAIN")
~ THEN EXTERN ~KAGAIJ~ 10
  IF ~  InParty("ELDOTH")
~ THEN EXTERN ~ELDOTJ~ 19
  IF ~  InParty("MONTARON")
~ THEN EXTERN ~MONTAJ~ 9
  IF ~  InParty("VICONIA")
~ THEN EXTERN ~VICONIJ~ 501
  IF ~  InParty("SHARTEEL")
~ THEN EXTERN ~SHARTJ~ 10
  IF ~  InParty("TIAX")
~ THEN EXTERN ~TIAXJ~ 8
  IF ~  InParty("XZAR")
~ THEN EXTERN ~XZARJ~ 10
  IF ~  InParty("RASAAD")
~ THEN EXTERN ~RASAADJ~ 1163
  IF ~  InParty("NEERA")
~ THEN EXTERN ~NEERAJ~ 857
  IF ~  InParty("BAELOTH")
~ THEN EXTERN ~BAELOTHJ~ 9
  IF ~  InParty("YESLICK")
~ THEN EXTERN ~YESLIJ~ 9
END

IF ~~ THEN BEGIN 1342 // from:
  SAY #228392 /* ~Hrmm. You shouldn't make a habit of committing mistakes like this. They add up. If you change your mind, I shall be at the Friendly Arm Inn.~ [DN29] */
  IF ~~ THEN DO ~LeaveParty()
ReputationInc(2)
ActionOverride("DORN",ChangeAIScript("DORN_",OVERRIDE))
SetGlobal("DORNPARTY","GLOBAL",0)
EscapeAreaMove("BG2301",1132,727,S)
~ JOURNAL #230817 /* ~Good Riddance to Bad Rubbish
I have dismissed Dorn from traveling with me for the time being. Despite his complaints, he announced his intention to return to the Friendly Arm Inn. Perhaps in the future I can recruit him there if I need his particular talents.~ */ EXIT
END

IF ~~ THEN BEGIN 1343 // from:
  SAY #246011 /* ~No mercy for the pawns of Sarevok! Cut them down, every one!~ [BD46011] */
  IF ~~ THEN DO ~AddJournalEntry(266638,QUEST)
SetGlobal("bd_porios_plot","bd0120",2)
ActionOverride("bdporios",Enemy())
Attack("bdporios")
~ EXIT
END

IF ~~ THEN BEGIN 1344 // from:
  SAY #246120 /* ~I will paint the walls crimson with their blood!~ */
  IF ~~ THEN EXTERN ~BDMUMMY~ 13
  IF ~  IsValidForPartyDialogue("DYNAHEIR")
~ THEN EXTERN ~DYNAHJ~ 22
END

IF ~~ THEN BEGIN 1345 // from:
  SAY #246122 /* ~Your reluctance to see enemy blood shed concerns me. There can be but one reward for standing against Dorn Il-Khan, and that is death.~ */
  IF ~~ THEN EXTERN ~BDMUMMY~ 13
END

IF ~~ THEN BEGIN 1346 // from:
  SAY #246163 /* ~<CHARNAME> is correct. There can be no mercy for those who stand in our way.~ */
  IF ~~ THEN EXTERN ~DYNAHJ~ 26
END

IF ~~ THEN BEGIN 1347 // from:
  SAY #264261 /* ~But it is a sensible act.~ */
  IF ~~ THEN EXTERN ~BDKHARMY~ 7
END

IF ~~ THEN BEGIN 1348 // from:
  SAY #246645 /* ~Just say the word...~ */
  IF ~~ THEN EXTERN ~BDTHIRRI~ 12
END

IF ~~ THEN BEGIN 1349 // from:
  SAY #246688 /* ~For children, perhaps. The strong do not wait to see how things play out—they decide what they want, then make it happen.~ */
  IF ~~ THEN EXTERN ~RASAADJ~ 1265
END

IF ~~ THEN BEGIN 1350 // from:
  SAY #246690 /* ~Tell it to your nursemaid, boy. I'll not listen to such drivel.~ */
  IF ~  TimeOfDay(DAY)
~ THEN EXTERN ~BDELANDR~ 19
  IF ~  TimeOfDay(NIGHT)
~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("bdc208a",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 1351 // from:
  SAY #246725 /* ~You can be calm or I can soothe your troubled heart permanently. The choice is yours.~ */
  IF ~~ THEN EXTERN ~BDELANDR~ 22
END

IF ~~ THEN BEGIN 1352 // from:
  SAY #249532 /* ~Don't lie to the boy, <CHARNAME>. The truth is harsh, but it will serve him better than empty platitudes.~ */
  IF ~~ THEN EXTERN ~BDSENDER~ 10
END

IF ~~ THEN BEGIN 1353 // from:
  SAY #252477 /* ~If she doesn't, I will.~ */
  IF ~~ THEN EXTERN ~BDKRUNTU~ 10
END

IF ~~ THEN BEGIN 1354 // from:
  SAY #250815 /* ~That dog's constant yapping grates on me. Begone, cur!~ */
  IF ~~ THEN EXTERN ~BDDOGW01~ 4
END

IF ~~ THEN BEGIN 1355 // from:
  SAY #250553 /* ~Watch your words, human, lest I feed them to you.~ */
  IF ~~ THEN EXTERN ~BDOTILDA~ 14
END

IF ~~ THEN BEGIN 1356 // from:
  SAY #250596 /* ~You do not trust the <PRO_RACE>. I can't fault you for that. But we are bound by blood. Tell me your tale.~ */
  IF ~~ THEN EXTERN ~BDKAVA~ 10
END

IF ~~ THEN BEGIN 1357 // from:
  SAY #250652 /* ~I trust these inferior creatures no more than you, brother, but you would do well to stay on <CHARNAME>'s good side. Tell <PRO_HIMHER> what <PRO_HESHE> wants to know.~ */
  IF ~~ THEN EXTERN ~BDREND~ 8
END

IF ~~ THEN BEGIN 1358 // from:
  SAY #247476 /* ~Respect your betters, crusader.~ */
  IF ~~ THEN EXTERN ~BDLEOPAS~ 3
END

IF ~~ THEN BEGIN 1359 // from:
  SAY #247496 /* ~Finally, sanity prevails. Let us be on our way.~ */
  IF ~~ THEN EXTERN ~BDLEOPAS~ 11
END

IF ~~ THEN BEGIN 1360 // from:
  SAY #247537 /* ~The truth, worm. Give it to us, or no god in the heavens or Toril will save you from my wrath!~ */
  IF ~~ THEN EXTERN ~BDCORINT~ 11
  IF ~  IsValidForPartyDialogue("Glint")
~ THEN EXTERN ~BDGLINTJ~ 62
END

IF ~~ THEN BEGIN 1361 // from:
  SAY #247544 /* ~Or don't, and I'll see you suffer in ways you never imagined.~ */
  IF ~  CheckStatGT(Player1,17,CHR)
~ THEN EXTERN ~BDCORINT~ 8
  IF ~  !CheckStatGT(Player1,17,CHR)
~ THEN EXTERN ~BDCORINT~ 11
END

IF ~~ THEN BEGIN 1362 // from:
  SAY #247653 /* ~I do not care for what you're implying. Watch yourself, woman.~ */
  IF ~~ THEN EXTERN ~BDRAVOC~ 1
END

IF ~~ THEN BEGIN 1363 // from:
  SAY #252386 /* ~Got resurrected four times. When I slay someone, I prefer they remain dead.~ */
  IF ~~ THEN EXTERN ~BDCORWIJ~ 82
END

IF ~~ THEN BEGIN 1364 // from:
  SAY #252387 /* ~Killing a man who doesn't stay dead is nothing to celebrate.~ */
  IF ~~ THEN EXTERN ~BDCORWIJ~ 82
END

IF ~~ THEN BEGIN 1365 // from:
  SAY #252098 /* ~You do yourself a disservice, living in bondage to an organization that cares nothing for you.~ */
  IF ~~ THEN EXTERN ~BDCORWIJ~ 94
  IF ~  IsValidForPartyDialogue("Glint")
~ THEN EXTERN ~BDGLINTJ~ 65
END

IF ~~ THEN BEGIN 1366 // from:
  SAY #252100 /* ~Keep talking, gnome. You'll miss it after I rip your tongue from your mouth.~ */
  IF ~~ THEN EXTERN ~BDCORWIJ~ 94
END

IF ~~ THEN BEGIN 1367 // from:
  SAY #236416 /* ~My patience is wearing thin, <CHARNAME>. My patron demands blood—and soon.~ [BD36416] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1368 // from:
  SAY #262127 /* ~It will take more than this stench to turn Dorn Il-Khan from his path.~ */
  IF ~~ THEN EXTERN ~BDDYINGM~ 3
END

IF ~~ THEN BEGIN 1369 // from:
  SAY #262131 /* ~It will take more than some rotting fungus to turn Dorn Il-Khan from his chosen path.~ */
  IF ~  !IsValidForPartyDialogue("EDWIN")
~ THEN EXTERN ~JAHEIRAJ~ 660
  IF ~  IsValidForPartyDialogue("EDWIN")
~ THEN EXTERN ~EDWINJ~ 321
END

IF ~~ THEN BEGIN 1370 // from:
  SAY #240063 /* ~I like you, <CHARNAME>.~ */
  IF ~~ THEN EXTERN ~BDBSENT1~ 2
END

IF ~~ THEN BEGIN 1371 // from:
  SAY #259501 /* ~As sheep matter to wolves.~ */
  IF ~~ THEN EXTERN ~BDQING~ 2
END

IF ~~ THEN BEGIN 1372 // from:
  SAY #251525 /* ~When my patron speaks to me, I feel his voice in the marrow of my bones.~ */
  IF ~~ THEN EXTERN ~BDKJARVA~ 6
END

IF ~~ THEN BEGIN 1373 // from:
  SAY #258795 /* ~There are times fists can be more persuasive than words.~ */
  IF ~~ THEN EXTERN ~BDDENELD~ 45
  IF ~  IsValidForPartyDialogue("corwin")
~ THEN EXTERN ~BDCORWIJ~ 321
END

IF ~~ THEN BEGIN 1374 // from:
  SAY #241085 /* ~That one cuts an impressive figure, for an ogre. He could best both the other two together. ~ */
  IF ~~ THEN EXTERN ~BDMURS~ 3
END

IF ~~ THEN BEGIN 1375 // from:
  SAY #241087 /* ~That is a FEMALE ogre? ...Interesting. ~ */
  IF ~~ THEN EXTERN ~BDARBING~ 1
END

IF ~~ THEN BEGIN 1376 // from:
  SAY #260123 /* ~Stain the earth crimson with ogre blood!~ */
  IF ~~ THEN DO ~SetGlobal("BD_AllOgresHostile","MYAREA",1)
~ EXIT
END

IF ~~ THEN BEGIN 1377 // from:
  SAY #240331 /* ~Let them hang. Their plight is no concern of ours.~ */
  IF ~~ THEN EXTERN ~BDPCRUS~ 1
END

IF ~~ THEN BEGIN 1378 // from:
  SAY #260784 /* ~Let me teach them, <CHARNAME>. They'll quickly learn the folly of their ways and I promise you, they'll never repeat them.~ */
  IF ~~ THEN EXTERN ~BDDAGF21~ 24
END

IF ~~ THEN BEGIN 1379 // from:
  SAY #237453 /* ~Humility. Feh.~ [BD37453] */
  IF ~~ THEN EXTERN ~BDNEDERL~ 2
END

IF ~~ THEN BEGIN 1380 // from:
  SAY #237474 /* ~The lazy remember only that which is most convenient.~ [BD37474] */
  IF ~~ THEN EXTERN ~BDNEDERL~ 15
  IF ~  IsValidForPartyDialogue("VOGHILN")
~ THEN EXTERN ~BDVOGHIJ~ 21
END

IF ~~ THEN BEGIN 1381 // from:
  SAY #237481 /* ~Crusade, Flaming Fist, Shadow Thieves, Harpers, Zhentarim... I care not who is in service to what. Anyone fool enough to stand against me and mine will taste my steel.~ [BD37481] */
  IF ~~ THEN EXTERN ~BDNEDERL~ 15
END

IF ~~ THEN BEGIN 1382 // from:
  SAY #237531 /* ~To lead, one must instill fear in one's followers. They must know insubordination will cost them more than any enemy ever could.~ [BD37531] */
  IF ~~ THEN EXTERN ~BDDELANC~ 8
END

IF ~~ THEN BEGIN 1383 // from:
  SAY #237535 /* ~Decorum is for nobles and their toadies. We're here to slay the Shining Lady, not enjoy a fine dinner with her.~ [BD37535] */
  IF ~~ THEN EXTERN ~BDDELANC~ 7
END

IF ~~ THEN BEGIN 1384 // from:
  SAY #260889 /* ~Well said, <CHARNAME>. An adversary's destruction is its own reward. If it yields useful information, so much the better.~ [BD60889] */
  IF ~~ THEN EXTERN ~BDSTONEH~ 18
END

IF ~~ THEN BEGIN 1385 // from:
  SAY #237568 /* ~You show the enemy mercy. They would not do the same.~ [BD37568] */
  IF ~~ THEN EXTERN ~BDDELANC~ 25
  IF ~  IsValidForPartyDialogue("RASAAD")
~ THEN EXTERN ~RASAADJ~ 1275
END

IF ~~ THEN BEGIN 1386 // from:
  SAY #237570 /* ~"Friend"? You go too far, monk.~ [BD37570] */
  IF ~~ THEN EXTERN ~BDDELANC~ 25
END

IF ~~ THEN BEGIN 1387 // from:
  SAY #243972 /* ~You gather correctly.~ [BD43972] */
  IF ~~ THEN EXTERN ~BDNEDERL~ 36
END

IF ~~ THEN BEGIN 1388 // from:
  SAY #243978 /* ~You are too kind, Selûnite. Too kind by far.~ [BD43978] */
  IF ~~ THEN EXTERN ~BDNEDERL~ 36
END

IF ~~ THEN BEGIN 1389 // from:
  SAY #244043 /* ~There's but one way to ensure that doesn't happen—if it's not already too late.~ [BD44043] */
  IF ~~ THEN EXTERN ~BDCORWIJ~ 152
END

IF ~~ THEN BEGIN 1390 // from:
  SAY #244110 /* ~We've better things to do than watch over you, you indolent trollop. Return to the camp.~ [BD44110] */
  IF ~~ THEN EXTERN ~BDSKIE~ 41
END

IF ~~ THEN BEGIN 1391 // from:
  SAY #237815 /* ~Go into the light, lackey of Caelar!~ [BD37815] */
  IF ~~ THEN DO ~SetGlobal("bd_plot","global",350)
ActionOverride("bdbelben",Enemy())
ActionOverride("bdbelben",Shout(ASSIST))
~ EXIT
END

IF ~~ THEN BEGIN 1392 // from:
  SAY #250383 /* ~DEAD water mephit!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1393 // from:
  SAY #237844 /* ~Know that it was Dorn Il-Khan, servant of Ur-Gothoz, who cast you into the infernal pit!~ [BD37844] */
  IF ~~ THEN EXTERN ~BDVOICE~ 5
END

IF ~~ THEN BEGIN 1394 // from:
  SAY #237855 /* ~Die for your Shining Lady, pawns of Caelar!~ [BD37855] */
  IF ~~ THEN DO ~ActionOverride("bdhepher",Enemy())
ActionOverride("bdesseri",Enemy())
ActionOverride("bdolvena",Enemy())
ActionOverride("bdhepher",GlobalShout(125))
~ EXIT
END

IF ~~ THEN BEGIN 1395 // from:
  SAY #238663 /* ~When next you see my banner, it will be at the head of the army that marches on you. For righteousness. For justice.~ [BD38663] */
  IF ~~ THEN EXTERN ~BDDELANC~ 47
END

IF ~~ THEN BEGIN 1396 // from:
  SAY #260460 /* ~The foul creature has no chance—my blade thirsts for orog blood!~ [BD60460] */
  IF ~~ THEN EXTERN ~BDGRIMGO~ 3
END

IF ~~ THEN BEGIN 1397 // from:
  SAY #261335 /* ~I'll take care of this. It's been too long since I last tore an imbecile head from its lackwit body.~ [BD61335] */
  IF ~~ THEN EXTERN ~BDHELDMO~ 4
END

IF ~~ THEN BEGIN 1398 // from:
  SAY #244218 /* ~I'll be with them. That is better than the fickle blessing of the gods.~ [BD44218] */
  IF ~~ THEN EXIT
  IF ~  Global("bd_mdd1247_journal","bd4000",0)
~ THEN DO ~SetGlobal("bd_mdd1247_journal","bd4000",1)
AddJournalEntry(266147,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 1399 // from:
  SAY #262268 /* ~Cease your whining, <CHARNAME>. Caelar's soldiers fall before us. 'Tis a glorious battle! Onward!~ [BD62268] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1400 // from:
  SAY #238750 /* ~What have you brought me to, <CHARNAME>? This is not the Hell for Dorn Il-Khan.~ [BD38750] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1401 // from:
  SAY #238774 /* ~Yes! Tear them wing from limb!~ [BD38774] */
  IF ~~ THEN EXTERN ~BDILLARU~ 2
END

IF ~~ THEN BEGIN 1402 // from:
  SAY #265408 /* ~It is the nature of sheep to follow their shepherd, no matter that she leads them to their doom.~ [BD65408] */
  IF ~~ THEN EXTERN ~BDDARNAS~ 5
END

IF ~~ THEN BEGIN 1403 // from:
  SAY #239823 /* ~Yes. Most amusing.~ [BD39823] */
  IF ~  RandomNum(4,1)
~ THEN EXTERN ~BDTHRIX~ 50
  IF ~  RandomNum(4,2)
~ THEN EXTERN ~BDTHRIX~ 51
  IF ~  RandomNum(4,3)
~ THEN EXTERN ~BDTHRIX~ 52
  IF ~  RandomNum(4,4)
~ THEN EXTERN ~BDTHRIX~ 53
  IF ~  !Global("BD_NumInParty","bd4500",1)
!Global("BD_NumInParty","bd4500",2)
!Global("BD_NumInParty","bd4500",3)
!Global("BD_NumInParty","bd4500",4)
~ THEN EXTERN ~BDTHRIX~ 114
END

IF ~~ THEN BEGIN 1404 // from:
  SAY #238882 /* ~Die at OUR hands.~ */
  IF ~~ THEN EXTERN ~BDTHRIX~ 12
END

IF ~~ THEN BEGIN 1405 // from:
  SAY #239009 /* ~There is but one master Dorn Il-Khan will kneel before. Ur-Gothoz! Guide my hand in destroying this devil who dares command your servant!~ [BD39009] */
  IF ~~ THEN DO ~SetGlobal("bd_thrix_won","global",1)
~ EXTERN ~BDTHRIX~ 140
END

IF WEIGHT #95 ~  Global("BD_Sacrifice_Dorn","bd4500",1)
~ THEN BEGIN 1406 // from:
  SAY #239073 /* ~You tossed me to that devil like a piece of meat before a rabid dog. Explain yourself.~ [BD39073] */
  IF ~  !Global("bd_thrix_mark_dorn","global",1)
OR(2)
CheckStatGT(Player1,16,STR)
CheckStatGT(Player1,15,CHR)
~ THEN REPLY #239074 /* ~I made a mistake, I see that now. I know you'll not accept an apology, so I'll not insult you by offering one. Just know that I'll take more care in the future.~ */ DO ~SetGlobal("BD_Sacrifice_Dorn","bd4500",3)
~ GOTO 1407
  IF ~  Global("bd_thrix_mark_dorn","global",1)
OR(2)
CheckStatGT(Player1,16,STR)
CheckStatGT(Player1,15,CHR)
~ THEN REPLY #239074 /* ~I made a mistake, I see that now. I know you'll not accept an apology, so I'll not insult you by offering one. Just know that I'll take more care in the future.~ */ DO ~SetGlobal("BD_Sacrifice_Dorn","bd4500",3)
~ GOTO 1411
  IF ~  !Global("bd_thrix_mark_dorn","global",1)
CheckStatLT(Player1,17,STR)
CheckStatLT(Player1,16,CHR)
~ THEN REPLY #239074 /* ~I made a mistake, I see that now. I know you'll not accept an apology, so I'll not insult you by offering one. Just know that I'll take more care in the future.~ */ DO ~SetGlobal("BD_Sacrifice_Dorn","bd4500",3)
~ GOTO 1408
  IF ~  Global("bd_thrix_mark_dorn","global",1)
CheckStatLT(Player1,17,STR)
CheckStatLT(Player1,16,CHR)
~ THEN REPLY #239074 /* ~I made a mistake, I see that now. I know you'll not accept an apology, so I'll not insult you by offering one. Just know that I'll take more care in the future.~ */ DO ~SetGlobal("BD_Sacrifice_Dorn","bd4500",3)
~ GOTO 1411
  IF ~  !Global("bd_thrix_mark_dorn","global",1)
Global("BD_Thrix_riddle_lost","GLOBAL",1)
~ THEN REPLY #239075 /* ~Do you really think I was going to let that devil take you, Dorn? Really?~ */ DO ~SetGlobal("BD_Sacrifice_Dorn","bd4500",3)
~ GOTO 1409
  IF ~  Global("bd_thrix_mark_dorn","global",1)
Global("BD_Thrix_riddle_lost","GLOBAL",1)
~ THEN REPLY #239075 /* ~Do you really think I was going to let that devil take you, Dorn? Really?~ */ DO ~SetGlobal("BD_Sacrifice_Dorn","bd4500",3)
~ GOTO 1411
  IF ~  !Global("bd_thrix_mark_dorn","global",1)
Global("BD_Thrix_riddle_won","GLOBAL",1)
~ THEN REPLY #239075 /* ~Do you really think I was going to let that devil take you, Dorn? Really?~ */ DO ~SetGlobal("BD_Sacrifice_Dorn","bd4500",3)
~ GOTO 1410
  IF ~  Global("bd_thrix_mark_dorn","global",1)
Global("BD_Thrix_riddle_won","GLOBAL",1)
~ THEN REPLY #239075 /* ~Do you really think I was going to let that devil take you, Dorn? Really?~ */ DO ~SetGlobal("BD_Sacrifice_Dorn","bd4500",3)
~ GOTO 1411
  IF ~  !Global("bd_thrix_mark_dorn","global",1)
Global("BD_Thrix_riddle_lost","GLOBAL",1)
~ THEN REPLY #239076 /* ~You're no fool, half-orc. Figure it out for yourself.~ */ DO ~SetGlobal("BD_Sacrifice_Dorn","bd4500",3)
~ GOTO 1409
  IF ~  Global("bd_thrix_mark_dorn","global",1)
Global("BD_Thrix_riddle_lost","GLOBAL",1)
~ THEN REPLY #239076 /* ~You're no fool, half-orc. Figure it out for yourself.~ */ DO ~SetGlobal("BD_Sacrifice_Dorn","bd4500",3)
~ GOTO 1411
  IF ~  !Global("bd_thrix_mark_dorn","global",1)
Global("BD_Thrix_riddle_won","GLOBAL",1)
~ THEN REPLY #239076 /* ~You're no fool, half-orc. Figure it out for yourself.~ */ DO ~SetGlobal("BD_Sacrifice_Dorn","bd4500",3)
~ GOTO 1410
  IF ~  Global("bd_thrix_mark_dorn","global",1)
Global("BD_Thrix_riddle_won","GLOBAL",1)
~ THEN REPLY #239076 /* ~You're no fool, half-orc. Figure it out for yourself.~ */ DO ~SetGlobal("BD_Sacrifice_Dorn","bd4500",3)
~ GOTO 1411
END

IF ~~ THEN BEGIN 1407 // from: 1406.0
  SAY #239077 /* ~See that you do. I promise the next lapse in judgment you have will be your last.~ [BD39077] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1408 // from: 1406.2
  SAY #239078 /* ~You have no future, traitor!~ [BD39078] */
  IF ~~ THEN DO ~DestroyAllFragileEquipment(ADAMANTINE)
LeaveParty()
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 1409 // from: 1406.8 1406.4
  SAY #239079 /* ~You played Thrix's game to quicken your progress, and having lost the bet, you knew you couldn't afford to lose me. Yes, I see it now. I would have done the same. Very well, then. The Shining Witch still lives. Let us find her and rectify that situation.~ [BD39079] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1410 // from: 1406.10 1406.6
  SAY #239080 /* ~You played Thrix's game hoping to hasten our progress, and you were successful in that. But you knew you couldn't afford to lose me; you never intended to honor the agreement if it did not serve your purpose. Yes, I see it now. I would have done the same. Very well, then. Caelar still lives—a situation I would see rectified sooner than later.~ [BD39080] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1411 // from: 1406.11 1406.9 1406.7 1406.5 1406.3 1406.1
  SAY #269995 /* ~My soul is already spoken for. This fiend will gain nothing from me, and when he comes for me, I will tear him to pieces. You may share in the bloodshed if you still travel with me.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1412 // from:
  SAY #239229 /* ~I would have.~ [BD39229] */
  IF ~~ THEN EXTERN ~BDAUN~ 16
  IF ~  IsValidForPartyDialogue("VOGHILN")
~ THEN EXTERN ~BDVOGHIJ~ 43
END

IF ~~ THEN BEGIN 1413 // from:
  SAY #239286 /* ~I mislike this place; a different Hell awaits me. Let us return to Dragonspear.~ [BD39286] */
  IF ~~ THEN EXTERN ~BDAUN~ 30
END

IF ~~ THEN BEGIN 1414 // from:
  SAY #239334 /* ~The portal is closed. Let's get that vault door open. I would speak with Torsin de Lancie about his decision to lock me in here with the hordes of the Hells.~ [BD39334] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1415 // from:
  SAY #239406 /* ~I see I was not the only one who found the wench's incessant whining grating. Even so, I'm glad you struck the killing blow. I've had my fill of cages.~ [BD39406] */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1416 // from:
  SAY #248295 /* ~At last, a sensible solution.~ */
  IF ~~ THEN EXTERN ~BDDOSIA~ 20
END

IF ~~ THEN BEGIN 1417 // from:
  SAY #240131 /* ~The drow is right. These creatures' fates mean nothing. Let's move on.~ */
  IF ~~ THEN EXTERN ~BDCHORST~ 0
END

IF ~~ THEN BEGIN 1418 // from:
  SAY #240962 /* ~An honor they have in no way earned. ~ */
  IF ~~ THEN EXTERN ~BDJAMVEN~ 15
END

IF ~~ THEN BEGIN 1419 // from:
  SAY #240693 /* ~It seems the sahuagin have fled. I'll have to find something else to eat.~ */
  IF ~~ THEN DO ~Kill("bdgfguax")
~ EXIT
  IF ~  IsValidForPartyDialogue("neera")
~ THEN EXTERN ~NEERAJ~ 944
END

IF ~~ THEN BEGIN 1420 // from:
  SAY #240701 /* ~Yes. A gloriously bloody slaughter, from the looks of it.~ */
  IF ~~ THEN DO ~Kill("bdgfguax")
~ EXIT
  IF ~  IsValidForPartyDialogue("mkhiin")
~ THEN EXTERN ~BDMKHIIJ~ 125
END

IF ~~ THEN BEGIN 1421 // from:
  SAY #240265 /* ~Are we laborers now, that we should waste our time slinging sacks of grain about?~ */
  IF ~~ THEN EXTERN ~BDLADLE~ 26
  IF ~  IsValidForPartyDialogue("SAFANA")
~ THEN EXTERN ~SAFANJ~ 130
END

IF WEIGHT #96 ~  Global("bd_DornRomance1","GLOBAL",1)
~ THEN BEGIN 1422 // from:
  SAY #254159 /* ~It is good to be out of that accursed cage. I've a knot in my back I'll feel for weeks. ~ */
  IF ~~ THEN REPLY #254160 /* ~What were you thinking, attacking all those people?~ */ DO ~SetGlobal("bd_DornRomance1","GLOBAL",2)
~ GOTO 1423
  IF ~~ THEN REPLY #254161 /* ~A back rub would do wonders for you.~ */ DO ~SetGlobal("bd_DornRomance1","GLOBAL",2)
~ GOTO 1424
  IF ~~ THEN REPLY #254162 /* ~I've no time for whining.~ */ DO ~SetGlobal("bd_DornRomance1","GLOBAL",2)
~ GOTO 1425
END

IF ~~ THEN BEGIN 1423 // from: 1427.2 1425.0 1424.0 1422.0
  SAY #254163 /* ~I attacked a single person. Regrettably, I was made to attack him while he addressed near everyone in the camp. ~ */
  IF ~~ THEN REPLY #254164 /* ~What do you mean you were "made to" attack him?~ */ GOTO 1426
  IF ~~ THEN REPLY #254165 /* ~Why did you attack anyone?~ */ GOTO 1426
  IF ~~ THEN REPLY #254166 /* ~I've no time for whining.~ */ GOTO 1425
END

IF ~~ THEN BEGIN 1424 // from: 1425.1 1422.1
  SAY #254167 /* ~I am not some child to be coddled. ~ */
  IF ~~ THEN REPLY #254168 /* ~Forget I said anything. Why don't you tell me why you attacked all those people?~ */ GOTO 1423
  IF ~~ THEN REPLY #254169 /* ~That's not what I meant.~ */ GOTO 1427
  IF ~~ THEN REPLY #254170 /* ~Don't take that tone with me. Remember which of us was caged up like a dog.~ */ GOTO 1425
END

IF ~~ THEN BEGIN 1425 // from: 1426.2 1424.2 1423.2 1422.2
  SAY #254171 /* ~I'll let that pass. Count yourself lucky you freed me, <CHARNAME>. I would not be so lenient with another. ~ */
  IF ~~ THEN REPLY #254172 /* ~My words were careless. Tell me, why did you attack all those people?~ */ GOTO 1423
  IF ~~ THEN REPLY #254173 /* ~You seem awfully tense, Dorn. Perhaps you could use a backrub?~ */ GOTO 1424
  IF ~~ THEN REPLY #254174 /* ~Attack me and you'll be back in that cage before you can blink. Enough talk. Let's get moving.~ */ GOTO 1433
END

IF ~~ THEN BEGIN 1426 // from: 1423.1 1423.0
  SAY #254175 /* ~I was tasked with eliminating Hormorn, a priest of Caelar, as he performed the crusade's so-called ritual of Enlightenment, I was not told the ritual involved nearly every crusader in a ten-mile radius. ~ */
  IF ~~ THEN REPLY #254176 /* ~Then why did you do it?~ */ GOTO 1428
  IF ~~ THEN REPLY #254177 /* ~Not the easiest task in the world. But you tried anyway?~ */ GOTO 1428
  IF ~~ THEN REPLY #254178 /* ~Enough of your inane chatter. We need to move on.~ */ GOTO 1425
END

IF ~~ THEN BEGIN 1427 // from: 1424.1
  SAY #254179 /* ~Then what did you mean? ~ */
  IF ~~ THEN REPLY #254180 /* ~I trust you'll figure it out, in time.~ */ GOTO 1433
  IF ~~ THEN REPLY #254181 /* ~You. And I. Together. Alone. Massage.~ */ GOTO 1434
  IF ~~ THEN REPLY #254182 /* ~It matters not. Why did you attack the crusade?~ */ GOTO 1423
END

IF ~~ THEN BEGIN 1428 // from: 1426.1 1426.0
  SAY #254183 /* ~I must do as my patron, Ur-Gothoz, bids, regardless of my feelings on the matter. My covenant with him requires my obedience. In exchange, he grants me my dark power. ~ */
  IF ~~ THEN REPLY #254184 /* ~What is that power worth if it means you can be forced to charge into an unwinnable battle?~ */ GOTO 1429
  IF ~~ THEN REPLY #254185 /* ~And if you don't obey?~ */ GOTO 1430
  IF ~~ THEN REPLY #254186 /* ~Then you are naught but a slave. I thought better of you, Dorn.~ */ GOTO 1431
END

IF ~~ THEN BEGIN 1429 // from: 1428.0
  SAY #254187 /* ~You have no idea. I was a power to be reckoned with before my arrangement with Ur-Gothoz. Now my strength, my power, is unequaled.~ */
  IF ~~ THEN REPLY #254188 /* ~And what would happen if you don't obey?~ */ GOTO 1430
  IF ~~ THEN REPLY #254189 /* ~But you are naught but a slave. I thought better of you, Dorn.~ */ GOTO 1431
  IF ~~ THEN REPLY #254190 /* ~This is true. You are an incredible force on the battlefield. ~ */ GOTO 1432
END

IF ~~ THEN BEGIN 1430 // from: 1429.0 1428.1
  SAY #254191 /* ~At best, Ur-Gothoz would cut me off from his power. He would, in all likelihood, kill me for my insolence. ~ */
  IF ~~ THEN REPLY #254192 /* ~In the meantime, though, you have strength and courage the likes of which I have never seen.~ */ GOTO 1432
  IF ~~ THEN REPLY #254193 /* ~But you are naught but a slave. I thought better of you, Dorn.~ */ GOTO 1431
  IF ~~ THEN REPLY #254194 /* ~We all have a price to pay for our abilities, I suppose. Come. We should move on.~ */ GOTO 1433
END

IF ~~ THEN BEGIN 1431 // from: 1430.1 1429.1 1428.2
  SAY #254195 /* ~I did what was necessary. You would be wise not to underestimate what I have gained by chaining myself to Ur-Gothoz.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1432 // from: 1430.0 1429.2
  SAY #254196 /* ~I'm glad you noticed.~ */
  IF ~~ THEN GOTO 1433
END

IF ~~ THEN BEGIN 1433 // from: 1434.0 1432.0 1430.2 1427.0 1425.2
  SAY #254197 /* ~Lead on and I will follow you into battle. Take care to bring me to your enemies soon, that I may slate my bloodlust.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1434 // from: 1427.1
  SAY #254198 /* ~This is neither the time nor the place. Later, perhaps.~ */
  IF ~~ THEN GOTO 1433
END

IF WEIGHT #97 ~  Global("bd_DornRomance2","GLOBAL",1)
~ THEN BEGIN 1435 // from:
  SAY #254199 /* ~This is pointless. We would be much faster and more effective in smaller groups. ~ */
  IF ~~ THEN REPLY #254200 /* ~Thank you for your expert opinion, Dorn. Clearly you've seen many a siege.~ */ DO ~SetGlobal("bd_DornRomance2","GLOBAL",2)
~ GOTO 1436
  IF ~~ THEN REPLY #254201 /* ~Perhaps, but this is the way we're doing things.~ */ DO ~SetGlobal("bd_DornRomance2","GLOBAL",2)
~ GOTO 1437
  IF ~~ THEN REPLY #254202 /* ~Agreed. When the time comes, we'll be leaving these fools in the dust and doing things properly.~ */ DO ~SetGlobal("bd_DornRomance2","GLOBAL",2)
~ GOTO 1438
END

IF ~~ THEN BEGIN 1436 // from: 1435.0
  SAY #254203 /* ~I know an idiotic idea when I see one, <CHARNAME>.~ */
  IF ~~ THEN GOTO 1439
END

IF ~~ THEN BEGIN 1437 // from: 1435.1
  SAY #254204 /* ~The safe option is rarely the most effective one.~ */
  IF ~~ THEN REPLY #254205 /* ~Just because something is safe doesn't mean it's ill-advised.~ */ GOTO 1439
  IF ~~ THEN REPLY #254206 /* ~And what would you suggest, exactly? A frontal assault from a tiny band of adventurers, against an entire army?~ */ GOTO 1439
  IF ~~ THEN REPLY #254207 /* ~But it IS the safe one.~ */ GOTO 1439
END

IF ~~ THEN BEGIN 1438 // from: 1435.2
  SAY #254208 /* ~Good. I am glad to see you still have a head on your shoulders.~ */
  IF ~~ THEN GOTO 1439
END

IF ~~ THEN BEGIN 1439 // from: 1438.0 1437.2 1437.1 1437.0 1436.0
  SAY #254209 /* ~The best course of action would be to abandon this foolishness and let the peasants squabble amongst themselves. Clearly, however, you have made up your mind to see this through.~ */
  IF ~~ THEN GOTO 1440
END

IF ~~ THEN BEGIN 1440 // from: 1439.0
  SAY #254210 /* ~There are—occasionally—times I envy your freedom, <CHARNAME>. ~ */
  IF ~~ THEN REPLY #254211 /* ~Why do you say that?~ */ GOTO 1441
  IF ~~ THEN REPLY #254212 /* ~What freedom?~ */ GOTO 1441
  IF ~~ THEN REPLY #254213 /* ~Yes, I can imagine.~ */ GOTO 1441
END

IF ~~ THEN BEGIN 1441 // from: 1440.2 1440.1 1440.0
  SAY #254214 /* ~You fight for your own banner. You choose your targets, your causes, your campaigns. ~ */
  IF ~~ THEN REPLY #254215 /* ~And you serve at the whim of Ur-Gothoz.~ */ GOTO 1442
  IF ~~ THEN REPLY #254216 /* ~I'm not as free as you might think.~ */ GOTO 1443
  IF ~~ THEN REPLY #254217 /* ~Do you think I'm choosing well?~ */ GOTO 1445
END

IF ~~ THEN BEGIN 1442 // from: 1441.0
  SAY #254218 /* ~In a sense, yes. In another sense, I have chosen to serve. It was my decision to tether myself to my master.~ */
  IF ~~ THEN REPLY #254219 /* ~Was it really, though? Or were you powerless to make another choice?~ */ GOTO 1447
  IF ~~ THEN REPLY #254220 /* ~I understand. I am also not as free as you might think.~ */ GOTO 1443
  IF ~~ THEN REPLY #254221 /* ~And what of my decisions? Do you think I'm choosing well?~ */ GOTO 1445
  IF ~~ THEN REPLY #254222 /* ~We should move on.~ */ GOTO 1448
END

IF ~~ THEN BEGIN 1443 // from: 1442.1 1441.1
  SAY #254223 /* ~No? Explain. ~ */
  IF ~~ THEN REPLY #254224 /* ~You think I choose what I do? No. It has always been decided by others, one way or another. In many ways, I am as powerless as you.~ */ GOTO 1447
  IF ~~ THEN REPLY #254225 /* ~I may be free to choose my path, but I require allies to walk it. I have asked you to fight with me because I need you.~ */ GOTO 1444
  IF ~~ THEN REPLY #254226 /* ~I make the decisions I want, but I must ultimately answer to those who follow me. Do you think I'm choosing well?~ */ GOTO 1445
END

IF ~~ THEN BEGIN 1444 // from: 1443.1
  SAY #254227 /* ~At least you have the sense to recognize a valuable ally when you see one.~ */
  IF ~~ THEN GOTO 1447
END

IF ~~ THEN BEGIN 1445 // from: 1443.2 1442.2 1441.2
  SAY #254228 /* ~If you have any hesitation about the decisions you make, step down as leader. You have no business issuing orders if you don't know what you're doing.~ */
  IF ~~ THEN GOTO 1446
END

IF ~~ THEN BEGIN 1446 // from: 1445.0
  SAY #254229 /* ~That sounded more harsh than I intended. I have followed incompetent leaders in the past and it led to messy endings. I do not wish to see that happen here.~ */
  IF ~~ THEN REPLY #254230 /* ~Nor do I.~ */ GOTO 1448
  IF ~~ THEN REPLY #254231 /* ~Watch your mouth, blackguard. I have no desire to be chastised by one of my lessers.~ */ GOTO 1448
  IF ~~ THEN REPLY #254232 /* ~Forget it. Let's move on.~ */ GOTO 1448
END

IF ~~ THEN BEGIN 1447 // from: 1444.0 1443.0 1442.0
  SAY #254233 /* ~I am far from powerless. But power is not freedom.~ */
  IF ~~ THEN GOTO 1448
END

IF ~~ THEN BEGIN 1448 // from: 1447.0 1446.2 1446.1 1446.0 1442.3
  SAY #254234 /* ~This talk of freedom and choices raises a question in my mind. Is there one among our group you consider a potential mate? I wish to know where your loyalties lie.~ */
  IF ~  OR(2)
Global("bd_neera_romanceactive","global",1)
Global("bd_neera_romanceactive","global",2)
~ THEN REPLY #254235 /* ~Yes. It's Neera.~ */ GOTO 1449
  IF ~  Global("bd_safana_romanceactive","global",1)
~ THEN REPLY #254236 /* ~I have to admit, Safana is constantly in my thoughts.~ */ GOTO 1449
  IF ~  Global("bd_corwin_romanceactive","global",1)
~ THEN REPLY #254237 /* ~Corwin is a beautiful woman. I think of her often.~ */ GOTO 1449
  IF ~  Global("bd_rasaad_romanceactive","global",1)
~ THEN REPLY #254238 /* ~Rasaad and I get along well. Our friendship might yet become something more.~ */ GOTO 1449
  IF ~  Global("bd_glint_romanceactive","global",1)
~ THEN REPLY #254239 /* ~Yes. Glint has been pursuing my affections.~ */ GOTO 1449
  IF ~  Global("bd_viconia_romanceactive","global",1)
~ THEN REPLY #254240 /* ~Viconia fascinates me.~ */ GOTO 1449
  IF ~  Global("bd_voghiln_romanceactive","global",1)
~ THEN REPLY #270625 /* ~Voghiln has caught my eye.~ */ GOTO 1449
  IF ~~ THEN REPLY #254241 /* ~I actually find you quite intriguing, Dorn.~ */ DO ~SetGlobal("bd_neera_romanceactive","global",3)
SetGlobal("bd_safana_romanceactive","global",3)
SetGlobal("bd_corwin_romanceactive","global",3)
SetGlobal("bd_rasaad_romanceactive","global",3)
SetGlobal("bd_glint_romanceactive","global",3)
SetGlobal("bd_viconia_romanceactive","global",3)
SetGlobal("bd_voghiln_romanceactive","global",3)
~ GOTO 1451
  IF ~~ THEN REPLY #254242 /* ~I consider my mission more important than romantic entanglements. I have no lover, nor do I care to take one.~ */ DO ~SetGlobal("bd_neera_romanceactive","global",3)
SetGlobal("bd_safana_romanceactive","global",3)
SetGlobal("bd_corwin_romanceactive","global",3)
SetGlobal("bd_rasaad_romanceactive","global",3)
SetGlobal("bd_glint_romanceactive","global",3)
SetGlobal("bd_viconia_romanceactive","global",3)
SetGlobal("bd_voghiln_romanceactive","global",3)
SetGlobal("bd_dorn_romanceactive","global",3)
~ GOTO 1450
END

IF ~~ THEN BEGIN 1449 // from: 1448.6 1448.5 1448.4 1448.3 1448.2 1448.1 1448.0
  SAY #254243 /* ~I will watch them closely. Should they lead you astray, they will feel my wrath.~ */
  IF ~~ THEN DO ~SetGlobal("bd_dorn_romanceactive","global",3)
~ EXIT
END

IF ~~ THEN BEGIN 1450 // from: 1448.8
  SAY #254244 /* ~A wise course of action. I respect your decision.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1451 // from: 1448.7
  SAY #254245 /* ~Don't be a fool. We are at war and I am not some simpering barmaid to be wooed.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #98 ~  Global("bd_DornRomance3","GLOBAL",1)
~ THEN BEGIN 1452 // from:
  SAY #254246 /* ~This is intolerable! ~ */
  IF ~~ THEN REPLY #254247 /* ~What's wrong?~ */ DO ~SetGlobal("bd_DornRomance3","GLOBAL",2)
~ GOTO 1453
  IF ~~ THEN REPLY #254248 /* ~I agree. I hate stalking around these dark caverns.~ */ DO ~SetGlobal("bd_DornRomance3","GLOBAL",2)
~ GOTO 1453
  IF ~~ THEN REPLY #254249 /* ~Not now, Dorn.~ */ DO ~SetGlobal("bd_DornRomance3","GLOBAL",2)
~ GOTO 1454
END

IF ~~ THEN BEGIN 1453 // from: 1452.1 1452.0
  SAY #254250 /* ~We should be attacking the enemy head on. They should see the faces of those who strike them down. ~ */
  IF ~~ THEN REPLY #254251 /* ~Trust me. They will. They'll just be a little weaker when we do so.~ */ GOTO 1455
  IF ~~ THEN REPLY #254252 /* ~There will be plenty of battle later. PLENTY. I expect to see you covered in gore from tusk to toe.~ */ GOTO 1455
  IF ~~ THEN REPLY #254253 /* ~Quiet, Dorn. I've got enough to deal with. ~ */ GOTO 1454
END

IF ~~ THEN BEGIN 1454 // from: 1461.3 1455.2 1453.2 1452.2
  SAY #254254 /* ~Clearly my opinion is not important. I shall remember that.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1455 // from: 1453.1 1453.0
  SAY #254255 /* ~Hmm. Perhaps the plan does have some merit. In this moment you remind me of someone I once knew.~ */
  IF ~~ THEN REPLY #254256 /* ~Reminiscing? That's not like you.~ */ GOTO 1456
  IF ~~ THEN REPLY #254257 /* ~Who?~ */ GOTO 1457
  IF ~~ THEN REPLY #254258 /* ~We don't have time for idle talk. ~ */ GOTO 1454
END

IF ~~ THEN BEGIN 1456 // from: 1455.0
  SAY #254259 /* ~Reminiscing requires fondness or nostalgia: I indulge in neither. I was simply making an observation.~ */
  IF ~~ THEN GOTO 1457
END

IF ~~ THEN BEGIN 1457 // from: 1456.0 1455.1
  SAY #254260 /* ~When I was a boy, the Il-Khan tribe was led by a fierce warrior, a <PRO_MANWOMAN> by the name of Arktash.~ */
  IF ~~ THEN GOTO 1458
END

IF ~~ THEN BEGIN 1458 // from: 1457.0
  SAY #254261 /* ~The stories say <PRO_HESHE> too used guile to <PRO_HISHER> advantage.~ */
  IF ~~ THEN REPLY #254262 /* ~A flattering comparison.~ */ GOTO 1459
  IF ~~ THEN REPLY #254263 /* ~You know I prefer direct combat when possible. ~ */ GOTO 1459
  IF ~~ THEN REPLY #254264 /* ~Go on. I wish to hear more about this Arktash I resemble so strongly.~ */ GOTO 1459
END

IF ~~ THEN BEGIN 1459 // from: 1458.2 1458.1 1458.0
  SAY #254265 /* ~I idolized <PRO_HIMHER>, for a time. It was clear that <PRO_HESHE> was intelligent and cunning. An impressive leader who did many things for our tribe in <PRO_HISHER> short reign.~ */
  IF ~~ THEN REPLY #254266 /* ~What happened?~ */ GOTO 1460
  IF ~~ THEN REPLY #254267 /* ~Thank you for the comparison, then.~ */ GOTO 1460
  IF ~~ THEN REPLY #254268 /* ~Intelligent and cunning, yes. But I am also fierce. My blood runs hot. Can't you feel the warmth from my skin when you stand near me?~ */ GOTO 1463
END

IF ~~ THEN BEGIN 1460 // from: 1459.1 1459.0
  SAY #254269 /* ~Arktash connived <PRO_HISHER> way into power; <PRO_HESHE> did not earn <PRO_HISHER> position with blood. Despite the good <PRO_HESHE> did the tribe, <PRO_HISHER> rivals worked to bring <PRO_HIMHER> down.~ */
  IF ~~ THEN GOTO 1461
END

IF ~~ THEN BEGIN 1461 // from: 1460.0
  SAY #254270 /* ~But <PRO_HESHE> was killed less than a season into <PRO_HISHER> reign. It seems <PRO_HESHE> did not respect <PRO_HISHER> enemies enough to face them head on, and suffered the consequences.~ */
  IF ~~ THEN REPLY #254271 /* ~You can't compare that to what we're doing, Dorn. They're completely different situations.~ */ GOTO 1462
  IF ~~ THEN REPLY #254272 /* ~What exactly are you getting at here?~ */ GOTO 1462
  IF ~~ THEN REPLY #254273 /* ~I like to stack the odds, yes, but I also have a fighting spirit. Did you mean to insult or warn me with your story? You've inflamed me. I will prove my power to you.~ */ GOTO 1463
  IF ~~ THEN REPLY #254274 /* ~What an offensive story. Never speak to me like this again.~ */ DO ~SetGlobal("bd_dorn_romanceactive","global",3)
~ GOTO 1454
END

IF ~~ THEN BEGIN 1462 // from: 1461.1 1461.0
  SAY #254275 /* ~Do not let your guile turn you soft. There is only so much I can do to protect you on the battlefield. ~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1463 // from: 1461.2 1459.2
  SAY #254276 /* ~I see the passion in your eyes, but you must back up your words with action. Time will tell if your story ends like Arktash's or if you forge your own fate.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #99 ~  Global("bd_DornRomance4","GLOBAL",1)
~ THEN BEGIN 1464 // from:
  SAY #254277 /* ~<CHARNAME>... a word? ~ */
  IF ~~ THEN REPLY #254278 /* ~What is it?~ */ DO ~SetGlobal("bd_DornRomance4","GLOBAL",2)
~ GOTO 1466
  IF ~~ THEN REPLY #254279 /* ~If you're brief. We can only rest a moment.~ */ DO ~SetGlobal("bd_DornRomance4","GLOBAL",2)
~ GOTO 1466
  IF ~~ THEN REPLY #254280 /* ~"Quiet." Is that a good enough word for you?~ */ DO ~SetGlobal("bd_DornRomance4","GLOBAL",2)
~ GOTO 1466
END

IF ~~ THEN BEGIN 1465 // from:
  SAY #254281 /* ~Your barbed tongue fails to draw blood, but I will hold mine.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1466 // from: 1464.2 1464.1 1464.0
  SAY #254282 /* ~I have been thinking about the last words we spoke. There is something I wish to add.~ */
  IF ~~ THEN REPLY #254283 /* ~I'm listening.~ */ GOTO 1467
  IF ~~ THEN REPLY #254284 /* ~Is it another tale of an orc warrior who met a horrible death and reminds you of me? Cause then I'll pass.~ */ GOTO 1467
  IF ~~ THEN REPLY #254285 /* ~Speak, then.~ */ GOTO 1467
END

IF ~~ THEN BEGIN 1467 // from: 1466.2 1466.1 1466.0
  SAY #254286 /* ~It's possible I did not give you the credit you deserve for leading us thus far. I am not a strategist. I am a warrior. I... admire your ability to think in times of danger. ~ */
  IF ~~ THEN REPLY #254287 /* ~Thank you. It's kept me alive so far.~ */ GOTO 1468
  IF ~~ THEN REPLY #254288 /* ~Was that... was that a compliment? Dorn. I don't know what to say.~ */ GOTO 1469
  IF ~~ THEN REPLY #254289 /* ~If you've said your piece, let's move on.~ */ DO ~SetGlobal("bd_dorn_romanceactive","global",2)
~ GOTO 1474
END

IF ~~ THEN BEGIN 1468 // from: 1467.0
  SAY #254290 /* ~The most desirable skills are the ones that keep our hearts beating from minute to minute.~ */
  IF ~~ THEN GOTO 1470
END

IF ~~ THEN BEGIN 1469 // from: 1467.1
  SAY #254291 /* ~Another fine example of your cleverness in times of stress. Be thankful I am in a gaming mood.~ */
  IF ~~ THEN GOTO 1470
END

IF ~~ THEN BEGIN 1470 // from: 1469.0 1468.0
  SAY #254292 /* ~Power comes in many forms. This I have learned. Your power is more subtle. Mine, that gifted by Ur-Gothoz, is the power of physicality.~ */
  IF ~~ THEN REPLY #254293 /* ~You certainly have a powerful body.~ */ GOTO 1471
  IF ~~ THEN REPLY #254294 /* ~I'll say. Your muscles are impressive.~ */ GOTO 1471
  IF ~~ THEN REPLY #254295 /* ~Yes, you are a fine warrior. Can we press on now?~ */ DO ~SetGlobal("bd_dorn_romanceactive","global",2)
~ GOTO 1474
END

IF ~~ THEN BEGIN 1471 // from: 1470.1 1470.0
  SAY #254296 /* ~And yet you haven't seen everything it can do. I am a warrior, yes, but there are far more pleasurable uses I can put this body to. ~ */
  IF ~~ THEN REPLY #254297 /* ~I can imagine. In fact I HAVE imagined. Many times...~ */ GOTO 1472
  IF ~~ THEN REPLY #254298 /* ~Believe me, I've noticed your form. Now is just not the time. Have no doubt though that you will be in my thoughts.~ */ GOTO 1474
  IF ~~ THEN REPLY #254299 /* ~This is not the kind of talk I expected from you, Dorn. Keep your mind on the mission from now on.~ */ DO ~SetGlobal("bd_dorn_romanceactive","global",3)
~ GOTO 1474
END

IF ~~ THEN BEGIN 1472 // from: 1471.0
  SAY #254300 /* ~We must go, I know. But we can have one moment to ourselves.~ */
  IF ~~ THEN GOTO 1473
END

IF ~~ THEN BEGIN 1473 // from: 1472.0
  SAY #254301 /* ~My blood simmers with anticipation. Let us continue on.~ */
  IF ~~ THEN DO ~SetGlobal("bd_dorn_romanceactive","global",2)
~ EXIT
END

IF ~~ THEN BEGIN 1474 // from: 1471.2 1471.1 1470.2 1467.2
  SAY #254302 /* ~So be it.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #100 ~  Global("bd_DornRomance5","GLOBAL",1)
~ THEN BEGIN 1475 // from:
  SAY #254303 /* ~Avernus. It was inevitable. The path I walk could only take me to one Hell or another. ~ */
  IF ~~ THEN REPLY #254304 /* ~The aim is just to visit, not take up permanent residence. ~ */ DO ~SetGlobal("bd_DornRomance5","GLOBAL",2)
~ GOTO 1476
  IF ~~ THEN REPLY #254305 /* ~Why do you think you'll end up in Hell?~ */ DO ~SetGlobal("bd_DornRomance5","GLOBAL",2)
~ GOTO 1477
  IF ~~ THEN REPLY #254306 /* ~Let's do this.~ */ DO ~SetGlobal("bd_DornRomance5","GLOBAL",2)
~ GOTO 1485
END

IF ~~ THEN BEGIN 1476 // from: 1475.0
  SAY #254307 /* ~If all goes well, we will return. If not... then permanent residence may be a possibility.~ */
  IF ~~ THEN GOTO 1478
END

IF ~~ THEN BEGIN 1477 // from: 1475.1
  SAY #254308 /* ~The murder of many does not go unseen or unpunished. ~ */
  IF ~~ THEN GOTO 1478
END

IF ~~ THEN BEGIN 1478 // from: 1477.0 1476.0
  SAY #254309 /* ~At least when I die, I will be provided for. I will while away eternity in the service of Ur-Gothoz, and I will wreak havoc in the Blood War in his name. ~ */
  IF ~~ THEN REPLY #254310 /* ~That doesn't sound appetizing. ~ */ GOTO 1479
  IF ~~ THEN REPLY #254311 /* ~The Blood War?~ */ GOTO 1480
  IF ~~ THEN REPLY #254312 /* ~We should stop talking and get this over with.~ */ GOTO 1485
END

IF ~~ THEN BEGIN 1479 // from: 1478.0
  SAY #254313 /* ~I am assured that it is a great honor.~ */
  IF ~~ THEN GOTO 1480
END

IF ~~ THEN BEGIN 1480 // from: 1479.0 1478.1
  SAY #254314 /* ~The Blood War is the endless battle between devils and demons. At times, both have had the upper hand, and I've no doubt we will soon meet one of the major powers in the war.~ */
  IF ~~ THEN REPLY #254315 /* ~If we must go to the Nine Hells to end this, then we will. And we will triumph.~ */ GOTO 1481
  IF ~~ THEN REPLY #254316 /* ~It sounds like a fitting fate for you... and perhaps, one day, for me.~ */ GOTO 1481
  IF ~~ THEN REPLY #254317 /* ~Then let's get this over with.~ */ GOTO 1485
END

IF ~~ THEN BEGIN 1481 // from: 1480.1 1480.0
  SAY #254318 /* ~The fire of the portal reflects the darkness in your heart. You and I are of one kind, <CHARNAME>. ~ */
  IF ~~ THEN GOTO 1482
END

IF ~~ THEN BEGIN 1482 // from: 1481.0
  SAY #254319 /* ~My orcish blood burns within my veins. If we do not take action soon, I will be forced to either kill something or throw you down before me.~ */
  IF ~~ THEN REPLY #254320 /* ~Then let us venture through this portal and I will watch you slaughter legions of fiends on the other side. ~ */ GOTO 1484
  IF ~~ THEN REPLY #254321 /* ~I think you know which of those two options I'd prefer.~ */ GOTO 1483
  IF ~~ THEN REPLY #254322 /* ~Enough talk. Let's get this over with.~ */ GOTO 1485
END

IF ~~ THEN BEGIN 1483 // from: 1482.1
  SAY #254323 /* ~As we lack in both time and privacy, I will satisfy myself with but a taste of you before tearing our enemies to pieces.~ */
  IF ~~ THEN GOTO 1485
END

IF ~~ THEN BEGIN 1484 // from: 1482.0
  SAY #254324 /* ~Yes! First, I shall satisfy myself with a taste of you, and then we will bring Hell's legions to their knees!~ */
  IF ~~ THEN GOTO 1485
END

IF ~~ THEN BEGIN 1485 // from: 1484.0 1483.0 1482.2 1480.2 1478.2 1475.2
  SAY #254325 /* ~Through the portal! Into the flames!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1486 // from:
  SAY #254775 /* ~I'll believe that when I see it, gnome—perhaps not even then. If I cut your tongue from your mouth and your fingers from your hands, still you'd find a way to make your thoughts known. It's a weakness of your character: You cannot help yourself.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1487 // from:
  SAY #251733 /* ~We're wasting time. A slaughter is inevitable—let it begin sooner than later.~ */
  IF ~~ THEN EXTERN ~BDMKHIIJ~ 128
END

IF ~~ THEN BEGIN 1488 // from:
  SAY #251749 /* ~I see no problem here. No problem at all.~ */
  IF ~~ THEN EXTERN ~BDRAGGEM~ 8
END

IF ~~ THEN BEGIN 1489 // from:
  SAY #256452 /* ~Better people.~ */
  IF ~~ THEN EXTERN ~BDRAGGEM~ 13
END

IF ~~ THEN BEGIN 1490 // from:
  SAY #256470 /* ~We should have given them quick deaths, nothing more. The goblin's right.~ */
  IF ~~ THEN EXTERN ~BDMKHIIJ~ 144
END

IF ~~ THEN BEGIN 1491 // from:
  SAY #250314 /* ~What does it matter? They are dead now, and no concern of ours.~ */
  IF ~~ THEN EXTERN ~BDHALAT~ 3
  IF ~  IsValidForPartyDialogue("dynaheir")
~ THEN EXTERN ~DYNAHJ~ 145
END

IF ~~ THEN BEGIN 1492 // from:
  SAY #250316 /* ~Look around you, wychlaran. The enemy IS defeated.~ */
  IF ~~ THEN EXTERN ~BDHALAT~ 3
  IF ~  IsValidForPartyDialogue("corwin")
~ THEN EXTERN ~BDCORWIJ~ 313
END

IF ~~ THEN BEGIN 1493 // from:
  SAY #250346 /* ~Respect is earned, monk. They got as good as they deserved, if not better.~ */
  IF ~~ THEN EXTERN ~BDHALAT~ 14
END

IF ~~ THEN BEGIN 1494 // from:
  SAY #248967 /* ~The stammering lackwit is right, for once. What you understand you can more easily destroy.~ */
  IF ~~ THEN EXTERN ~BDDENELD~ 9
END

IF ~~ THEN BEGIN 1495 // from:
  SAY #249047 /* ~A monster walks beside you, <CHARNAME>. Consider your words, lest you say something I'll have to make you regret.~ */
  IF ~~ THEN EXTERN ~BDRAVOC~ 13
END

IF ~~ THEN BEGIN 1496 // from:
  SAY #258813 /* ~Yes. "Even" an orc.~ */
  IF ~~ THEN EXTERN ~BDRAVOC~ 15
END

IF ~~ THEN BEGIN 1497 // from:
  SAY #258816 /* ~The monster will fall.~ */
  IF ~~ THEN EXTERN ~BDSINDRE~ 14
  IF ~  IsValidForPartyDialogue("MKHIIN")
~ THEN EXTERN ~BDMKHIIJ~ 87
END

IF ~~ THEN BEGIN 1498 // from:
  SAY #258818 /* ~But we will hurt you if you give us a reason.~ */
  IF ~~ THEN GOTO 1499
END

IF ~~ THEN BEGIN 1499 // from: 1498.0
  SAY #258819 /* ~Give us a reason. Please.~ */
  IF ~~ THEN EXTERN ~BDULORI~ 2
END

IF ~~ THEN BEGIN 1500 // from:
  SAY #247934 /* ~I sense something in you, soldier. A darkness that reminds me of my own. You like killing, don't you?~ */
  IF ~~ THEN EXTERN ~BDMORLIS~ 5
END

IF ~~ THEN BEGIN 1501 // from:
  SAY #247936 /* ~Give in to that desire. Don't try to suppress your true nature. As you slay your enemies, you'll hear a calling in your soul. Answer it, if you dare.~ */
  IF ~~ THEN DO ~IncrementGlobal("BD_FIGHTERS_SKILL","BD3000",2)
SetGlobal("bd_sdd301_morlis_skill","global",2)
~ EXTERN ~BDMORLIS~ 6
END

IF WEIGHT #101 ~  Global("bd_dorn_reputation_warning","GLOBAL",1)
~ THEN BEGIN 1502 // from:
  SAY #260663 /* ~You disappoint me, <CHARNAME>. I thought you sought power. Now I learn what you truly crave is the approval of those unworthy of notice, much less consideration.~ [BD60663] */
  IF ~~ THEN REPLY #260664 /* ~You are too quick to dismiss the common folk.~ */ DO ~SetGlobal("bd_dorn_reputation_warning","GLOBAL",2)
~ GOTO 1504
  IF ~~ THEN REPLY #260665 /* ~Sorry to disappoint you, Dorn. Wait, no I'm not. I'm not sorry at all.~ */ DO ~SetGlobal("bd_dorn_reputation_warning","GLOBAL",2)
~ GOTO 1503
  IF ~~ THEN REPLY #260666 /* ~You think it a weakness to have others believe there is goodness within me? Think again. Having the trust of others is a valuable thing. They never see what's coming until it's too late.~ */ DO ~SetGlobal("bd_dorn_reputation_warning","GLOBAL",2)
~ GOTO 1505
  IF ~~ THEN REPLY #260667 /* ~You say this as though your approval means something to me.~ */ DO ~SetGlobal("bd_dorn_reputation_warning","GLOBAL",2)
~ GOTO 1506
END

IF ~~ THEN BEGIN 1503 // from: 1502.1
  SAY #260668 /* ~I promise that will change if you continue indulging the commoners. They are insects to be crushed underfoot, nothing more. Do not delude yourself into thinking otherwise.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1504 // from: 1502.0
  SAY #260669 /* ~They are insects to be crushed underfoot, nothing more. Do not delude yourself into thinking otherwise.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1505 // from: 1502.2
  SAY #260670 /* ~I'm impressed. You are more devious than I gave you credit for. But you should know that in revealing yourself, you have lost any chance you might have had to win my trust. I'm watching you, <CHARNAME>. For the moment? I like what I see.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1506 // from: 1502.3
  SAY #260671 /* ~You would do well to heed my words. Ignore them at your own peril. Ignore me, and you will come to regret it.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1507 // from:
  SAY #262577 /* ~I've not heard of this castle.~ */
  IF ~~ THEN EXTERN ~BDJULANN~ 2
END
