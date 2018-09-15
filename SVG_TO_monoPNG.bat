@echo off
MODE 80,10
TITLE SVG TO MONOCHROME PNG
setlocal ENABLEDELAYEDEXPANSION
echo Drag Directory
set /p d=
cd /D "%d%"

mkdir "ALL_MY_MONO_PNG"
cls
FOR /F "tokens=* USEBACKQ" %%F IN (`dir /b /a-d *.svg`) DO (
	
	FOR %%x in ("%%F") do (
		TITLE %%~nx.svg
		ECHO %%~nx.svg : %%~nx.png
		magick convert "%%~nx.svg" -monochrome "ALL_MY_MONO_PNG\%%~nx.png"
	)
	
)
TITLE DONE
ECHO -----------------------------------------
ECHO   ########   #######  ##    ## ######## 
ECHO   ##     ## ##     ## ###   ## ##       
ECHO   ##     ## ##     ## ####  ## ##       
ECHO   ##     ## ##     ## ## ## ## ######   
ECHO   ##     ## ##     ## ##  #### ##       
ECHO   ##     ## ##     ## ##   ### ##       
ECHO   ########   #######  ##    ## ######## 
ECHO -----------------------------------------
pause>NUL

exit
