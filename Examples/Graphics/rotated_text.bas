SUB MAIN
  GRAPHICS
  SETCOLOR 0,0,0	// BLACK
  
  GSAVE
  TRANSLATE 100,100
  SETCOLOR 255,0,0
  CALL ROTATEDTEXT
  GRESTORE
  
  GSAVE
  TRANSLATE 300,200
  SETCOLOR 0,255,0
  CALL ROTATEDTEXT
  GRESTORE
    
  REPAINT
  
  SLEEP 5000
END SUB

SUB ROTATEDTEXT
  DIM I AS INTEGER
  DRAWLINE -10,0,10,0
  DRAWLINE 0,-10,0,10
  FOR I=0 TO 359 STEP 30
  	GSAVE
    ROTATE I
    DRAWSTRING "Angle=" + STR$(I), 40, 0
    GRESTORE
  END FOR
END SUB