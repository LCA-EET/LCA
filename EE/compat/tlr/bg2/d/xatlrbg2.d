ALTER_TRANS LRELLE1
BEGIN 3 END
BEGIN 5 END
BEGIN
	"REPLY"
	~
		@6 /*~Certainly, Ellesime. It must be something of 'greatest importance' if you chose to meet me prior to my departure.~*/
	~
END

ALTER_TRANS LRELLE1
BEGIN 9 END
BEGIN 0 1 END
BEGIN
	"REPLY"
	~
		@7 /*~Does not feel important? But, Ellesime, you have stopped me mere moments from my departure for a reason. Surely it is urgent, you will have enough courage to ask it now, my queen? I am all ears.~ */
	~
END

ADD_TRANS_TRIGGER LRELLE1 40
~
	False()
~

EXTEND_BOTTOM LRELLE1 40
	IF ~~ THEN
	DO ~
		GiveItemCreate("imask",Player1,0,0,0)
		AddJournalEntry(@19,QUEST)
		SetGlobal("ReceivedMask","GLOBAL",1)
		SetGlobal("TalkedEllesime","GLOBAL",2)
		ReallyForceSpell(Myself,DRYAD_TELEPORT)
	~
	EXIT
END

ADD_TRANS_TRIGGER LRELLE1 43
~
	False()
~

EXTEND_BOTTOM LRELLE1 43
	IF ~~ THEN
	DO ~
		GiveItemCreate("imask",Player1,0,0,0)
		AddJournalEntry(@19,QUEST)
		SetGlobal("ReceivedMask","GLOBAL",1)
		SetGlobal("TalkedEllesime","GLOBAL",2)
		ReallyForceSpell(Myself,DRYAD_TELEPORT)
	~
	EXIT
END
