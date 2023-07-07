#!/bin/sh

APP_PREFIX="prefix"
APP_NAME="app-name"
NETWORK="network-name"

IMAGE_NAME="$APP_PREFIX/$APP_NAME"

docker build . -t $IMAGE_NAME
docker stop $APP_NAME || true && docker rm $APP_NAME || true
docker run --restart=always --name $APP_NAME --network=$NETWORK -d $IMAGE_NAME
