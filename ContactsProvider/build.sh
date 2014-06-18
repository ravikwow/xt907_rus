#!/bin/sh
PKG=ContactsProvider
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
if [ ! -d "../build" ]; then
    mkdir ../build
fi
if [ -f "../build/$PKG.apk" ]; then
    rm ../build/$PKG.apk
fi
mv dist/$PKG.apk ../build
if [ -d "build" ]; then
    rm -R build
fi
if [ -d "dist" ]; then
    rm -R dist
fi
