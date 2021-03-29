SUB MAIN
  IF (IsAmbientTemperatureAvailable()) THEN
    WHILE (TRUE)
      PRINT getAmbientTemperature()
      SLEEP 1000
    END WHILE
  ELSE
    PRINT "Ambient Temperature Sensor is not available on this device"
  END IF
END SUB