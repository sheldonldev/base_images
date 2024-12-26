#!/bin/bash

tag=$1
repo_addr=$2

if [ -z $tag ]; then
    echo 'Error: need input image tag'
    exit 1
fi

script_dir=$(dirname "$(readlink -f "$0")")

namespace=sheldonlee
name=$(basename "$script_dir")
image_name=$namespace/$name:$tag

if [ -z $repo_addr]; then
    repo_path=$image_name
    echo "Use $image_name as default repo_path"
else
    repo_path=$repo_addr/$image_name
fi

echo "build docker image with tag: $image_name"

docker build -t $image_name -f Dockerfile $script_dir
docker tag $image_name $repo_path
docker push $repo_path
