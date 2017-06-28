#!/bin/bash

ip=$(ifconfig | grep "inet " | grep -v 127.0.0.1 | cut -d\  -f2)
echo -n "Enter emulator name: "
read emulator

while true; do
    read -p "Start with proxy? (y/n)" yn
    case $yn in
        [Yy]* ) $($ANDROID_HOME/tools/emulator -avd $emulator -http-proxy "http://$ip:8888"); break;;
        [Nn]* ) $($ANDROID_HOME/tools/emulator -avd $emulator); break;;
        * ) echo "Please answer yes or no.";;
    esac
done