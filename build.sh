#!/usr/bin/env bash

REPO=https://github.com/hunterlong/statup/releases/download

mkdir build

BINFILE=statup-osx-x64
curl -o build/$BINFILE $REPO/$VERSION/$BINFILE
OSX64=`openssl dgst -sha256 build/$BINFILE | sed 's/^.*= //'`

BINFILE=statup-osx-x32
curl -o build/$BINFILE $REPO/$VERSION/$BINFILE
OSX32=`openssl dgst -sha256 build/$BINFILE | sed 's/^.*= //'`

BINFILE=statup-linux-x64
curl -o build/$BINFILE $REPO/$VERSION/$BINFILE
LIN64=`openssl dgst -sha256 build/$BINFILE | sed 's/^.*= //'`

BINFILE=statup-linux-x32
curl -o build/$BINFILE $REPO/$VERSION/$BINFILE
LIN32=`openssl dgst -sha256 build/$BINFILE | sed 's/^.*= //'`

cat formula | \
    sed -e "s/\$VERSION/$VERSION/" \
    -e "s/\$OSX64/$OSX64/" \
    -e "s/\$OSX32/$OSX32/" \
    -e "s/\$LIN64/$LIN64/" \
    -e "s/\$LIN32/$LIN32/" \
    > statup.rb
