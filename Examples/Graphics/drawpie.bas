SUB MAIN
  DIM W, H AS INTEGER
  DIM RW, RH AS INTEGER
  DIM X, Y AS INTEGER
  
  GRAPHICS
  
  W = SCREENWIDTH()
  H = SCREENHEIGHT()
  RW = W / 2
  RH = H / 2
  X = RW / 2
  Y = RH / 2
    
  SETCOLOR 0,0,0
  CLS
  SETCOLOR 255,255,255
  DRAWRECT X,Y,RW,RH
  SETCOLOR 255,0,0
  DRAWPIE X,Y,RW,RH,5,90
  SETCOLOR 0,255,0
  DRAWPIE X,Y,RW,RH,-5,-90
  REPAINT
  SLEEP 5000
END SUB