for /f "delims== tokens=1,2" %%G in (filelocations.txt) do set %%G=%%H
for /f "delims== tokens=1,2" %%G in (versionnames.txt) do set %%G=%%H
del "%texturepacks%\%v1.0%.zip.bak"
ren "%texturepacks%\%v1.0%.zip" "%v1.0%.zip.bak"
del "%texturepacks%\%v1.0%.zip"
cd 1.0
"C:\Program Files (x86)\7-Zip\7z.exe" a -y -tzip "..\%texturepacks%\%v1.0%.zip" "*" -mx5
pause
