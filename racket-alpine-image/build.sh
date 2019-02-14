#!/bin/sh
rm -rf packages
cp -a ../packages .
DOCKER_BUILDKIT=1 docker build -t racket-alpine -f Dockerfile.full .
DOCKER_BUILDKIT=1 docker build -t racket-alpine-minimal -f Dockerfile.minimal .
