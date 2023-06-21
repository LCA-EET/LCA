// creator  : weidu (version 24900)
// argument : SLAVER4.DLG
// game     : .
// source   : ./override/SLAVER4.DLG
// dialog   : .\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~SLAVER4~

IF ~  Global("MovingSlave","AR0400",1)
~ THEN BEGIN 0 // from:
  SAY #19799 /* ~Don't stick yer nose where it don't belong, boss. It ain't healthy.~ */
  IF ~~ THEN EXIT
END

IF ~  Global("MovingSlave","AR0400",0)
~ THEN BEGIN 1 // from:
  SAY #19803 /* ~Is 'ere somethin' specific ye want?~ */
  IF ~  Global("SlaveHelp","GLOBAL",1)
~ THEN REPLY #19804 /* ~Who were those people who went into this building?~ */ GOTO 3
  IF ~  Global("SlaveHelp","GLOBAL",1)
~ THEN REPLY #19805 /* ~That man with those men was crying for help!~ */ GOTO 4
  IF ~~ THEN REPLY #19806 /* ~No, not really.~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 5.1 4.3 3.3 1.2
  SAY #19808 /* ~Smart.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from: 4.1 1.0
  SAY #19809 /* ~Oh, that. Jus' a prisoner bein' escorted, is all.~ */
  IF ~~ THEN REPLY #19810 /* ~A prisoner? It certainly didn't look that way.~ */ GOTO 6
  IF ~~ THEN REPLY #19813 /* ~But that man was crying for help!~ */ GOTO 4
  IF ~~ THEN REPLY #10977 /* ~What is this place?~ */ GOTO 5
  IF ~~ THEN REPLY #19816 /* ~I see. I'll be on my way, then.~ */ GOTO 2
END

IF ~~ THEN BEGIN 4 // from: 3.1 1.1
  SAY #19822 /* ~Yeah, well. Prisoners tend to do that, they do.~ */
  IF ~~ THEN REPLY #19823 /* ~A prisoner? It certainly didn't look that way.~ */ GOTO 6
  IF ~~ THEN REPLY #19824 /* ~Who were those men who were with him? They certainly didn't look like Amnian guards! What's going on here?~ */ GOTO 3
  IF ~~ THEN REPLY #10964 /* ~What is this place?~ */ GOTO 5
  IF ~~ THEN REPLY #10965 /* ~Ah. Well, I'll be on my way, then.~ */ GOTO 2
END

IF ~~ THEN BEGIN 5 // from: 4.2 3.2
  SAY #19828 /* ~This? It's an inn. Copper Coronet. Go in an' ask fer yerself.~ */
  IF ~~ THEN REPLY #19829 /* ~Why would you bring a prisoner to an inn?~ */ GOTO 6
  IF ~~ THEN REPLY #19825 /* ~Perhaps I'll do that.~ */ GOTO 2
END

IF ~~ THEN BEGIN 6 // from: 5.0 4.0 3.0
  SAY #19830 /* ~It's none o' yer business. If ye has a concern, mayhap you should tell a guard, aye?~ */
  IF ~  IsValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 92
  IF ~  !IsValidForPartyDialogue("Keldorn")
IsValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 317
  IF ~  !IsValidForPartyDialogue("Keldorn")
!IsValidForPartyDialogue("Jaheira")
~ THEN EXIT
END

IF ~  Dead("SlumsSlaver2")
!Dead("Lehtinan")
~ THEN BEGIN 7 // from:
  SAY #19878 /* ~Hmph. I was expectin' some fellows to arrive here shortly. Ye haven't seen anyone, have ye?~ */
  IF ~~ THEN REPLY #15473 /* ~No, I haven't seen a soul.~ */ GOTO 8
  IF ~~ THEN REPLY #15483 /* ~Yes, actually, I just saw them down the street.~ */ GOTO 9
  IF ~~ THEN REPLY #15488 /* ~Yes, I saw them. And I killed them for being the obvious slavers that they were.~ */ GOTO 10
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #19904 /* ~Well now, that's a mighty stumper, it is.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1
  SAY #19913 /* ~What? What are they doin' all the ways down 'ere? Idiots!~ */
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.2
  SAY #19914 /* ~What?! Well, ye're in fer a world o' trouble now, you is!~ */
  IF ~~ THEN DO ~Enemy()
~ EXIT
END
