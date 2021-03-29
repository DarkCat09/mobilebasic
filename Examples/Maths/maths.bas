SUB MAIN
  DIM I AS INTEGER

  PRINT "---- Logarithm and Power Functions ----"

  PRINT "SQRT(81.0) = " + STRING(SQRT(81.0))
  PRINT "LOG(2.718) = " + STRING(LOG(2.718))
  PRINT "EXP(1.0) = " + STRING(EXP(1.0))
  PRINT "LOG10(100.0) = " + STRING(LOG10(100.0))
  PRINT "EXP10(2) = " + STRING(EXP10(2.0))
  PRINT "POW(5.0, 3.0) = " + STRING(POW(5.0, 3.0))

  PRINT "---- Miscellaneous Functions ----"

  PRINT "ABS(-3.142) = " + STRING(ABS(-3.142))
  PRINT "ABS(3.142) = " + STRING(ABS(3.142))
  PRINT "ABS(-321L) = " + STRING(ABS(-321L))
  PRINT "ABS(321L) = " + STRING(ABS(321L))
  PRINT "ROUND(" + STRING(PI) + ",3) = " + STRING(ROUND(PI,3))
  
  FOR I=1 TO 5
    PRINT "I=" + STRING(I) + ", RND(10) = " + STRING(RND(10))
  END FOR
END SUB
