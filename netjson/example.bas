#include "json.bas"

SUB MAIN
	DIM IP AS STRING
	IP = REQUEST("http://ifconfig.me/ip")
	PRINT IP
	PRINT REQUEST("http://ipwhois.app/json/" + IP)
END SUB
