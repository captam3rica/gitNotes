
REM @echo off

Echo Please Wait. Currently Uninstalling Microsoft SCCM 2012 Client
IF EXIST C:\Windows\ccmsetup\ccmsetup.exe GOTO REMOVE
GOTO END

:REMOVE
c:\Windows\ccmsetup\ccmsetup.exe /uninstall

RD /s /q c:\windows\ccm
RD /s /q c:\windows\ccmcache
RD /s /q c:\windows\ccmsetup
DEL c:\windows\smscfg.ini
DEL c:\windows\SMSAdvancedClient.*
REM (there could be multiple instances)

reg delete HKLM\software\Microsoft\CCM /va /f
reg delete HKLM\software\Microsoft\CCMSetup /va /f
reg delete HKLM\software\Microsoft\SMS /va /f
reg delete HKLM\software\Microsoft\SystemCertificates\SMS\Certificates /va /f

:END
