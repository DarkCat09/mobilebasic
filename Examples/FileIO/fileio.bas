SUB MAIN
  DIM bool AS BOOLEAN
  DIM b AS BYTE
  DIM w AS SHORT
  DIM i AS INTEGER
  DIM l AS LONG
  DIM f AS FLOAT
  DIM d AS DOUBLE
  DIM s AS STRING
  DIM c AS COMPLEX
    
  PRINT "Writing file"
  OPEN #1,"fileio.dat","w"
  PUT #1,true
  PUT #1,BYTE(45)
  PUT #1,SHORT(768)
  PUT #1,123
  CLOSE #1
  
  PRINT "Appending to file"
  OPEN #1,"fileio.dat","a"
  PUT #1,9876l
  PUT #1,"hello"
  PUT #1,COMPLEX(3.1,-2.5)
  PUT #1,3.1f
  PUT #1,pi
  CLOSE #1

  PRINT "Reading file"  
  OPEN #1,"fileio.dat","r"
  GET #1,bool,b,w,i,l
  GET #1,s
  GET #1,c,f,d
  CLOSE #1
  
  PRINT bool
  PRINT b,w,i,l
  PRINT s
  PRINT c
  PRINT f,d
END SUB
