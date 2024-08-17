// creator  : F:\Beamdog\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\SAILDAN.DLG
// game     : F:\Beamdog\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\SAILDAN.DLG
// dialog   : F:\Beamdog\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA220~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Ahoy there, mate! Pull ye up a chair an' let us carouse together! We all here be sailors of the Yawnin' Mary, testin' our land livers while on shore leave.~ #19624 */
  IF ~~ THEN REPLY @2 /* ~The Yawning Mary?~ #19625 */ GOTO 1
  IF ~~ THEN REPLY @3 /* ~From where do you hail, sailor?~ #19626 */ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @4 /* ~Aye, she's a fine ship who moves at a fast clip, there's ne'er been better, you have my word. We'd 'ave outsailed Balduran 'imself, were 'e still 'ere to meet th' challenge!~ #19627 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @5 /* ~What's dat? Aye, I be a salt-encrusted citizen of the High Seas, I be, an' a ten-times survivor of the scurvy wastin'. Neverwinter, Waterdeep, the Gate, Athkatla—I'll lay anchor in them all but I'll ne'er rest easy wit' their shiftless firmaments beneat' me.~ #19628 */
  IF ~~ THEN EXIT
END
