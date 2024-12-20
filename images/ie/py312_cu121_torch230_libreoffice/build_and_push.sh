#!/bin/bash

tag=$1
if [ -z $tag ]; then
    echo 'Error: need input image tag'
    exit 1
fi

namespace=sheldonlee
name=py312_cu121_torch230_libreoffice
image_name=$namespace/$name:$tag

echo "build docker image with tag: $image_name"

docker build -t $image_name -f Dockerfile .
docker tag $image_name $image_name
docker push $image_name
