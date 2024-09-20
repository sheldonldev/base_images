#!/bin/bash

tag=$1
if [ -z $tag ]; then
    echo 'Error: need input image tag'
    exit 1
fi

namespace=sheldonlee
name=ubuntu2204_py312
image_name=$namespace/$name:$tag
