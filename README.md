# lgtv-root
documentation and help on rooting an lg webos tv.

## rooting

## applications
i've found that most if not all apps installed on a webos tv are, unsurprisingly, javascript based, and they're mostly compiled javascript bundles, here are steps to decompile them: 
1. install ghidra from NationalSecurityAgency/ghidra
2. get the file off of the tv with a command akin to `scp -r root@192.168.0.189://mnt/otncabi/usr/palm/applications/com.webos.app.adapp ~/lgapps/adapp` if your tv isnt already rooted consult the above rooting steps.
