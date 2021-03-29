SUB MAIN
  IF (IsLocationAvailable()) THEN
    WHILE (TRUE)
      PRINT GETALTITUDE(),GETLATITUDE(),GETLONGITUDE()
      SLEEP 1000
    END WHILE
  ELSE
    PRINT "Location is not available"
  END IF
END SUB