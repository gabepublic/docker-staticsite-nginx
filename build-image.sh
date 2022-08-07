#!/bin/bash

NAMESPACE="gabepublic"
IMG_NAME="staticsite-nginx"

BUILD_VER=0.1.0
PLATFORM="linux-amd64"

docker build . --file Dockerfile -t $NAMESPACE/$IMG_NAME:$BUILD_VER-$PLATFORM