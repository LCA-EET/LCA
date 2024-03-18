// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\THIEFG.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\THIEFG.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA170~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~You there! What are ye doing in dis place? You better git outta here, 'less of course you know the password.~ #752 */
  IF ~~ THEN REPLY @2 /* ~Password? Why would I need a password? What in the Nine Hells are you talking about?~ #756 */ GOTO 1
  IF ~~ THEN REPLY @3 /* ~Ya, I know the password.~ #758 */ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @4 /* ~Ye're in the wrong place, pal. I'd git out while ye're still able. I might not be able to stop a buncha well-armed adventurers, but if you cause any trouble in the guild, don't be expecting to walk out in one piece.~ #2433 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @5 /* ~Well, if you know the password, then spill it.~ #2434 */
  IF ~~ THEN REPLY @6 /* ~Darkwell.~ #16655 */ GOTO 3
  IF ~~ THEN REPLY @7 /* ~Ravenscar.~ #16656 */ GOTO 3
  IF ~~ THEN REPLY @8 /* ~Mask.~ #16657 */ GOTO 3
  IF ~~ THEN REPLY @9 /* ~Fafhrd.~ #16658 */ GOTO 4
  IF ~~ THEN REPLY @10 /* ~Bodi.~ #16659 */ GOTO 3
  IF ~~ THEN REPLY @11 /* ~Mercury.~ #16660 */ GOTO 3
  IF ~~ THEN REPLY @12 /* ~Shadow.~ #16661 */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.6 2.5 2.4 2.2 2.1 2.0
  SAY @13 /* ~Wrong answer. Git outta here 'fore ya get hurt. I might not be able to stop a buncha well-armed adventurers, but if you cause any trouble in the guild, don't be expecting to walk out in one piece.~ #2776 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.3
  SAY @14 /* ~That's right, pal. Ya all can go in now.~ #2777 */
  IF ~~ THEN DO ~SetGlobal("ThiefSecretQuestion","GLOBAL",1)
~ EXIT
END
