// creator  : F:\Baldur's Gate EE\00766\weidu.exe (version 24900)
// argument : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\ENTILL.DLG
// game     : F:\Baldur's Gate EE\00766
// source   : F:\ASSETCONVERTER\PRECONVERT\BG1\DLG\ENTILL.DLG
// dialog   : F:\Baldur's Gate EE\00766\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~XAA155~

IF ~  ReputationLT(Player1,8)
NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY @1 /* ~You are your father's child, <CHARNAME>. I have come to put an end to it.~ #9730 */
  IF ~~ THEN REPLY @2 /* ~You knew my father?~ #9731 */ GOTO 1
  IF ~~ THEN REPLY @3 /* ~Who has sent you? The Iron Throne?~ #9732 */ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @4 /* ~Don't be a fool. No one knew your father. It's a pity that you followed in his evil ways, child. Your stepfather, Gorion, he had such faith in you but you have cheapened his death with your choices in this life. This shall not continue further.~ #9733 */
  IF ~~ THEN DO ~Enemy()
~ JOURNAL @5 /* ~I have forged a dark path for myself, and all who oppose me shall tremble at my growing power.~ #27048 */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @6 /* ~A Harper in the employ of the Iron Throne? I doubt it highly, child. Come now, dark one, and let our duel begin...~ #9735 */
  IF ~~ THEN DO ~Enemy()
~ JOURNAL @7 /* ~Beset by a Harper today. Made short work of him.~ #9739 */ EXIT
END

IF ~  InParty("KHALID")
!InParty("Jaheira")
NumTimesTalkedTo(0)
~ THEN BEGIN 3 // from:
  SAY @8 /* ~Khalid, old friend! You have cared well for your ward but where is Jahei— Oh Khalid, I am sorry... I trust she died as she lived: in beauty and in defiance... <CHARNAME>, I am Entillis Fulsom of the Harpers, a friend of your friends and of your stepfather, Gorion.~ #9740 */
  IF ~~ THEN REPLY @9 /* ~I am honored, Harper. You seem to be more knowledgeable of my situation than myself. Have you any advice regarding my coming tasks?~ #9741 */ GOTO 4
  IF ~~ THEN REPLY @10 /* ~A friend of good Khalid is ever a friend of mine. We are well met, Entillis.~ #9742 */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @11 /* ~Nay, the honor is mine, <CHARNAME>. You are a very special individual and, sadly, this has placed you in grave danger. I yearn to tell you more but I'm afraid I cannot for fear of endangering you further. Here in the city, if you wish to succeed against the Iron Throne, know that you can trust Scar and Duke Eltan, both of the Flaming Fist. They are good men and friends of ours. But I tarry too long when there are urgent matters to attend to elsewhere. We are well met, <CHARNAME>. Take care of Khalid, he has suffered much.~ #9743 */
  IF ~~ THEN DO ~EscapeArea()
~ JOURNAL @12 /* ~The Harpers have had their eye on me. Khalid and Jaheira are even members of their organization. Another Harper, Entillis Fulsum, seems to know quite a bit about my interest in the Iron Throne. He suggests I turn to Scar and Duke Eltan for help, both associated with the Flaming Fist.~ #27049 */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY @13 /* ~And a grace befitting your special heritage! Khalid has cared for you so well and kept you from the dark that was your father. Aye, and it is that dark that would have you dead, child. This city is a dangerous place for you but I understand why you have come. Trust Scar and Duke Eltan, both of the Flaming Fist. They are friends of ours and will assist you in your investigations of the Iron Throne however they are able. But I tarry too long here when grave business awaits me elsewhere. Care for Khalid in his grieving, <CHARNAME>, as he cared for you in yours.~ #9859 */
  IF ~~ THEN DO ~EscapeArea()
~ JOURNAL @12 /* ~The Harpers have had their eye on me. Khalid and Jaheira are even members of their organization. Another Harper, Entillis Fulsum, seems to know quite a bit about my interest in the Iron Throne. He suggests I turn to Scar and Duke Eltan for help, both associated with the Flaming Fist.~ #27049 */ EXIT
END

IF ~  InParty("JAHEIRA")
NumTimesTalkedTo(0)
~ THEN BEGIN 6 // from:
  SAY @14 /* ~Jaheira, my dear one! You are radiant as ever and your eyes as joyful! And your ward, Gorion's child, that is the one there? Aye, the child has a fair countenance and I sense a fair heart beats within that chest... <CHARNAME>, allow me to introduce myself: I am Entillis Fulsom of the Harpers, a friend of your friends and of your stepfather, Gorion.~ #9864 */
  IF ~~ THEN REPLY @9 /* ~I am honored, Harper. You seem to be more knowledgeable of my situation than myself. Have you any advice regarding my coming tasks?~ #9866 */ GOTO 7
  IF ~~ THEN REPLY @15 /* ~A friend of fair Jaheira is ever a friend of mine. We are well met, Entillis.~ #9867 */ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @16 /* ~Nay, the honor is mine, <CHARNAME>. You are a very special individual and, sadly, this has placed you in grave danger... I yearn to tell you more but I'm afraid I cannot for fear of endangering you further. Here in the city, if you wish to succeed against the Iron Throne, know that you can trust Scar and Duke Eltan, both of the Flaming Fist. They are good men and friends of ours. But I tarry too long when there are urgent matters to attend to elsewhere. We are well met, <CHARNAME>. Take care of Jaheira, for I bounced her on this very knee when she was yet a babe.~ #9868 */
  IF ~~ THEN DO ~EscapeArea()
~ JOURNAL @12 /* ~The Harpers have had their eye on me. Khalid and Jaheira are even members of their organization. Another Harper, Entillis Fulsum, seems to know quite a bit about my interest in the Iron Throne. He suggests I turn to Scar and Duke Eltan for help, both associated with the Flaming Fist.~ #27049 */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY @17 /* ~And a grace befitting your special heritage! Jaheira has cared for you so well and kept you from the dark that was your father. Aye, and it is that dark that would have you dead, child. This city is a dangerous place for you but I understand why you have come. Trust Scar and Duke Eltan, both of the Flaming Fist. They are friends of ours and will assist you in your investigations of the Iron Throne however they are able. But I tarry too long here when grave business awaits me elsewhere. Care for Jaheira, <CHARNAME>, as there is no one more dear to this old man's heart.~ #9869 */
  IF ~~ THEN DO ~EscapeArea()
~ JOURNAL @12 /* ~The Harpers have had their eye on me. Khalid and Jaheira are even members of their organization. Another Harper, Entillis Fulsum, seems to know quite a bit about my interest in the Iron Throne. He suggests I turn to Scar and Duke Eltan for help, both associated with the Flaming Fist.~ #27049 */ EXIT
END

IF ~  True()
~ THEN BEGIN 9 // from:
  SAY @18 /* ~Ah, Elminster told me you'd pass by this way soon enough. Looking into the Iron Throne, are we?~ #9922 */
  IF ~~ THEN REPLY @19 /* ~Elminster...?~ #9923 */ GOTO 10
  IF ~~ THEN REPLY @20 /* ~Yes, we have reason to believe that the Iron Throne is at the heart of the current iron crisis. Is there any way you can help us?~ #9924 */ GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY @21 /* ~Tedious old fellow, isn't he? I suppose I would be, too, if I lived to see as many centuries as he has. But enough talk of the good, <CHARNAME>. I have come to tell of the dark. You have a very special heritage, child, one that graces you with more enemies than friends, I fear. This city holds many secrets and dangers and, as you have rightly come to suspect, the Iron Throne lies somehow at the core of it all. Your investigations will not go unnoticed nor, like as not, unpunished. I urge you to curry the favor of Scar and Duke Eltan, both of the Flaming Fist, as they are good men at heart and capable of providing you with some guidance and protection in this urban vast... But I tarry here too long. It is best we not be seen together.~ #9925 */
  IF ~~ THEN DO ~EscapeArea()
~ JOURNAL @22 /* ~Entillis Fulsom, who appears acquainted with Elminster, seems well informed about my investigations into the Iron Throne. He suggests I seek help from Scar and Duke Eltan, both associated with the Flaming Fist.~ #27050 */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.1
  SAY @23 /* ~Aye, I doubt it not. This city holds many secrets and dangers, especially for one with a heritage such as yours... As you have rightly come to suspect, the Iron Throne lies at the core of it all somehow. Your investigations will not go unnoticed nor, like as not, unpunished. I urge you to curry the favor of Scar and Duke Eltan, both of the Flaming Fist, as they are good men at heart and capable of providing you with some guidance and protection in this urban vast. But I tarry here too long. It is best we not be seen together.~ #9929 */
  IF ~~ THEN DO ~EscapeArea()
~ JOURNAL @22 /* ~Entillis Fulsom, who appears acquainted with Elminster, seems well informed about my investigations into the Iron Throne. He suggests I seek help from Scar and Duke Eltan, both associated with the Flaming Fist.~ #27050 */ EXIT
END
