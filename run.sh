#!/usr/bin/env bash
set -xe

OUTPUT_DIR=$(pwd)/output
REPO_URL="https://github.com/svalabs/terraform-provider-nutanix.git"

docker build --build-arg REPO_URL=$REPO_URL  -t terraform-builder .
rm -rf $OUTPUT_DIR
mkdir $OUTPUT_DIR
docker run --rm -it -v $OUTPUT_DIR:/output terraform-builder
