// creator  : F:\Beamdog\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\ACHEN.DLG
// game     : F:\Beamdog\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\ACHEN.DLG
// dialog   : F:\Beamdog\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA245~

IF ~  Global("Baldurian","GLOBAL",1)
!Global("VailLeft","AR0719",1)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~I live again? The last thing I remember is some old mage and a funny-looking lizard with beady eyes. Wha—? What happened?~ #10515 */
  IF ~~ THEN REPLY @2 /* ~I care not! Give me the Helm of Balduran or you'll wish I had left you as a statue!~ #10516 */ GOTO 1
  IF ~~ THEN REPLY @3 /* ~Easy now, you have been petrified for some time. Take a moment to gather your senses.~ #10517 */ GOTO 2
  IF ~~ THEN REPLY @4 /* ~Your assault on Ramazith cost you dearly. I have freed you, and I ask for the Helm of Balduran as payment.~ #10518 */ GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 2.1 0.0
  SAY @5 /* ~What? I know of no such thing! Please, I was new to the group and was not party to their plans. They said our target was evil and only worthy of death. I fought in good faith. If they took anything, it was after I... after... Please let me go. My family must be worried sick!~ #10519 */
  IF ~~ THEN REPLY @6 /* ~Fine, be on your way. I shall hunt you down if you are lying though!~ #10520 */ GOTO 3
  IF ~~ THEN REPLY @7 /* ~They can wait! You will stay put until I have what I came for!~ #10524 */ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @8 /* ~Petrified? For how long? My family... my family will be worried to death! I must get back to them!~ #10521 */
  IF ~~ THEN REPLY @9 /* ~All in good time. First, I would like you to give me the Helm of Balduran. I have been hired to retrieve it.~ #10522 */ GOTO 5
  IF ~~ THEN REPLY @10 /* ~Your family can wait! I will have the Helm of Balduran from you before you take a step!~ #10523 */ GOTO 1
END

IF ~~ THEN BEGIN 3 // from: 1.0
  SAY @11 /* ~Thank you so much! Fare thee well!~ #10525 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY @12 /* ~If... if I must. I'll not risk my life again after coming so close to death. Hopefully my fellows can help you, but I cannot. I will wait if you wish.~ #10526 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.0 0.2
  SAY @13 /* ~Helm of Balduran? I have no such item. One of my fellows might possess it, but I do not know. Ask them if you will, I can tell you nothing more.~ #10527 */
  IF ~~ THEN EXIT
END

IF ~  True()
~ THEN BEGIN 6 // from:
  SAY @14 /* ~I... I live again? The last thing I remember is... is some old mage and a funny looking lizard with beady eyes. Where am I now? I must go... find...~ #10596 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END
