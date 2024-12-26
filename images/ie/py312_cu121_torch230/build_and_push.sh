#!/bin/bash

tag=$1
repo_addr=$2

if [ -z $tag ]; then
    echo 'Error: need input image tag'
    exit 1
fi

namespace=sheldonlee
name=py312_cu121_torch230
image_name=$namespace/$name:$tag

if [ -z $repo_addr]; then
    repo_path=$image_name
    echo "Use $image_name as default repo_path"
else
    repo_path=$repo_addr/$image_name
fi

echo "build docker image with tag: $image_name"

docker build -t $image_name -f Dockerfile .
docker tag $image_name $repo_path
docker push $repo_path
