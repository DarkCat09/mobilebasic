SUB MAIN
	IF (IsAccelerometerAvailable()) THEN
		WHILE (TRUE)
			PRINT "--"
			PRINT "X=" + STRING(getAccelerometerX()) + ", Y=" + STRING(getAccelerometerY()) + ", Z=" + STRING(getAccelerometerZ())
			SLEEP 1000
		END WHILE
	ELSE
		PRINT "Accelerometer Sensor is not available on this device"
	END IF
END SUB
