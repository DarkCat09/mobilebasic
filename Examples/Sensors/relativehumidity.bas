SUB MAIN
  IF (IsRelativeHumidityAvailable()) THEN
    WHILE (TRUE)
      PRINT getRelativeHumidity()
      SLEEP 1000
    END WHILE
  ELSE
    PRINT "Relative Humidity Sensor is not available on this device"
  END IF
END SUB