#!/usr/bin/env bash

VERSION=0.241
REPO=https://github.com/hunterlong/statup/releases/download

rm -rf build
mkdir build

BINFILE=statup-osx-x64.tar.gz
curl -o build/$BINFILE -OL $REPO/v$VERSION/$BINFILE
tar -xvzf build/$BINFILE
OSX64=`openssl dgst -sha256 statup | sed 's/^.*= //'`
rm -f statup

BINFILE=statup-osx-x32.tar.gz
curl -o build/$BINFILE -OL $REPO/v$VERSION/$BINFILE
tar -xvzf build/$BINFILE
OSX32=`openssl dgst -sha256 statup | sed 's/^.*= //'`
rm -f statup

BINFILE=statup-linux-x64.tar.gz
curl -o build/$BINFILE -OL $REPO/v$VERSION/$BINFILE
tar -xvzf build/$BINFILE
LIN64=`openssl dgst -sha256 statup | sed 's/^.*= //'`
rm -f statup

BINFILE=statup-linux-x32.tar.gz
curl -o build/$BINFILE -OL $REPO/v$VERSION/$BINFILE
tar -xvzf build/$BINFILE
LIN32=`openssl dgst -sha256 statup | sed 's/^.*= //'`
rm -f statup

cat formula | \
    sed -e "s/\$VERSION/$VERSION/" \
    -e "s/\$OSX64/$OSX64/" \
    -e "s/\$OSX32/$OSX32/" \
    -e "s/\$LIN64/$LIN64/" \
    -e "s/\$LIN32/$LIN32/" \
    > statup.rb
