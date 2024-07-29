// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\SHOP08.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\SHOP08.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA311~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Hi, I'm Well-Adjusted Al, and my prices are sensible. I used to be called "Crazy Al," but therapy has convinced me that selling plate armor for 3 gold pieces and a small duck was no way to get ahead in business.~ #15392 */
  IF ~~ THEN REPLY @2 /* ~Ooookay. Just show me what you have and I'll be on my way.~ #15393 */ DO ~StartStore("xaa138",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY @3 /* ~Thanks, but no thanks. Get your hand off my arm. I'll be going now. Goodbye.~ #15394 */ EXIT
END
