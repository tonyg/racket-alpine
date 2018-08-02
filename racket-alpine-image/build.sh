#!/bin/sh
rm -rf packages
cp -a ../packages .
docker build -t racket-alpine -f Dockerfile.full .
docker build -t racket-alpine-minimal -f Dockerfile.minimal .
