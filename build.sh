#!/bin/bash -x

cd "$(dirname "$0")"
TAG="$(date +%Y-%m-%d)"
VERSION="7.4"

docker build . --tag rojen/php${VERSION}-apache:latest --tag rojen/php${VERSION}-apache:${TAG}
docker push rojen/php${VERSION}-apache:latest
docker push rojen/php${VERSION}-apache:${TAG}
