// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\RESAR.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\RESAR.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA255~

IF ~~ THEN BEGIN 0 // from:
  SAY @1 /* ~A very expensive setback you have cost us! Your incompetence means counterfeit ships in ports by year's end! A more profound dishonor to the brilliant craftsmen of my land I cannot imagine! Protests from our statesmen will be launched, and your local governor will be made to see our point of view. In the between, all record of this furtive attempt will be erased. Apologies, but this includes you!~ #2837 */
  IF ~~ THEN DO ~EraseJournalEntry(@3)
SetGlobal("ResarAttack","GLOBAL",1)
Enemy()
~ SOLVED_JOURNAL @2 /* ~Alatos and the Thieves' Guild
I couldn't bring back all of the skyship components for Alatos and Resar, his Halruaan contact. The thieves want to cover up the whole affair and dispense with me permanently.~ #27413 */ EXIT
  IF ~  Global("NarlenMove","GLOBAL",7)
!Exists("Narlen")
!Dead("Narlen")
~ THEN DO ~SetGlobal("NarlenMove","GLOBAL",8)
ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("NarCut",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from:
  SAY @4 /* ~The recovery of our secret is most welcome, but the scrutiny your actions bring will do much damage. I must erase all knowledge of this plan by removing all expendable people. This unfortunately means you. Apologies, but you must die!~ #2838 */
  IF ~~ THEN DO ~EraseJournalEntry(@3)
SetGlobal("ResarAttack","GLOBAL",1)
Enemy()
~ SOLVED_JOURNAL @5 /* ~Alatos and the Thieves' Guild
I successfully retrieved the skyship components for Alatos and Resar, his Halruaan contact. Unfortunately, they want to keep the whole affair as secret as possible, and I have been deemed expendable. It seems likely this was planned from the start.~ #27414 */ EXIT
  IF ~  Global("NarlenMove","GLOBAL",7)
!Exists("Narlen")
!Dead("Narlen")
~ THEN DO ~SetGlobal("NarlenMove","GLOBAL",8)
ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("NarCut",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from:
  SAY @6 /* ~Alatos was most assuring in his description of your abilities. Right he was, and it is unfortunate I must close all loose ends. This includes potential loose tongues, and, though talented, you are also expendable. I offer my sorrows, but you must die!~ #2839 */
  IF ~~ THEN DO ~EraseJournalEntry(@3)
SetGlobal("ResarAttack","GLOBAL",1)
Enemy()
~ SOLVED_JOURNAL @5 /* ~Alatos and the Thieves' Guild
I successfully retrieved the skyship components for Alatos and Resar, his Halruaan contact. Unfortunately, they want to keep the whole affair as secret as possible, and I have been deemed expendable. It seems likely this was planned from the start.~ #27414 */ EXIT
  IF ~  Global("NarlenMove","GLOBAL",7)
!Exists("Narlen")
!Dead("Narlen")
~ THEN DO ~SetGlobal("NarlenMove","GLOBAL",8)
ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("NarCut",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY @7 /* ~This was risky venture from the start, and though you have undoubtedly slowed ship building, they will now be on guard. Further thievery is impossible, so now to expensive diplomacy. All record of this attempt must be destroyed, including all those expendable. My sorrow to your family, but you must die!~ #2840 */
  IF ~~ THEN DO ~EraseJournalEntry(@3)
SetGlobal("ResarAttack","GLOBAL",1)
Enemy()
~ EXIT
  IF ~  Global("NarlenMove","GLOBAL",7)
!Exists("Narlen")
!Dead("Narlen")
~ THEN DO ~SetGlobal("NarlenMove","GLOBAL",8)
ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("NarCut",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY @8 /* ~Wha... *GURK*!~ #2841 */
  IF ~~ THEN DO ~Kill("Resar")
~ EXTERN ~XAA257~ 15
END

IF ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 5 // from:
  SAY @9 /* ~Sorry I am, friend. It doesn't matter I say, for it has been preordained you are to die. I cannot halt the others from attacking.~ #6474 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from:
  SAY @10 /* ~I shall enjoy your demise!~ #9069 */
  IF ~~ THEN EXIT
END

IF ~  True()
~ THEN BEGIN 7 // from:
  SAY @11 /* ~Don't bother me! Do you know who I am? I'm an envoy of the mighty nation of Halruua, and if you value your miserable life, you'll step away immediately.~ #10088 */
  IF ~~ THEN EXIT
END
