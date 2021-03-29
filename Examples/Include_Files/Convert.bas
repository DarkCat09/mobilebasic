REM
REM ==================================================
REM Please make sure the Include Files Enabled setting
REM has been enabled before trying to run this program
REM ==================================================
REM
 
#include "Library.bas"

SUB MAIN
  PRINT "100 degC = " + STR$(DegF(100.0)) + " degF"
  PRINT "212 degF = " + STR$(DegC(212.0)) + " degC"
END SUB