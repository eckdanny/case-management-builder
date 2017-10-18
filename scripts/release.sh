#!/usr/bin/env bash
DOCKER_ORG=eckdannyosi
DOCKER_NAME=case-management-builder
DOCKER_TAG=latest
OLD=`cat VERSION`
VERSION=`./bin/semver/src/semver bump ${1-patch} ${OLD}`
echo "$VERSION" > VERSION
./build.sh
git add -A
git commit -m "release $VERSION"
git tag "$VERSION"
git push
git push --tags
docker tag $DOCKER_ORG/$DOCKER_NAME:latest $DOCKER_ORG/$DOCKER_NAME:$VERSION
docker push $DOCKER_ORG/$DOCKER_NAME:latest
docker push $DOCKER_ORG/$DOCKER_NAME:$VERSION
