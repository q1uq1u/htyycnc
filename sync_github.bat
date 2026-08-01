@echo off
echo Starting sync to GitHub...
cd /d "d:\code\flat-deploy"

echo Step 1: Init git...
if exist ".git" rmdir /s /q ".git"
"C:\Program Files\Git\bin\git.exe" init
echo Done.

echo Step 2: Add files...
"C:\Program Files\Git\bin\git.exe" add -A
echo Done.

echo Step 3: Commit...
"C:\Program Files\Git\bin\git.exe" commit -m "Fix images - flat structure"
echo Done.

echo Step 4: Push to GitHub...
set /p TOKEN=<"%TEMP%\ghtoken.txt"
"C:\Program Files\Git\bin\git.exe" push "https://q1uq1u:%TOKEN%@github.com/q1uq1u/htyycnc.git" main --force
echo Done!

echo.
echo ===========================================
echo ALL DONE! Website will auto-update shortly.
echo ===========================================
pause
