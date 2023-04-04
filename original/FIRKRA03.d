// creator  : weidu (version 24900)
// argument : FIRKRA03.DLG
// game     : .
// source   : ./override/FIRKRA03.DLG
// dialog   : .\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~FIRKRA03~

IF ~  NumTimesTalkedTo(0)
OR(2)
!Class(Player1,PALADIN)
Kit(Player1,Blackguard)
~ THEN BEGIN 0 // from:
  SAY #34227 /* ~You walk in my realm now, <CHARNAME>. Come to me, and this will end. Your crime against me will be answered, even in your ignorance. Come, to your death.~ */
  IF ~~ THEN EXIT
END

IF ~  !Kit(Player1,Blackguard)
NumTimesTalkedTo(0)
Class(Player1,PALADIN)
~ THEN BEGIN 1 // from:
  SAY #34228 /* ~Come, paladin, and know who has destroyed you, piece by piece. Your crime against me will be answered, even as you are ignorant of the deed. Let us play.~ */
  IF ~~ THEN EXIT
END

IF ~  False()
~ THEN BEGIN 2 // from:
  SAY #34377 /* ~The hero retreats! You are very bad at this game, <CHARNAME>. Cower as you will, I will wait and watch while you live with your cowardice. I have the patience of a thousand years behind! ~ */
  IF ~~ THEN EXIT
END

IF ~  False()
~ THEN BEGIN 3 // from:
  SAY #34378 /* ~The wise <PRO_MANWOMAN> retreats! Go, hero, and tell people of your failure! Live with it! Hold and caress it, for it is truly yours! I will watch and wait, and welcome you back when you regain your nerve! I am very patient. Very patient.~ */
  IF ~~ THEN EXIT
END
