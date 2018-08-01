#!/bin/sh
rm -rf packages
cp -a ../packages .
rm -rf dot-abuild
cp -a ../dot-abuild .
docker build -t racket-alpine .
