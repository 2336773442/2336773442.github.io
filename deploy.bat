@echo off
echo ============================================
echo   Deploy to GitHub Pages (2336773442.github.io)
echo ============================================
echo.
echo [0] Checking git...
where git >nul 2>&1 && (echo     git found) || (echo     GIT NOT FOUND - please install git)
echo.
cd /d D:\DeepSeek-Harness\my-resume
echo [1] Staging all local changes...
git add -A
git commit -m "update" -q
echo     done
echo [2] Setting remote repository...
git remote remove origin 2>nul
git remote add origin https://github.com/2336773442/2336773442.github.io.git
git branch -M main
echo     done
echo [3] Pushing to GitHub (force, overwrites old web-uploaded files)...
echo     A login window SHOULD pop up now.
echo     Username: 2336773442
echo     Password: your token (starts with ghp_)
echo.
git push -u origin main --force
echo.
echo ============================================
if %errorlevel%==0 (
  echo   SUCCESS! Wait 1-3 min, open https://2336773442.github.io
) else (
  echo   FAILED - screenshot this window and send it to me
)
echo ============================================
echo.
echo   (window stays open; press any key to close)
pause >nul
