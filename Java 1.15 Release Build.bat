for /f "delims== tokens=1,2" %%G in (filelocations.txt) do set %%G=%%H
for /f "delims== tokens=1,2" %%G in (versionnames.txt) do set %%G=%%H
del "%resourcepacks%\%v1.15%.zip.bak"
ren "%resourcepacks%\%v1.15%.zip" "%v1.15%.zip.bak"
cd "Java 1.15"
@ECHO on
"C:\Program Files\7-Zip\7z.exe" a -y -tzip "..\%resourcepacks%\%v1.15%.zip" "*" -mx5
pause
