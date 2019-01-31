for /f "delims== tokens=1,2" %%G in (filelocations.txt) do set %%G=%%H
for /f "delims== tokens=1,2" %%G in (versionnames.txt) do set %%G=%%H
del "%resourcepacks%\%v1.12%.zip.bak"
ren "%resourcepacks%\%v1.12%.zip" "%v1.12%.zip.bak"
cd "Java 1.12"
"C:\Program Files (x86)\7-Zip\7z.exe" a -y -tzip "..\%resourcepacks%\%v1.12%.zip" "*" -mx5
