Bucle:	L.D F0, 0(R1)		; F0 <- x[i]
	ADD.D F4, F0, F2	; F4 <- F0 + s
	S.D F4, 0(R1)		; x[i] <- F4
	DADDUI R1, R1, #-8	; i--
	BNE R1, R2, Bucle	; Bifurcar Si R1!=R2

