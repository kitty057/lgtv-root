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
echo 'uploadd done.'
echo 'also fuck you lg.'
touch $fppath/admanager
chmod +x $fppath/admanager
mount --bind $fppath/admanager $(which admanager)
pkill -9 -x admanager
echo 'admanager done.'
echo 'fuck you again, lg.'
touch $fppath/acr2
chmod +x $fppath/acr2
mount --bind $fppath/acr2 $(which acr2)
pkill -9 -x acr2
echo 'acr2 done.'
echo 'curse you for eternity, lg.'
touch $fppath/faultmanager
chmod +x $fppath/faultmanager
mount --bind $fppath/faultmanager $(which faultmanager)
pkill -9 -x faultmanager
echo 'faultmanager done.'
echo 'may you burn in the depths of hell for the aeonian time to come, lg.'
touch $fppath/remotelogger
chmod +x $fppath/remotelogger
mount --bind $fppath/remotelogger $(which remotelogger)
pkill -9 -x remotelogger
echo 'remotelogger done.'
echo 'last fuck you, lg.'
echo 'stupid motherfuckers.'
echo 'all done.'
