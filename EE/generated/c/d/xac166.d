// creator  : F:\Baldur's Gate EE\00806\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDZARE.DLG
// game     : F:\Baldur's Gate EE\00806
// source   : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDZARE.DLG
// dialog   : F:\Baldur's Gate EE\00806\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAC166~

IF ~  GlobalLT("bd_plot","global",400)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~I'm sorry, I was thinking about... well, it's nothing. I should get back to work. ~ #49112 */
  IF ~  Global("bd_deneld_plot","bd4000",2)
Global("bd_deneld_zare","bd4000",0)
~ THEN REPLY @2 /* ~I'd like to know what you were thinking about.~ #49113 */ GOTO 2
  IF ~~ THEN REPLY @3 /* ~Goodbye, then.~ #49114 */ GOTO 1
  IF ~~ THEN REPLY @4 /* ~Yes, you should.~ #49115 */ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.2 0.1
  SAY @5 /* ~May the Shining Lady's light guide you always.~ #49116 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY @6 /* ~Don't misunderstand me, but... I was thinking about Caelar.~ #49117 */
  IF ~~ THEN REPLY @7 /* ~That's understandable. She is our leader.~ #49118 */ GOTO 5
  IF ~  IsValidForPartyDialogue("safana")
~ THEN REPLY @8 /* ~She's an attractive woman.~ #49119 */ EXTERN ~BDSAFANJ~ 214
  IF ~  !IsValidForPartyDialogue("safana")
~ THEN REPLY @8 /* ~She's an attractive woman.~ #49119 */ GOTO 3
  IF ~  IsValidForPartyDialogue("khalid")
~ THEN REPLY @9 /* ~You should be thinking more about battle.~ #49120 */ EXTERN ~BDKHALIJ~ 86
  IF ~  !IsValidForPartyDialogue("khalid")
~ THEN REPLY @9 /* ~You should be thinking more about battle.~ #49120 */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.2
  SAY @10 /* ~No! That's not what I mean at all.~ #49123 */
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 2.4
  SAY @11 /* ~I know, I know. She's so mesmerizing, though.~ #49124 */
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0 3.0 2.0
  SAY @12 /* ~When Caelar spoke in my village, every word she said seemed to—to sear itself on my heart. It was like I was listening to a herald of utter truth. Following her was an easy decision—it was OBVIOUSLY the thing to do.~ #49126 */
  IF ~~ THEN REPLY @13 /* ~She is a gifted orator, to be sure.~ #49127 */ GOTO 7
  IF ~~ THEN REPLY @14 /* ~And now? Do you still believe the things she says?~ #49128 */ GOTO 6
  IF ~~ THEN REPLY @15 /* ~Natural leaders always attract natural followers.~ #49129 */ GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY @16 /* ~Caelar could never lie, I'm sure of it.~ #49130 */
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0 5.2 5.0
  SAY @17 /* ~She shines like the morning star. Had anyone else come to my town, I'd not have joined the crusade. But I'll follow the Shining Lady anywhere.~ #49131 */
  IF ~~ THEN REPLY @18 /* ~I understand. Thanks for talking to me.~ #49132 */ GOTO 8
  IF ~~ THEN REPLY @19 /* ~That's creepy. You know that, right? Creepy.~ #49133 */ GOTO 8
  IF ~~ THEN REPLY @20 /* ~Into the Nine Hells itself, it seems.~ #49134 */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.2 7.1 7.0
  SAY @21 /* ~Sorry, I didn't catch that. My mind was elsewhere. It's time for a drill now, but I can speak with you later. ~ #49135 */
  IF ~~ THEN DO ~SetGlobal("bd_deneld_zare","bd4000",1)
~ UNSOLVED_JOURNAL @22 /* ~Understanding the Crusade

After I talk to a few people around camp regarding the crusade, I can return to Morale Officer Deneld.

I spoke to new recruit named Zare. He's utterly committed to Caelar, willing to do anything and everything she asks. I begin to understand how he, and others, are willing to follow Caelar into the Hells themselves.~ #58811 */ EXIT
END
