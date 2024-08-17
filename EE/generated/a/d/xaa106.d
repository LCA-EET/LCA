// creator  : F:\Beamdog\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\FTOWBA.DLG
// game     : F:\Beamdog\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\FTOWBA.DLG
// dialog   : F:\Beamdog\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA106~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #4 /* Triggers after states #: 1 2 3 5 even though they appear after this state */
~  RandomNum(9,1)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Leave me be!~ #1630 */
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~  Global("Chapter","GLOBAL",7)
~ THEN BEGIN 1 // from:
  SAY @2 /* ~Help! Help! It's them. The mass murderers! Help!~ #1631 */
  IF ~~ THEN EXIT
END

IF WEIGHT #1 ~  Global("Chapter","GLOBAL",7)
~ THEN BEGIN 2 // from:
  SAY @3 /* ~That new nobleman, Sarevok, he's a most handsome fellow.~ #1632 */
  IF ~~ THEN EXIT
END

IF WEIGHT #2 ~  Global("Chapter","GLOBAL",7)
~ THEN BEGIN 3 // from:
  SAY @4 /* ~I think Sarevok would make the best replacement to Entar as Grand Duke. He seems like he's got lots locked up in that noodle of his.~ #1633 */
  IF ~~ THEN UNSOLVED_JOURNAL @5 /* ~The Rise of Sarevok
Sarevok seems to be a popular choice to replace the deceased Entar Silvershield.~ #27091 */ EXIT
END

IF WEIGHT #12 /* Triggers after states #: 5 6 9 12 13 14 15 16 even though they appear after this state */
~  RandomNum(9,9)
~ THEN BEGIN 4 // from:
  SAY @6 /* ~My husband tells me that the bandits have been hired by Amn to soften up our city for an invasion. It's so frightening, ain't it?~ #1634 */
  IF ~  GlobalLT("chapter","GLOBAL",5)
~ THEN JOURNAL @7 /* ~Rising Tensions with Amn
Tension seems to be building between Baldur's Gate and Amn.~ #27092 */ EXIT
  IF ~  GlobalGT("chapter","GLOBAL",4)
~ THEN EXIT
END

IF WEIGHT #3 ~  StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 5 // from:
  SAY @8 /* ~I'm just a simple little lady. I don't know much at all.~ #6418 */
  IF ~~ THEN EXIT
END

IF WEIGHT #5 ~  RandomNum(9,2)
~ THEN BEGIN 6 // from:
  SAY @9 /* ~I recognize you! Ye're those adventurers who've been cleaning up on all the bandits, ain't ya? The leader of yer bunch is named <CHARNAME>. Why are ya up here at the Gate? Are ya restocking, or 'ave ya come 'cause there's evil to fight in town?~ #17693 */
  IF ~~ THEN REPLY @10 /* ~We're just here to stock up on adventuring equipment. Would you know a good place we could do that?~ #17696 */ GOTO 7
  IF ~~ THEN REPLY @11 /* ~Evil? Here in Baldur's Gate? Why would you think that? Have you heard rumors or any some such?~ #17697 */ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @12 /* ~There's a lot of stores about that sell equipment and weapons, I'm sure you'll find one soon enough. Oh! It's so exciting to meet some real live adventurers. Bye, bye <CHARNAME>.~ #17698 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY @13 /* ~I heard some weird stuff about the merchant consortiums in town. Both the Seven Suns and Merchants' League have been acting real strange of late. Then there's that new Iron Throne that just moved in. They took over that huge abandoned tower in the west side of town. Well, that's all I really know. It was nice meeting some real adventurers. Bye now.~ #17699 */
  IF ~~ THEN EXIT
END

IF WEIGHT #6 ~  RandomNum(9,3)
~ THEN BEGIN 9 // from:
  SAY @14 /* ~Alas, the rot's got poor Ghorak. I doubt he'll be with us much longer.~ #17732 */
  IF ~~ THEN REPLY @15 /* ~The rot? Why, that's horrible...~ #17737 */ GOTO 10
  IF ~~ THEN REPLY @16 /* ~Who's Ghorak? I don't recognize the name.~ #17738 */ GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY @17 /* ~Aye, it is a horror indeed and e'en more so in one who once shone so brightly. He was one of Tymora's own, and, alongside his brother Kereph, the kindest soul. But then ill befell him... It is not like Lady Luck to abandon and persecute her faithful so.~ #17739 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.1
  SAY @18 /* ~He was a fixture in this city, sharp of wit and fair of face... Indeed I loved him once, we all did! Ghorak and his brother Kereph. We were like giggling girls scattering ourselves at their feet and they treated each of us with such respect and dignity. Lady Luck loved them too, it seemed, but she is a fickle and cruel mistress. Kereph is long dead, you see, and Ghorak bears the plague. Aye, like a spurned lover, Tymora turns her loves away that she may draw them closer in the end.~ #17740 */
  IF ~~ THEN EXIT
END

IF WEIGHT #7 ~  RandomNum(9,4)
~ THEN BEGIN 12 // from:
  SAY @19 /* ~I've heard lots of talk about war: It's all my husband and his loudmouth friends can talk about. I don't believe it for one second! Amn and Baldur's Gate have always been at peace, and I think it'll stay that way.~ #17957 */
  IF ~~ THEN EXIT
END

IF WEIGHT #8 ~  RandomNum(9,5)
~ THEN BEGIN 13 // from:
  SAY @20 /* ~Those new Iron Throne people scare me. Ever since they moved into the west tower, things have gotten worse for us little folk. I know it's kinda paranoid to blame the Throne for all the bandits and the iron thing, but none of that happened until they showed up.~ #17958 */
  IF ~~ THEN EXIT
END

IF WEIGHT #9 ~  RandomNum(9,6)
~ THEN BEGIN 14 // from:
  SAY @21 /* ~Hello there! You're adventurers, aren't you? You must be real brave to have to fight monsters and such. Um, you know if any of you are wantin' to have a good time, I know a place: It's called the Splurging Sturgeon, and it's located in the northeast of town.~ #17959 */
  IF ~~ THEN EXIT
END

IF WEIGHT #10 ~  RandomNum(9,7)
~ THEN BEGIN 15 // from:
  SAY @22 /* ~I'm sorry to be so intrusive, but aren't you those adventurers who cleared out the monsters at the mines of Nashkel? I just have to say how pleasant it is to see people who are willing to risk their lives to help others.~ #17960 */
  IF ~~ THEN EXIT
END

IF WEIGHT #11 ~  RandomNum(9,8)
~ THEN BEGIN 16 // from:
  SAY @23 /* ~Adventurers! Don't you go telling any children your fanciful stories about monsters and swashbuckling. All you do is get the wrong idea in their heads.~ #17962 */
  IF ~~ THEN EXIT
END
