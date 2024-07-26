#!/bin/bash

# 升级版本修改这里
VERSION=17.2.1-ce.0

docker build --build-arg RELEASE_VERSION=$VERSION -t gitlab-ce:$VERSION .