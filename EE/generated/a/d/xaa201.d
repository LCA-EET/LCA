// creator  : F:\Beamdog\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\RODNIM.DLG
// game     : F:\Beamdog\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\RODNIM.DLG
// dialog   : F:\Beamdog\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA201~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Hey there, pal. If ye're trying to get inside the palace, ye're outta luck. Common folk aren't allowed in there. Grand Dukes don't let no one in, unless there's some sort of special event going on.~ #11786 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END
