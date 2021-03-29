SUB MAIN
  DIM MONTH_ARRAY(12) AS STRING
  DIM I AS INTEGER
  
  MONTH_ARRAY(1)="January"
  MONTH_ARRAY(2)="February"
  MONTH_ARRAY(3)="March"
  MONTH_ARRAY(4)="April"
  MONTH_ARRAY(5)="May"
  MONTH_ARRAY(6)="June"
  MONTH_ARRAY(7)="July"
  MONTH_ARRAY(8)="August"
  MONTH_ARRAY(9)="September"
  MONTH_ARRAY(10)="October"
  MONTH_ARRAY(11)="November"
  MONTH_ARRAY(12)="December"
  
  FOR I=1 TO 12
    PRINT "Month " + STRING(I) + " = " + MONTH_ARRAY(I)
  END FOR
END SUB