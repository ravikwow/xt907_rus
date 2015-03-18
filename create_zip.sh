#!/bin/sh
if [ ! -d "build" ]; then
    mkdir build
fi
if [ -f "update.zip" ]; then
    rm update.zip
fi
cd zip_data
zip -r ../update.zip ./*
cd ../build
zip -r ../update.zip ./*
cd ..
if [ -f "xt907_9.8.1Q-94-1.zip" ]; then
    rm xt907_9.8.1Q-94-1.zip
fi
java -jar signapk.jar testkey.x509.pem testkey.pk8 update.zip xt907_9.8.1Q-94-1.zip
if [ -f "update.zip" ]; then
    rm update.zip
fi
