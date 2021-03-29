SUB MAIN
  DIM XY, XPOS, YPOS AS INTEGER
  DIM LASTX, LASTY AS INTEGER
  DIM FLAG AS BOOLEAN
  DIM MSG AS STRING
  
  LASTX = -1
  LASTY = -1
  MSG = "Touch the Screen (Move)"
  
  GRAPHICS
  SETCOLOR 0,0,0
  CLS  
  SETCOLOR 255,255,255
  DRAWSTRING MSG,(SCREENWIDTH()-STRINGWIDTH(MSG))/2, SCREENHEIGHT()/2
  REPAINT
  
  SETCOLOR 255,255,0
  
  WHILE TRUE
    XY = TOUCHDOWN()
    IF (XY <> -1) THEN
      LASTX = (XY / 65536) & 0x0000ffff
      LASTY = XY & 0x0000ffff
    ELSE
      XY = TOUCHMOVE()
      IF (XY <> -1) THEN
        XPOS = (XY / 65536) & 0x0000ffff
        YPOS = XY & 0x0000ffff
        DRAWLINE LASTX, LASTY, XPOS, YPOS
        REPAINT
        LASTX = XPOS
        LASTY = YPOS
      ELSE
        SLEEP 10
	  END IF
	END IF
  END WHILE
END SUB
