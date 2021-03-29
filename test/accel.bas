SUB MAIN

	DIM ACCX, ACCY, ACCZ AS INTEGER
	DIM RACC AS INTEGER
	DIM W, H, X, Y AS INTEGER
	DIM SIZE AS INTEGER

	GRAPHICS

	W = SCREENWIDTH()
	H = SCREENHEIGHT()
	SIZE = 150
	Y = H/2-SIZE/2

	IF ISACCELEROMETERAVAILABLE() THEN

		WHILE TRUE

			ACCX = GETACCELEROMETERX()
			ACCY = GETACCELEROMETERY()
			ACCZ = GETACCELEROMETERZ()

			RACC = INTEGER(ACCY*100)

			IF X < W THEN
				X=5
			END IF
			IF X > W THEN
				X=W-SIZE-5
			END IF

			SETCOLOR 70,70,70
			CLS

			SETCOLOR 255,255,255
			FILLRECT X, Y, SIZE, SIZE

			REPAINT
			SLEEP 35

		END WHILE

	END IF

END SUB