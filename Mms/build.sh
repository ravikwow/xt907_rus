#!/bin/sh
PKG=Mms
if [ -d "build" ]; then
    rm -R build
fi
if [ -d "dist" ]; then
    rm -R dist
fi
java -jar ../apktool.jar b ../$PKG
if [ ! -d "../build" ]; then
    mkdir ../build
fi
if [ -f "../build/$PKG.apk" ]; then
    rm ../build/$PKG.apk
fi
java -jar ../signapk.jar ../testkey.x509.pem ../testkey.pk8 dist/$PKG.apk ../build/$PKG.apk
if [ -d "build" ]; then
    rm -R build
fi
if [ -d "dist" ]; then
    rm -R dist
fi
