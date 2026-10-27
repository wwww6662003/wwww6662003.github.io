@echo off
git add .
git diff --cached --quiet
if %errorlevel% equ 0 (
    echo 没有新的提交内容，跳过commit和push
) else (
    git commit -m "my-web-nav"
    git push
    echo commit and push done
)
rem pause
