// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\LARRIA.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\LARRIA.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA242~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Stay away from me, dirt men! Come no closer!~ #18934 */
  IF ~~ THEN REPLY @2 /* ~We'll come as close as we want.~ #18935 */ GOTO 1
  IF ~~ THEN REPLY @3 /* ~What are you doing so far away from your home? Aren't you a sirine? Don't you belong in the ocean?~ #18936 */ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 5.1 4.0 3.0 2.0 0.0
  SAY @4 /* ~I warned you to stay away. You shall die as this home family died!~ #18937 */
  IF ~~ THEN DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @5 /* ~You say right. I am not meant to be here. But that not matter. Get out now. Leave!~ #18938 */
  IF ~~ THEN REPLY @6 /* ~We're not going anywhere, and we're not about to be ordered around by some blue-skinned water woman.~ #18939 */ GOTO 1
  IF ~~ THEN REPLY @7 /* ~How did you get here? Maybe there's something we can do to help.~ #18940 */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY @8 /* ~There is nothing you can do to help! Larriaz was caught by landhome fishermen, then brought to their dirt land as prize. They try to take advantage of Larriaz, and they all die! You die too, unless you leave, NOW!~ #18941 */
  IF ~~ THEN REPLY @9 /* ~We can't just leave you here, Larriaz. You just murdered an entire family. You're going to have to be punished.~ #18942 */ GOTO 1
  IF ~~ THEN REPLY @10 /* ~Calm down, Larriaz. We can help.~ #18943 */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY @11 /* ~Can't help Larriaz. She been away from water too long. Larriaz dying now. She wish to die alone! Get out! GET OUT! Larriaz no want stupid dirt men watch her die.~ #18944 */
  IF ~~ THEN REPLY @12 /* ~We'll just stay here with you. We've never seen a sirine die from exposure. It might be a learning experience.~ #18945 */ GOTO 1
  IF ~~ THEN REPLY @13 /* ~But we might be able to do something to help you. At least let us try.~ #18946 */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY @14 /* ~There is nothing you can do! Leave Larriaz alone! She say it for last time! Let her die in peace!~ #18947 */
  IF ~~ THEN REPLY @15 /* ~Okay, Okay, we're out of here.~ #18948 */ GOTO 6
  IF ~~ THEN REPLY @16 /* ~But we can help you, Larriaz. Stay calm and we'll see what we can do.~ #18949 */ GOTO 1
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @17 /* ~Thank you for letting Larriaz die in peace.~ #18950 */
  IF ~~ THEN DO ~Kill("LARRIA")
~ EXIT
END
