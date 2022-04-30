for /f "delims== tokens=1,2" %%G in (filelocations.txt) do set %%G=%%H
for /f "delims== tokens=1,2" %%G in (versionnames.txt) do set %%G=%%H

robocopy "Java 1.16" "%resourcepacks%\DEVBUILD %v1.16%" /E

@ECHO on
pause
