#!/bin/sh
while read pkg
do
    cd $pkg
    ./build.sh
    cd ..
done < build_list
