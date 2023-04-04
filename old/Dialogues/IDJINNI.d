// creator  : weidu (version 24900)
// argument : IDJINNI.DLG
// game     : .
// source   : ./override/IDJINNI.DLG
// dialog   : .\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~IDJINNI~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~I am bound. What do—who are you? Ah, I see... the master is gone, and you've managed to get yourselves in trouble.~ [OGREM01] #10867 */
  IF ~~ THEN REPLY @2 /* ~Who are you that you've been bound in this flask?~ #10868 */ DO ~SetGlobal("TalkedToDjinni","AR0601",1)
~ GOTO 1
  IF ~~ THEN REPLY @3 /* ~I'm not sure that I understand what is going on here. Did you come out of this bottle?~ #10869 */ DO ~SetGlobal("TalkedToDjinni","AR0601",1)
~ GOTO 14
  IF ~~ THEN REPLY @4 /* ~You would be the proverbial djinni in a bottle?~ #10870 */ DO ~SetGlobal("TalkedToDjinni","AR0601",1)
~ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @5 /* ~Enslaved would be a more accurate word. I was captured in my home, on this Plane of Air, by some wizard. He bound me to this flask that I might guard his things—and something of yours.~ #10873 */
  IF ~~ THEN REPLY @6 /* ~You have something that belongs to me?~ #10883 */ GOTO 4
  IF ~~ THEN REPLY @7 /* ~It is not my concern. Give me what you have.~ #10885 */ GOTO 15
  IF ~~ THEN REPLY @8 /* ~I've no time to spare talking to you. I must find a way out of this madman's dungeon.~ #10886 */ GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 14.0
  SAY @9 /* ~I am a djinni, and I have been bound by a wizard to guard his items, and your item it seems. I can sense your touch upon this weapon.~ #10890 */
  IF ~~ THEN REPLY @6 /* ~You have something that belongs to me?~ #10891 */ GOTO 4
  IF ~~ THEN REPLY @7 /* ~It is not my concern. Give me what you have.~ #10892 */ GOTO 15
  IF ~~ THEN REPLY @8 /* ~I've no time to spare talking to you. I must find a way out of this madman's dungeon.~ #10893 */ GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 0.2
  SAY @10 /* ~That I would, manling. I assume that, now that you have escaped, you have come seeking the magical item that has been stripped from you by our collective captor?~ #10894 */
  IF ~~ THEN REPLY @11 /* ~You have an item of mine? ~ #10900 */ GOTO 4
  IF ~~ THEN REPLY @12 /* ~If you have something that I own, give it to me immediately.~ #10902 */ GOTO 15
  IF ~~ THEN REPLY @13 /* ~I regret that I have no more time to speak with you. I must get back to escaping this madman's dungeon.~ #10903 */ GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 3.0 2.0 1.0
  SAY @14 /* ~I do. A thing of power that still carries a hint of your essence. There is something odd about the signature that you leave on this item. No matter.~ #10906 */
  IF ~~ THEN REPLY @15 /* ~Can you give it to me?~ #10908 */ GOTO 15
  IF ~~ THEN REPLY @13 /* ~I regret that I have no more time to speak with you. I must get back to escaping this madman's dungeon.~ #10978 */ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 15.0
  SAY @16 /* ~If you can secure the means of my release, I will give you your weapon.~ #10912 */
  IF ~~ THEN REPLY @17 /* ~That sounds like a fair trade. How do I secure the means of your release?~ #10913 */ GOTO 16
  IF ~~ THEN REPLY @18 /* ~Why should I deal with you when I can merely kill you?~ #10924 */ GOTO 17
  IF ~~ THEN REPLY @19 /* ~I will think about it.~ #10927 */ GOTO 9
END

IF ~~ THEN BEGIN 6 // from: 4.1 3.2 2.2 1.2
  SAY @20 /* ~Not so quickly. I have a powerful item that belongs to you. A thing that was stripped from you by our collective captor.~ #10948 */
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 7 // from: 16.0
  SAY @21 /* ~You must find the original flask and bring it back to me. Once it is within my grasp, I can break the enchantment and be freed.~ #10982 */
  IF ~~ THEN REPLY @22 /* ~That sounds like more trouble than it's worth. I don't think that I'm interested.~ #10989 */ GOTO 9
  IF ~~ THEN REPLY @18 /* ~Why should I deal with you when I can merely kill you?~ #10993 */ GOTO 17
  IF ~~ THEN REPLY @23 /* ~Where can I find this flask?~ #10994 */ GOTO 18
END

IF ~~ THEN BEGIN 8 // from: 17.0
  SAY @24 /* ~You must help me. There is no other way for you to obtain your magical weapon. ~ #10995 */
  IF ~~ THEN REPLY @25 /* ~Very well, I shall help you. What do I need to do?~ #10998 */ GOTO 16
  IF ~~ THEN REPLY @22 /* ~That sounds like more trouble than it's worth. I don't think that I'm interested.~ #10999 */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 11.1 8.1 7.0 5.2
  SAY @26 /* ~In your place, I would not be so quick to give up such powerful equipment. Free me, I beg you, and I shall give this thing back to you.~ #11001 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10 // from: 18.0
  SAY @27 /* ~I cannot pinpoint its location from another plane. You shall have to search for it. Return to me when you have found it, and we shall exchange my freedom for your weapon.~ #11002 */
  IF ~~ THEN DO ~SetGlobal("HelpDjinni","GLOBAL",1)
~ UNSOLVED_JOURNAL @28 /* ~Freeing the djinni

To retrieve what is in possession of the djinni Malaaq, I must first secure his release by obtaining the twin to the flask he is bound to. He informed me that the flask is kept close to his master... either in his chambers or in the possession of some dryads or golems.~ #34099 */ EXIT
END

IF ~  Global("TalkedToDjinni","AR0601",1)
Global("HelpDjinni","GLOBAL",0)
~ THEN BEGIN 11 // from:
  SAY @29 /* ~Will you now help me to be free in exchange for your magical weapon? ~ #11004 */
  IF ~~ THEN REPLY @30 /* ~Yes, I am willing to make a deal.~ #11008 */ GOTO 16
  IF ~~ THEN REPLY @19 /* ~I will think about it.~ #11010 */ GOTO 9
END

IF ~  PartyHasItem("misc4d")
~ THEN BEGIN 12 // from:
  SAY @31 /* ~I sense that you have the flask. Let us make the exchange.~ #11012 */
  IF ~~ THEN DO ~EraseJournalEntry(@28)
EraseJournalEntry(@33)
AddexperienceParty(15000)
GivePartyAllEquipment()
GiveItem("LCSTDAG",LastTalkedToBy)
TakePartyItem("misc4d")
~ SOLVED_JOURNAL @32 /* ~Freeing the djinni

I freed the genie Malaaq by retrieving a flask from three dryads and giving it to him. In return, he returned some equipment that he was keeping in storage for the wizard Irenicus.~ #47515 */ GOTO 19
END

IF ~~ THEN BEGIN 13 // from: 19.0
  SAY @34 /* ~He will torture you for escaping and kill you for freeing his djinni slave. Escape from his lair quickly if you value your life. Farewell!~ #11013 */
  IF ~~ THEN DO ~SetGlobal("HelpDjinni","GLOBAL",2)
PlaySound("EFF_M01")
CreateVisualEffectObject("SPPLANAR",Myself)
Wait(2)
PlaySound("EFF_M38")
DestroySelf()
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 0.1
  SAY @35 /* ~It is no wonder that the master was able to take you so easily despite all of your magical equipment. Even for a fleshling, you don't catch on very quickly.~ #19798 */
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 15 // from: 6.0 4.0 3.1 2.1 1.1
  SAY @36 /* ~If I had the power to give you your weapon, I would, but the force that binds me is strong. As long as I am trapped within this flask, I am within the mage's power.~ #19801 */
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 16 // from: 11.0 8.0 5.0
  SAY @37 /* ~This flask that I am bound in is a creation of magic. It is unbreakable as long as it remains apart from its twin, the real flask.~ #19894 */
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 17 // from: 7.1 5.1
  SAY @38 /* ~You are welcome to try. While I am bound, neither myself nor the flask can be damaged. While I am bound, I cannot give you your weapon.~ #19916 */
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 18 // from: 7.2
  SAY @39 /* ~He will keep the flask close to himself. The master would not risk it falling into other hands. Perhaps he keeps it in his chambers, or with his dryad concubines. Perhaps the golems have it.~ #19926 */
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 19 // from: 12.0
  SAY @40 /* ~At last! I am free! Here is your item, fleshling. You are an honorable person, and I feel that I must warn you. Keep away from the master!~ #19930 */
  IF ~~ THEN GOTO 13
END

IF ~  Global("TalkedToDjinni","AR0601",1)
~ THEN BEGIN 20 // from:
  SAY @41 /* ~Please find the flask that is the twin of the one in which I am bound. Do this for me, and I shall give you a weapon of power.~ #44816 */
  IF ~~ THEN EXIT
END
