// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\TRIADO.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\TRIADO.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA224~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Out! Away! Fly while you can! There be madness here and I can stand it no longer!~ #20187 */
  IF ~~ THEN REPLY @2 /* ~Madness in this much-lauded tower? That there be malice here, I have no doubt... but madness? Never.~ #20188 */ GOTO 1
  IF ~~ THEN REPLY @3 /* ~Calm down and explain yourself, good sir, that I may understand you better.~ #20189 */ GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @4 /* ~Then clearly you know it not! Madness seethes here and amongst Sarevok's crazed acolytes it overflows. I'm a simple merchant after a pretty coin but I swear it isn't worth it to suffer this place so long.~ #20190 */
  IF ~  PartyGoldGT(149)
~ THEN REPLY @5 /* ~After a pretty coin, are you? Well, here's a chance to earn some off a saner soul. I'll pay 150 pieces of pretty coin if you tell me everything you know about this place.~ #20191 */ GOTO 2
  IF ~  PartyGoldGT(299)
~ THEN REPLY @6 /* ~After a pretty coin, are you? Would 300 gold pieces be enough to make you stay awhile and tell me what you know of this place?~ #20192 */ DO ~TakePartyGold(300)
~ GOTO 3
  IF ~~ THEN REPLY @7 /* ~Sarevok's acolytes? Who do you speak of and where may I find them?~ #20193 */ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @8 /* ~A saner soul? I doubt that very much because while I go this way, you go that! Keep your maddened money, too, but beware of the acolytes. You will know them when you see them, I have no doubt. Now release your grip on my arm as I can bear this place no longer.~ #20195 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY @9 /* ~Aye, I guess, but I'll not be long about it. The acolytes I mentioned, they stay with Thaldorn on the fifth floor. Six of them, there are, and their madness comes in pairs: two priests, two mages, two hardened thugs. But there is something wrong about them. If they were here for the simple joys of a pretty coin, I'd have no quarrel with them. But no, they would not deign to be so human. There is something more, some secret agenda and I know not what... Ack, even now I can feel their pestilential eyes upon me. Your lucre can keep me here no longer, I'm afraid.~ #20199 */
  IF ~~ THEN DO ~EscapeArea()
~ UNSOLVED_JOURNAL @10 /* ~Investigating the Iron Throne
The Iron Throne tower is apparently no place for the faint of heart. A very distraught merchant by the name of Triadore nearly bowled me over on his reckless charge for the exit. Luckily I was able to lure him into a frantic (and expensive) conversation. According to his hurried testimony, the tower's fifth floor is home to a small fanatical sect of some sort, acolytes of someone named Sarevok. It is becoming more and more apparent that there is more behind the Iron Throne than simple greed. Some secret agenda is afoot, and I must discover it.~ #27494 */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY @11 /* ~You'll know them when you see them and, should you continue on your maddened course, I have no doubt that see them you will! Now I beg your leave for I would rather gnaw through my own wrist than tarry here a moment longer. Fare thee well.~ #20208 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.1
  SAY @12 /* ~Calm down? Calm down while Sarevok's acolytes practice their magic cacophony above me? I daresay not, stranger! I daresay not at all!~ #20211 */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END
