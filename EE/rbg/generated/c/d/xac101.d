// creator  : F:\Baldur's Gate EE\00806\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDROHMA.DLG
// game     : F:\Baldur's Gate EE\00806
// source   : F:\ASSETCONVERTER\PRECONVERT\SOD\DLG\BDROHMA.DLG
// dialog   : F:\Baldur's Gate EE\00806\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAC101~

IF ~  GlobalLT("bd_rohma_banter","bd0101",7)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Mama! Who is that? Is that the hero?~ #35413 */
  IF ~~ THEN REPLY @2 /* ~Captain Corwin, who is this delightful child?~ #35414 */ DO ~SetGlobal("bd_rohma_banter","bd0101",7)
ActionOverride("bdschael",SetGlobal("bd_retreat","locals",1))
ActionOverride("bdaudam",SetGlobal("bd_retreat","locals",1))
SetGlobal("bd_retreat","locals",1)
~ GOTO 1
  IF ~~ THEN REPLY @3 /* ~You have children, Captain?~ #35415 */ DO ~SetGlobal("bd_rohma_banter","bd0101",7)
ActionOverride("bdschael",SetGlobal("bd_retreat","locals",1))
ActionOverride("bdaudam",SetGlobal("bd_retreat","locals",1))
SetGlobal("bd_retreat","locals",1)
~ EXTERN ~BDSCHAEL~ 255
  IF ~~ THEN REPLY @4 /* ~The time for farewells is over. We must be on our way.~ #35416 */ DO ~SetGlobal("bd_rohma_banter","bd0101",7)
ActionOverride("bdschael",SetGlobal("bd_retreat","locals",1))
ActionOverride("bdaudam",SetGlobal("bd_retreat","locals",1))
SetGlobal("bd_retreat","locals",1)
~ EXTERN ~BDSCHAEL~ 249
  IF ~~ THEN REPLY @5 /* ~If you're quite finished with this nauseating display...? ~ #35417 */ DO ~SetGlobal("bd_rohma_banter","bd0101",7)
ActionOverride("bdschael",SetGlobal("bd_retreat","locals",1))
ActionOverride("bdaudam",SetGlobal("bd_retreat","locals",1))
SetGlobal("bd_retreat","locals",1)
~ GOTO 8
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @6 /* ~I'm not a child. I'm—one-two-three-four-five—five years old.~ #35419 */
  IF ~~ THEN REPLY @7 /* ~I stand corrected. ~ #35420 */ EXTERN ~BDSCHAEL~ 250
  IF ~~ THEN REPLY @8 /* ~Treasure your years, whatever their number, child—for they will pass quickly.~ #56301 */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY @9 /* ~You talk funny.~ #56302 */
  IF ~~ THEN EXTERN ~BDSCHAEL~ 250
END

IF ~~ THEN BEGIN 3 // from: 12.0 10.0
  SAY @10 /* ~I know you. You killed Sarevok. Are you gonna kill Caelar too? ~ #35422 */
  IF ~  !IsValidForPartyDialogue("minsc")
~ THEN REPLY @11 /* ~...I think your mother should probably answer that.~ #35423 */ EXTERN ~BDSCHAEL~ 251
  IF ~  IsValidForPartyDialogue("minsc")
~ THEN REPLY @11 /* ~...I think your mother should probably answer that.~ #35423 */ EXTERN ~BDMINSCJ~ 33
  IF ~~ THEN REPLY @12 /* ~I'm hoping it won't come to that.~ #35424 */ EXTERN ~BDSCHAEL~ 251
  IF ~~ THEN REPLY @13 /* ~Only if the opportunity presents itself. ~ #35425 */ GOTO 6
  IF ~~ THEN REPLY @14 /* ~I'd tell you if I knew, Rohma. Corwin, I hate to take you away, but we really should get moving.~ #60730 */ EXTERN ~BDSCHAEL~ 249
END

IF ~~ THEN BEGIN 4 // from:
  SAY @15 /* ~Just like you? ~ #35427 */
  IF ~~ THEN EXTERN ~BDSCHAEL~ 252
END

IF ~~ THEN BEGIN 5 // from:
  SAY @16 /* ~Mama doesn't need you. She can take care of herself.~ #35432 */
  IF ~~ THEN EXTERN ~BDSCHAEL~ 253
  IF ~  IsValidForPartyDialogue("Safana")
~ THEN EXTERN ~BDSAFANJ~ 29
END

IF ~~ THEN BEGIN 6 // from: 3.3
  SAY @17 /* ~The what? ~ #35434 */
  IF ~~ THEN EXTERN ~BDSCHAEL~ 254
END

IF ~~ THEN BEGIN 7 // from:
  SAY @18 /* ~I'm a handful. That's what Grampa says, anyway. His hands aren't that big, though. I'd say I'm at least... six handfuls. Six of his hands, I mean.~ #35437 */
  IF ~~ THEN EXTERN ~BDSCHAEL~ 250
END

IF ~~ THEN BEGIN 8 // from: 0.3
  SAY @19 /* ~Mama? What's "nozz EE AY ting"? ~ #35438 */
  IF ~~ THEN EXTERN ~BDSCHAEL~ 256
END

IF ~~ THEN BEGIN 9 // from:
  SAY @20 /* ~...I don't get it.~ #35445 */
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY @21 /* ~Wait. You're <CHARNAME>? ~ #35447 */
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 11 // from:
  SAY @22 /* ~Is <PRO_HESHE> going to be like Tianna?~ #35449 */
  IF ~~ THEN EXTERN ~BDSCHAEL~ 258
END

IF ~~ THEN BEGIN 12 // from:
  SAY @23 /* ~Good. I didn't like Tianna. Wait. You're <CHARNAME>?~ #35451 */
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 13 // from:
  SAY @24 /* ~Sometimes. When she's here. ~ #35452 */
  IF ~~ THEN EXTERN ~BDSCHAEL~ 259
END

IF ~~ THEN BEGIN 14 // from:
  SAY @25 /* ~I know, I know. I just miss you when you go, is all.~ #35454 */
  IF ~~ THEN EXTERN ~BDSCHAEL~ 260
END

IF ~~ THEN BEGIN 15 // from:
  SAY @26 /* ~I will, Mama. ~ #35460 */
  IF ~~ THEN EXTERN ~BDSCHAEL~ 265
END

IF ~~ THEN BEGIN 16 // from:
  SAY @27 /* ~I love you too, Mama. ~ #35463 */
  IF ~~ THEN DO ~AddJournalEntry(59628,INFO)
~ EXIT
  IF ~  Alignment(Player1,MASK_EVIL)
~ THEN DO ~AddJournalEntry(59629,INFO)
~ EXIT
END

IF ~  True()
~ THEN BEGIN 17 // from:
  SAY @28 /* ~I know you. You're the hero of Baldur's Gate! You and Mama are gonna fight Caelar, right?~ [BD58104] #58104 */
  IF ~  IsValidForPartyDialogue("MINSC")
~ THEN REPLY @29 /* ~You are Corwin's girl, Rohma, correct? Yes, I will be fighting the Shining Lady with your mother.~ #58105 */ EXTERN ~BDMINSCJ~ 34
  IF ~  !IsValidForPartyDialogue("MINSC")
~ THEN REPLY @29 /* ~You are Corwin's girl, Rohma, correct? Yes, I will be fighting the Shining Lady with your mother.~ #58105 */ EXTERN ~XAC102~ 0
  IF ~~ THEN REPLY @30 /* ~Ah, you've heard of me?~ #58106 */ EXTERN ~XAC102~ 3
  IF ~~ THEN REPLY @31 /* ~I've no time for children. Begone.~ #58107 */ EXTERN ~XAC102~ 6
END

IF ~~ THEN BEGIN 18 // from:
  SAY @32 /* ~That's my grampa. He doesn't like me talking about what Mama does.~ [BD58110] #58110 */
  IF ~~ THEN REPLY @33 /* ~I understand. There are some burdens children shouldn't have to bear.~ #58111 */ EXTERN ~XAC102~ 2
  IF ~~ THEN REPLY @34 /* ~Ignore him. He would protect you from the world, but in doing so, he leaves you vulnerable.~ #58112 */ EXTERN ~XAC102~ 2
  IF ~~ THEN REPLY @35 /* ~Nor would I. I can think of few topics of conversation less interesting than a mercenary's life.~ #58113 */ EXTERN ~XAC102~ 1
END

IF ~~ THEN BEGIN 19 // from:
  SAY @36 /* ~Bye bye!~ #58118 */
  IF ~~ THEN DO ~SetGlobal("bd_rohma_aud_ot","bd0101",1)
AddJournalEntry(59630,INFO)
~ EXIT
  IF ~  Global("bd_audamar_pissed","bd0101",1)
~ THEN DO ~SetGlobal("bd_rohma_aud_ot","bd0101",1)
AddJournalEntry(59631,INFO)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from:
  SAY @37 /* ~That's Grampa. He doesn't like me talking to strangers.~ [BD58124] #58124 */
  IF ~~ THEN REPLY @38 /* ~Your grandfather is a wise man.~ #58125 */ EXTERN ~XAC102~ 2
  IF ~~ THEN REPLY @39 /* ~A sensible precaution. Not all strangers mean well.~ #58126 */ EXTERN ~XAC102~ 2
  IF ~~ THEN REPLY @40 /* ~Yet you defy his authority and speak to me. Well done.~ #58127 */ EXTERN ~XAC102~ 1
END

IF ~~ THEN BEGIN 21 // from:
  SAY @41 /* ~I will. Bye!~ [BD58133] #58133 */
  IF ~~ THEN EXIT
END
