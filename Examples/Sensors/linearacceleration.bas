SUB MAIN
  IF (IsLinearAccelerationAvailable()) THEN
    WHILE (TRUE)
      PRINT "X=" + STRING(getLinearAccelerationX()) + ", Y=" + STRING(getLinearAccelerationY()) + ", Z=" + STRING(getLinearAccelerationZ())
      SLEEP 1000
    END WHILE
  ELSE
    PRINT "Linear Acceleration Sensor is not available on this device"
  END IF
END SUB