SUB MAIN
  DIM I, J AS INTEGER
  
  PRINT "FOR Loop counting from 1 up to 10"
  FOR I=1 TO 10
    PRINT "I=" + STRING(I)
  END FOR
  
  PRINT "FOR Loop counting from 1 to 50 in steps of 10"
  FOR I=1 TO 50 STEP 10
    PRINT "I=" + STRING(I)
  END FOR
  
  PRINT "FOR Loop counting from 99 down to 11 in steps of -11"
  FOR I=99 TO 11 STEP -11
    PRINT "I=" + STRING(I)
  END FOR

  PRINT "Nested FOR Loops, Both Loops are counting from 0 TO 9"
  FOR I=0 TO 9
    FOR J=0 TO 9
      PRINT "I=" + STRING(I) + ", J=" + STRING(J)
    END FOR
  END FOR
END SUB