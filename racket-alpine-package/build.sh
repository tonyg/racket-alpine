#!/bin/sh
set -xe
[ -f ~/.abuild/abuild.conf ] && true || abuild-keygen -ain
cd racket-alpine/racket && abuild -r -P $(pwd)/../../../packages
