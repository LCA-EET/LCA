// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\RAHVIN.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\RAHVIN.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA378~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~A rather strange place to meet living members of the sunlit realms. I am curious as to why you are here. Could I rightly assume that you have something in common with the man Sarevok Anchev?~ #19800 */
  IF ~~ THEN REPLY @2 /* ~We have nothing to do with Sarevok! He is a vile man, deserving only death.~ #19803 */ GOTO 3
  IF ~~ THEN REPLY @3 /* ~We are cohorts of Sarevok.~ #19804 */ GOTO 2
  IF ~~ THEN REPLY @4 /* ~It is none of your concern why we're here or who we are!~ #19805 */ GOTO 1
  IF ~~ THEN REPLY @5 /* ~Before we say anything more, would you be willing to tell us who you are?~ #19806 */ GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 0.2
  SAY @6 /* ~You are wrong. It is very much our concern. Since you don't seem willing to tell us your identity, then we'll just have to determine it from the possessions on your corpse.~ #19807 */
  IF ~~ THEN DO ~ActionOverride("GORF",Enemy())
ActionOverride("HASEO",Enemy())
ActionOverride("SHALDRISSA",Enemy())
ActionOverride("CARSTON",Enemy())
ActionOverride("WUDEI",Enemy())
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @7 /* ~You serve Sarevok, and not the Iron Throne? This becomes more and more interesting, the more I discover. So... does your master think he can escape the wrath of the Iron Throne? Did he think he could kill three members of the high council and escape the Throne's vengeance?~ #19808 */
  IF ~~ THEN REPLY @8 /* ~Our master can do what he wishes! There are none more powerful than Sarevok.~ #19811 */ GOTO 4
  IF ~~ THEN REPLY @9 /* ~Who are you to question the actions of Sarevok?!~ #19812 */ GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 0.0
  SAY @10 /* ~You have a strong hatred of him, then? He doesn't seem to be that skilled at making friends. I am Rahvin, in the employ of the Iron Throne. My companions and I have traveled from Sembia to learn what has been happening to our operations in Baldur's Gate. It seems that Sarevok has been quite busy, murdering Rieltar and any other who got in his way. What he's done to you is anyone's guess. Wait! I recognize you now: you're <CHARNAME>! Ah, so you've come down here to end your crusade against the Iron Throne. Well, it'll be simple enough to dispatch you before we do Sarevok. My superiors will be quite happy to learn of your demise.~ #19813 */
  IF ~~ THEN DO ~ActionOverride("GORF",Enemy())
ActionOverride("HASEO",Enemy())
ActionOverride("SHALDRISSA",Enemy())
ActionOverride("CARSTON",Enemy())
ActionOverride("WUDEI",Enemy())
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY @11 /* ~None are more powerful than Sarevok? Well, you're not Sarevok, and you won't be staying too much longer in the land of the living.~ #19820 */
  IF ~~ THEN DO ~ActionOverride("GORF",Enemy())
ActionOverride("HASEO",Enemy())
ActionOverride("SHALDRISSA",Enemy())
ActionOverride("CARSTON",Enemy())
ActionOverride("WUDEI",Enemy())
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1 0.3
  SAY @12 /* ~I am Rahvin. My friends and I are mercenaries in the employ of the Iron Throne. We've been sent to hunt down Sarevok. Seems as if he went crazy and started murdering all who got in his way, including Rieltar, and the Throne don't take too well to having their high-ups killed. You know... the longer I talk to you the more familiar you become. You're <CHARNAME>, aren't you? Well, well, well... it seems as if we've gotten lucky. Killing you will give us a nice hefty bonus. Sorry 'bout this, but you're not wanted dead or alive, only dead.~ #19821 */
  IF ~~ THEN DO ~ActionOverride("GORF",Enemy())
ActionOverride("HASEO",Enemy())
ActionOverride("SHALDRISSA",Enemy())
ActionOverride("CARSTON",Enemy())
ActionOverride("WUDEI",Enemy())
Enemy()
~ EXIT
END
