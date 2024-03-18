// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\DESRET.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\DESRET.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA357~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~You come in here for some purpose, no? Tell you the secret. There is no purpose, only entropy. Wondrous, sensuous entropy. My soul sister and I know entropy better than most. Perhaps we teach you some of its pleasures, no?~ #18915 */
  IF ~~ THEN REPLY @2 /* ~Get away from me, you psycho. I'm just here to enjoy a beer.~ #18916 */ GOTO 1
  IF ~~ THEN REPLY @3 /* ~What's your name, woman, and what's this whole "entropy" crap you're going on about?~ #18917 */ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 2.0 0.0
  SAY @4 /* ~You miss much. You miss what void could offer. You are deluded that life has meaning. It does not.~ #18918 */
  IF ~~ THEN DO ~ActionOverride("VAYYA",EscapeArea())
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @5 /* ~I am Desreta. She is Vay-ya. We are one with void. We know life has no meaning. Let us show you entropic pleasure... Mm. It will delight you with its icy touch.~ #18919 */
  IF ~~ THEN REPLY @6 /* ~Uh-huh. Look, we really have to get going, so... you two just keep on doing whatever it is you do.~ #18920 */ GOTO 1
  IF ~~ THEN REPLY @7 /* ~Yes, show us this pleasure you speak of. I'm sure it could be quite interesting, especially if you show it to us in the privacy of your bedroom.~ #18921 */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY @8 /* ~No need to go to bedroom. We can show you... here. Not many agree to go to great void. They afraid. But what there be to be afraid of? Life is hollow. Better to end it soon, than endure its pain.~ #18922 */
  IF ~~ THEN DO ~ActionOverride("VAYYA",Enemy())
Enemy()
~ EXIT
END
