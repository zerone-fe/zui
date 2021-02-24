#!/usr/bin/env bash

# 清理工作区
git add -am '构建前更新代码'

yarn lib

git commit -am '发布前构建'

npm version patch

npm publish

# 发布完成后同步到淘宝镜像，淘宝镜像源10分钟才会同步一次
# 通过命令行同步模块
cnpm sync @zerone-fe/zui
# 通过 web 方式来同步模块
open https://npm.taobao.org/sync/@zerone-fe/zui