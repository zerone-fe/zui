#!/usr/bin/env bash

# 将所有修改添加到暂存区
yarn lib
git add .
git commit -am '发布前构建'

npm version patch
npm publish

# 发布完成后同步到淘宝镜像，淘宝镜像源10分钟才会同步一次
# 通过命令行同步模块
cnpm sync @zerone-fe/zui
# 通过 web 方式来同步模块
open https://npm.taobao.org/sync/@zerone-fe/zui

# 淘宝同步失败时，需要在升级包的地方执行
# YARN_REGISTRY=https://registry.npmjs.org yarn upgrade @zerone-fe/zui