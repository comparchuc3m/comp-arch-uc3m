Bucle:	L.D F0, 0(R1)
	ADD.D F4, F0, F2
	S.D F4, 0(R1)
	DADDUI R1, R1, #-8
	BNE R1, R2, Bucle
