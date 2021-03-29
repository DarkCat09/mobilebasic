SUB MAIN
  IF (IsProximityAvailable()) THEN
    WHILE (TRUE)
      PRINT getProximity()
      SLEEP 1000
    END WHILE
  ELSE
    PRINT "Proximity Sensor is not available on this device"
  END IF
END SUB