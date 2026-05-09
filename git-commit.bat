@echo off
chcp 65001 >nul
cd /d "C:\Users\almmo\Desktop\chat\TalkSphere"

echo [1/2] 添加更改...
git add .

echo [2/2] 提交并推送...
git commit -m "ci: 添加自动构建触发 - push到main/master分支时自动构建"
git push origin master

echo 完成！GitHub Actions将自动触发构建。
pause
