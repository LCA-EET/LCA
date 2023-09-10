/* This change will only be made if the Cost of One Girl's Soul Mod is not installed */

ADD_TRANS_ACTION IDJINNI
BEGIN 12 END
BEGIN 0 END
~
	GiveItemCreate("XASTDAG",LastTalkedToBy(Myself),1,0,0)
	AddJournalEntry(@0, INFO)
~