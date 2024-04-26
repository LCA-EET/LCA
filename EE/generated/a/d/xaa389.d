// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\RFRIEN.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\RFRIEN.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA389~

IF ~  !Dead("Mulahey")
~ THEN BEGIN 0 // from:
  SAY @1 /* ~I heard there's some sort o' trouble in Nashkel. Somethin' sinister has been moving about in the Nashkel mines. Nobody seems to know for sure. Too busy coping with the bandit raids and such.~ #14725 */
  IF ~  GlobalLT("chapter","GLOBAL",3)
~ THEN JOURNAL @2 /* ~Troubles in the Region: Bandit Problems

There are rumors of something disrupting operations in the Nashkel mines, contributing to the iron shortage.~ #27401 */ EXIT
  IF ~  GlobalGT("chapter","GLOBAL",2)
~ THEN EXIT
END

IF ~  GlobalGT("Chapter","GLOBAL",6)
~ THEN BEGIN 1 // from:
  SAY @3 /* ~Did you hear about the assassinations at Candlekeep? Seems that the leaders of the Iron Throne went and got themselves killed. Those same people who helped the folks down in Nashkel did the deed. They were Amnian agents, I hear. Anyhow, one of the dead guys' son is now the leader, Sarevok is his name I think.~ #14726 */
  IF ~~ THEN JOURNAL @4 /* ~Rising Tensions with Amn
Sarevok has assumed command of the Iron Throne. I am still accused of the former leaders' murders, though it is thought I was an agent of Amn. Someone is intent upon pushing the region into war.~ #27388 */ EXIT
END

IF ~  Dead("Mulahey")
~ THEN BEGIN 2 // from:
  SAY @5 /* ~Hear about the heroes of Nashkel? Some good folk—mercenaries, it's said—came down and solved all that town's problems. I hope they weren't helping just because of the money.~ #14727 */
  IF ~~ THEN JOURNAL @6 /* ~Tales of my actions are spreading, though I'm not sure I like the term "mercenaries."~ #16319 */ EXIT
END

IF ~  True()
~ THEN BEGIN 3 // from:
  SAY @7 /* ~I hear relations haven't been going too good 'tween the two powers in this region. The Grand Dukes supposedly accused Amn of all the raiding that's been happening along the roads. Not a good thing to go accusin' the most powerful country in the western world.~ #14728 */
  IF ~  GlobalLT("chapter","GLOBAL",5)
~ THEN JOURNAL @8 /* ~Rising Tensions with Amn
Tension seems to be building between Baldur's Gate and Amn.~ #27092 */ EXIT
  IF ~  GlobalGT("chapter","GLOBAL",4)
~ THEN EXIT
END

IF ~  True()
~ THEN BEGIN 4 // from:
  SAY @9 /* ~I hear some units of the Flaming Fist have been sent to Beregost. Seems like the Grand Dukes are getting real paranoid about Amn. Lots of people think that Amn might be behind the iron shortage. Could be a prelude to war.~ #14729 */
  IF ~  GlobalLT("chapter","GLOBAL",5)
~ THEN JOURNAL @10 /* ~Rising Tensions with Amn
Tensions are growing in the region due to the supposed threat from Amn, though the evidence I've seen is somewhat confused.~ #27390 */ EXIT
  IF ~  GlobalGT("chapter","GLOBAL",4)
~ THEN EXIT
END

IF ~  True()
~ THEN BEGIN 5 // from:
  SAY @11 /* ~Iron's so scarce these days, you'd think it was as valuable as gold. Not a good thing, not a good thing at all. Ain't going to be long before no one can afford to be well equipped. What will the guards do then?~ #14731 */
  IF ~  GlobalLT("chapter","GLOBAL",3)
~ THEN JOURNAL @12 /* ~Troubles in the Region: Iron Crisis

Iron continues to be scarce, driving prices of tools and weapons ever higher.~ #27395 */ EXIT
  IF ~  GlobalGT("chapter","GLOBAL",2)
~ THEN EXIT
END

IF ~  True()
~ THEN BEGIN 6 // from:
  SAY @13 /* ~It's been really weird these past few months. Iron's been going bad, falling apart almost if it were rustin' for no particular reason. From what I hear, most o' this "bad iron" comes from the mines at Nashkel. Can't trust those Amnian miners; probably some scheme they've come up with.~ #14732 */
  IF ~  GlobalLT("chapter","GLOBAL",3)
~ THEN JOURNAL @14 /* ~Troubles in the Region: Iron Crisis

Iron from the Nashkel mines is nearly useless when smelted. People suspect that the denizens of Nashkel are doing it intentionally, as part of some grandiose plot in the service of Amn.~ #27396 */ EXIT
  IF ~  GlobalGT("chapter","GLOBAL",2)
~ THEN EXIT
END

IF ~  !Dead("Mulahey")
~ THEN BEGIN 7 // from:
  SAY @15 /* ~Lots of trouble down in Nashkel. Monsters or some such are said to be killing the workers at the Nashkel mines.~ #14733 */
  IF ~  GlobalLT("chapter","GLOBAL",3)
~ THEN JOURNAL @2 /* ~Troubles in the Region: Bandit Problems

There are rumors of something disrupting operations in the Nashkel mines, contributing to the iron shortage.~ #27401 */ EXIT
  IF ~  GlobalGT("chapter","GLOBAL",2)
~ THEN EXIT
END

IF ~  !Dead("Mulahey")
~ THEN BEGIN 8 // from:
  SAY @16 /* ~You hear of the Midsummer fair down in Nashkel? I hear it's actually doing quite well, despite all the trouble that town's had recently.~ #14734 */
  IF ~~ THEN JOURNAL @17 /* ~There is a festival east of Nashkel. Many people are gathering there.~ #5815 */ EXIT
END
