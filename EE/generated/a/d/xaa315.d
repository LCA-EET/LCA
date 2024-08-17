// creator  : F:\Beamdog\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\CHIMP5.DLG
// game     : F:\Beamdog\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\CHIMP5.DLG
// dialog   : F:\Beamdog\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA315~

IF ~  OR(3)
Global("ScarKilled","GLOBAL",1)
Global("ScarKilled","GLOBAL",2)
Global("OpenDialogue","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Hey there, pal. If ye're here to see Duke Eltan, just go up the stairs beside me. He should be waiting in his office.~ #11340 */
  IF ~~ THEN EXIT
END

IF ~  OR(3)
!Global("ScarKilled","GLOBAL",1)
!Global("ScarKilled","GLOBAL",2)
!Global("OpenDialogue","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY @2 /* ~Hey there, pal. If ye're looking for Duke Eltan, ye're outta luck. The duke is a busy man, so I suggest ye talk to Scar.~ #31079 */
  IF ~~ THEN EXIT
END
