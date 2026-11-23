@echo off
TITLE SkillBridge Launcher
echo ===================================================
echo           Starting SkillBridge Full Stack
echo ===================================================
echo.

cd /d "%~dp0Backend"
echo Starting Backend API on http://127.0.0.1:5000 ...
start "SkillBridge - Backend API (Flask)" cmd /k ".\.venv\Scripts\activate && python app.py"

cd /d "%~dp0Frontend"
echo Starting Frontend Client on http://localhost:3000 ...
start "SkillBridge - Frontend Client (React)" cmd /k "npm run dev"

echo.
echo ===================================================
echo  Application is launching!
echo  - Frontend: http://localhost:3000
echo  - Backend:  http://127.0.0.1:5000
echo ===================================================
timeout /t 3 >nul
start http://localhost:3000
