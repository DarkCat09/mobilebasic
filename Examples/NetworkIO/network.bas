SUB MAIN
  DIM S AS STRING
  PRINT "Reading from Google"  
  OPEN #1,"http://www.google.com/","r"
  READLINE #1,S
  CLOSE #1
  
  PRINT s
END SUB
