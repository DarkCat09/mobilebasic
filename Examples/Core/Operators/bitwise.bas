SUB MAIN
  PRINT "0x0ffff & 0x00ff = " + STRING(0x0ffff & 0x00ff)
  PRINT "0xff00 | 0x00ff = " + STRING(0xff00 | 0x00ff)
  PRINT "0xff00 ^ 0x00ff = " + STRING(0xff00 ^ 0x00ff)
  PRINT "~0xffffffff = " + STRING(~0xffffffff)
  PRINT "~0xfffffffe = " + STRING(~0xfffffffe)
  PRINT "~0xffffffffffffffffL = " + STRING(~0xffffffffffffffffL)
  PRINT "~0xfffffffffffffffeL = " + STRING(~0xfffffffffffffffeL)
END SUB
