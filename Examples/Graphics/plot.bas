SUB MAIN
  DIM WIDTH, HEIGHT AS INTEGER
  
  GRAPHICS
  WIDTH=SCREENWIDTH()
  HEIGHT=SCREENHEIGHT()
  
  SETCOLOR 0,0,0
  CLS
  
  WHILE true
    SETCOLOR RND(256),RND(256),RND(256)
    PLOT RND(WIDTH),RND(HEIGHT)
    REPAINT
  END WHILE
END SUB