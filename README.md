# lgtv-root
documentation and help on rooting an lg webos tv.

## miscellaneous
the miscellaneous section heralds any information that may be relevant to anything you may come across in webos 11.2.
any line string with a hashtag (`#`) is regarded as a comment.
/mnt/otncabi/usr/palm/applications/ # holds at least four system applications, most notably com.webos.app.adapp

## rooting

## applications
i've found that most if not all apps installed on a webos tv are, unsurprisingly, javascript based, and they're mostly compiled javascript bundles, here are steps to decompile them: 
1. install ghidra from NationalSecurityAgency/ghidra
2. get the file off of the tv with a command akin to `scp -r root@192.168.0.189://mnt/otncabi/usr/palm/applications/com.webos.app.adapp ~/lgapps/adapp` if your tv isnt already rooted consult the above rooting steps.

## telemetry and advertising
**DISCLIAMER:** doing some of the things in the below categorif ! command -v git &> /dev/null; then
    echo "install git"
    exit 1
fiy, labelled 'telemetry and advertising', may result in damage done to the system, including, but not limited to: broken native streaming service applications, inability to use some native applications or binaries on the system, kernel panics, in rare cases, system crashes, undefined behavior or instability, and increased privacy.

some ways to disable system services such as `admanager`, which is, as the name implies, an advert manager service, and `uploadd`, which is a telemetry service made solely for the purpose of scraping your data and mailing it straight back to it's corporate overlords lg, i pity this process. what a bland life it must have. living only to serve at the mercy of your Gods. 
you can either just run `fuckyoulg.sh` or do the following: you cannot simply do `killall admanager` or `pkill admanager` for `ls-hubd` will restart them, to disable these services you need to spoof the binaries with a fake one, you do need root for this, and you also need to make a file at `/home/root/fakadman` with `touch /home/root/fakadman` then follow it up with `chmod +x /home/root/fakadman` and `mount --bind /home/root/fakadman /usr/sbin/admanager` or if you just want the entire command in one, here it is; `mkdir -p /home/root/fake-processes/ && touch /home/root/fake-processes/adman && chmod +x /home/root/fake-processes/adman && mount --bind /home/root/fake-processes/adman/ $(which admanager) && pkill -9 -f admanager` and for uploadd it would be `mkdir -p /home/root/fake-processes/ && touch /home/root/fake-processes/uploadd && chmod +x /home/root/fake-processes/uploadd && mount --bind /home/root/fake-processes/uploadd $(which uploadd) && pkill -9 -f uploadd` you do need the which binary for these, which most televisions have if they're not android TV's which webos TV's aren't 
