@echo off
setlocal

:: Check if Python is installed
where python > nul 2>nul
if %errorlevel% neq 0 (
    echo Python is not installed. Please install Python and try again.
    exit /b 1
)

:: Run the PowerShell script
echo Running
@REM powershell Set-ExecutionPolicy Bypass -Scope Process
powershell -ExecutionPolicy Bypass -File run_server.ps1

:end
