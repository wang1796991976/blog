#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
npm run build

# 进入生成的文件夹
cd docs/.vuepress/dist
git init

git config --global user.name "wagnjun"
git config --global user.email "1796991976@qq.com"




git add .
git commit -m "d"
git remote add origin git@e.coding.net:wangjun1/blog/blog.git
git push -f origin master # 推送到coding

cd - # 退回开始所在目录
rm -rf docs/.vuepress/dist



