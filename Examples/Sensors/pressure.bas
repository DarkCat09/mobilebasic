SUB MAIN
  IF (IsPressureAvailable()) THEN
    WHILE (TRUE)
      PRINT getPressure()
      SLEEP 1000
    END WHILE
  ELSE
    PRINT "Pressure Sensor is not available on this device"
  END IF
END SUB