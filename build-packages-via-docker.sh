#!/bin/sh

mkdir -p distfiles
chmod a+rwx distfiles
mkdir -p dot-abuild
chmod a+rwx dot-abuild

# Clean out "build context" to avoid uploading a ton of junk to docker
rm -rf racket-alpine-packages/racket-alpine/*/src

docker build -t racket-alpine-packaging racket-alpine-packages
docker run -it --rm \
       -v $(pwd):/home/build/racket-alpine \
       -v $(pwd)/distfiles:/var/cache/distfiles \
       racket-alpine-packaging \
       "$@"
