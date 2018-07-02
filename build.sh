#!/usr/bin/env bash

VERSION=$(curl -s "https://github.com/hunterlong/statup/releases/latest" | grep -o 'tag/[v.0-9]*' | awk -F/ '{print $2}')
REPO=https://github.com/hunterlong/statup/releases/download

rm -rf build
mkdir build

BINFILE=statup-osx-x64.tar.gz
curl -q -o build/$BINFILE -OL $REPO/$VERSION/$BINFILE
OSX64=`openssl dgst -sha256 build/$BINFILE | sed 's/^.*= //'`
printf "$BINFILE ===> $OSX64\n"

BINFILE=statup-osx-x32.tar.gz
curl -q -o build/$BINFILE -OL $REPO/$VERSION/$BINFILE
OSX32=`openssl dgst -sha256 build/$BINFILE | sed 's/^.*= //'`
printf "$BINFILE ===> $OSX32\n"

BINFILE=statup-linux-x64.tar.gz
curl -q -o build/$BINFILE -OL $REPO/$VERSION/$BINFILE
LIN64=`openssl dgst -sha256 build/$BINFILE | sed 's/^.*= //'`
printf "$BINFILE ===> $LIN64\n"

BINFILE=statup-linux-x32.tar.gz
curl -q -o build/$BINFILE -OL $REPO/$VERSION/$BINFILE
LIN32=`openssl dgst -sha256 build/$BINFILE | sed 's/^.*= //'`
printf "$BINFILE ===> $LIN32\n"

cat formula | \
    sed -e "s/\$VERSION/$VERSION/" \
    -e "s/\$OSX64/$OSX64/" \
    -e "s/\$OSX32/$OSX32/" \
    -e "s/\$LIN64/$LIN64/" \
    -e "s/\$LIN32/$LIN32/" \
    > statup.rb

#git config --local user.name "hunterlong"
#git config --local user.email "info@socialeck.com"

#git add statup.rb
#git commit -m "Release to v$VERSION"
#git push origin master