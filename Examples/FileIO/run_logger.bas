SUB MAIN()
  DIM TM AS DOUBLE
  DIM DD,MM,CCYY AS INTEGER
  DIM HRS,MINS,SECS,MILLI AS INTEGER
  DIM S AS STRING
  
  DIM DATAFILE AS STRING
  
  DATAFILE = "appendfile.dat"
  
  TM=NOW()
  DD=DAY(TM)
  MM=MONTH(TM)
  CCYY=YEAR(TM)
  HRS=HOUR(TM)
  MINS=MINUTE(TM)
  SECS=SECOND(TM)
  MILLI=MILLISECOND(TM)
  S=STR$(DD) + "/" + STR$(MM) + "/" + STR$(CCYY) + " " + STR$(HRS) + ":" + STR$(MINS) + ":" + STR$(SECS) + "." + STR$(MILLI)
  
  REM
  REM ================================
  REM Append Current Time to data file
  REM ================================
  REM
  
  PRINT "Appending: " + S
  OPEN #1,DATAFILE,"a"
  PUT #1,S
  CLOSE #1
  
  REM
  REM =================================================
  REM Read back and display all times in appendfile.dat
  REM =================================================
  REM
  
  PRINT  "List of times in " + CHR$(0x22) + "appendfile.dat" + CHR$(0x22)

  OPEN #1,DATAFILE,"r"
  TRY
    WHILE (TRUE)
      GET #1,S
      PRINT S
    END WHILE
  CATCH S
    PRINT "End of File"
  END TRY
  CLOSE #1
END SUB

