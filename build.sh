#!/bin/sh
java -jar ./apktool.jar if ./framework-res.apk.orig
if [ -d "build" ]; then
    rm -R build
fi
while read pkg
do
    cd $pkg
    ./build.sh
    cd ..
done < build_list
