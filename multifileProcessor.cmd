REM file should contain all file paths of log4j.properties like c:/projects/demo/log4j.properties
for /F "tokens=*" %A in  (C:\Users\naren\Desktop\log4jfilepaths.txt) do (
echo Processing %A..
set currentPath=%A
set targetPath=%currentPath:log4j.properties=log4j2.xml%
CALL groovy log4j2migrator.groovy %currentPath% > %targetPath%
)