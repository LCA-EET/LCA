// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\DILLAR.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\DILLAR.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA292~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 7 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Hello hello. Feel free to eat, drink, and be merry, but kindly do so outside of my office. If ye wish to pay Low Lantern rates, then you'll warrant a warmer welcome. This is the Undercellar, however, and though our prospect be somewhat cheaper, my company is not. Have a pleasant stay.~ #8287 */
  IF ~  ReactionGT(LastTalkedToBy,HOSTILE_UPPER)
~ THEN REPLY @2 /* ~I hear there are some pretty shady dealings that go on down here. Do you condone such behavior?~ #8296 */ GOTO 1
  IF ~  ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)
~ THEN REPLY @2 /* ~I hear there are some pretty shady dealings that go on down here. Do you condone such behavior?~ #8297 */ GOTO 2
  IF ~~ THEN REPLY @3 /* ~No need to get all uppity on me, sir. I didn't mean any harm. Just wanted to share a drink with the gracious host, is all.~ #8298 */ GOTO 3
  IF ~~ THEN REPLY @4 /* ~I don't think you should speak in that kind of tone to guests! They might take offense. I might take offense!~ #8299 */ GOTO 4
  IF ~~ THEN REPLY @5 /* ~Pardon my intrusion. I shall leave immediately.~ #8300 */ GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @6 /* ~I wouldn't be putting too much stock into all the rumors you hear about my little place. Any establishment that serves the clientele that I do is likely to inspire a few tales, though I'd appreciate you not adding fuel to the fire. Good eve to you.~ #8288 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @7 /* ~I think you will find that speaking ill of the Undercellar is a good way to ruin your health. I take no interest in what my customers do here, and saying otherwise is a good way to get a face full of fist in a hurry. Get out, if you please.~ #8289 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2
  SAY @8 /* ~I do not drink with customers. Our association is strictly formal, and any attempt to extend that relationship will be met with a quick trip to the door. I provide friends of a sort, but I am not one of them. Good day.~ #8290 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.3
  SAY @9 /* ~Take offense if you will, but also take it outside. I neither wish to know, nor associate, with any of the clientele. The best customer is an anonymous customer. Trying to be otherwise will likely get your name in the obituaries before it gets known here.~ #8291 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.4
  SAY @10 /* ~Save the manners for the harlots. You'll not endear yourself to me regardless, so don't even try. Goodbye.~ #8292 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from:
  SAY @11 /* ~It is a continuing annoyance to me that, because ANYONE is welcome in the Undercellar, they think anyone is welcome in my personal office. I ask you again to leave.~ #8293 */
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 7 // from:
  SAY @12 /* ~Please, all of my girls are available for friends of mine. I must warn you to avoid Slythe and Krystin. They are crazies, and shouldn't be trifled with.~ #8301 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from:
  SAY @13 /* ~You've outstayed your welcome!~ #8976 */
  IF ~~ THEN EXIT
END
