// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\HOUSG6.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\HOUSG6.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA424~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Frightfully sorry, but this room is off limits for the time being. No offense intended, you understand. It's just that we've a rather nervous guest who insists that their room be kept under strictest lock and key. Frightfully sorry, but you cannot pass.~ #8386 */
  IF ~~ THEN EXIT
END

IF ~  NumTimesTalkedTo(1)
~ THEN BEGIN 1 // from:
  SAY @2 /* ~I am afraid I shall have to ask you to step back. Please do so, as I can only give so many warnings before I must enforce my request. I must also remind you that the city guard always sides with house security in matters such as this, so any disturbance here will surely bring them out to assist.~ #8387 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from:
  SAY @3 /* ~You have all of a few seconds to step back! I cannot allow entry, and if you persist, I shall be forced to apply my blade! Please do not force the issue!~ #8388 */
  IF ~~ THEN EXIT
END

IF ~  NumTimesTalkedTo(2)
~ THEN BEGIN 3 // from:
  SAY @4 /* ~I have little alternative! Defend yourself!~ #8389 */
  IF ~~ THEN DO ~Shout(99)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY @5 /* ~You have one chance to leave this instant. Hesitate and you lose your head.~ #8390 */
  IF ~~ THEN EXIT
END

IF ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 5 // from:
  SAY @6 /* ~Enter as you please, good friend! I trust that you'll be no trouble.~ #8391 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from:
  SAY @7 /* ~You're not welcome here! Get out or be thrown out!~ #9257 */
  IF ~~ THEN EXIT
END
