SUB MAIN
  IF (IsTemperatureAvailable()) THEN
    WHILE (TRUE)
      PRINT getTemperature()
      SLEEP 1000
    END WHILE
  ELSE
    PRINT "Temperature Sensor is not available on this device"
  END IF
END SUB