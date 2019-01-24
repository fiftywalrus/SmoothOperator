for /f "delims== tokens=1,2" %%G in (filelocations.txt) do set %%G=%%H
for /f "delims== tokens=1,2" %%G in (versionnames.txt) do set %%G=%%H
"C:\Program Files (x86)\7-Zip\7z.exe" a -y -tzip "%texturepacks%\%v1.0%.zip" "*" -mx5
pause
