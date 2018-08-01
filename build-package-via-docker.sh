#!/bin/sh

mkdir -p distfiles
chmod a+rwx distfiles
mkdir -p dot-abuild
chmod a+rwx dot-abuild

rm -rf racket-alpine-package/racket/src
docker build -t racket-alpine-package racket-alpine-package
docker run -it --rm \
       -v $(pwd):/home/build/racket-alpine \
       -v $(pwd)/distfiles:/var/cache/distfiles \
       racket-alpine-package \
       "$@"
