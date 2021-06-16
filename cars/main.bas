FUNCTION CONSTRAINT(NUM AS INTEGER, MIN AS INTEGER, MAX AS INTEGER) AS INTEGER
	IF (NUM < MIN) THEN
		CONSTRAINT=MIN
	ELSEIF (NUM > MAX) THEN
		CONSTRAINT=MAX
	ELSE
		CONSTRAINT=NUM
	END IF
END FUNCTION

FUNCTION GETROT() AS INTEGER
	DIM ACCX, ACCY, ACCZ AS INTEGER
	DIM RESULT AS INTEGER
	SLEEP 1000
	REM IF ISACCELEROMETERAVAILABLE() THEN
	ACCX = GETACCELEROMETERX()
	ACCY = GETACCELEROMETERY()
	ACCZ = GETACCELEROMETERZ()
	IF ACCY < 9 AND ACCY > 1 THEN
		RESULT = 1
	ELSEIF ACCX < 10 AND ACCX > 4 THEN
		RESULT = 2
	ELSEIF ACCX > (-10) AND ACCX < (-4) THEN
		RESULT = 3
		REM ELSE
		REM RESULT = 2
	END IF
	REM ELSE
	REM RESULT = 2
	REM END IF
	REM ALERT STR$(RESULT), STR$(ACCX) + "," + STR$(ACCY) + "," + STR$(ACCZ), "OK","","", TRUE
	GETROT=RESULT
END FUNCTION

FUNCTION CHECKCOLLISION(CARX AS INTEGER, CARY AS INTEGER, CARSIZE AS INTEGER, OBJX AS INTEGER, OBJY AS INTEGER, OBJSZ AS INTEGER) AS BOOLEAN
	IF OBJX > (CARX-OBJSZ-1) AND OBJX < (CARX+CARSIZE+1) AND OBJY > (CARY-OBJSZ-1) AND OBJY < (CARY+CARSIZE+5) THEN
		CHECKCOLLISION=TRUE
	ELSE
		CHECKCOLLISION=FALSE
	END IF
END FUNCTION

SUB MAIN

	DIM ACCX, ACCY, ACCZ AS INTEGER
	DIM COORD AS INTEGER
	DIM W, H, X, Y AS INTEGER
	DIM BORDER AS INTEGER
	DIM SIZE,SPEED AS INTEGER
	DIM CNRD,CBORDR AS INTEGER
	DIM COINSPD, ENMSPD AS INTEGER
	DIM COINX1,COINY1 AS INTEGER
	DIM COINX2, COINY2 AS INTEGER
	DIM ENMX1, ENMY1 AS INTEGER
	DIM ENMX2, ENMY2 AS INTEGER
	DIM ENMX3, ENMY3 AS INTEGER
	DIM ROT AS INTEGER
	DIM COINS AS INTEGER
	DIM COINSSTR AS STRING
	DIM GAMEOVER AS BOOLEAN

	GRAPHICS

	W = SCREENWIDTH()
	H = SCREENHEIGHT()
	SIZE = 70
	X = W/2-SIZE/2
	Y = H/2-SIZE/2+100
	BORDER = W-SIZE
	SPEED=10

	CNRD=20
	CBORDR=W-(CNRD*2)
	COINSPD=6
	ENMSPD=5

	COINX1=CONSTRAINT(RND(20), 0, CBORDR)
	COINX2=CONSTRAINT(RND(30), 0, CBORDR)

	ENMX1=CONSTRAINT(RND(60), 0, BORDER)
	ENMX2=CONSTRAINT(RND(900), 0, BORDER)
	ENMX3=CONSTRAINT(RND(12), 0, BORDER)

	ROT = GETROT()

	IF ISACCELEROMETERAVAILABLE() THEN

		WHILE NOT GAMEOVER

			ACCX = GETACCELEROMETERX()
			ACCY = GETACCELEROMETERY()
			ACCZ = GETACCELEROMETERZ()

			COORD = ACCY
			IF ROT = 1 THEN
				COORD = -ACCX
			ELSEIF ROT = 3 THEN
				COORD = -ACCY
			ELSE
				COORD = ACCY
			END IF

			X=X+(COORD*SPEED)

			X=CONSTRAINT(X,0,BORDER)

			SETCOLOR 70,70,70
			CLS

			SETCOLOR 255,255,255
			/*DEBUG*/
			SETFONT "SANS-SERIF", 12
			DRAWSTRING STR$(ACCX),5,10
			DRAWSTRING STR$(ACCY),5,20
			DRAWSTRING STR$(ACCZ),5,30
			DRAWSTRING STR$(X),5,40
			/**/

			FILLRECT X, Y, SIZE, SIZE

			IF CHECKCOLLISION(X,Y,SIZE,COINX1,COINY1,CNRD) THEN
				COINS=COINS+1
			END IF

			IF COINY1 > H OR CHECKCOLLISION(X,Y,SIZE,COINX1,COINY1,CNRD) THEN
				COINX1=CONSTRAINT(RND(70),0,CBORDR)
				COINY1=0-(CNRD*2)

			END IF

			IF CHECKCOLLISION(X,Y,SIZE,COINX2,COINY2,CNRD) THEN
				COINS=COINS+1
			END IF

			IF COINY2 > H OR CHECKCOLLISION(X,Y,SIZE,COINX2,COINY2,CNRD) THEN
				COINX2=CONSTRAINT(RND(800),0,CBORDR)
				COINY2=0-(CNRD*2)

			END IF

			SETCOLOR 252,186,3
			FILLCIRCLE COINX1, COINY1, CNRD
			FILLCIRCLE COINX2, COINY2, CNRD
			COINY1 = COINY1 + COINSPD
			COINY2 = COINY2 + COINSPD

			SETCOLOR 255,255,255
			SETFONT "SANS-SERIF", 30
			COINSSTR = "$" + STR$(COINS)
			DRAWSTRING COINSSTR, W-STRINGWIDTH(COINSSTR)-5, STRINGHEIGHT(COINSSTR)+10

			SETCOLOR 3,200,3
			FILLRECT ENMX1, ENMY1, SIZE, SIZE
			FILLRECT ENMX2, ENMY2, SIZE, SIZE
			FILLRECT ENMX3, ENMY3, SIZE, SIZE

			IF ENMY1 > H THEN
				ENMX1=CONSTRAINT(RND(60), 0, BORDER)
				ENMY1=0-SIZE
			END IF

			IF CHECKCOLLISION(X, Y, SIZE, ENMX1, ENMY1, SIZE) THEN
				GAMEOVER=TRUE
			END IF

			IF ENMY2 > H THEN
				ENMX2=CONSTRAINT(RND(900), 0, BORDER)
				ENMY2=0-SIZE
			END IF

			IF CHECKCOLLISION(X, Y, SIZE, ENMX2, ENMY2, SIZE) THEN
				GAMEOVER=TRUE
			END IF

			IF ENMY3 > H THEN
				ENMX3=CONSTRAINT(RND(12), 0, BORDER)
				ENMY3=0-SIZE
			END IF

			IF CHECKCOLLISION(X, Y, SIZE, ENMX3, ENMY3, SIZE) THEN
				GAMEOVER=TRUE
			END IF

			ENMY1=ENMY1+ENMSPD
			ENMY2=ENMY2+ENMSPD
			ENMY3=ENMY3+ENMSPD

			REPAINT
			SLEEP 30

		END WHILE

		IF GAMEOVER THEN
			ALERT "GAME OVER", "COINS: " + STR$(COINS), "OK","","", TRUE
		END IF

	END IF

END SUB
