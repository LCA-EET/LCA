// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\NORTUA.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\NORTUA.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA416~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Wait a moment. Could you please tell me where I could find Rieltar? It's important that I speak to him. I've been given the run-around too long. Rieltar's damn son, Sarevok, seems to think he's in charge here.~ #18924 */
  IF ~~ THEN REPLY @2 /* ~We must ask for a name before we go telling the whereabouts of Iron Throne high-ups.~ #18925 */ GOTO 2
  IF ~~ THEN REPLY @3 /* ~We have no clue, sorry.~ #18926 */ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 2.0 0.1
  SAY @4 /* ~Damn it, is anyone competent here!~ #18927 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY @5 /* ~I'm Nortuary, and your Iron Throne "high-up" answers to me! I've just arrived from Selgaunt in Sembia. The council wishes to know how things are faring. Now tell me where I can find Rieltar!~ #18928 */
  IF ~~ THEN REPLY @6 /* ~Actually, we don't really know where he is at the moment. We apologize for any inconvenience we might have caused you.~ #18929 */ GOTO 1
  IF ~~ THEN REPLY @7 /* ~Rieltar's in the upper offices at the moment. If you go up there, I'm sure you'll catch him.~ #18930 */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY @8 /* ~Good! Finally, I get a straight answer.~ #18931 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END
