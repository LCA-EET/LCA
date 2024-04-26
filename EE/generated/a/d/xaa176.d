// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\CAUTER.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\CAUTER.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA176~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Aye, you be fighters and mages and monster-killers all, be ye?~ #19261 */
  IF ~~ THEN REPLY @2 /* ~We may not all be fighters and we may not all be mages but each of us has a monster's death throes to our name. Why do you ask?~ #19262 */ GOTO 1
  IF ~~ THEN REPLY @3 /* ~No, sir, merely travelers armed for the road.~ #19263 */ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @4 /* ~The roads be lined with bandits of every ilk and description but the most fearsome be them monstrous hobgoblins! Do us all a favor and place a blade into their gut!~ #19264 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @5 /* ~We all be travelers, though few as armed as you. Aye, but that is why this traveler stays within the safer confines of this town and dares not venture out as far as you. Go well, and slay them bloody bandits where they wait!~ #19265 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY @6 /* ~Damned bandits have me holed up within these wretched walls when I'd far rather have the road.~ #19266 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END
