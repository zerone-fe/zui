#!/usr/bin/env bash

git checkout .

npm version patch

yarn lib

# npm publish
