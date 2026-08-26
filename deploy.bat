@echo off
echo ============================================
echo   Deploy to GitHub Pages (2336773442.github.io)
echo   Auto-retry mode: keeps retrying until success
echo ============================================
echo.
cd /d D:\DeepSeek-Harness\my-resume

echo [1/3] Staging all local changes...
git add -A
git commit -m "update" -q
echo     done

echo [2/3] Setting remote repository...
git remote remove origin 2>nul
git remote add origin https://github.com/2336773442/2336773442.github.io.git
git branch -M main
echo     done

echo [3/3] Pushing with auto-retry (max 30 tries)...
echo     If a login window appears: Username=2336773442, Password=your token
echo.
set /a tries=0

:retry
set /a tries+=1
echo --- Attempt %tries% ---
git push -u origin main --force
if %errorlevel%==0 goto success
echo Push failed (attempt %tries%), retrying in 10 seconds...
if %tries% geq 30 goto giveup
timeout /t 10 /nobreak >nul
goto retry

:success
echo.
echo ============================================
echo   SUCCESS! Wait 1-3 min, open https://2336773442.github.io
echo ============================================
goto end

:giveup
echo.
echo ============================================
echo   Gave up after 30 attempts - network may be down.
echo   Just double-click deploy.bat again later.
echo ============================================

:end
pause >nul
