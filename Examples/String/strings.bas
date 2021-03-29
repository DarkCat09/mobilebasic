SUB MAIN
  DIM STR AS STRING
  DIM X AS DOUBLE
  
  STR="Hello World"
  PRINT "LEN(\"" + STR + "\")=" + STR$(LEN(STR))
  PRINT "LEFT$(\"" + STR + "\",3) = \"" + LEFT$(STR,3) + "\""
  PRINT "RIGHT$(\"" + STR + "\",3) = \"" + RIGHT$(STR,3) + "\""
  PRINT "MID$(\"" + STR + "\",5,3) = \"" + MID$(STR,5,3) + "\""
  PRINT "ASC(\"A\")=" + STR$(ASC("A"))
  PRINT "CHR$(65)=" + CHR$(65)
  PRINT "STR$(1.234) = \"" + STR$(1.234) + "\"" 
  PRINT "LOWER$(\"" + STR + "\") = \"" + LOWER$(STR) + "\""
  PRINT "UPPER$(\"" + STR + "\") = \"" + UPPER$(STR) + "\""
  STR = "1.234"
  X = VAL(STR) 
  PRINT "VAL(\"" + STR + "\") = " + STR$(X)  
END SUB