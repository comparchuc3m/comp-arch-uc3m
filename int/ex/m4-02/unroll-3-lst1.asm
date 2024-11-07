\begin{lstlisting}[language=generalasm]
	daddui r3, r1, 40  
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
	daddui r1, r1, 8
	daddui r2, r2, 8
	blt r2, r3, loop
\end{lstlisting}
