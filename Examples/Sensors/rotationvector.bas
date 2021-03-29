SUB MAIN
  IF (IsRotationVectorAvailable()) THEN
    WHILE (TRUE)
      PRINT "X=" + STRING(getRotationVectorX()) + ", Y=" + STRING(getRotationVectorY()) + ", Z=" + STRING(getRotationVectorZ())
      SLEEP 1000
    END WHILE
  ELSE
    PRINT "Rotation Vector Sensor is not available on this device"
  END IF
END SUB