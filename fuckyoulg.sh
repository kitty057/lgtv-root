#!/bin/sh
set -e
if ! command -v which; then
    echo "you dont have the 'which' command, install a core utilities package"
    exit 1
fi
fppath=$HOME/fake-processes
mkdir -p "$fppath" 
touch $fppath/uploadd 
chmod +x $fppath/uploadd 
mount --bind $fppath/uploadd $(which uploadd) 
pkill -9 -x uploadd
echo 'uploadd done'
echo 'also fuck you lg'
touch $fppath/admanager
chmod +x $fppath/admanager
mount --bind $fppath/admanager $(which admanager)
pkill -9 -x admanager
echo 'admanager done'
echo 'fuck you again lg'
