	daddui r3, r1, 40	; I1
loop:	l.d f0, 0(r1)		; I2
	l.d f2, 0(r2)		; I3
	add.d f4, f0, f2	; I4
	s.d f4, 0(r1)		; I5
	daddui r1, r1, 8	; I6
	daddui r2, r2, 8	; I7
	blt r1, r3, loop	; I8

