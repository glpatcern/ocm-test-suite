#!/bin/bash
set -e

export REPO_ROOT=`pwd`
[ ! -d "./scripts" ] && echo "Directory ./scripts DOES NOT exist inside $REPO_ROOT, are you running this from the repo root?" && exit 1

docker run --restart=always -d --network=testnet --name=meshdir.docker  -v $REPO_ROOT/ocm-stub:/ocm-stub stub
