#!/bin/bash

BUILD_DIR=bin
NAME=$(basename $PWD)

mkdir -p $BUILD_DIR

# for GOOS in darwin linux windows; do # all archs
for GOOS in linux; do
    for GOARCH in 386 amd64; do
        GOOS=$GOOS GOARCH=$GOARCH go build -v -o $BUILD_DIR/$NAME-$GOOS-$GOARCH
    done
done
