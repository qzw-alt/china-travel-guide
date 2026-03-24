# 部署指南 - China Travel Guide

## 第一步：在 GitHub 创建仓库

1. 登录 GitHub
2. 点击右上角 `+` → `New repository`
3. 仓库名：`china-travel-guide`
4. 选择 `Public`（公开）
5. **不要勾选** "Add a README file"
6. 点击 `Create repository`

## 第二步：推送代码

运行以下命令：

```bash
cd /tmp/china-travel-guide

# 配置 Git（替换为你的信息）
git config user.email "你的邮箱@example.com"
git config user.name "你的名字"

# 添加远程仓库
git remote add origin https://github.com/qzw-alt/china-travel-guide.git

# 推送代码
git branch -M main
git push -u origin main
```

## 第三步：配置 GitHub Pages

1. 打开仓库页面
2. 点击 `Settings` → `Pages`
3. Source 选择 `Deploy from a branch`
4. Branch 选择 `main`，文件夹选择 `/ (root)`
5. 点击 `Save`

## 第四步：安装部署插件并发布

```bash
# 安装部署插件
npm install hexo-deployer-git --save

# 生成并部署
npx hexo clean
npx hexo generate
npx hexo deploy
```

## 第五步：访问网站

等待 2-5 分钟后，访问：
**https://qzw-alt.github.io/china-travel-guide**

## 后续更新内容

```bash
# 新建文章
npx hexo new post "文章标题"

# 编辑 source/_posts/ 下的文章

# 生成并部署
npx hexo clean && npx hexo deploy
```

## 自定义域名（可选）

1. 购买域名（如 chinatravelguide.com）
2. 在 `source/` 目录创建 `CNAME` 文件，内容为域名
3. 域名 DNS 添加 CNAME 记录指向 `qzw-alt.github.io`
4. 在 GitHub Pages 设置中配置自定义域名

## 需要帮助？

查看 Hexo 官方文档：https://hexo.io/docs/
查看 NexT 主题文档：https://theme-next.js.org/docs/
