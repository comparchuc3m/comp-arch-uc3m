\begin{lstlisting}[language=generalasm]
	daddui r3, r1, 40 
loop:	l.d f0, 0(r1)
	l.d f2, 0(r2)
	daddui r1, r1, 8
	daddui r2, r2, 8
	add.d f4, f0, f2
	<stall>
	<stall>
	<stall>
	<stall>
	s.d f4, -8(r1)
	blt r1, r3, loop
\end{lstlisting}
