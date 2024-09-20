#!/bin/bash

source config.sh

echo "build docker image with tag: $image_name"

docker build -t $image_name -f Dockerfile .
