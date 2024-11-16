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
	COPY_TRANS LRELLE1 41
END

ADD_TRANS_TRIGGER LRELLE1 43
~
	False()
~

EXTEND_BOTTOM LRELLE1 43
	COPY_TRANS LRELLE1 44
END
