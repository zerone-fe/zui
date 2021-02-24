#!/usr/bin/env bash

# 清理工作区
git add -am '构建前更新代码'

yarn lib

git commit -am '发布前构建'

npm version patch

npm publish

# 发布完成后同步到淘宝镜像
cnpm sync @zerone-fe/zui