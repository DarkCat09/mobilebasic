SUB MAIN
  IF (IsMagneticFieldAvailable()) THEN
    WHILE (TRUE)
      PRINT "X=" + STRING(getMagneticFieldX()) + ", Y=" + STRING(getMagneticFieldY()) + ", Z=" + STRING(getMagneticFieldZ())
      SLEEP 1000
    END WHILE
  ELSE
    PRINT "Magnetic Field Sensor is not available on this device"
  END IF
END SUB