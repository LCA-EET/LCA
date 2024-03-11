// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\CORDYR.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\CORDYR.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA238~

IF ~  ReputationGT(Player1,14)
Global("HelpCordyr","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Pleasure to meet you. The name's Cordyr.~ #15187 */
  IF ~~ THEN EXIT
END

IF ~  Global("HelpCordyr","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY @2 /* ~Hi. The name's Cordyr. I'm from down south, where the Cloud Peaks tumble into the sea. A pair of sirines has been trying to move into the area. They sank my fishing boat and put me right out of work. *sigh* If they weren't so dang beautiful, it would be a lot easier to convince people of how much of a nuisance they can be.~ #15188 */
  IF ~~ THEN DO ~SetGlobal("HelpCordyr","GLOBAL",1)
~ UNSOLVED_JOURNAL @3 /* ~Cordyr and the Sirines
A fisherman named Cordyr tells of a pair of sirines in his fishing grounds, near where the Cloud Peaks meet the sea.~ #26919 */ EXIT
END

IF ~  !Dead("Sil")
Global("HelpCordyr","GLOBAL",1)
~ THEN BEGIN 2 // from:
  SAY @4 /* ~You don't have the heart, do you...? It's all right, I know where you're coming from. I couldn't do it myself.~ #15199 */
  IF ~~ THEN EXIT
END

IF ~  Global("HelpCordyr","GLOBAL",1)
ReputationLT(Player1,8)
~ THEN BEGIN 3 // from:
  SAY @5 /* ~You did it, huh? I've got to admit you have a steelier heart than I'd ever want. Here, take this flame arrow scroll. Should have given it to you before, I suppose, but I really didn't think you would survive. Ah well. Better late than never?~ #15200 */
  IF ~~ THEN DO ~EraseJournalEntry(@3)
GiveItem("SCRL1F",LastTalkedToBy)
AddexperienceParty(1000)
SetGlobal("HelpCordyr","GLOBAL",2)
~ SOLVED_JOURNAL @6 /* ~Cordyr and the Sirines
Glad that I dealt with the sirines encroaching on Cordyr's fishing grounds, the fisherman rewarded me with a magic scroll.~ #26920 */ EXIT
END

IF ~  Global("HelpCordyr","GLOBAL",1)
~ THEN BEGIN 4 // from:
  SAY @7 /* ~Thanks for your help. It's a dirty deed but it's the cost of civilization, isn't it? Here, take this haste scroll as payment. I probably should have given it to you before, but I didn't think you would survive. Better late than never?~ #15201 */
  IF ~~ THEN DO ~EraseJournalEntry(@3)
GiveItem("SCRL1H",LastTalkedToBy)
AddexperienceParty(1000)
SetGlobal("HelpCordyr","GLOBAL",2)
~ SOLVED_JOURNAL @6 /* ~Cordyr and the Sirines
Glad that I dealt with the sirines encroaching on Cordyr's fishing grounds, the fisherman rewarded me with a magic scroll.~ #26920 */ EXIT
END

IF ~  False()
~ THEN BEGIN 5 // from:
  SAY @8 /* ~I'm no fighter, friend.~ #15202 */
  IF ~~ THEN EXIT
END

IF ~  True()
~ THEN BEGIN 6 // from:
  SAY @9 /* ~If you find a great deal on a fishing boat, let me know.~ #15203 */
  IF ~~ THEN EXIT
END
