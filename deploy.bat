@echo off
chcp 65001 >nul
echo ============================================
echo   一键部署到 GitHub Pages (2336773442.github.io)
echo ============================================
echo.
cd /d D:\DeepSeek-Harness\my-resume

echo [1/3] 检查本地文件...
git status --short | findstr /r "^" >nul
if %errorlevel%==0 (
  echo 发现未提交的修改，正在提交...
  git add .
  git commit -m "update portfolio" >nul 2>&1
) else (
  echo 本地文件已是最新状态
)

echo [2/3] 设置远程仓库...
git remote remove origin >nul 2>&1
git remote add origin https://github.com/2336773442/2336773442.github.io.git
git branch -M main

echo [3/3] 开始上传（会弹出登录窗口）...
echo 提示：用户名填 2336773442，密码填 Personal Access Token
echo        （生成方法见 DEPLOY.md 最后部分）
echo.
git push -u origin main

echo.
echo ============================================
if %errorlevel%==0 (
  echo  上传成功！等待 1-3 分钟后打开：
  echo  https://2336773442.github.io
) else (
  echo  上传失败，请检查用户名/Token 是否正确
  echo  或查看上方红色错误信息
)
echo ============================================
pause
