// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\BART6.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\BART6.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA422~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Hey there, mate. Don't recognize you, which is strange, considering I know everyone here at the Iron Throne. Why don't you tell me who you are?~ #7641 */
  IF ~~ THEN REPLY @2 /* ~We're merchants just out of Sembia.~ #7648 */ GOTO 1
  IF ~~ THEN REPLY @3 /* ~We're merchants just out of Cormyr.~ #7649 */ GOTO 2
  IF ~~ THEN REPLY @4 /* ~We're new recruits. We haven't been given an assignment yet.~ #7650 */ GOTO 3
  IF ~~ THEN REPLY @5 /* ~None of your business.~ #7651 */ GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @6 /* ~Out of Sembia, eh? Well, if ye're looking for Rieltar or Brunos, you won't find them here. They're off to Candlekeep for some important business.~ #7642 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @7 /* ~From Cormyr? That's strange; I didn't think that the Iron Throne had any business dealing in Cormyr. After King Azoun banned them from the country that is.~ #7643 */
  IF ~~ THEN REPLY @8 /* ~So why did the Iron Throne get banned from Cormyr?~ #7652 */ GOTO 5
  IF ~~ THEN REPLY @9 /* ~Yes, well the Iron Throne wants to renew some of its ties to Cormyr.~ #7653 */ GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 0.2
  SAY @10 /* ~Oh, I see. Well, if ye're wondering where you'll be assigned, I'd bet it would be with the Blacktalons down in the Wood of Sharp Teeth. They've lost quite a few members lately and are in desperate need of new recruits.~ #7644 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.3
  SAY @11 /* ~It certainly is my business, and I don't think you belong here. INTRUDERS! We have intruders in the tower!~ #7645 */
  IF ~~ THEN DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.0
  SAY @12 /* ~The Throne was dealing in black lotus, slaves, prostitution—all the vices that King Azoun had a real dislike for. Since the king has the power to do whatever he wants, he banned the Throne from Cormyr. It was a good thing too, otherwise the Throne would have never given Rieltar the funds he needed to start up this operation on the Sword Coast.~ #7646 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.1
  SAY @13 /* ~Hmmm, I don't see what that has to do with Rieltar, but I'll take your word for it.~ #7647 */
  IF ~~ THEN EXIT
END
