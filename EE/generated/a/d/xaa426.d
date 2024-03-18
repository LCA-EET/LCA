// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\ENTAR.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\ENTAR.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA426~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 2 7 even though they appear after this state */
~  IsGabber("Skie")
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Skie! Whom are you skulking around with?~ #32846 */
  IF ~~ THEN EXTERN ~SKIEJ~ 9
END

IF WEIGHT #3 /* Triggers after states #: 2 7 even though they appear after this state */
~  True()
~ THEN BEGIN 1 // from:
  SAY @2 /* ~Who are you? What are you doing in my estate? Guards! We have intruders.~ #1517 */
  IF ~~ THEN DO ~SetGlobal("EntarCalled","GLOBAL",1)
SaveObjectLocation("GLOBAL","DefaultLocation",Myself)
Shout(99)
CreateCreature("GUARD",[188.1064],NE)
CreateCreature("GUARD",[215.1080],NE)
CreateCreature("GUARD",[251.1070],NE)
EscapeArea()
~ EXIT
  IF ~  IsValidForPartyDialogue("Skie")
~ THEN EXTERN ~SKIEJ~ 9
END

IF WEIGHT #0 ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 2 // from:
  SAY @3 /* ~I am Entar Silvershield, one of the Grand Dukes of Baldur's Gate! I can tell you many things, friend. Perhaps you'd care to hear about the Iron Throne. They're a new mercantile organization that have set up in Baldur's Gate. Most of us are rather concerned over some of the Iron Throne's actions, but they have promised to supply us with iron, a resource that has been very rare of late. We are suspicious of Amn, our neighbor to the south. We think that Amn has allied with the Zhentarim in an attempt to annex our glorious city. However, Scar feels that the evidence against Amn was too easy to come by, almost as if someone were trying to frame Amn to cause friction between our two nations. Since you are my best friend, I should tell you I have a very beautiful daughter. Her name is Skie, and she is now of marriageable age.~ #6136 */
  IF ~~ THEN JOURNAL @4 /* ~When we charmed Entar Silvershield, he told us quite a bit. He said that the Iron Throne had recently set up in Baldur's Gate and was offering to sell iron to the city. The Grand Dukes are worried about an invasion from Amn and are thus taking the Iron Throne's offer seriously, despite some reservations about their intentions.~ #6598 */ EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY @5 /* ~Friends? I should hope not. I see that boy you've been sneaking about with is in present company. Strange that he is back in Baldur's Gate.~ #32849 */
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @6 /* ~Don't think for a moment, dear Skie, that I do not know what you get up to - I will not have it! This commoner does not have a hint of breeding in him. Why do you insist on putting me through this unending hardship? Our lives are difficult enough without your indelicacies. Now, please, remove them from our home or I'll have the guards do it.~ #32850 */
  IF ~~ THEN EXTERN ~SKIEJ~ 10
END

IF ~~ THEN BEGIN 5 // from:
  SAY @7 /* ~I'll NOT hear another word. I'll see you at supper, we have important guests coming. Now that you are of marriageable age, we need to find you an appropriate husband. Not that he'll know what he's in for, but there you have it. With that I will take my leave. Skie, I expect them gone.~ #32852 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 6 // from:
  SAY @8 /* ~Friends? I only see your brother's murderers. I put my trust in you, a mistake I shan't make twice. Why have you come here? To gloat? Do you seek forgiveness? You shall enjoy neither. Get you and your so-called friends gone, Skie, or I'll have them removed permanently.~ #32848 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF WEIGHT #1 ~  !IsValidForPartyDialogue("Skie")
IsValidForPartyDialogue("Kagain")
~ THEN BEGIN 7 // from:
  SAY @9 /* ~Get out. Get out! Was letting my son die not enough? Guards!~ #32858 */
  IF ~~ THEN DO ~SetGlobal("EntarCalled","GLOBAL",1)
SaveObjectLocation("GLOBAL","DefaultLocation",Myself)
Shout(99)
CreateCreature("GUARD",[188.1064],NE)
CreateCreature("GUARD",[215.1080],NE)
CreateCreature("GUARD",[251.1070],NE)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 8 // from:
  SAY @10 /* ~I do not have the time for this. Now, please, remove them from our home or I’ll have the guards do it.~ #32859 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END
