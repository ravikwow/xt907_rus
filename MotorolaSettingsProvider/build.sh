#!/bin/sh
PKG=MotorolaSettingsProvider
FOLDER=system/app
if [ -d "build" ]; then
    rm -R build
fi
if [ -d "dist" ]; then
    rm -R dist
fi
java -jar ../apktool.jar b ../$PKG
cd original
zip -r ../dist/$PKG.apk ./*
cd ..
if [ ! -d "../build/$FOLDER" ]; then
    mkdir -p ../build/$FOLDER
fi
if [ -f "../build/$FOLDER/$PKG.apk" ]; then
    rm ../build/$FOLDER/$PKG.apk
fi
mv dist/$PKG.apk ../build/$FOLDER
if [ -d "build" ]; then
    rm -R build
fi
if [ -d "dist" ]; then
    rm -R dist
fi
