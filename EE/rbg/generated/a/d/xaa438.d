// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\RBALDU.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\RBALDU.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA438~

IF ~  GlobalGT("Chapter","GLOBAL",6)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~I keep on hearing a lot about a military buildup. Angelo, the new commander of the Fist, has been sending a lot of the Fist down south to Beregost. I fear a war might be brewing.~ #14701 */
  IF ~~ THEN JOURNAL @2 /* ~Rising Tensions with Amn
The new commander of the Flaming Fist has been sending many soldiers south to Beregost. People fear a war might be brewing.~ #27386 */ EXIT
END

IF ~  GlobalGT("Chapter","GLOBAL",6)
~ THEN BEGIN 1 // from:
  SAY @3 /* ~In the coming election, I think that that Sarevok lad is gonna take it. He has a lot of support from the nobility, and they're the ones with the clout.~ #14702 */
  IF ~~ THEN UNSOLVED_JOURNAL @4 /* ~The Rise of Sarevok
Sarevok is very popular with the nobility, and that may win him the ducal seat in Baldur's Gate.~ #27387 */ EXIT
END

IF ~  GlobalGT("Chapter","GLOBAL",6)
~ THEN BEGIN 2 // from:
  SAY @5 /* ~Did you hear about the assassinations at Candlekeep? Seems that the leaders of the Iron Throne went and got themselves killed. Those same people who helped the folks down in Nashkel did the deed. They were Amnian agents, I hear. Anyhow, one of the dead guys' son is now the leader, Sarevok is his name I think.~ #14703 */
  IF ~~ THEN JOURNAL @6 /* ~Rising Tensions with Amn
Sarevok has assumed command of the Iron Throne. I am still accused of the former leaders' murders, though it is thought I was an agent of Amn. Someone is intent upon pushing the region into war.~ #27388 */ EXIT
END

IF ~  True()
~ THEN BEGIN 3 // from:
  SAY @7 /* ~Ever since the Iron Throne moved into that mansion in the southwest, strange things have been afoot. I don't know what it is about that building, but it gives me the creeps.~ #14704 */
  IF ~~ THEN UNSOLVED_JOURNAL @8 /* ~Investigating the Iron Throne
Some whisper that strange happenings abound in the new home of the Iron Throne in southwestern Baldur's Gate.~ #27389 */ EXIT
END

IF ~  GlobalGT("Chapter","GLOBAL",6)
~ THEN BEGIN 4 // from:
  SAY @9 /* ~Everyone seems to be dropping dead these days. First Entar Silvershield, then Eltan gets sick, and now Scar's dead. Something's brewing, and it's nothin' good.~ #14705 */
  IF ~~ THEN UNSOLVED_JOURNAL @10 /* ~Duke Eltan's Illness
Rumor has it that recent tragedies involving Entar Silvershield and Scar are connected to Duke Eltan's sudden illness.~ #27138 */ EXIT
END

IF ~  Dead("Mulahey")
~ THEN BEGIN 5 // from:
  SAY @11 /* ~Hear about the heroes of Nashkel? Some good folk—mercenaries, it's said—came down and solved all that town's problems.~ #14706 */
  IF ~~ THEN JOURNAL @12 /* ~Tales of my actions are spreading, though I'm not sure I like the term "mercenaries."~ #16319 */ EXIT
END

IF ~  True()
~ THEN BEGIN 6 // from:
  SAY @13 /* ~I hear some units of the Flaming Fist have been sent to Beregost. Seems like the Grand Dukes are getting real paranoid about Amn.~ #14707 */
  IF ~  GlobalLT("chapter","GLOBAL",5)
~ THEN JOURNAL @14 /* ~Rising Tensions with Amn
Tensions are growing in the region due to the supposed threat from Amn, though the evidence I've seen is somewhat confused.~ #27390 */ EXIT
  IF ~  GlobalGT("chapter","GLOBAL",4)
~ THEN EXIT
END

IF ~  True()
~ THEN BEGIN 7 // from:
  SAY @15 /* ~I hear that Amn's behind all those bandits in the south. People 'round here have been talking about how Amn and the Zhents are in league together. It makes me worry about what kinda things they could be scheming.~ #14708 */
  IF ~~ THEN JOURNAL @16 /* ~Rising Tensions with Amn
Rumors are spreading that Amn and the Zhentarim are in league. There exists only sketchy evidence to support this theory, however.~ #27391 */ EXIT
END

IF ~  True()
~ THEN BEGIN 8 // from:
  SAY @17 /* ~I hear there's rumors of Shadow Thieves here in Baldur's Gate. I dunno if it's true, but if it is, I betcha they're here to scout out for an Amnian invasion.~ #14709 */
  IF ~~ THEN JOURNAL @18 /* ~Rising Tensions with Amn
People fear that the Shadow Thieves are scouting for an Amnian invasion, but such rumors are more prevalent than any evidence supporting them.~ #27392 */ EXIT
END

IF ~  GlobalLT("Chapter","GLOBAL",6)
~ THEN BEGIN 9 // from:
  SAY @19 /* ~I heard that the Merchants' League Estate is having a lot of trouble. Seems that the three owners are squabbling about how to run the place. The Iron Throne's been taking advantage of that situation. If things continue as they are, the Throne soon won't have any competition. Kinda strange considering they only moved into the city a couple of years back.~ #14710 */
  IF ~~ THEN UNSOLVED_JOURNAL @20 /* ~Investigating the Iron Throne
The Iron Throne is quite powerful in Baldur's Gate, even though they only arrived there recently. Something may be disrupting the Merchants' League, reducing its ability to compete.~ #27393 */ EXIT
END

IF ~  GlobalGT("Chapter","GLOBAL",6)
~ THEN BEGIN 10 // from:
  SAY @21 /* ~I still can't believe that Entar Silvershield was killed. From what's been being said, all the evidence points to the Shadow Thieves, and thus to Amn itself. Tymora help us all.~ #14711 */
  IF ~~ THEN JOURNAL @22 /* ~Rising Tensions with Amn
It is believed that Shadow Thieves from Amn killed Entar Silvershield. People fear this event is the prelude to an invasion.~ #27394 */ EXIT
END

IF ~  True()
~ THEN BEGIN 11 // from:
  SAY @23 /* ~Iron's so scarce these days, you'd think it was as valuable as gold. Not a good thing, not a good thing at all.~ #14712 */
  IF ~  GlobalLT("chapter","GLOBAL",3)
~ THEN JOURNAL @24 /* ~Troubles in the Region: Iron Crisis

Iron continues to be scarce, driving prices of tools and weapons ever higher.~ #27395 */ EXIT
  IF ~  GlobalGT("chapter","GLOBAL",2)
~ THEN EXIT
END

IF ~  True()
~ THEN BEGIN 12 // from:
  SAY @25 /* ~It's been really weird these past few months. Iron's been going bad, falling apart almost if it were rustin' for no particular reason. From what I hear, most o' this "bad iron" comes from the mines at Nashkel. Can't trust those Amnian miners, probably some scheme they've come up with.~ #14713 */
  IF ~  GlobalLT("chapter","GLOBAL",3)
~ THEN JOURNAL @26 /* ~Troubles in the Region: Iron Crisis

Iron from the Nashkel mines is nearly useless when smelted. People suspect that the denizens of Nashkel are doing it intentionally, as part of some grandiose plot in the service of Amn.~ #27396 */ EXIT
  IF ~  GlobalGT("chapter","GLOBAL",2)
~ THEN EXIT
END

IF ~  GlobalGT("Chapter","GLOBAL",6)
~ THEN BEGIN 13 // from:
  SAY @27 /* ~It's really sad about Eltan. I hope he recovers from his illness. He was the most beloved of the Grand Dukes.~ #14714 */
  IF ~~ THEN UNSOLVED_JOURNAL @28 /* ~Duke Eltan's Illness
Duke Eltan is the most beloved and respected of the Grand Dukes of Baldur's Gate. His death would leave an immense hole in the leadership of the region.~ #27139 */ EXIT
END

IF ~  Dead("Mulahey")
~ THEN BEGIN 14 // from:
  SAY @29 /* ~Seems like the iron problem down in Nashkel's solved. A group of mercenaries went into the mines and cleared up what's been causin' all the trouble. Brave folk to go fightin' whatever was down there.~ #14715 */
  IF ~~ THEN JOURNAL @12 /* ~Tales of my actions are spreading, though I'm not sure I like the term "mercenaries."~ #16319 */ EXIT
END

IF ~  GlobalLT("CheckedSevenSuns","GLOBAL",2)
GlobalLT("Chapter","GLOBAL",6)
~ THEN BEGIN 15 // from:
  SAY @30 /* ~The Seven Suns has been acting very strange of late. The company seems to be intent on losing money. Even a simple bartender like myself can see the foolishness of some of their decisions. I doubt the Iron throne is crying about it though, they're making a lot of inroads because of the Suns mistakes.~ #14716 */
  IF ~~ THEN UNSOLVED_JOURNAL @31 /* ~The Seven Suns
The Seven Suns has been making foolish business decisions of late, allowing the Iron Throne to increase their own power.~ #27397 */ EXIT
END

IF ~  GlobalGT("Chapter","GLOBAL",6)
~ THEN BEGIN 16 // from:
  SAY @32 /* ~There's a big price on the heads of those folks who offed the Iron Throne's leaders. 5,000 gold or more I think.~ #14717 */
  IF ~~ THEN UNSOLVED_JOURNAL @33 /* ~I'm apparently worth 5,000 gold to any bounty hunter who brings me in for murder. I don't suppose any of them will believe me when I say I've been framed.~ #27398 */ EXIT
END

IF ~  GlobalGT("Chapter","GLOBAL",6)
~ THEN BEGIN 17 // from:
  SAY @34 /* ~With Entar Silvershield dead, they're going to have to elect a new Grand Duke. Seems like a lot of people think it'll be the new leader of the Iron Throne, Sarevok.~ #14718 */
  IF ~~ THEN UNSOLVED_JOURNAL @35 /* ~The Rise of Sarevok
With the leaders of the Iron Throne out of the way, Sarevok took control. Now he is stepping into the leadership gap left by the death of Entar Silvershield. People between him and power tend to die young.~ #27399 */ EXIT
END

IF ~  True()
~ THEN BEGIN 18 // from:
  SAY @36 /* ~With iron being so scarce, I don't see how the Flaming Fist is gonna continue to be an effective police force. No new weapons and no new armor, not a good thing.~ #14719 */
  IF ~  GlobalLT("chapter","GLOBAL",3)
~ THEN JOURNAL @37 /* ~Troubles in the Region: Iron Crisis

The Flaming Fist is in danger of losing its ability to protect the region. The condition of their weapons and armor is suffering, just as it is for everyone else.~ #27400 */ EXIT
  IF ~  GlobalGT("chapter","GLOBAL",2)
~ THEN EXIT
END
