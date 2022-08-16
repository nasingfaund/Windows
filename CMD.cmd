@ECHO OFF
TITLE 
COLOR 9F
ECHO Factory Restarting Store.
"C:\Windows\System32\WSReset.exe"
ECHO Prepare to repair disks.
"C:\Windows\System32\chkdsk.exe" /offlinescanandfix
ECHO Defragging disk spaces for optimal storage efficiency and performance.
"C:\Windows\System32\Defrag.exe" /AllVolumes /NormalPriority
NET SESSION >nul 2>&1
IF %ERRORLEVEL% EQU 0 (
    ECHO Thanks for using, Administrator Account!
) ELSE (
    ECHO Access Denied as you do not have sufficient privileges.
)
ECHO Deleteing most used or generated files by script.
ERASE /F /S /Q "C:\Users\%USERNAME%\AppData\Local\Temp\*"
ERASE /F /S /Q "C:\Windows\Prefetch\*.pf"
ERASE /F /S /Q "C:\Windows\Temp\*"
PAUSE
