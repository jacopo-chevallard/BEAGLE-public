	FUNCTION TRAPZ1 (X,Y,N)
	REAL X(N),Y(N)
	TRAPZ1=0.
	IF (N.LE.1) RETURN
c	IF (N.EQ.1) GOTO 2
	DO 1 J=2,N
1	TRAPZ1= TRAPZ1 + ABS(X(J)-X(J-1))*(Y(J)+Y(J-1))/2.
	RETURN
2	TRAPZ1=Y(1)*X(1)/2.
	RETURN
	END
