SUB MAIN
  DIM ITEM(5) AS STRING
  DIM R AS INTEGER
  ITEM(1)="A"
  ITEM(2)="B"
  ITEM(3)="C"
  ITEM(4)="D"
  ITEM(5)="E"
  R = SELECT("Select One - Not Cancellable", ITEM, FALSE)
  PRINT R
  R = SELECT("Select One - Cancellable", ITEM, TRUE)
  PRINT R
  PRINT "*** Finished ***"
END SUB
