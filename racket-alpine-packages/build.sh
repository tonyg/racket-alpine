#!/bin/sh
set -xe

[ -f ~/.abuild/abuild.conf ] && true || abuild-keygen -ain
sudo cp ~/.abuild/*.pub /etc/apk/keys/.

for pkg in racket-minimal racket
do
    ./build-single-package.sh $pkg &
done

wait
