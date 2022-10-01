Bucle:	L.D F0, 0(R1)
	<stall>
	ADD.D F4, F0, F2
	<stall>
	<stall>
	S.D F4, 0(R1)
	L.D F6, -8(R1)
	<stall>
	ADD.D F8, F6, F2
	<stall>
	<stall>
	S.D F8, -8(R1)
	L.D F10, -16(R1)
	<stall>
	ADD.D F12, F10, F2
	<stall>
	<stall>
	S.D F12, -16(R1)
	L.D F14, -24(R1)
	<stall>
	ADD.D F16, F14, F2
	<stall>
	<stall>
	S.D F16, -24(R1)
	DADDUI R1, R1, #-32
	<stall>
	BNE R1, R2, Bucle	

