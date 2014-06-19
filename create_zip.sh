#!/bin/sh
if [ -d "zip_data/system" ]; then
    rm -R zip_data/system
fi
if [ ! -d "zip_data/system" ]; then
    mkdir -p zip_data/system
fi
if [ ! -d "build" ]; then
    mkdir build
fi
if [ -f "update.zip" ]; then
    rm update.zip
fi
mv build/* zip_data/system
cd zip_data
zip -r ../update.zip ./*
cd ..
mv zip_data/system/* build
if [ -d "zip_data/system" ]; then
    rm -R zip_data/system
fi
if [ -f "update_signed.zip" ]; then
    rm update_signed.zip
fi
java -jar signapk.jar testkey.x509.pem testkey.pk8 update.zip xt907_rus.zip
if [ -f "update.zip" ]; then
    rm update.zip
fi
