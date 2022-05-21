#!/bin/sh

cd ~/repos/swhkd

# check if the directory does not contain a subdirectory named bin
if [ ! -d bin ]; then
    make setup
fi
make
doas killall swhkd swhks
sleep 1
doas make install
swhks &
doas pkexec swhkd &
sleep 1
setxkbmap -option caps:escape
