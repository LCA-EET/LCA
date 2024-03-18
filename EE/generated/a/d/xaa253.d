// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\RATCHI.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\RATCHI.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA253~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~I am Ratchild! I destroy all those who oppose my people. Feel the wrath of Ratchild: Feel my wrath and tremble!~ #19770 */
  IF ~~ THEN REPLY @2 /* ~Feel your wrath? By all the gods, you're just a kobold. I think you might have a small mix up on who should be trembling. Draw steel my friends, and let's cut up these little dog-men!~ #19771 */ GOTO 1
  IF ~~ THEN REPLY @3 /* ~Who exactly are your people?~ #19772 */ GOTO 3
  IF ~~ THEN REPLY @4 /* ~Please don't hurt us, oh mighty Ratchild.~ #19773 */ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @5 /* ~You underestimate Ratchild! You and friends will pay for underestimation. Yip yip yip!~ #19774 */
  IF ~~ THEN DO ~CreateCreature("KOBCOMM",[2159.1673],S)
CreateCreature("KOBCOMM",[2211.1848],S)
CreateCreature("KOBCOMM",[2455.1828],S)
CreateCreature("KOBCOMM",[2534.1769],S)
CreateCreature("KOBCOMM",[2594.1739],S)
CreateCreature("KOBCOMM",[2660.1972],S)
CreateCreature("KOBCOMM",[2647.2091],S)
CreateCreature("KOBCOMM",[2047.2233],S)
CreateCreature("KOBCOMM",[1972.2088],S)
CreateCreature("KOBCOMM",[1931.1913],S)
CreateCreature("KOBCOMM",[2727.2113],S)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @6 /* ~You mock Ratchild! No one mocks Ratchild and lives! Yip, yip yip!~ #19775 */
  IF ~~ THEN DO ~CreateCreature("KOBCOMM",[2159.1673],S)
CreateCreature("KOBCOMM",[2211.1848],S)
CreateCreature("KOBCOMM",[2455.1828],S)
CreateCreature("KOBCOMM",[2534.1769],S)
CreateCreature("KOBCOMM",[2594.1739],S)
CreateCreature("KOBCOMM",[2660.1972],S)
CreateCreature("KOBCOMM",[2647.2091],S)
CreateCreature("KOBCOMM",[2047.2233],S)
CreateCreature("KOBCOMM",[1972.2088],S)
CreateCreature("KOBCOMM",[1931.1913],S)
CreateCreature("KOBCOMM",[2727.2113],S)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1
  SAY @7 /* ~My people are rulers of the deeps. Where your peoples wastes are sent, that where we thrive. Ratchild's tribe is stronger than all others. Ratchild's tribe trained to beat anyone. ANYONE. No one can stand up to Ratchild and tribe!~ #19776 */
  IF ~~ THEN REPLY @8 /* ~That's wonderful that you live down here where all of our waste is dumped. You should be real proud.~ #19777 */ GOTO 4
  IF ~~ THEN REPLY @9 /* ~I'm pretty sure we can beat you, Ratchild.~ #19778 */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.1 3.0
  SAY @10 /* ~You underestimate Ratchild. Many have done so. Even Harpers have done so. All have felt Ratchild's wrath!~ #19779 */
  IF ~~ THEN DO ~CreateCreature("KOBCOMM",[2159.1673],S)
CreateCreature("KOBCOMM",[2211.1848],S)
CreateCreature("KOBCOMM",[2455.1828],S)
CreateCreature("KOBCOMM",[2534.1769],S)
CreateCreature("KOBCOMM",[2594.1739],S)
CreateCreature("KOBCOMM",[2660.1972],S)
CreateCreature("KOBCOMM",[2647.2091],S)
CreateCreature("KOBCOMM",[2047.2233],S)
CreateCreature("KOBCOMM",[1972.2088],S)
CreateCreature("KOBCOMM",[1931.1913],S)
CreateCreature("KOBCOMM",[2727.2113],S)
Enemy()
~ EXIT
END
