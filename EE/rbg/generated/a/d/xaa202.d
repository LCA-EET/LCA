// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\VIVIEN.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\VIVIEN.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA202~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Please. *sniff* You must save us from this wretched iron!~ #19134 */
  IF ~~ THEN REPLY @2 /* ~Why shed such tears over a crisis that is far more political than personal?~ #19139 */ GOTO 1
  IF ~~ THEN REPLY @3 /* ~We are doing all we can, friend, but such salvation is a slow and troubled process.~ #19143 */ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @4 /* ~War is political, but does it not maim husbands and kill sons? *sniff* My husband rode the plow behind our horses until the rotten iron hitching broke. The horses bolted and the plow rose from the earth to overturn and catch my man beneath it. He was dragged twenty yards through rocky soil and is dying now, beyond the cleric's powers. A simple hitching broke and still you ask me why I weep!~ #19146 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @5 /* ~Why must evil always be so fleet of foot, while good loiters behind, holding back like an embarrassed younger brother? I pray that the gods may someday grant us swifter heroes!~ #19149 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END
