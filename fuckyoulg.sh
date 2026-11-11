#!/bin/sh
if ! command -v which >/dev/null 2>&1; then
    echo "you dont have the 'which' command, install a core utilities package"
    exit 1
fi
fppath=$HOME/fake-processes
mkdir -p "$fppath" 
fuck() {
    service=$1
    servicepath=$(which "$service" 2>/dev/null)
    if [ -z "$servicepath" ]; then
        echo "$service not in path, um... yeah i don't know what to say lowkey guys"
        return
    fi
    # already mounted?
    if mount | grep -q "$servicepath"; then
        echo "$service already fucked, skipping $service"
        pkill -9 -x "$service" 2>/dev/null
        return
    fi
    touch "$fppath/$service"
    chmod +x "$fppath/$service"
    mount --bind "$fppath/$service" "$servicepath" 2>/dev/null
    pkill -9 -x "$service" 2>/dev/null    
    echo "$service done."
}
ffuck() {
    service=$1
    servicepath=$(which "$service" 2>/dev/null)
    if [ -z "$servicepath" ]; then
        echo "$service not in path, um... yeah i don't know what to say lowkey guys"
        return
    fi
    # same check shit 
    if mount | grep -q "$servicepath"; then
        echo "$service already fucked, skipping $service"
        pkill -9 -x "$service" 2>/dev/null
        return
    fi
    touch "$fppath/$service"
    chmod +x "$fppath/$service"
    mount --bind "$fppath/$service" "$servicepath" 2>/dev/null
    pkill -9 -f "$service" 2>/dev/null    
    echo "$service done."
}
fuck uploadd
echo 'also fuck you lg.'
fuck admanager
echo 'fuck you again, lg.'
fuck acr2
echo 'curse you for eternity, lg.'
fuck faultmanager
echo 'may you burn in the depths of hell for the aeonian time to come, lg.'
fuck remotelogger
ffuck com.webos.service.microphone
ffuck com.webos.service.pushclient
# this one's separate because it was fucking hiding from me. little bastard.
touch /home/root/fake-processes/thinqai
chmod +x /home/root/fake-processes/thinqai
mount --bind /home/root/fake-processes/thinqai /var/palm/jail/lg.thinqai.adapter/usr/sbin/lg.thinqai.adapter
pkill -9 -f lg.thinqai.adapter
echo 'lg.thinqai.adapter killed'
# okay back to normal
fuck iconnectivity
fuck sdx
fuck rdxd
fuck PmKLogDaemon
fuck PmLogDaemon
fuck voiceinput
# it's insane that i even need to kill aaaaalll of these processes just to have some fucking privacy.
# fuck you lg.
fuck voiceconductor
fuck ai-inference-manager
fuck iot-client
fuck voiceinput_hidraw
echo 'last fuck you, lg.'
echo 'stupid motherfuckers.'
echo 'all done.'
