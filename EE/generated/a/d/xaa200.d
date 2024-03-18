// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\LUSSEL.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\LUSSEL.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA200~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Belch... Drink up.~ #15145 */
  IF ~~ THEN EXIT
END

IF WEIGHT #1 ~  NumTimesTalkedTo(1)
~ THEN BEGIN 1 // from:
  SAY @2 /* ~...and then I said, "You ain't no tasloi! You're my wife!" Har, har, har... *belch* Here, have another drink.~ #15147 */
  IF ~~ THEN EXIT
END

IF WEIGHT #2 ~  NumTimesTalkedTo(2)
~ THEN BEGIN 2 // from:
  SAY @3 /* ~They artifishally age shish shtuff, you know... Sure, with shlimes and oozshes and shtuff... I betsha 100 gold pieshesh thatsha wooden go find 'em andsh kill 'em all offsh! *belch* Har, har, har...~ #15148 */
  IF ~  PartyGoldGT(99)
~ THEN REPLY @5 /* ~100 gold pieshesh it ish, Lushelyn my owld paaaal! *hic*~ #15750 */ DO ~SetGlobal("HelpLusselyn","GLOBAL",1)
TakePartyGold(100)
~ UNSOLVED_JOURNAL @4 /* ~Shlimes and Oozshes
I gafe 100 gold pieshesh to Lushelyn, my paaaaal atshuh Splurgin' Sturgeon, for shafe keepin'... Heh, hee... 'E shaysh dat dere'sh shlimes and oozshes shomewheresh inshuh tavern here, and I can dubble them gold pieshesh jusht fer killin' them off... Ohhh, my brain hurtsh...~ #27247 */ EXIT
  IF ~~ THEN REPLY @6 /* ~Ye're too mutsh, Lushelyn, you owld shlippery fish! You'd jusht shpend it all on boozshe and shtuff...~ #15749 */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 4 5 even though they appear after this state */
~  Global("HelpLusselyn","GLOBAL",0)
~ THEN BEGIN 3 // from:
  SAY @7 /* ~...No, I ain't shpaying you nushin until I shee a bit o' shlime juish on yer collar...~ #15149 */
  IF ~~ THEN EXIT
END

IF WEIGHT #3 ~  Dead("Jellmul")
Global("HelpLusselyn","GLOBAL",1)
!Global("LusselynGaveGold","GLOBAL",1)
~ THEN BEGIN 4 // from:
  SAY @8 /* ~*belch* Ye're a good one, you are... Here'sh yer 100 gold and... Aw, shootsh, I only gotsh 60 gold pieshesh o' mine left in my wallet. Ya tooksh too long an' my throat gotsh dry and shtuff... Aw, ye're a good one, though... *belch*~ #15150 */
  IF ~~ THEN DO ~EraseJournalEntry(@4)
GivePartyGold(160)
SetGlobal("LusselynGaveGold","GLOBAL",1)
~ SOLVED_JOURNAL @9 /* ~Shlimes and Oozshes
Fer shlaying shlimes, Lushelln shelled out only shum golde pieshesh.~ #27248 */ EXIT
END

IF WEIGHT #4 ~  False()
~ THEN BEGIN 5 // from:
  SAY @10 /* ~*belch* Oh, no you don'tsch...~ #15151 */
  IF ~~ THEN EXIT
END

IF WEIGHT #6 ~  True()
~ THEN BEGIN 6 // from:
  SAY @11 /* ~*belch* How's it goin', eh?~ #15152 */
  IF ~~ THEN EXIT
END
