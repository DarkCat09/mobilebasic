SUB MAIN
  IF (IsGyroscopeAvailable()) THEN
    WHILE (TRUE)
      PRINT "X=" + STRING(getGyroscopeX()) + ", Y=" + STRING(getGyroscopeY()) + ", Z=" + STRING(getGyroscopeZ())
      SLEEP 1000
    END WHILE
  ELSE
    PRINT "Gyroscope Sensor is not available on this device"
  END IF
END SUB