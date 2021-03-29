SUB MAIN
  DIM S AS STRING
  DIM X AS DOUBLE
  DIM I, N AS INTEGER
  
  PRINT "Starting"
  
  RESTORE dataList1
  READ S
  PRINT S
  READ N
  FOR I=1 TO N
  	READ X
  	PRINT X
  END FOR
  
  RESTORE dataList2
  READ S
  PRINT S
  READ N
  FOR I=1 TO N
  	READ S
  	PRINT S
  END FOR

  RESTORE dataList3
  READ S
  PRINT S
  READ N
  FOR I=1 TO N
  	READ S
  	PRINT S
  END FOR
  
  PRINT "Finished"
  
  datalist1:
    DATA Data List 1
  	DATA 9
  	DATA 1,2,3
  	DATA 4,5,6
  	DATA 7,8,9
  	
  dataList2:
    DATA Data List 2
  	DATA 3
  	DATA ABC,DEF,GHI

  dataList3:
    DATA Data List 3
  	DATA 5
  	DATA "Hello World","Hello, World!"
  	DATA Hello\ World,Hello\\World
  	DATA \"Hello World\"
  	
END SUB
