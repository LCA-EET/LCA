// creator  : F:\Beamdog\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\THALDO.DLG
// game     : F:\Beamdog\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\THALDO.DLG
// dialog   : F:\Beamdog\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA382~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 5 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~What are you doing here?! Get out of this building before I call the guards.~ #1459 */
  IF ~~ THEN REPLY @2 /* ~We can't do that until you answer some questions.~ #1477 */ GOTO 1
  IF ~~ THEN REPLY @3 /* ~Sure, if you want us to leave, we'll leave.~ #1478 */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @4 /* ~You're here to kill me, aren't you? You can't kill me! Do you know who I am? I'm Thaldorn, one of the leaders of the Iron Throne.~ #1460 */
  IF ~~ THEN REPLY @5 /* ~You're too much of a whiner, I think we're going to have to kill you.~ #1479 */ GOTO 3
  IF ~~ THEN REPLY @7 /* ~Could you just tell us where the other leaders of the Iron Throne are located? If you do, we'll spare your miserable life.~ #1480 */ UNSOLVED_JOURNAL @6 /* ~Investigating the Iron Throne
When we threatened Thaldorn, he told us that Rieltar and Brunos, his business partners, are at Candlekeep.~ #27479 */ GOTO 2
  IF ~~ THEN REPLY @8 /* ~Where can we find documents that will implicate your organization for its involvement with the bandit raids and iron shortage? Tell us or die.~ #1481 */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 3.0 1.1
  SAY @9 /* ~The other leaders, Brunos and Rieltar, they're at Candlekeep, attending business with some benefactors from the south. Will you let me go now, please?~ #1461 */
  IF ~~ THEN REPLY @10 /* ~First, tell us where we can find hard evidence that could implicate your business in all of the deviltry going on along the Coast Way.~ #1482 */ GOTO 3
  IF ~~ THEN REPLY @11 /* ~You're free to go.~ #1483 */ DO ~EscapeArea()
~ EXIT
  IF ~~ THEN REPLY @12 /* ~Sorry, we can't let you live, you know too much.~ #1484 */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.0 1.2 1.0
  SAY @13 /* ~Please don't hurt me! You can find everything you need with Rieltar, he's the true leader of the operation. He always carries everything on his person. Am I free to go?~ #1462 */
  IF ~~ THEN REPLY @14 /* ~If you tell us where the leaders of the Iron Throne are located, we might let you go free.~ #1485 */ UNSOLVED_JOURNAL @6 /* ~Investigating the Iron Throne
When we threatened Thaldorn, he told us that Rieltar and Brunos, his business partners, are at Candlekeep.~ #27479 */ GOTO 2
  IF ~~ THEN REPLY @15 /* ~Get outta here.~ #1486 */ DO ~EscapeArea()
~ EXIT
  IF ~~ THEN REPLY @16 /* ~Sorry, but you're going to have to die.~ #1487 */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.2 2.2
  SAY @17 /* ~NOOOOoooooo. Please, please let me live.~ #1463 */
  IF ~~ THEN REPLY @18 /* ~Wow, I've never seen such a complete lack of dignity. For giving us such a good show, you're free to go.~ #1488 */ DO ~EscapeArea()
~ EXIT
  IF ~~ THEN REPLY @19 /* ~You're still a dead man, Thaldorn.~ #1489 */ DO ~Enemy()
~ EXIT
END

IF WEIGHT #0 ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 5 // from:
  SAY @20 /* ~I'm one of the western divisional leaders of the Iron Throne. The others are at Candlekeep negotiating with the Knights of the Shield. We have been creating a misinformation campaign to blame the Zhentarim for all the troubles in the region. We are trying to create tensions between the governments of Baldur's Gate and Amn. With iron being the most important resource in a war, the Baldurian government will have to go to us in order to get any. We have disrupted all iron trade through the region using the Blacktalon mercenaries and the Chill. The only known iron mine in the region is at Nashkel, and we have effectively crippled that mine. We have our own mine operating in Cloakwood. When the Baldurian government comes to us for iron, we will be able to make exorbitant trading demands, and thus become the preeminent trading power in this region.~ #6072 */
  IF ~~ THEN JOURNAL @21 /* ~Investigating the Iron Throne
I charmed Thaldorn, who revealed much about the Iron Throne. To become the dominant trading cartel on the Sword Coast, they have launched a misinformation campaign to raise tensions between Amn and Baldur's Gate. They were behind both the mine disruptions and the bandit attacks, ensuring that they controlled the only remaining source of iron. With war imminent, they can charge any price they like for their iron.~ #27480 */ EXIT
END

IF ~~ THEN BEGIN 6 // from:
  SAY @22 /* ~Leave me be or you'll regret it!~ #9073 */
  IF ~~ THEN EXIT
END
