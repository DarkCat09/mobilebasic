FUNCTION toHexString(N AS INTEGER) AS STRING
  DIM S AS STRING
  DIM I, J AS INTEGER
    
  S = ""
  
  FOR I=1 TO 8
    J = N & 0x0000000f
    IF (J < 10) THEN
    	S = CHR$(ASC("0") + J) + S
    ELSE
    	S = CHR$(ASC("A") + (J-10)) + S
    END IF
  	N = N >> 4
  END FOR
  
  toHexString = "0x" + S
END FUNCTION
 
SUB MAIN
  PRINT "0x000000f0 << 4 = " + toHexString(0x000000f0 << 4)
  PRINT "0xf0000000 >> 4 = " + toHexString(0xf0000000 >> 4)
  PRINT "0xf0000000 >>> 4 = " + toHexString(0xf0000000 >>> 4)
END SUB
