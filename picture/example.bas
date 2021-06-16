#include "drawbitmap.bas"

DIM PICT(65536,3) AS INTEGER

SUB WRITEARRAY(INARR(65536,3) AS INTEGER)
	DIM K, L AS INTEGER
	FOR K=1 TO 65536
		FOR L=1 TO 3
			PICT(K,L) = INARR(K,L)
		END FOR
	END FOR
END SUB

FUNCTION GETTIME() AS STRING
	DIM TM AS DOUBLE
	TM = NOW()
	GETTIME = STR$(HOUR(TM)) + ":" + STR$(MINUTE(TM)) + ":" + STR$(SECOND(TM)) + "." + STR$(MILLISECOND(TM))
END FUNCTION

SUB MAIN

	DIM PXDREW AS INTEGER

	GRAPHICS

	PRINT "INIT=" + GETTIME()

	SETCOLOR 255,255,255
	CLS
	REPAINT

	PRINT "FILL=" + GETTIME()

	WRITEARRAY(GETBITMAP("test.bmp",256,256))

	PRINT "READ=" + GETTIME()

		PXDREW = DRAWBMPTP(5, 5, 256, 256, PICT, 0,0,0)

	PRINT "DRAW=" + GETTIME()

	PRINT "DEBUG: " + STR$(PXDREW)

	SLEEP 1000

END SUB