#!/bin/bash

image_dir=$1 # 镜像 Dockerfile 所处的文件夹
tag=$2       # 版本号
repo_addr=$3 # 推送对象为 docker hub 时可以不用填

if [ -z $image_dir ]; then
    echo 'Error: need input image directory'
    exit 1
fi
if [ ! -d $image_dir ]; then
    echo "Error: $image_dir is not a valid directory"
    exit 1
fi
image_dir=$(readlink -f "$image_dir")

if [ -z $tag ]; then
    echo 'Error: need input image tag'
    exit 1
fi

namespace=sheldonlee
name=$(basename "$image_dir")
image_name=$namespace/$name:$tag

if [ -z $repo_addr]; then
    repo_path=$image_name
    echo "Use $image_name as default repo_path"
else
    repo_path=$repo_addr/$image_name
fi

echo "build docker image with tag: $image_name"

docker build -t $image_name -f $image_dir/Dockerfile $image_dir
docker tag $image_name $repo_path
docker push $repo_path
