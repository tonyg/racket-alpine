#!/bin/sh
set -xe

[ -f ~/.abuild/abuild.conf ] && true || abuild-keygen -ain

for pkg in racket-minimal racket
do
    ./build-single-package.sh $pkg
done
