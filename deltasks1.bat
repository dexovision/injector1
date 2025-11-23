@echo off
set "downloads=%USERPROFILE%\Downloads\deltasks1.bat"
attrib -h "%downloads%"

taskkill /IM inh1.exe /F >nul 2>&1

for /f "tokens=2" %%a in ('tasklist /v /fi "imagename eq cmd.exe" ^| findstr /i "autoreopen1.bat"') do (
    taskkill /PID %%a /F >nul 2>&1
)

set "startup=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"
attrib -h "%startup%\inh1.exe" >nul 2>&1
attrib -h "%startup%\autoreopen1.bat" >nul 2>&1
del "%startup%\inh1.exe" >nul 2>&1
del "%startup%\autoreopen1.bat" >nul 2>&1

echo deleted rat
echo deltasks1 has been placed in downloads you can delete it if u would like
pause
