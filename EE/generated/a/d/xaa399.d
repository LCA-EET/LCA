// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\QUINN.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\QUINN.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA399~

IF ~~ THEN BEGIN 0 // from:
  SAY @1 /* ~I'd rather not talk to anyone, right now.~ #15118 */
  IF ~~ THEN EXIT
END

IF ~  Global("HelpQuinn","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY @2 /* ~There's some ankhegs causin' chaos upriver, alon' the east bank, just north o' that bitch priestess. They took down my pal, Nester, and dang near hauled me under too. 'At's why I'm so glum now. Nester's mama's gonna want somepin' of 'is to bury, but I'm still gettin' too many nightmares and all to go back there.~ #15119 */
  IF ~~ THEN DO ~SetGlobal("HelpQuinn","GLOBAL",1)
~ UNSOLVED_JOURNAL @3 /* ~Quinn's Friend
A young gnome by the name of Quinn informs me that some ankhegs have been causing chaos upriver from Baldur's Gate, along the east bank, just north of the witch Tenya's home. His friend Nester has already met his fate in their midst, and Quinn has asked me to return there in the hopes of finding something for the burial. To be honest, I don't expect there'll be too much of Nester left... but the boy is grieving, so I will do as asked. Quinn can be found in the northwest section of the city.~ #27376 */ EXIT
END

IF ~  PartyHasItem("DAGG06")
Global("HelpQuinn","GLOBAL",1)
~ THEN BEGIN 2 // from:
  SAY @4 /* ~ 'At's Nester's dagger you got there! I saw 'im drive it between the plates of 'at ankheg afore it pulled 'im under. 'Ere, take this gem of mine. We 'ad come to the city to pawn it afore things all went wrong. *sniff* 'Is momma's gonna be real grateful to ya.~ #15122 */
  IF ~~ THEN DO ~EraseJournalEntry(@3)
TakePartyItem("DAGG06")
GiveItemCreate("MISC32",LastTalkedToBy,0,0,0)
SetGlobal("HelpQuinn","GLOBAL",2)
AddexperienceParty(950)
ReputationInc(1)
~ SOLVED_JOURNAL @5 /* ~Quinn's Friend
For recovering the dagger with which Nester stabbed the ankheg before he died, Quinn gave me the gem he and Nester had planned to sell.~ #27377 */ EXIT
END

IF ~  Global("HelpQuinn","GLOBAL",1)
~ THEN BEGIN 3 // from:
  SAY @6 /* ~I'm real sorry for troublin' you last time with 'at awful story 'bout Nester and the ankhegs. It's all true but it ain't right to foist all your troubles on other people like that. I hopes ya don't think I did wrong...~ #15123 */
  IF ~~ THEN EXIT
END

IF ~  False()
~ THEN BEGIN 4 // from:
  SAY @7 /* ~The ankhegs are comin'! The ankhegs are comin'!~ #15124 */
  IF ~~ THEN EXIT
END

IF ~  True()
~ THEN BEGIN 5 // from:
  SAY @8 /* ~Nester's momma says you done good... And I ain't gettin' no nightmares 'bout them ankhegs anymore neither. Just wish Nester coulda known ya.~ #15125 */
  IF ~~ THEN EXIT
END
