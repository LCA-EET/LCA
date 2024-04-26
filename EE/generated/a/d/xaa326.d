// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\AGNASI.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\AGNASI.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA326~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 1 2 even though they appear after this state */
~  True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~May the luck of the Lady be with you.~ #15225 */
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~  Global("HelpGhorak","GLOBAL",1)
PartyHasItem("MISC81")
~ THEN BEGIN 1 // from:
  SAY @2 /* ~The skull of Kereph... He was a priest here long ago, and Tymora blessed him greatly. Too greatly, perhaps. Made some people jealous... Made him some enemies... Then one night we found him dead, his body torn and broken, his head gone. No one ever found the killer. No one ever asked. It is best to leave that sort of justice to Tymora. Perhaps this is her forgiveness, no? Go well in the luck of Tymora, stranger. Find Ghorak, for he should now be cured of his affliction.~ #15226 */
  IF ~~ THEN DO ~SetGlobal("HelpAgnasia","GLOBAL",1)
TakePartyItem("MISC81")
AddexperienceParty(1000)
ReputationInc(1)
~ UNSOLVED_JOURNAL @3 /* ~Ghorak the Diseased
Now that the skull of Kereph is in the hands of a follower of Tymora, Ghorak's curse should be lifted. I should check on him soon.~ #27129 */ EXIT
END

IF WEIGHT #1 ~  False()
~ THEN BEGIN 2 // from:
  SAY @4 /* ~May Tymora curse you!~ #15227 */
  IF ~~ THEN EXIT
END
