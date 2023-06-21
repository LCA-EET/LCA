// creator  : weidu (version 24900)
// argument : FIRKRA01.DLG
// game     : .
// source   : ./override/FIRKRA01.DLG
// dialog   : .\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~FIRKRA01~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #33672 /* ~You there, I would have a word with you. I am called Lord Jierdan Firkraag, and I bid you stand a moment and hear what I offer.~ [FIRKRA02] */
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #33920 /* ~Word has come to me of your actions. I see you as capable and headstrong, with the ability to handle whate'er is thrown at you. Just the type of creature that I am looking for.~ [FIRKRA07] */
  IF ~~ THEN REPLY #33922 /* ~You have done your research well. What do you need of me?~ */ GOTO 2
  IF ~~ THEN REPLY #33923 /* ~Your flattery is not needed. I will listen to what you have to say.~ */ GOTO 2
  IF ~~ THEN REPLY #33924 /* ~You claim to know much, but I care not. Speak your offer, and be quick about it.~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.2 1.1 1.0
  SAY #33927 /* ~Certainly you understand that these are dangerous times, and that extreme measures are often called for. That is why I have need of you.~ */
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #33928 /* ~I am lord of a community outside Athkatla, and while I provide for my people as best that I can, there are some things I cannot do. Battle is not my strong point.~ */
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #33930 /* ~There are marauders, horrid ogres and trolls that must be destroyed with fire or they regenerate. I need a firm hand to push them back. I need you, <CHARNAME>.~ */
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #33935 /* ~I offer a grand sum, worthy of a <PRO_MANWOMAN> of your stature. I offer 10,000 gold if you can free my land of this scourge. It is a fortune, you will agree.~ */
  IF ~~ THEN REPLY #33936 /* ~10,000? That is an astounding sum for simple monster-hunting.~ */ GOTO 6
  IF ~~ THEN REPLY #33937 /* ~Why me and not some other company? You could have anyone at that price.~ */ GOTO 7
  IF ~~ THEN REPLY #33938 /* ~You have a deal. Where are your lands, and when should I go?~ */ GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #33942 /* ~It is a small price for safety. It is not as though I am without funds. I merely believe in paying for quality. You will be wealthy in my service, rest assured.~ */
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY #33947 /* ~Ah, but you would not lump yourself together with common mercenaries, would you? No, I require someone with finesse and skill as well as strength. You are ideal.~ */
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 8 // from: 5.2
  SAY #33949 /* ~Good. There really was no other choice to make. I will direct you to the place you are to go. Do not tarry too long. There are people's lives at stake.~ */
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 10.0 8.0
  SAY #33962 /* ~I have no doubt your service will be exemplary. If all goes well, we shall all receive exactly what we deserve. My lands are on your map; the Windspear Hills await.~ */
  IF ~  !IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Yoshimo")
!IsValidForPartyDialogue("Jaheira")
~ THEN DO ~RevealAreaOnMap("AR1200")
EscapeArea()
~ UNSOLVED_JOURNAL #11821 /* ~Journey to the Windspear Hills

I was approached by a Lord Jierdan Firkraag, whose lands outside of Athkatla are being plagued by ogre bandits. He has asked that I journey to the Windspear Hills and kill these ogres, and has offered a 10,000 gp reward for the deed.~ */ EXIT
  IF ~  IsValidForPartyDialogue("Minsc")
~ THEN DO ~RevealAreaOnMap("AR1200")
EscapeArea()
~ UNSOLVED_JOURNAL #11821 /* ~Journey to the Windspear Hills

I was approached by a Lord Jierdan Firkraag, whose lands outside of Athkatla are being plagued by ogre bandits. He has asked that I journey to the Windspear Hills and kill these ogres, and has offered a 10,000 gp reward for the deed.~ */ EXTERN ~MINSCJ~ 96
  IF ~  !IsValidForPartyDialogue("Minsc")
IsValidForPartyDialogue("Yoshimo")
~ THEN DO ~RevealAreaOnMap("AR1200")
EscapeArea()
~ UNSOLVED_JOURNAL #11821 /* ~Journey to the Windspear Hills

I was approached by a Lord Jierdan Firkraag, whose lands outside of Athkatla are being plagued by ogre bandits. He has asked that I journey to the Windspear Hills and kill these ogres, and has offered a 10,000 gp reward for the deed.~ */ EXTERN ~YOSHJ~ 42
  IF ~  !IsValidForPartyDialogue("Minsc")
!IsValidForPartyDialogue("Yoshimo")
IsValidForPartyDialogue("Jaheira")
~ THEN DO ~RevealAreaOnMap("AR1200")
EscapeArea()
~ UNSOLVED_JOURNAL #11821 /* ~Journey to the Windspear Hills

I was approached by a Lord Jierdan Firkraag, whose lands outside of Athkatla are being plagued by ogre bandits. He has asked that I journey to the Windspear Hills and kill these ogres, and has offered a 10,000 gp reward for the deed.~ */ EXTERN ~JAHEIRAJ~ 356
END

IF ~~ THEN BEGIN 10 // from: 7.0 6.0
  SAY #33967 /* ~You are the choice I make, and the offer stands whether you go now or not. There is no other decision that makes sense. ~ */
  IF ~~ THEN GOTO 9
END
