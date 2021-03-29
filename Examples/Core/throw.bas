SUB MAIN
  DIM I AS INTEGER
  DIM ERR AS STRING
  
  TRY
    FOR I=1 TO 10
      PRINT I
      IF (I=5) THEN
        THROW "I=5"
      END IF
    END FOR
  CATCH ERR
    PRINT "ERROR> " + ERR

    /*
     * THROW A Second Error from within the Error Handler
     * This time there isn't a current error handler so it
     * will cause the program to abort - you will notice
     * that the program doesn't print "Program Finished".
     */
     
    THROW ERR + " THROWN by ERROR1"
  END TRY
  
  PRINT "Program Finished"
END SUB