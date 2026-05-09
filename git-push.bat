@echo off
chcp 65001 >nul
cd /d "C:\Users\almmo\Desktop\chat\TalkSphere"

echo [1/5] 初始化Git仓库...
git init

echo [2/5] 添加所有文件...
git add .

echo [3/5] 提交更改...
git commit -m "feat: 初始化TalkSphere项目，修复logo显示问题"

echo [4/5] 添加远程仓库...
git remote add origin https://github.com/Almmor/TalkSphere.git

echo [5/5] 推送到GitHub...
git branch -M main
git push -u origin main

echo 完成！请检查GitHub仓库。
pause
