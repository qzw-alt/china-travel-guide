#!/bin/bash
# 在 GitHub 创建仓库后运行此脚本

# 确保在正确的目录
cd /tmp/china-travel-guide

# 配置 Git
git config user.email "your-email@example.com"
git config user.name "Your Name"

# 添加远程仓库（替换为你的仓库地址）
git remote add origin https://github.com/qzw-alt/china-travel-guide.git

# 推送代码
git branch -M main
git push -u origin main

echo "代码已推送到 GitHub！"
echo "接下来需要在 GitHub 设置 Pages 部署..."
