SUB MAIN

	DIM W, H AS INTEGER
	DIM SIZE AS INTEGER
	DIM ANGL AS INTEGER
	DIM PCTS AS STRING
	DIM BTNW AS INTEGER
	DIM BTNH AS INTEGER
	DIM X, Y AS INTEGER
	DIM TXY, TX, TY AS INTEGER
	DIM WAIT AS BOOLEAN

	GRAPHICS

	WAIT = TRUE
	W = SCREENWIDTH()
	H = SCREENHEIGHT()
	SIZE = 300

	FOR ANGL=0 TO 360

		SETCOLOR 40,41,70
		CLS

		SETCOLOR 255,255,255
		DRAWARC W/2-SIZE/2, H/2-SIZE/2, SIZE, SIZE, -90, ANGL

		PCTS = STR$(INTEGER(DOUBLE(ANGL)/3.6))+"%"

		SETFONT "MONOSPACE", 35
		DRAWSTRING PCTS, W/2-STRINGWIDTH(PCTS)/2, H/2-STRINGHEIGHT(PCTS)/2

		REPAINT
		SLEEP 33

	END FOR

	BTNW = 100
	BTNH = 50
	X = W/2-BTNW/2
	Y = H/2+SIZE/2+50

	SETCOLOR 255,255,255
	FILLROUNDRECT X, Y, BTNW, BTNH, 5, 5

	SETCOLOR 40, 41, 70
	SETFONT "SANS-SERIF", 30

	DRAWSTRING "OK", X+BTNW/2-20, Y+BTNH/2+10

	REPAINT

	WHILE WAIT

		TXY = TOUCHDOWN()
		TX = (TXY / 65536) & 0x0000ffff
		TY = TXY & 0x0000ffff

		IF TX > X AND TX < (X+BTNW) AND TY > Y AND TY < (Y+BTNH) THEN
			WAIT = FALSE
		END IF

	END WHILE

END SUB
