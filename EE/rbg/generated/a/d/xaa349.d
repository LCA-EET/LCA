// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\INNKE3.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\INNKE3.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA349~

IF ~  NumTimesTalkedTo(0)
ReactionGT(LastTalkedToBy,NEUTRAL_UPPER)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Good eve! I am quite sure I don't need to inform you of the rules of conduct while in the Blade and Stars. Rest assured that your stay will be uneventful and restful.~ #8352 */
  IF ~~ THEN REPLY @2 /* ~What kind of services do you offer here?~ #15404 */ DO ~StartStore("xaa139",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY @3 /* ~We'll make sure to obey your "rules."~ #15405 */ EXIT
END

IF ~  NumTimesTalkedTo(0)
ReactionLT(LastTalkedToBy,FRIENDLY_LOWER)
ReactionGT(LastTalkedToBy,HOSTILE_UPPER)
~ THEN BEGIN 1 // from:
  SAY @4 /* ~Hello. I trust you'll be behaving yourselves while here? We are somewhat less tolerant of unruly guests than more... unrestrained neighboring Inns.~ #8353 */
  IF ~~ THEN REPLY @5 /* ~What kind of services do you have to offer?~ #15406 */ DO ~StartStore("xaa139",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY @6 /* ~We're an unruly bunch, so we'd better be on our way.~ #15408 */ EXIT
END

IF ~  True()
~ THEN BEGIN 2 // from:
  SAY @7 /* ~I'll tell you straight out: We do not cater to unruly guests, and if you disturb any of the other patrons, you will be asked to leave. If you press the matter, you will be "assisted" to the door. For the good of all concerned, I am sure you will not let it go that far.~ #8354 */
  IF ~~ THEN REPLY @5 /* ~What kind of services do you have to offer?~ #15409 */ DO ~StartStore("xaa139",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY @8 /* ~If you're going to be so rude, my companions will just take leave of this place!~ #15410 */ EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY @9 /* ~Welcome back. The Blade and Stars stands ready to provide what e'er ye need.~ #8355 */
  IF ~~ THEN DO ~StartStore("xaa139",LastTalkedToBy(Myself))
~ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY @10 /* ~I fear we are not open to such as you. Begone lest the house guards escort you.~ #8357 */
  IF ~~ THEN EXIT
END
