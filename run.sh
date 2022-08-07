#!/bin/bash

NAMESPACE="gabepublic"
IMG_NAME="staticsite-nginx"
APPNAME="static"

BUILD_VER=0.1.0
PLATFORM="linux-amd64"

docker run --rm -d --name $APPNAME -p 8080:80 $NAMESPACE/$IMG_NAME:$BUILD_VER-$PLATFORM
