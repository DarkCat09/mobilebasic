SUB MAIN
  DIM I, J AS INTEGER

  PRINT "NOT false = " + STRING(NOT false)
  PRINT "NOT true = " + STRING(NOT true)
  
  PRINT "false AND false = " + STRING(false AND false)
  PRINT "false AND true = " + STRING(false AND true)
  PRINT "true AND false = " + STRING(true AND false)
  PRINT "true AND true = " + STRING(true AND true)
  
  PRINT "false OR false = " + STRING(false OR false)
  PRINT "false OR true = " + STRING(false OR true)
  PRINT "true OR false = " + STRING(true OR false)
  PRINT "true OR true = " + STRING(true OR true)
  
  FOR I=1 TO 10
    FOR J=1 TO 10
      IF (I=5 AND J=5) THEN
        PRINT "I AND J ARE BOTH 5, I=" + STRING(I) + ", J=" + STRING(J)
      ELSEIF (I=5 OR J=5) THEN
        PRINT "EITHER I OR J IS 5, I=" + STRING(I) + ", J=" + STRING(J)
      END IF
    END FOR
  END FOR
END SUB
