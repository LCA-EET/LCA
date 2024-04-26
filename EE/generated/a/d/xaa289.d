// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\DOPPSM.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\DOPPSM.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA289~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~What can I do for you?~ #981 */
  IF ~~ THEN REPLY @2 /* ~We wanted to ask you some questions on your recent business decisions. Some people find them very questionable.~ #988 */ DO ~SetGlobal("CheckedSevenSuns","GLOBAL",2)
~ GOTO 2
  IF ~~ THEN REPLY @3 /* ~We wanted a tour.~ #989 */ DO ~SetGlobal("AskedForTour","GLOBAL",1)
SetGlobal("CheckedSevenSuns","GLOBAL",2)
~ GOTO 1
  IF ~~ THEN REPLY @4 /* ~We want to talk to the owner of the Seven Suns.~ #990 */ DO ~SetGlobal("CheckedSevenSuns","GLOBAL",2)
~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.2 0.1
  SAY @5 /* ~Unfortunately, I cannot grant any of your desires, so could you kindly leave?~ #982 */
  IF ~~ THEN REPLY @6 /* ~Not until we get to see Jhasso.~ #991 */ GOTO 7
  IF ~~ THEN REPLY @7 /* ~We want a tour first.~ #992 */ GOTO 3
  IF ~  Global("AskedForTour","GLOBAL",1)
~ THEN REPLY @8 /* ~No tour, huh? Well, I guess we'll be on our way.~ #993 */ GOTO 8
  IF ~~ THEN REPLY @9 /* ~Fine, we'll find someone else to answer our questions.~ #994 */ GOTO 8
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY @10 /* ~I'm sorry, but I'm in a real hurry, please don't bother me.~ #983 */
  IF ~~ THEN REPLY @11 /* ~Not until you answer some questions.~ #995 */ GOTO 3
  IF ~~ THEN REPLY @12 /* ~Sure thing, bye.~ #996 */ GOTO 8
END

IF ~~ THEN BEGIN 3 // from: 2.0 1.1
  SAY @13 /* ~Listen here. There have been some strange things happening about the Seven Suns, but I'd rather not talk about it. Everybody I know has been acting really strange of late. I've seen some of the other merchants change faces when they thought I wasn't looking. Yes, you heard me right, they changed faces! Some sort of shapeshifters have infiltrated the Seven Suns. If I were you, I'd get out of here while there's still time. That's what I'm planning to do.~ #984 */
  IF ~~ THEN DO ~EscapeArea()
~ UNSOLVED_JOURNAL @14 /* ~The Seven Suns
A frightened merchant inside the Seven Suns building says the Seven Suns has been infiltrated by shapeshifters!~ #26986 */ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY @15 /* ~Excuse me, could I inquire to what you're doing here?~ #985 */
  IF ~~ THEN REPLY @16 /* ~We're tourists.~ #997 */ GOTO 5
  IF ~~ THEN REPLY @17 /* ~We're new mercenaries.~ #998 */ GOTO 5
  IF ~~ THEN REPLY @18 /* ~We work for Jhasso.~ #999 */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.2 4.1 4.0
  SAY @19 /* ~Lying primates! Guards, kill the intruders.~ #986 */
  IF ~~ THEN EXTERN ~SSUNGU~ 5
END

IF ~~ THEN BEGIN 6 // from:
  SAY @20 /* ~Do not question my orders meat, just do it.~ #987 */
  IF ~~ THEN DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.0
  SAY @21 /* ~I don't know where he is. He's been missing ever since everything went strange. I've seen some of the other merchants change faces when they thought I wasn't looking. Yes, you heard me right, they changed faces! Some sort of shapeshifters have infiltrated the Seven Suns. If I were you, I'd get out of here while there's still time, that's what I'm planning to do.~ #16590 */
  IF ~~ THEN DO ~EscapeArea()
~ UNSOLVED_JOURNAL @14 /* ~The Seven Suns
A frightened merchant inside the Seven Suns building says the Seven Suns has been infiltrated by shapeshifters!~ #26986 */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.1 1.3 1.2
  SAY @22 /* ~Wait! You should get out of here as soon as possible. Everybody I know has been acting really strange of late. I've seen some of the other merchants change faces when they thought I wasn't looking. Yes, you heard me right: They changed faces! Some sort of shapeshifters have infiltrated the Seven Suns. Get out while you still can.~ #11853 */
  IF ~~ THEN DO ~EscapeArea()
~ UNSOLVED_JOURNAL @14 /* ~The Seven Suns
A frightened merchant inside the Seven Suns building says the Seven Suns has been infiltrated by shapeshifters!~ #26986 */ EXIT
END
