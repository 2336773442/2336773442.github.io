# 部署指南（专属版 · 用户名 2336773442）

## 你的网址将是：https://2336773442.github.io

> ⚠️ 只有当你成功创建了名为 `2336773442.github.io` 的仓库并上传文件后，这个网址才会生效（现在访问是 404，正常的）。

---

## 第 1 步：登录 GitHub

1. 浏览器打开 **https://github.com**
2. 登录你的账号 **2336773442**（没有就点 Sign up 注册，用户名必须还是 2336773442，否则网址会变）

## 第 2 步：创建同名仓库

1. 右上角 **"+"号 → New repository**
2. **Repository name 填：`2336773442.github.io`**（一字不差）
3. 可见性选 **Public**
4. 其他选项全部保持默认（不勾选 README 等）
5. 点绿色 **Create repository**

## 第 3 步：上传部署包（网页方式，不用装软件）

部署包位置：**`D:\DeepSeek-Harness\my-resume`**

1. 仓库创建后进入空仓库页 → 点 **Add file → Upload files**
2. 打开文件资源管理器（Win+E），地址栏输入 `D:\DeepSeek-Harness\my-resume` 回车
3. 全选（Ctrl+A）里面所有内容，**拖进浏览器**的上传虚线框
   - 内容包含：`index.html`、`favicon.svg`、`README.md`、`DEPLOY.md` 和 `assets`、`images`、`data`、`static` 四个文件夹
   - 有 4MB 多的 static 文件夹，稍等上传完成
4. 点底部绿色 **Commit changes**

## 第 4 步：等待上线

- 等 **1~3 分钟**（第一次可能 5 分钟）
- 浏览器访问 **https://2336773442.github.io**
- 看到紫色流体背景 + "Hi, i'm zhifeng" 即成功

## 第 5 步：更新网站内容（以后）

- 改好文件后，回到仓库页 → Add file → Upload files → 把**同名文件**拖进去覆盖即可
- 或在仓库页面点进 `assets/app.js` → 右上角铅笔图标 → 编辑 → Commit changes

## 常见问题

| 现象 | 原因/解决 |
|---|---|
| 访问 404 | 仓库名不是 `2336773442.github.io`；或还没部署完（等 3 分钟）；或 index.html 不在仓库最外层 |
| 页面白屏 | 上传时漏了 assets/ 或 images/ 文件夹 |
| 上传失败 | static 文件夹大，网络慢，重试一次；或先单独传 static 再传其余 |

## 推荐：git 命令行（以后更新更方便）

如果你以后想学用命令行部署（可选）：
```bash
cd D:\DeepSeek-Harness\my-resume
git init
git add .
git commit -m "deploy"
git branch -M main
git remote add origin https://github.com/2336773442/2336773442.github.io.git
git push -u origin main
```
推送密码用 Personal Access Token（GitHub 设置 → Developer settings → Personal access tokens → 生成，勾选 repo 权限）。
