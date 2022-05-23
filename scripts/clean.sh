#!/bin/bash
set -e
docker stop `docker ps -q`
docker rm `docker ps -aq`
docker network remove testnet
docker network create testnet