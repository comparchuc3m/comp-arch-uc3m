\begin{lstlisting}[language=generalasm]
	daddui r3, r1, 32
loop:	l.d f0, 0(r1)
	l.d f2, 0(r2)
	<stall>
	<stall>
	add.d f4, f0, f2
	<stall>
	<stall>
	<stall>
	<stall>
	s.d f4, 0(r1)
	l.d f6, 8(r1)
	l.d f8, 8(r2)
	<stall>
	<stall>
	add.d f10, f6, f8
	<stall>
	<stall>
	<stall>
	<stall>
	s.d f10, 8(r1)
	daddui r1, r1, 16
	daddui r2, r2, 16
	blt r2, r3, loop
	l.d f0, 0(r1)
	l.d f2, 0(r2)
	<stall>
	<stall>
	add.d f4, f0, f2
	<stall>
	<stall>
	<stall>
	<stall>
	s.d f4, 0(r1)
\end{lstlisting}
