// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\REGINA.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\REGINA.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA376~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Hello! A fine and sunny day to you, wherever you wake and wherever you lay! Always willing to extend a hand to a new face, er, so to speak.~ #11481 */
  IF ~~ THEN REPLY @2 /* ~What can you tell me of this city?~ #11482 */ GOTO 1
  IF ~~ THEN REPLY @3 /* ~What do you do? Are you an adventurer like myself?~ #11483 */ GOTO 3
  IF ~~ THEN REPLY @4 /* ~Have you heard anything interesting lately? Any quests and such?~ #11484 */ GOTO 8
END

IF ~~ THEN BEGIN 1 // from: 8.1 3.1 0.0
  SAY @5 /* ~The city? Why, the city is a fine place, quite expansive in its majesty and most comprehensive in its lay of the land. It's a wonder to behold, and once it's held you don't want to let go. Such grandeur and beauty contained within its plain and modest settings and citizens. It exudes a quiet nobility that practically screams from every rooftop. It is a wonder. It is simplicity. It is Baldur's Gate!~ #11485 */
  IF ~~ THEN REPLY @6 /* ~That was amazing. You talked for hours and yet said absolutely nothing.~ #11486 */ GOTO 2
  IF ~~ THEN REPLY @7 /* ~I see. And what do you do? Are you an adventurer like myself?~ #11489 */ GOTO 3
  IF ~~ THEN REPLY @4 /* ~Have you heard anything interesting lately? Any quests and such?~ #11490 */ GOTO 8
END

IF ~~ THEN BEGIN 2 // from: 8.0 3.0 1.0
  SAY @8 /* ~Well, I suppose on some levels what I said could be construed as... as nothing.~ #11487 */
  IF ~~ THEN REPLY @9 /* ~You have absolutely no valuable information at all, do you?~ #11488 */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 8.2 1.1 0.1
  SAY @10 /* ~Adventuring! A fine and glorious pastime that passes time like no other! To seek the highs and lows of the depths and heights; to follow in the footsteps leading down paths never trod upon; to plumb the furthest reaches of oneself while exploring the very world just outside your door. Such a life is a grand one indeed, though simple in its complexity!~ #11491 */
  IF ~~ THEN REPLY @11 /* ~A stunning display. You talked for hours and yet said absolutely nothing.~ #11492 */ GOTO 2
  IF ~~ THEN REPLY @12 /* ~All right then, what can you tell me of this city?~ #11493 */ GOTO 1
  IF ~~ THEN REPLY @4 /* ~Have you heard anything interesting lately? Any quests and such?~ #11507 */ GOTO 8
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY @13 /* ~If indeed you are asking whether my discourse has validity derived from dispensing useful tidbits of otherwise unknown stratagem and statistics... then... ahh... no.~ #11496 */
  IF ~~ THEN REPLY @14 /* ~I thought not.~ #11497 */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @15 /* ~All righty, then.~ #11498 */
  IF ~~ THEN REPLY @16 /* ~Yep.~ #11499 */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @17 /* ~I'll be off then.~ #11500 */
  IF ~~ THEN REPLY @18 /* ~Indeed.~ #11501 */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @19 /* ~Righty O.~ #11502 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.2 1.2 0.2
  SAY @20 /* ~Quests? Quests indeed! To seek that which is to be sought, and find what could be found by looking in the right spot, as long as they were left there in the first place. Discovering that which was known but forgotten, but then remembered and sought anew though old to begin with! Such pursuits are well worth following!~ #11503 */
  IF ~~ THEN REPLY @21 /* ~Utterly amazing. You talked for hours and yet said absolutely nothing.~ #11504 */ GOTO 2
  IF ~~ THEN REPLY @12 /* ~All right then, what can you tell me of this city?~ #11505 */ GOTO 1
  IF ~~ THEN REPLY @3 /* ~What do you do? Are you an adventurer like myself?~ #11506 */ GOTO 3
END
