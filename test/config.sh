#!/bin/bash

tag=$1
if [ -z $tag ]; then
    echo 'Error: need input image tag'
    exit 1
fi

namespace=test
name=ubuntu_2204_py312_test
image_name=$namespace/$name:$tag
