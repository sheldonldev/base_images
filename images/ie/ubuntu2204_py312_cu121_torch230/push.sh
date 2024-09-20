#!/bin/bash
source config.sh

docker tag $image_name $image_name
docker push $image_name
