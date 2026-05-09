@echo off
chcp 65001 >nul
cd /d "C:\Users\almmo\Desktop\chat\TalkSphere"

echo [1/3] 拉取远程仓库内容...
git pull origin master --allow-unrelated-histories

echo [2/3] 推送到GitHub...
git push -u origin master

echo 完成！
pause
