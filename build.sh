#!/bin/sh
if [ -d "build" ]; then
    rm -R build
fi
while read pkg
do
    cd $pkg
    ./build.sh
    cd ..
done < build_list
