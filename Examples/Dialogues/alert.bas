SUB MAIN
  DIM R AS INTEGER
  R = ALERT("OK Dialog", "OK Dialog Message which cannot be cancelled", "OK", "", "", FALSE)
  PRINT R
  R = ALERT("OK Dialog", "OK Dialog Message which can be cancelled", "OK", "", "", TRUE)
  PRINT R
  R = ALERT("Yes/No Dialog", "Yes/No Dialog Message", "Yes", "", "No", FALSE)
  PRINT R
  R = ALERT("Yes/Maybe/No Dialog", "Yes/Maybe/No Dialog Message", "Yes", "Maybe", "No", FALSE)
  PRINT R
  PRINT "*** Finished ***"
END SUB
