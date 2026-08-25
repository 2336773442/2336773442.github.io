# 我的网页简历（模板：bong-portfolio）

基于 cz-dotcom.github.io/bong-portfolio 的网页简历模板改造，保留全部视觉效果（流体背景、3D 产品演示、案例视频墙、交互式中国地图），替换为自己的内容。

## 项目结构

```
my-resume/
├── index.html            # 入口（需按部署仓库名调整路径前缀）
├── assets/
│   ├── app.js            # 主程序（内容数据都在这里，明文可改）
│   ├── app.css           # 样式
│   ├── web3d-DA__OkyJ.js # 3D 场景引擎（Babylon.js 封装）
│   └── ModelPreviewPage-D-bx9DVI.js
├── images/
│   ├── portrait-*.webp   # 头像（替换为自己的照片）
│   ├── logos/            # 客户 Logo
│   ├── marquee/          # 视频墙素材（4 个视频海报 + 21 张轮播预览图）
│   └── projects/         # 产品配图
├── data/china-map.json   # 中国地图 SVG 数据
└── static/scenes/11036/  # 3D 演示场景（可替换为自己的 Babylon.js 场景）
```

## 修改内容（核心）

所有文案、案例、产品数据都在 `assets/app.js` 中，均为明文对象：

| 变量 | 含义 |
|---|---|
| `li` | 个人信息：姓名、职位、简介、联系方式（邮箱/微信/城市）、5 项服务 |
| `um` | 客户 Logo 列表 |
| `Do` / `y4` | 当前公司 / 历史客户 |
| `jc` | 4 个产品（标题、时间、简介、标签、职责、成果、配图、3D 场景 id） |
| `Hf` | 地图上的 14 城市 34 项目案例数据 |
| `n2` | 统计条（年限、项目数、认证、AI） |
| `_4` / `v4` | 视频墙的标题与视频源 |

## 部署到 GitHub Pages

1. 在 GitHub 新建仓库，例如 `my-resume`（或 `username.github.io`）
2. 把 `index.html` 和 `assets/`、`images/`、`data/`、`static/` 一起推送到仓库
3. 修改 `index.html` 和 `assets/app.js` 中的路径前缀：
   - 仓库名是 `my-resume` → 前缀 `/my-resume/`
   - 仓库名是 `username.github.io` → 前缀 `/`
4. 仓库 Settings → Pages → 选择分支部署，即可访问

> 注意：`assets/app.js` 中原站路径前缀为 `/bong-portfolio/`，需要替换为你自己的仓库前缀（共 3 处 + Wi 函数）。
