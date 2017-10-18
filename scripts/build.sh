#!/usr/bin/env bash
set -ex
DOCKER_ORG=eckdannyosi
DOCKER_NAME=case-management-builder
DOCKER_TAG=latest
docker run -it --rm -v "$PWD/Dockerfile":/Dockerfile:ro redcoolbeans/dockerlint
bundle exec rake spec
docker build -t ${DOCKER_ORG}/${DOCKER_NAME}:latest .
