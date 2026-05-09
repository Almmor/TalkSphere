@echo off
chcp 65001 >nul
cd /d "C:\Users\almmo\Desktop\chat\TalkSphere"

echo [1/2] 添加更改...
git add .

echo [2/2] 提交并推送...
git commit -m "ci: 移除Android构建，只打包Windows/macOS/Linux"
git push origin master

echo 完成！GitHub Actions将只构建桌面端。
pause
