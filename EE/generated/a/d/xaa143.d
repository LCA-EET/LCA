// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\FATWBA.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\FATWBA.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA143~

IF ~  RandomNum(3,1)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~I'd love to stay and chitchat the day away, but I'll lose my youthful exuberance if I miss lunch.~ #13989 */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(3,2)
~ THEN BEGIN 1 // from:
  SAY @2 /* ~Such boorish manners! It's nearly enough to put a person off her food... nearly.~ #13990 */
  IF ~~ THEN EXIT
END

IF ~  False()
~ THEN BEGIN 2 // from:
  SAY @3 /* ~I'm afraid I've very little information for you, though we MUST do lunch sometime. I don't know why we haven't before.~ #13991 */
  IF ~~ THEN EXIT
END

IF ~  RandomNum(3,3)
~ THEN BEGIN 3 // from:
  SAY @4 /* ~I may be a touch overweight, but you are little more than a pointed stick. Careful I don't lodge you somewhere.~ #13992 */
  IF ~~ THEN EXIT
END
