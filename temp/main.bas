SUB MAIN

	DIM STOP AS BOOLEAN
	DIM A, R AS INTEGER
	DIM TEMP AS DOUBLE
	DIM ITEMS(2) AS STRING

	ITEMS(1)="START"
	ITEMS(2)="EXIT"

	WHILE NOT STOP
		R = SELECT("SELECT ACTION",ITEMS,FALSE)
		IF R = 1 THEN
			PRINT("WAIT...")
			SLEEP 1000
			TEMP = ROUND(RND(60)*6,2)
			A = ALERT(STR$(TEMP),"DONE", "OK","","", TRUE)
		ELSE
			STOP = TRUE
		END IF
	END WHILE

END SUB
