#!/bin/sh
PKG=DeskClock
FOLDER=app
if [ -d "build" ]; then
    rm -R build
fi
if [ -d "dist" ]; then
    rm -R dist
fi
java -jar ../apktool.jar b ../$PKG
if [ ! -d "../build/$FOLDER" ]; then
    mkdir -p ../build/$FOLDER
fi
if [ -f "../build/$FOLDER/$PKG.apk" ]; then
    rm ../build/$FOLDER/$PKG.apk
fi
java -jar ../signapk.jar ../testkey.x509.pem ../testkey.pk8 dist/$PKG.apk ../build/$FOLDER/$PKG.apk
if [ -d "build" ]; then
    rm -R build
fi
if [ -d "dist" ]; then
    rm -R dist
fi
