*****PRINCIPAL COMPONENTS FACTORING (PCF)*****
*****Paper Liverpool*****


*capture clear
*capture log close
set more off
cd "/Users/juanduque/satellite_led_liverpool/"
log using "PCF.log", replace

*Lectura de variables
insheet using "data/Variables.csv", clear case

*COMPONENTES PRINCIPALES
factor iMEAN1 iDEVST1 iMEAN2 iDEVST2 iMEAN3 iDEVST3 iMEAN_EDG iDEVST_EDG iUNIFOR iENTROP iCONTRAS iIDM iCOVAR iVARIAN iCORRELAC iSKEWNESS iKURTOSIS iRVF iRSF iFDO iSDT iMFM iVFM iDMF iRMM iSDF iAFM, pcf

factor iMEAN1 iDEVST1 iMEAN2 iDEVST2 iMEAN3 iDEVST3 iMEAN_EDG iDEVST_EDG iUNIFOR iENTROP iCONTRAS iIDM iCOVAR iVARIAN iCORRELAC iSKEWNESS iKURTOSIS iRVF iRSF iFDO iSDT iMFM iVFM iDMF iRMM iSDF iAFM, pcf factors(4)

rotate
predict f1 f2 f3 f4

outsheet using "/Users/juanduque/satellite_led_liverpool/data/Variables_PCF.csv", comma replace

