SUB MAIN
  IF (IsGravityAvailable()) THEN
    WHILE (TRUE)
      PRINT "X=" + STRING(getGravityX()) + ", Y=" + STRING(getGravityY()) + ", Z=" + STRING(getGravityZ())
      SLEEP 1000
    END WHILE
  ELSE
    PRINT "Gravity Sensor is not available on this device"
  END IF
END SUB