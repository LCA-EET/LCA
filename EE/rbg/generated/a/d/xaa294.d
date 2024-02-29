// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\NOBL14.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\NOBL14.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA294~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Dark, dank, and oh so squalid. Mother would absolutely erupt if she saw me here. Such filth and degradation... I love it!~ #8303 */
  IF ~~ THEN EXIT
END

IF WEIGHT #1 ~  NumTimesTalkedTo(1)
~ THEN BEGIN 1 // from:
  SAY @2 /* ~Dear and bother! I rather think my purse has been pinched. Not entirely unpleasant, but still...~ #8304 */
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 3 even though they appear after this state */
~  NumTimesTalkedToGT(1)
~ THEN BEGIN 2 // from:
  SAY @3 /* ~Ooo, you look to be an entire theme party all to yourselves. I'll have to come back when I can afford you all.~ #8305 */
  IF ~~ THEN EXIT
END

IF WEIGHT #2 ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 3 // from:
  SAY @4 /* ~Good friend, we should go about this brothel and try out everything it has to offer.~ #8306 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY @5 /* ~Approach me not! I'll ruffle you up, I will!~ #9142 */
  IF ~~ THEN EXIT
END
