@echo off
cd /d D:\DeepSeek-Harness\my-resume

echo [1/3] Staging all local changes...
git add -A
git commit -m "update" -q

echo [2/3] Setting remote...
git remote remove origin 2>nul
git remote add origin https://github.com/2336773442/2336773442.github.io.git
git branch -M main

echo [3/3] Pushing... (a login window will pop up)
echo       Username: 2336773442
echo       Password: your Personal Access Token (ghp_...)
git push -u origin main

echo.
echo ============================================
echo  Done. Wait 1-3 minutes, then open:
echo  https://2336773442.github.io  (Ctrl+F5 to refresh)
echo ============================================
pause
