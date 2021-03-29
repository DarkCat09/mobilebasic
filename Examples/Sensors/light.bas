SUB MAIN
  IF (IsLightAvailable()) THEN
    WHILE (TRUE)
      PRINT getLight()
      SLEEP 1000
    END WHILE
  ELSE
    PRINT "Light Sensor is not available on this device"
  END IF
END SUB