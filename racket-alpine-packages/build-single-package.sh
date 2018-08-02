#!/bin/sh
set -xe

pkg="$1"
shift

cd racket-alpine/$pkg

rm -rf APKBUILD common-patches
cp ../../APKBUILD.template APKBUILD
cp -a ../../common-patches .

. APKBUILD.vars
sed -i \
    -e "s|@@pkgname@@|$pkgname|g" \
    -e "s|@@pkgdesc@@|$pkgdesc|g" \
    -e "s|@@depends_dev@@|$depends_dev|g" \
    -e "s|@@source@@|$source|g" \
    -e "s|@@sha512sums@@|$sha512sums|g" \
    APKBUILD

abuild -r -P $(pwd)/../../../packages "$@"
