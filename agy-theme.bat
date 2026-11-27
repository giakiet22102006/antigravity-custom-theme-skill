@echo off
setlocal
cd /d "%~dp0"
echo [Antigravity Custom Theme] Installing and starting daemon...
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0scripts\install-win.ps1" %*
if errorlevel 1 (
    echo.
    echo [Antigravity Custom Theme] Setup encountered an error. Check messages above.
    pause
    exit /b 1
)
echo.
echo [Antigravity Custom Theme] Ready! This window will close in 3 seconds...
timeout /t 3 /nobreak >nul
endlocal
