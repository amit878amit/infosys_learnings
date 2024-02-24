cls
@echo off
echo *************************************
echo ****Resetting Network Settings ******
echo *************************************
netsh int ip reset reset.txt
netsh winsock reset
netsh advfirewall reset 
ipconfig /flushdns 
ipconfig /release 
ipconfig /renew 
netcfg -d
rundll32 inetcpl.cpl ResetIEtoDefaults
exit