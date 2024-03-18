// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\RANCE.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\RANCE.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA261~

IF ~  Global("Baldurian","GLOBAL",1)
!Global("VailLeft","AR0719",1)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Wha... Get back! Who are ye? More of Ramazith's trickery, or are ye paired with that snake Degrodel? I swear none shall see the day when I get between feuding mages ever again! Well? Speak up! Are ye for me or against me?~ #10538 */
  IF ~~ THEN REPLY @2 /* ~I am neither, as I care little for you at all. I released you to find the Helm of Balduran.~ #10539 */ GOTO 1
  IF ~~ THEN REPLY @3 /* ~I saved you from your prison of stone, did I not? I ask only one thing for this: that you give me the Helm of Balduran.~ #10540 */ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @4 /* ~I see. Well, I do not have such an item, nor would I tell you if I did. Dead with a treasure would be better than living without. Question the others if ye will; I care only that I can walk once more.~ #10541 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @5 /* ~I suppose such a request is reasonable, though I cannot fulfill it. I do not have such a thing, though you may ask the others in my party. Perhaps they know where this helm can be found, though if it were me, I would not tell you. Such a treasure is worth dying for.~ #10542 */
  IF ~~ THEN EXIT
END

IF ~  True()
~ THEN BEGIN 3 // from:
  SAY @6 /* ~Wha—? Get back! Who are ye? More of Ramazith's trickery, or are ye paired with that snake Degrodel? I swear none shall see the day when I get between feuding mages ever again!~ #10593 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END
