#!/usr/bin/env bash

VERSION=$VERSION
REPO=https://github.com/statping/statping/releases/download

rm -rf build
mkdir build

BINFILE=statping-osx-x64.tar.gz
curl -o build/$BINFILE -OL $REPO/v$VERSION/$BINFILE
OSX64=`openssl dgst -sha256 build/$BINFILE | sed 's/^.*= //'`
printf "$BINFILE ===> $OSX64\n"

BINFILE=statping-osx-x32.tar.gz
curl -o build/$BINFILE -OL $REPO/v$VERSION/$BINFILE
OSX32=`openssl dgst -sha256 build/$BINFILE | sed 's/^.*= //'`
printf "$BINFILE ===> $OSX32\n"

BINFILE=statping-linux-x64.tar.gz
curl -o build/$BINFILE -OL $REPO/v$VERSION/$BINFILE
LIN64=`openssl dgst -sha256 build/$BINFILE | sed 's/^.*= //'`
printf "$BINFILE ===> $LIN64\n"

BINFILE=statping-linux-x32.tar.gz
curl -o build/$BINFILE -OL $REPO/v$VERSION/$BINFILE
LIN32=`openssl dgst -sha256 build/$BINFILE | sed 's/^.*= //'`
printf "$BINFILE ===> $LIN32\n"

cat formula | \
    sed -e "s/\$VERSION/$VERSION/" \
    -e "s/\$OSX64/$OSX64/" \
    -e "s/\$OSX32/$OSX32/" \
    -e "s/\$LIN64/$LIN64/" \
    -e "s/\$LIN32/$LIN32/" \
    > statping.rb

cat statping.rb

rev=$(git rev-parse --short HEAD)
git config user.name $GH_USER
git config user.email $GH_EMAIL

git remote rm origin
git remote add origin https://$GH_USER:$GH_TOKEN@github.com/statping/homebrew-statping.git

git add statping.rb
git commit -m "New Homebrew v$VERSION ${rev}"
git push origin HEAD:master
