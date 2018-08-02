#!/bin/sh
pkg="$1"
cd racket-alpine/$pkg && abuild -r -P $(pwd)/../../../packages
