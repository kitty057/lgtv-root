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
