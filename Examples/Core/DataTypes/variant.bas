FUNCTION DBL(X AS VARIANT) AS VARIANT
   DBL = X + X
END FUNCTION

SUB MAIN
  DIM V AS VARIANT
  V=VARIANT(5)
  PRINT DBL(V)
  V=VARIANT(5.5)
  PRINT DBL(V)
  V=VARIANT(COMPLEX(2.2,1.1))
  PRINT DBL(V)
  V=VARIANT("Test")
  PRINT DBL(V)
END SUB
